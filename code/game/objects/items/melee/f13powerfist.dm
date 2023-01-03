/////////////////
// POWER FISTS //
/////////////////		-Uses power (gas currently) for knockback. Heavy AP, specialized for attacking heavy armor

// Power Fist			Throws targets. Max damage 44. Full AP.
/obj/item/melee/unarmed/powerfist
	name = "power fist"
	desc = "A metal gauntlet with a piston-powered ram on top for that extra 'oomph' in your punch."
	icon_state = "powerfist"
	item_state = "powerfist"
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	hitsound = 'sound/weapons/resonator_blast.ogg'
	attack_speed = MELEE_SPEED_NORMAL
	force = 28
	armour_penetration = 0.5
	throwforce = 10
	throw_range = 3
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = ITEM_SLOT_GLOVES
	flags_1 = CONDUCT_1
	attack_verb = list("whacked", "fisted", "power-punched")
	var/transfer_prints = TRUE //prevents runtimes with forensics when held in glove slot
	var/throw_distance = 1
	var/power = 1
	var/knockback_anchored = FALSE


/obj/item/melee/unarmed/powerfist/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/knockback, throw_distance, FALSE, knockback_anchored)

/obj/item/melee/unarmed/powerfist/attackby(obj/item/W, mob/user, params)
	if(!power)
		return
	if(istype(W, /obj/item/wrench))
		switch(power)
			if(1)
				power = 2
			if(2)
				power = 1
		if(GetComponent(/datum/component/knockback))
			var/datum/component/knockback/KB = GetComponent(/datum/component/knockback)
			KB.throw_distance = initial(throw_distance) * power
		W.play_tool_sound(src)
		to_chat(user, "<span class='notice'>You tweak \the [src]'s piston valve to [power].</span>")
		force = initial(force) * power
		attack_speed = CLICK_CD_MELEE * power

// Goliath				Throws targets far. Max damage 50.
/obj/item/melee/unarmed/powerfist/goliath
	name = "Goliath"
	desc = "A massive, experimental metal gauntlet crafted by some poor bastard in Redwater that since outlived their usefulness. The piston-powered ram on top is designed to throw targets very, very far."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
//	icon = 'icons/fallout/objects/melee/melee.dmi'
//	lefthand_file = 'icons/fallout/onmob/weapons/melee1h_lefthand.dmi'
//	righthand_file = 'icons/fallout/onmob/weapons/melee1h_righthand.dmi'
	icon_state = "goliath"
	item_state = "goliath"
	force = 31
	throw_distance = 3


// Ballistic Fist			Keywords: Damage max 42, AP 0.45, Shotgun
/obj/item/gun/ballistic/revolver/ballisticfist
	name = "ballistic fist"
	desc = "This powerfist has been modified to have two shotgun barrels welded to it, with the trigger integrated into the knuckle guard. For those times when you want to punch someone and shoot them in the face at the same time."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "ballisticfist"
	item_state = "powerfist"
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	force = 30
	armour_penetration = 0.45
	mag_type = /obj/item/ammo_box/magazine/internal/shot/dual
	fire_sound = 'sound/f13weapons/caravan_shotgun.ogg'
	slot_flags = ITEM_SLOT_BELT | ITEM_SLOT_GLOVES
	w_class = WEIGHT_CLASS_NORMAL
	item_flags = NEEDS_PERMIT //doesn't slow you down
	fire_delay = 0
	var/transfer_prints = TRUE //prevents runtimes with forensics when held in glove slot


// Mole Miner
/obj/item/melee/unarmed/powerfist/moleminer
	name = "mole miner gauntlet"
	desc = "A hand-held mining and cutting implement, repurposed into a deadly melee weapon.  Its name origins are a mystery..."
	icon_state = "mole_miner_g"
	item_state = "mole_miner_g"
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	hitsound = 'sound/weapons/bladeslice.ogg'
	force = 15
	throw_distance = 5
	throwforce = THROWING_POOR
	throw_range = 7
	attack_verb = list("slashed", "sliced", "torn", "ripped", "diced", "cut")
	tool_behaviour = TOOL_MINING
	var/digrange = 0
	toolspeed = 0.4
	sharpness = SHARP_EDGED
	slot_flags = ITEM_SLOT_BELT | ITEM_SLOT_GLOVES


/////////////////////
// ADVANCED SWORDS //
/////////////////////

// Ripper				Keywords: Damage 10/45, Wound bonus, block
/obj/item/melee/powered/ripper
	name = "ripper"
	desc = "The Ripper™ vibroblade is powered by a small energy cell wich allows it to easily cut through flesh and bone."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/beltslot.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	icon_state = "ripper"
//	icon = 'icons/fallout/objects/melee/melee.dmi'
//	lefthand_file = 'icons/fallout/onmob/weapons/melee1h_lefthand.dmi'
//	righthand_file = 'icons/fallout/onmob/weapons/melee1h_righthand.dmi'
	force = 10
	wound_bonus = WOUNDING_BONUS_BIG
	block_chance = 15
	throw_speed = 3
	throw_range = 4
	throwforce = THROWING_POOR
	w_class = WEIGHT_CLASS_NORMAL
	total_mass = TOTAL_MASS_MEDIEVAL_WEAPON
	slot_flags = ITEM_SLOT_SUITSTORE | ITEM_SLOT_BELT
	tool_behaviour = TOOL_SAW
	sharpness = SHARP_EDGED
	toolspeed = 0.8 //as good as a circular saw
	resistance_flags = FIRE_PROOF
	hitsound = 'sound/weapons/chainsawhit.ogg'
	var/on_item_state = "ripper_on"
	var/off_item_state = "ripper"
	var/weight_class_on = WEIGHT_CLASS_HUGE
	var/force_on = WEAPON_FORCE_BRUTAL
	var/force_off = 10
	var/on = FALSE
	var/on_icon_state = "ripper_on"
	var/off_icon_state = "ripper"
	var/on_sound = 'sound/weapons/chainsawhit.ogg'
	var/description_on = "<span class ='warning'>You thumb the on button, the whining, blurry edge of the Ripper now lethal to touch.</span>"
	var/description_off = "<span class ='notice'>You turn off the Ripper, the buzz of the cutting teeth ceasing.</span>"

/obj/item/melee/powered/ripper/attack_self(mob/user)
	on = !on
	to_chat(user, description_on)
	if(on)
		to_chat(user, description_on)
		icon_state = on_icon_state
		item_state = on_item_state
		w_class = weight_class_on
		force = force_on
		slot_flags = null
		attack_verb = list("sawed", "torn", "cut", "chopped", "diced")
		playsound(loc, on_sound, 50, TRUE)
	else
		to_chat(user, description_off)
		icon_state = off_icon_state
		item_state = off_item_state
		w_class = WEIGHT_CLASS_NORMAL
		force = force_off
		slot_flags = ITEM_SLOT_SUITSTORE | ITEM_SLOT_BELT
		attack_verb = list("poked", "scraped")
	add_fingerprint(user)


/obj/item/melee/powered/ripper/afterattack(atom/A, mob/living/user, proximity)
	. = ..()
	if(!proximity || !wielded || IS_STAMCRIT(user))
		return
	if(istype(A, /obj/structure/window)) //destroys windows and grilles in one hit (or more if it has a ton of health like plasmaglass)
		var/obj/structure/window/W = A
		W.take_damage(100, BRUTE, "melee", 0)
	else if(istype(A, /obj/structure/barricade/bars))
		var/obj/structure/barricade/bars/B = A
		B.take_damage(155, BRUTE, "melee", 0) //200 damage, 2-shot vs metal bars
	else if(istype(A, /obj/structure/grille))
		var/obj/structure/grille/G = A
		G.take_damage(40, BRUTE, "melee", 0)
	else if(istype(A, /obj/machinery/door))
		var/obj/machinery/door/D = A
		D.take_damage(20, BRUTE, "melee", 0)
	else if(istype(A, /obj/structure/simple_door))
		var/obj/structure/simple_door/M = A
		M.take_damage(20, BRUTE, "melee", 0)

//Warhammer chainsword			Keywords: Damage 10/50, Wound bonus, Block, Bonus AP + 0.15
/obj/item/melee/powered/ripper/prewar
	name = "pre-war military ripper"
	desc = "A hand-held, militarized chainsaw, popular with Army units requiring a compact engineering tool for cutting. Just what material is intended to be cut with the weapon remains open to debate."
	icon = 'icons/fallout/objects/melee/melee.dmi'
	lefthand_file = 'icons/fallout/onmob/weapons/melee1h_lefthand.dmi'
	righthand_file = 'icons/fallout/onmob/weapons/melee1h_righthand.dmi'
	icon_state = "prewarrip_off"
	on_icon_state = "prewarrip_on"
	off_icon_state = "prewarrip_off"
	on_item_state = "prewarrip_on"
	off_item_state = "prewarrip_off"
	force_on = WEAPON_FORCE_BRUTAL
	armour_penetration = PIERCING_MINOR


// Shishkebab backpack				The shishkebab weapon base unit
/obj/item/shishkebabpack
	name = "shishkebab backpack"
	desc = "A backpack containing a large quantity of fuel and a pipe attaching it to a long, deadly blade. You ever wanted to set fire to people with a sword?"
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "shishkebabpack"
	item_state = "shishkebabpack"
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK
//	actions_types = list(/datum/action/item_action/toggle_shishkebab)
	armor = ARMOR_VALUE_GENERIC_ITEM
	resistance_flags = FIRE_PROOF

	var/obj/item/sword

/obj/item/shishkebabpack/Initialize()
	. = ..()
	sword = make_sword()

/obj/item/shishkebabpack/ui_action_click(mob/user)
	toggle_shishkebab(user)

/obj/item/shishkebabpack/item_action_slot_check(slot, mob/user)
	if(slot == user.getBackSlot())
		return 1

/obj/item/shishkebabpack/proc/toggle_shishkebab(mob/living/user)
	if(!istype(user))
		return
	if(user.get_item_by_slot(user.getBackSlot()) != src)
		to_chat(user, span_warning("The backpack must be worn properly to use!"))
		return
	if(user.incapacitated())
		return

	if(QDELETED(sword))
		sword = make_sword()
	if(sword in src)
		//Detach the sword into the user's hands
		if(!user.put_in_hands(sword))
			to_chat(user, span_warning("You need a free hand to hold the shishkebab!"))
			return
	else
		//Remove from their hands and put back "into" the tank
		remove_sword()

/obj/item/shishkebabpack/verb/toggle_shishkebab_verb()
	set name = "Toggle Shishkebab"
	set category = "Object"
	toggle_shishkebab(usr)

/obj/item/shishkebabpack/proc/make_sword()
	return new /obj/item/weapon/melee/shishkebab(src)

/obj/item/shishkebabpack/equipped(mob/user, slot)
	..()
	if(slot != SLOT_BACK)
		remove_sword()

/obj/item/shishkebabpack/proc/remove_sword()
	if(ismob(sword.loc))
		var/mob/M = sword.loc
		M.temporarilyRemoveItemFromInventory(sword, TRUE)
	sword.forceMove(src)

/obj/item/shishkebabpack/Destroy()
	QDEL_NULL(sword)
	return ..()

/obj/item/shishkebabpack/attack_hand(mob/user)
	if (user.get_item_by_slot(user.getBackSlot()) == src)
		toggle_shishkebab(user)
	else
		return ..()

/obj/item/shishkebabpack/MouseDrop(obj/over_object)
	var/mob/M = loc
	if(istype(M) && istype(over_object, /obj/screen/inventory/hand))
		var/obj/screen/inventory/hand/H = over_object
		M.putItemFromInventoryInHandIfPossible(src, H.held_index)
	return ..()

/obj/item/shishkebabpack/attackby(obj/item/W, mob/user, params)
	if(W == sword)
		remove_sword()
		return 1
	else
		return ..()

/obj/item/shishkebabpack/dropped(mob/user)
	..()
	remove_sword()

// Shishkebab sword				Keywords: Damage 55 (fire), Tool welder
/obj/item/weapon/melee/shishkebab //This should never exist without the backpack.
	name = "shishkebab"
	desc = "A deadly flaming sword covered in fuel. You're not sure this is entirely safe."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "shishkebab"
	item_state = "shishkebab"
	lefthand_file = 'icons/mob/inhands/weapons/swords_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/swords_righthand.dmi'
	force =  WEAPON_FORCE_MASSIVE
	damtype = "fire"
	w_class = WEIGHT_CLASS_BULKY
	item_flags = ABSTRACT  // don't put in storage
	slot_flags = 0
	tool_behaviour = TOOL_WELDER
	toolspeed = 0.3
	var/obj/item/shishkebabpack/tank

/obj/item/weapon/melee/shishkebab/Initialize()
	. = ..()
	tank = loc
	if(!istype(tank))
		return INITIALIZE_HINT_QDEL

/obj/item/weapon/melee/shishkebab/attack_self()
	return

/obj/item/weapon/melee/shishkebab/doMove(atom/destination)
	if(destination && (destination != tank.loc || !ismob(destination)))
		if (loc != tank)
			to_chat(tank.loc, span_notice("The shishkebab slides back into the backpack tank."))
		destination = tank
	..()
