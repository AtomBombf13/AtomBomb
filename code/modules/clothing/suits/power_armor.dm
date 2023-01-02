/////////////////
// Power armor //
/////////////////

/obj/item/clothing/suit/armor/power_armor
	w_class = WEIGHT_CLASS_HUGE
	// body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	icon = 'icons/fallout/clothing/armored_power.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_power.dmi'
	flags_inv = HIDEJUMPSUIT
	item_flags = SLOWS_WHILE_IN_HAND
	clothing_flags = THICKMATERIAL
	equip_delay_self = 50
	equip_delay_other = 60
	strip_delay = 200
	resistance_flags = LAVA_PROOF | FIRE_PROOF | ACID_PROOF
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 20)
	salvage_tool_behavior = TOOL_WELDER
	pocket_storage_component_path = null // quit ripping your power cell out ffs
	/// Cell that is currently installed in the suit
	var/obj/item/stock_parts/cell/cell = /obj/item/stock_parts/cell/high
	/// How much power the cell consumes each process tick
	var/usage_cost = 5 // With high-capacity cell it'd run out of charge in ~33 minutes
	/// If TRUE - suit has ran out of charge and is currently affected by slowdown from it
	var/no_power = FALSE
	/// How much slowdown is added when suit is unpowered
	var/unpowered_slowdown = 3
	/// Projectiles below this damage will get deflected
	var/deflect_damage = 10
	/// If TRUE - it requires PA training trait to be worn
	var/requires_training = TRUE
	/// If TRUE - the suit will give its user specific traits when worn
	var/powered = TRUE
	/// If TRUE - the suit has been recently affected by EMP blast
	var/emped = FALSE
	/// Path of item that this set of armor gets salvaged into
	var/obj/item/salvaged_type = null
	/// Used to track next tool required to salvage the suit
	var/salvage_step = 0
	slowdown = ARMOR_SLOWDOWN_PA * ARMOR_SLOWDOWN_GLOBAL_MULT
	armor = ARMOR_VALUE_PA
	armor_tier_desc = ARMOR_CLOTHING_PA
	stiffness = MEDIUM_STIFFNESS

/obj/item/clothing/suit/armor/power_armor/Initialize()
	. = ..()
	if(ispath(cell))
		cell = new cell(src)

/obj/item/clothing/suit/armor/power_armor/mob_can_equip(mob/user, mob/equipper, slot, disable_warning = 1)
	var/mob/living/carbon/human/H = user
	if(src == H.wear_suit) //Suit is already equipped
		return ..()
	if (!HAS_TRAIT(H, TRAIT_PA_WEAR) && slot == SLOT_WEAR_SUIT && requires_training)
		to_chat(user, span_warning("You don't have the proper training to operate the power armor!"))
		return FALSE
	if(slot == SLOT_WEAR_SUIT)
		return ..()
	return

/obj/item/clothing/suit/armor/power_armor/equipped(mob/user, slot)
	..()
	if(slot == SLOT_WEAR_SUIT && powered)
		START_PROCESSING(SSobj, src)
		assign_traits(user)

/obj/item/clothing/suit/armor/power_armor/proc/assign_traits(mob/user)
	if(no_power) // Has no charge left
		return
	ADD_TRAIT(user, TRAIT_STUNIMMUNE, "PA_stun_immunity")
	ADD_TRAIT(user, TRAIT_PUSHIMMUNE, "PA_push_immunity")
	ADD_TRAIT(user, SPREAD_CONTROL, "PA_spreadcontrol")
	ADD_TRAIT(user, TRAIT_POWER_ARMOR, "PA_worn_trait") // General effects from being in PA

/obj/item/clothing/suit/armor/power_armor/dropped(mob/user)
	..()
	if(powered)
		STOP_PROCESSING(SSobj, src)
		remove_traits(user)

/obj/item/clothing/suit/armor/power_armor/proc/remove_traits(mob/user)
	REMOVE_TRAIT(user, TRAIT_STUNIMMUNE, "PA_stun_immunity")
	REMOVE_TRAIT(user, TRAIT_PUSHIMMUNE, "PA_push_immunity")
	REMOVE_TRAIT(user, SPREAD_CONTROL, "PA_spreadcontrol")
	REMOVE_TRAIT(user, TRAIT_POWER_ARMOR, "PA_worn_trait")

/obj/item/clothing/suit/armor/power_armor/Destroy()
	. = ..()
	STOP_PROCESSING(SSobj, src)

/obj/item/clothing/suit/armor/power_armor/process()
	var/mob/living/carbon/human/user = src.loc
	if(!user || !ishuman(user) || (user.wear_suit != src))
		return
	if((!cell || !cell?.use(usage_cost) || (salvage_step > 1))) // No cell, ran out of charge or we're in the process of being salvaged
		if(!no_power)
			remove_power(user)
		return
	if(no_power) // Above didn't proc and suit is currently unpowered, meaning cell is installed and has charge - restore power
		restore_power(user)
		return

/obj/item/clothing/suit/armor/power_armor/proc/remove_power(mob/user)
	if(salvage_step > 1) // Being salvaged
		to_chat(user, span_warning("Components in [src] require repairs!"))
	else
		to_chat(user, span_warning("\The [src] has ran out of charge!"))
	slowdown += unpowered_slowdown
	no_power = TRUE
	remove_traits(user)
	user.update_equipment_speed_mods()

/obj/item/clothing/suit/armor/power_armor/proc/restore_power(mob/user)
	to_chat(user, span_notice("\The [src]'s power restored."))
	slowdown -= unpowered_slowdown
	no_power = FALSE
	assign_traits(user)
	user.update_equipment_speed_mods()

/obj/item/clothing/suit/armor/power_armor/attackby(obj/item/I, mob/living/carbon/human/user, params)
	if(powered && istype(I, /obj/item/stock_parts/cell))
		if(cell)
			to_chat(user, span_warning("\The [src] already has a cell installed."))
			return
		if(user.transferItemToLoc(I, src))
			cell = I
			to_chat(user, span_notice("You successfully install \the [cell] into [src]."))
		return

	if(ispath(salvaged_type))
		switch(salvage_step)
			if(0)
				// Salvage
				if(istype(I, /obj/item/screwdriver))
					if(ishuman(user) && user.wear_suit == src)
						to_chat(user, span_warning("You have to take off the suit before salvaging it."))
						return
					to_chat(user, span_notice("You begin unsecuring the wiring cover..."))
					if(I.use_tool(src, user, 60, volume=50))
						salvage_step = 1
						to_chat(user, span_notice("You unsecure the wiring cover."))
					return
			if(1)
				// Salvage
				if(istype(I, /obj/item/wirecutters))
					if(ishuman(user) && user.wear_suit == src)
						to_chat(user, span_warning("You have to take off the suit before salvaging it."))
						return
					to_chat(user, span_notice("You start to cut down the wiring..."))
					if(I.use_tool(src, user, 80, volume=50))
						salvage_step = 2
						to_chat(user, span_notice("You disconnect the wires."))
					return
				// Fix
				if(istype(I, /obj/item/screwdriver))
					if(ishuman(user) && user.wear_suit == src)
						to_chat(user, span_warning("You have to take off the suit before fixing it."))
						return
					to_chat(user, span_notice("You begin securing the wiring cover..."))
					if(I.use_tool(src, user, 60, volume=50))
						salvage_step = 0
						to_chat(user, span_notice("You secure the wiring cover."))
					return
			if(2)
				// Salvage
				if(istype(I, /obj/item/wrench))
					if(ishuman(user) && user.wear_suit == src)
						to_chat(user, span_warning("You have to take off the suit before salvaging it."))
						return
					to_chat(user, span_notice("You start loosening the bolts that secure components to the frame..."))
					if(I.use_tool(src, user, 100, volume=50))
						salvage_step = 3
						to_chat(user, span_notice("You disconnect the inner components."))
					return
				// Fix
				if(istype(I, /obj/item/wirecutters))
					if(ishuman(user) && user.wear_suit == src)
						to_chat(user, span_warning("You have to take off the suit before fixing it."))
						return
					to_chat(user, span_notice("You begin placing wires back into their place..."))
					if(I.use_tool(src, user, 80, volume=50))
						salvage_step = 1
						to_chat(user, span_notice("You re-connect the wires."))
					return
			if(3)
				// Salvage
				if(istype(I, /obj/item/weldingtool) || istype(I, /obj/item/gun/energy/plasmacutter))
					if(ishuman(user) && user.wear_suit == src)
						to_chat(user, span_warning("You have to take off the suit before salvaging it."))
						return
					to_chat(user, span_notice("You begin slicing the servomotors apart from the frame..."))
					if(I.use_tool(src, user, 150, volume=60))
						salvage_step = 4
						to_chat(user, span_notice("You disconnect servomotors from the main frame."))
					return
				// Fix
				if(istype(I, /obj/item/wrench))
					if(ishuman(user) && user.wear_suit == src)
						to_chat(user, span_warning("You have to take off the suit before fixing it."))
						return
					to_chat(user, span_notice("You start securing components to the frame..."))
					if(I.use_tool(src, user, 100, volume=50))
						salvage_step = 2
						to_chat(user, span_notice("You re-connect the inner components."))
					return
			if(4)
				// Salvage
				if(istype(I, /obj/item/crowbar))
					if(ishuman(user) && user.wear_suit == src)
						to_chat(user, span_warning("You have to take off the suit before salvaging it."))
						return
					to_chat(user, span_notice("You start to remove remaining components..."))
					if(I.use_tool(src, user, 50, volume=70))
						to_chat(user, span_notice("You finish salvaging the suit."))
						var/obj/item/ST = new salvaged_type(src)
						user.put_in_hands(ST)
						qdel(src)
					return
				// Fix
				if(istype(I, /obj/item/weldingtool) || istype(I, /obj/item/gun/energy/plasmacutter))
					if(ishuman(user) && user.wear_suit == src)
						to_chat(user, span_warning("You have to take off the suit before fixing it."))
						return
					to_chat(user, span_notice("You begin welding the servomotors to the frame..."))
					if(I.use_tool(src, user, 150, volume=60))
						salvage_step = 3
						to_chat(user, span_notice("You re-connect servomotors to the main frame."))
					return
	return ..()

/obj/item/clothing/suit/armor/power_armor/attack_self(mob/living/user)
	if(powered)
		toggle_cell(user)
	return ..()

/obj/item/clothing/suit/armor/power_armor/AltClick(mob/living/user)
	if(!user.canUseTopic(src, BE_CLOSE, ismonkey(user)))
		return ..()
	if(powered)
		toggle_cell(user)
	return

/obj/item/clothing/suit/armor/power_armor/proc/toggle_cell(mob/living/user)
	if(cell)
		user.visible_message(span_notice("[user] removes \the [cell] from [src]!"), \
			span_notice("You remove [cell]."))
		cell.add_fingerprint(user)
		user.put_in_hands(cell)
		cell = null
	else
		to_chat(user, span_warning("[src] has no cell installed."))

/obj/item/clothing/suit/armor/power_armor/examine(mob/user)
	. = ..()
	if(powered && (in_range(src, user) || isobserver(user)))
		if(cell)
			. += "The power meter shows [round(cell.percent(), 0.1)]% charge remaining."
		else
			. += "The power cell slot is currently empty."
	if(ispath(salvaged_type))
		. += salvage_hint()

/obj/item/clothing/suit/armor/power_armor/proc/salvage_hint()
	switch(salvage_step)
		if(0)
			return "<span class='notice'>The wiring cover is <i>screwed</i> in place.</span>"
		if(1)
			return "<span class='notice'>The cover is <i>screwed</i> open and <i>wires</i> are visible.</span>"
		if(2)
			return "<span class='warning'>The wiring has been <i>cut</i> and components connected with <i>bolts</i> are visible.</span>"
		if(3)
			return "<span class='warning'>The components have been <i>unanchored</i> servomotors inside the suit can be <i>sliced through</i>.</span>"
		if(4)
			return "<span class='warning'>The servomotors have been <i>sliced apart</i> from the frame and remaining components can be <i>pried away</i>.</span>"

/obj/item/clothing/suit/armor/power_armor/emp_act(mob/living/carbon/human/owner, severity)
	. = ..()
	if(. & EMP_PROTECT_SELF)
		return
	if(!powered)
		return
	if(cell)
		cell.emp_act(severity)
	if(!emped)
		if(isliving(loc))
			var/mob/living/L = loc
			var/induced_slowdown = 0
			if(severity >= 41) //heavy emp
				induced_slowdown = 4
				to_chat(L, span_boldwarning("Warning: severe electromagnetic surge detected in armor. Rerouting power to emergency systems."))
			else
				induced_slowdown = 2
				to_chat(L, span_warning("Warning: light electromagnetic surge detected in armor. Rerouting power to emergency systems."))
			emped = TRUE
			slowdown += induced_slowdown
			L.update_equipment_speed_mods()
			addtimer(CALLBACK(src, .proc/end_emp_effect, induced_slowdown), 50)
	return

/obj/item/clothing/suit/armor/power_armor/proc/end_emp_effect(slowdown_induced)
	emped = FALSE
	slowdown -= slowdown_induced // Even if armor is dropped it'll fix slowdown
	if(isliving(loc))
		var/mob/living/L = loc
		to_chat(L, span_warning("Armor power reroute successful. All systems operational."))
		L.update_equipment_speed_mods()

/obj/item/clothing/suit/armor/power_armor/run_block(mob/living/owner, atom/object, damage, attack_text, attack_type, armour_penetration, mob/attacker, def_zone, final_block_chance, list/block_return)
	if(check_armor_penetration(object) <= 0.15 && (attack_type == ATTACK_TYPE_PROJECTILE) && (def_zone in protected_zones))
		if(prob(armor_block_chance))
			var/ratio = rand(0,100)
			if(ratio <= deflection_chance)
				block_return[BLOCK_RETURN_REDIRECT_METHOD] = REDIRECT_METHOD_DEFLECT
				return BLOCK_SHOULD_REDIRECT | BLOCK_REDIRECTED | BLOCK_SUCCESS | BLOCK_PHYSICAL_INTERNAL
			if(ismob(loc))
				to_chat(loc, span_warning("Your power armor absorbs the projectile's impact!"))
			block_return[BLOCK_RETURN_SET_DAMAGE_TO] = 1
			return BLOCK_SUCCESS | BLOCK_PHYSICAL_INTERNAL
	return ..()

/obj/item/clothing/suit/armor/power_armor/t45b
	name = "T-45b power armor"
	desc = "It's a set of early-model T-45 power armor with a custom air conditioning module and restored servomotors. Bulky, but almost as good as the real thing."
	salvaged_type = /obj/item/clothing/suit/armor/heavy/salvaged_pa/t45b
	armor_block_chance = 20 //1-in-5
	armor_tokens = list(ARMOR_MODIFIER_DOWN_DT_T2)
	deflection_chance = 1 //to ensure it doesnt inherit deflect chance from anything above it

/obj/item/clothing/suit/armor/power_armor/t45d
	name = "T-45d power armor"
	desc = "Originally developed and manufactured for the United States Army by American defense contractor West Tek, the T-45d power armor was the first version of power armor to be successfully deployed in battle."
	icon_state = "t45dpowerarmor"
	item_state = "t45dpowerarmor"
	salvaged_type = /obj/item/clothing/suit/armor/heavy/salvaged_pa/t45d
	armor_tokens = list(ARMOR_MODIFIER_DOWN_DT_T1)
	armor_block_chance = 25 //1-in-4
	deflection_chance = 2

/obj/item/clothing/suit/armor/power_armor/t45d/bos
	name = "Brotherhood T-45d Power Armour"
	desc = "A suit of T-45d Power Armour adorned with the markings of the Brotherhood of Steel. Commonly used by the Paladins of the Brotherhood."
	icon_state = "t45dpowerarmor_bos"
	item_state = "t45dpowerarmor_bos"

/obj/item/clothing/suit/armor/f13/power_armor/t45d/sierra
	name = "sierra power armor"
	desc = "A captured set of T-45d power armor put into use by the NCR, it's been heavily modified and decorated with the head of a bear and intricate gold trimming. A two headed bear is scorched into the breastplate."
	icon_state = "sierra"
	item_state = "sierra"

/obj/item/clothing/suit/armor/power_armor/t51b
	name = "T-51b power armor"
	desc = "The pinnacle of pre-war technology. This suit of power armor provides substantial protection to the wearer."
	icon_state = "t51bpowerarmor"
	item_state = "t51bpowerarmor"
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 25)
	salvaged_type = /obj/item/clothing/suit/armor/heavy/salvaged_pa/t51b
	armor_tokens = list(ARMOR_MODIFIER_UP_DT_T1)
	armor_block_chance = 33 //1-in-3
	deflection_chance = 5

/obj/item/clothing/suit/armor/power_armor/t51b/hardened
	name = "Hardened T-51b power armor"
	desc = "The pinnacle of pre-war technology. This suit of power armor provides substantial protection to the wearer. It's plates have been chemially treated to be stronger."
	icon_state = "t51green"
	item_state = "t51green"
	armor_tokens = list(ARMOR_MODIFIER_UP_DT_T2)
	armor_block_chance = 40 //2-in-5
	deflection_chance = 7

/obj/item/clothing/suit/armor/power_armor/t51b/bos
	name = "Brotherhood T-51b Power Armour"
	desc = "The pinnacle of pre-war technology, appropriated by the Brotherhood of Steel. Commonly worn by Head Paladins."
	icon_state = "t51bpowerarmor_bos"
	item_state = "t51bpowerarmor_bos"

/obj/item/clothing/suit/armor/power_armor/excavator
	name = "excavator power armor"
	desc = "Developed by Garrahan Mining Co. in collaboration with West Tek, the Excavator-class power armor was designed to protect miners from rockfalls and airborne contaminants while increasing the speed at which they could work. "
	icon_state = "excavator"
	item_state = "excavator"
	armor_block_chance = 5 //barely
	armor_tokens = list(ARMOR_MODIFIER_DOWN_DT_T1)
	deflection_chance = 0

/obj/item/clothing/suit/armor/power_armor/advanced
	name = "advanced power armor"
	desc = "An advanced suit of armor typically used by the Enclave.<br>It is composed of lightweight metal alloys, reinforced with ceramic castings at key stress points.<br>Additionally, like the T-51b power armor, it includes a recycling system that can convert human waste into drinkable water, and an air conditioning system for its user's comfort."
	icon_state = "advpowerarmor1"
	item_state = "advpowerarmor1"
	armor_tokens = list(ARMOR_MODIFIER_UP_BULLET_T1, ARMOR_MODIFIER_UP_MELEE_T1, ARMOR_MODIFIER_UP_LASER_T1, ARMOR_MODIFIER_UP_DT_T2)
	armor_block_chance = 50 //every other shot
	deflection_chance = 10

//Peacekeeper armor adjust as needed
/obj/item/clothing/suit/armor/power_armor/advanced/x02
	name = "Enclave power armor"
	desc = "Upgraded pre-war power armor design used by the Enclave. It is mildly worn due to it's age and lack of maintenance after the fall of the Enclave."
	icon_state = "advanced"
	item_state = "advanced"
	salvaged_type = /obj/item/clothing/suit/armor/heavy/salvaged_pa/x02 // Oh the misery
