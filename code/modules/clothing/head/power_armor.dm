/////////////////
// Power Armor //
/////////////////

/obj/item/clothing/head/helmet/f13/power_armor
	cold_protection = HEAD
	heat_protection = HEAD
	ispowerarmor = 1 //TRUE
	strip_delay = 200
	equip_delay_self = 20
	slowdown = 0.05
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDEMASK|HIDEJUMPSUIT
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	clothing_flags = THICKMATERIAL
	resistance_flags = LAVA_PROOF | FIRE_PROOF | ACID_PROOF
	item_flags = SLOWS_WHILE_IN_HAND
	flash_protect = 2
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""
	speechspan = SPAN_ROBOT //makes you sound like a robot
	max_heat_protection_temperature = FIRE_HELM_MAX_TEMP_PROTECT
	cold_protection = HEAD
	min_cold_protection_temperature = FIRE_HELM_MIN_TEMP_PROTECT
	light_system = MOVABLE_LIGHT_DIRECTIONAL
	light_range = 5
	light_on = FALSE
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 10)
	salvage_tool_behavior = TOOL_WELDER
	/// Projectiles below this damage will get deflected
	var/deflect_damage = 10
	/// If TRUE - it requires PA training trait to be worn
	var/requires_training = TRUE
	/// If TRUE - the suit will give its user specific traits when worn
	var/powered = TRUE
	/// Path of item that this helmet gets salvaged into
	var/obj/item/salvaged_type = null
	/// Used to track next tool required to salvage the suit
	var/salvage_step = 0
	armor = ARMOR_VALUE_PA

/obj/item/clothing/head/helmet/f13/power_armor/ComponentInitialize()
	. = ..()
	AddElement(/datum/element/update_icon_updates_onmob)

/obj/item/clothing/head/helmet/f13/power_armor/attack_self(mob/living/user)
	toggle_helmet_light(user)

/obj/item/clothing/head/helmet/f13/power_armor/proc/toggle_helmet_light(mob/living/user)
	set_light_on(!light_on)
	update_icon()


/obj/item/clothing/head/helmet/f13/power_armor/mob_can_equip(mob/user, mob/equipper, slot, disable_warning = 1)
	var/mob/living/carbon/human/H = user
	if(src == H.head) //Suit is already equipped
		return ..()
	if (!HAS_TRAIT(H, TRAIT_PA_WEAR) && slot == SLOT_HEAD && requires_training)
		to_chat(user, span_warning("You don't have the proper training to operate the power armor!"))
		return 0
	if(slot == SLOT_HEAD)
		return ..()
	return

/obj/item/clothing/head/helmet/f13/power_armor/run_block(mob/living/owner, atom/object, damage, attack_text, attack_type, armour_penetration, mob/attacker, def_zone, final_block_chance, list/block_return)
	if((attack_type == ATTACK_TYPE_PROJECTILE) && (def_zone in protected_zones))
		if(prob(70) && (damage < deflect_damage))
			block_return[BLOCK_RETURN_REDIRECT_METHOD] = REDIRECT_METHOD_DEFLECT
			return BLOCK_SHOULD_REDIRECT | BLOCK_REDIRECTED | BLOCK_SUCCESS | BLOCK_PHYSICAL_INTERNAL
	return ..()

/obj/item/clothing/head/helmet/f13/power_armor/attackby(obj/item/I, mob/living/carbon/human/user, params)
	if(ispath(salvaged_type))
		switch(salvage_step)
			if(0)
				// Salvage
				if(istype(I, /obj/item/screwdriver))
					if(ishuman(user) && user.wear_suit == src)
						to_chat(user, span_warning("You have to take off the helmet before salvaging it."))
						return
					to_chat(user, span_notice("You begin unsecuring the cover..."))
					if(I.use_tool(src, user, 60, volume=50))
						salvage_step = 1
						to_chat(user, span_notice("You unsecure the cover."))
					return
			if(1)
				// Salvage
				if(istype(I, /obj/item/wrench))
					if(ishuman(user) && user.wear_suit == src)
						to_chat(user, span_warning("You have to take off the helmet before salvaging it."))
						return
					to_chat(user, span_notice("You begin disconnecting the connection ports..."))
					if(I.use_tool(src, user, 80, volume=50))
						salvage_step = 2
						to_chat(user, span_notice("You disconnect the connection ports."))
					return
				// Fix
				if(istype(I, /obj/item/screwdriver))
					if(ishuman(user) && user.wear_suit == src)
						to_chat(user, span_warning("You have to take off the helmet before fixing it."))
						return
					to_chat(user, span_notice("You begin securing the cover..."))
					if(I.use_tool(src, user, 60, volume=50))
						salvage_step = 0
						to_chat(user, span_notice("You secure the cover."))
					return
			if(2)
				// Salvage
				if(istype(I, /obj/item/wirecutters))
					if(ishuman(user) && user.wear_suit == src)
						to_chat(user, span_warning("You have to take off the helmet before salvaging it."))
						return
					to_chat(user, span_notice("You begin disconnecting wires..."))
					if(I.use_tool(src, user, 60, volume=70))
						to_chat(user, span_notice("You finish salvaging the helmet."))
						var/obj/item/ST = new salvaged_type(src)
						user.put_in_hands(ST)
						qdel(src)
					return
				// Fix
				if(istype(I, /obj/item/wrench))
					if(ishuman(user) && user.wear_suit == src)
						to_chat(user, span_warning("You have to take off the helmet before fixing it."))
						return
					to_chat(user, span_notice("You try to anchor connection ports to the frame..."))
					if(I.use_tool(src, user, 80, volume=60))
						salvage_step = 1
						to_chat(user, span_notice("You re-connect connection ports."))
					return
	return ..()

/obj/item/clothing/head/helmet/f13/power_armor/examine(mob/user)
	. = ..()
	if(ispath(salvaged_type))
		. += salvage_hint()

/obj/item/clothing/head/helmet/f13/power_armor/proc/salvage_hint()
	switch(salvage_step)
		if(0)
			return "<span class='notice'>The metal cover can be <i>screwed</i> open.</span>"
		if(1)
			return "<span class='notice'>The cover is <i>screwed</i> open with connection ports <i>bolted down</i>.</span>"
		if(2)
			return "<span class='warning'>The connections ports have been <i>unanchored</i> and only <i>wires</i> remain.</span>"

/obj/item/clothing/head/helmet/f13/power_armor/t45b
	name = "T-45b helmet"
	desc = "It's a T-45b power armor helmet."
	icon_state = "t45bhelmet"
	item_state = "t45bhelmet"
	salvaged_type = /obj/item/clothing/head/helmet/f13/heavy/salvaged_pa/t45b

/obj/item/clothing/head/helmet/f13/power_armor/t45d
	name = "T-45d power helmet"
	desc = "It's an old pre-War power armor helmet. It's pretty hot inside of it."
	icon_state = "t45dhelmet0"
	item_state = "t45dhelmet0"
	actions_types = list(/datum/action/item_action/toggle_helmet_light)
	armor_tokens = list(ARMOR_MODIFIER_UP_MELEE_T1, ARMOR_MODIFIER_UP_BULLET_T1)
	salvaged_type = /obj/item/clothing/head/helmet/f13/heavy/salvaged_pa/t45d

/obj/item/clothing/head/helmet/f13/power_armor/t45d/update_icon_state()
	icon_state = "t45dhelmet[light_on]"
	item_state = "t45dhelmet[light_on]"

/obj/item/clothing/head/helmet/f13/power_armor/t45d/bos
	name = "Brotherhood T-45d power helmet"
	desc = "It's an old pre-War power armor helmet. It's pretty hot inside of it."

/obj/item/clothing/head/helmet/f13/power_armor/t45d/bos/update_icon_state()
	icon_state = "t45dhelmet[light_on]"
	item_state = "t45dhelmet[light_on]"

/obj/item/clothing/head/helmet/f13/power_armor/t51b
	name = "T-51b power helmet"
	desc = "It's a T-51b power helmet, typically used by the Brotherhood. It looks somewhat charming."
	icon_state = "t51bhelmet0"
	item_state = "t51bhelmet0"
	armor_tokens = list(ARMOR_MODIFIER_UP_MELEE_T1, ARMOR_MODIFIER_UP_BULLET_T1, ARMOR_MODIFIER_UP_LASER_T1)
	actions_types = list(/datum/action/item_action/toggle_helmet_light)
	salvaged_type = /obj/item/clothing/head/helmet/f13/heavy/salvaged_pa/t51b

/obj/item/clothing/head/helmet/f13/power_armor/t51b/update_icon_state()
	icon_state = "t51bhelmet[light_on]"
	item_state = "t51bhelmet[light_on]"

/obj/item/clothing/head/helmet/f13/power_armor/t51b/bos
	name = "T-51b power helmet"
	desc = "It's a T-51b power helmet, typically used by the Brotherhood. It looks somewhat charming."

/obj/item/clothing/head/helmet/f13/power_armor/t51b/bos/update_icon_state()
	icon_state = "t51bhelmet[light_on]"
	item_state = "t51bhelmet[light_on]"

/obj/item/clothing/head/helmet/f13/power_armor/midwest
	name = "Midwestern T-51b power helmet"
	desc = "This helmet belongs to the Midwestern branch of the Brotherhood of Steel."
	icon_state = "midwestgrey_helm"
	item_state = "midwestgrey_helm"
	actions_types = list(/datum/action/item_action/toggle_helmet_light)
	salvaged_type = /obj/item/clothing/head/helmet/f13/heavy/salvaged_pa/midwest

/obj/item/clothing/head/helmet/f13/power_armor/midwest/hardened
	name = "Hardened midwestern T-51b power helmet"
	desc = "This helmet belongs to the Midwestern branch of the Brotherhood of Steel. This particular one has gone through a chemical hardening process, increasing its armor capabilities."
	icon_state = "midwestpa_helm"
	item_state = "midwestpa_helm"
	actions_types = list(/datum/action/item_action/toggle_helmet_light)
	salvaged_type = /obj/item/clothing/head/helmet/f13/heavy/salvaged_pa/midwest/hardened

/obj/item/clothing/head/helmet/f13/power_armor/excavator
	name = "excavator power helmet"
	desc = "The helmet of the excavator power armor suit."
	icon_state = "excavator"
	item_state = "excavator"
	armor_tokens = list(ARMOR_MODIFIER_UP_MELEE_T1, ARMOR_MODIFIER_DOWN_BULLET_T4, ARMOR_MODIFIER_DOWN_LASER_T4)

/obj/item/clothing/head/helmet/f13/power_armor/advanced
	name = "advanced power helmet"
	desc = "It's an advanced power armor MK1 helmet, typically used by the Enclave. It looks somewhat threatening."
	icon_state = "advhelmet1"
	item_state = "advhelmet1"


/obj/item/clothing/head/helmet/f13/power_armor/advanced/hellfire
	name = "hellfire power armor"
	desc = "A deep black helmet of Enclave-manufactured heavy power armor with yellow ballistic glass, based on pre-war designs such as the T-51 and improving off of data gathered by post-war designs such as the X-01. Most commonly fielded on the East Coast, no other helmet rivals it's strength."
	icon_state = "hellfirehelm"
	item_state = "hellfirehelm"


//Part of the peacekeeper enclave stuff, adjust values as needed.
/obj/item/clothing/head/helmet/f13/power_armor/x02helmet
	name = "Enclave power armor helmet"
	desc = "The Enclave Mark II Powered Combat Armor helmet."
	icon_state = "advanced"
	item_state = "advanced"
	slowdown = 0.1
	actions_types = list(/datum/action/item_action/toggle_helmet_light)
	salvaged_type = /obj/item/clothing/head/helmet/f13/heavy/salvaged_pa/x02
