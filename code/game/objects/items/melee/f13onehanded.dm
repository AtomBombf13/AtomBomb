// In this document: Onehanded templates, Swords, Knives, Clubs, Glove weapons, Tool weapons
// Maybe in the future instead of copy pasting weapons you think are too weak and repainting it and slapping on +30% damage, try adjusting the defines so whole categories arent obsoleted by the latest snowflake crap.

/obj/item/melee //Melee weapon template
	attack_speed = MELEE_SPEED_NORMAL
	max_integrity = 200
	armor = ARMOR_VALUE_GENERIC_ITEM

/obj/item/melee/onehanded
	name = "onehand melee template"
	desc = "should not exist"
	icon = 'icons/fallout/objects/melee/melee.dmi'
	lefthand_file = 'icons/fallout/onmob/weapons/melee1h_lefthand.dmi'
	righthand_file = 'icons/fallout/onmob/weapons/melee1h_righthand.dmi'
	force = WEAPON_FORCE_CLUB
	throwforce = THROWING_POOR
	throw_range = THROWRANGE_AVERAGE
	flags_1 = CONDUCT_1
	slot_flags = ITEM_SLOT_BELT
	w_class = WEIGHT_CLASS_NORMAL
	sharpness = SHARP_NONE
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	resistance_flags = FIRE_PROOF
	total_mass = TOTAL_MASS_MEDIEVAL_WEAPON
	hitsound = 'sound/weapons/bladeslice.ogg'




//////////////////////-------------------------------------------------------------
//					//
//		SWORDS		//		[ Block ]
//					//
//////////////////////

/obj/item/melee/onehanded/machete					//	[ Damage SWORD, Wounding] --------------
	name = "lawnmower machete"
	desc = "A makeshift machete made of a lawn mower blade."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/beltslot.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	icon_state = "machete_lawnmower"
	item_state = "machete_lawnmower"
//	icon_state = "machete_imp"
//	item_state = "salvagedmachete"
	force = WEAPON_FORCE_SWORD
	throwforce = THROWING_POOR
	wound_bonus = WOUNDING_BONUS_MODEST
	block_chance = 7
	sharpness = SHARP_EDGED

/obj/item/melee/onehanded/machete/forgedmachete		//	[ Damage SWORD, Wounding] -----------
	name = "machete"
	desc = "A forged machete made of high quality steel."
	icon_state = "machete"
	item_state = "machete"
	force = WEAPON_FORCE_SWORD
	block_chance = 8

/obj/item/melee/onehanded/machete/training			//	[ Damage 1, Bonus damage STAMINA] ----
	name = "training machete"
	desc = "A training machete made of tough wood."
	icon_state = "machete_training"
	item_state = "machete_training"
	force = 1
	throwforce = THROWING_PATHETIC
	wound_bonus = -20
	block_chance = 8

/obj/item/melee/onehanded/machete/training/attack(mob/living/M, mob/living/user)
	. = ..()
	if(!istype(M))
		return
	M.apply_damage(20, STAMINA, "chest", M.run_armor_check("chest", "melee"))

/obj/item/melee/onehanded/machete/gladius			//	[ Damage SWORD, Wounding, Block] -----------
	name = "gladius"
	desc = "A heavy cutting blade, made for war and mass produced in Legion territory."
	icon_state = "gladius"
	item_state = "gladius"
	wound_bonus = WOUNDING_BONUS_BIG
	block_chance = 10

/obj/item/melee/onehanded/machete/spatha			//	[ Damage SWORD + 3, Wounding, Block] --------
	name = "spatha"
	desc = "This long blade is favoured by Legion officers and leaders, a finely crafted weapon with good steel and hilt made from bronze and bone."
	icon_state = "spatha"
	item_state = "spatha"
	force = WEAPON_FORCE_SWORD+3
	wound_bonus = WOUNDING_BONUS_BIG
	block_chance = 18

/obj/item/melee/onehanded/machete/scrapsabre		//	[ Damage SWORD, Wounding, Block] --------
	name = "scrap sabre"
	desc = "Made from materials found in the wastes, a skilled blacksmith has turned it into a thing of deadly beauty."
	icon = 'icons/fallout/objects/melee/melee.dmi'
	lefthand_file = 'icons/fallout/onmob/weapons/melee1h_lefthand.dmi'
	righthand_file = 'icons/fallout/onmob/weapons/melee1h_righthand.dmi'
	icon_state = "scrapsabre"
	item_state = "scrapsabre"
	force = WEAPON_FORCE_SWORD
	block_chance = 15

/obj/item/melee/onehanded/chinesesword //[damage SWORD -2, low wounding, very high block]
	name = "chinese officer's sword"
	desc = "A sword usually issued to chinese officers during the great war. Despite being ntended for ceremonial use, it's still very well made and functional. Not very heavy but in trained hands its an incredibly agile weapon."
	icon = 'icons/fallout/objects/melee/melee.dmi'
	lefthand_file = 'icons/fallout/onmob/weapons/melee1h_lefthand.dmi'
	righthand_file = 'icons/fallout/onmob/weapons/melee1h_righthand.dmi'
	icon_state = "chinasword"
	item_state = "spathasmith" //placeholder
	force = WEAPON_FORCE_SWORD-2 //not weighty
	wound_bonus = WOUNDING_BONUS_MODEST
	block_chance = 25 //perfectly balanced
	damage_threshold_penetration = 2 //slight boost to DT pen, unique to swords, aiming for weakpoints perhaps?
	sharpness = SHARP_EDGED


//////////////////////-------------------------------------------------------------
//					//
//		KNIVES		//		[ Minor AP, Fast attack ]
//					//
//////////////////////
/obj/item/melee/onehanded/knife
	name = "knife template"
	desc = "should not exist"
	item_state = "knife"
	attack_speed = MELEE_SPEED_FAST
	force = WEAPON_FORCE_KNIFE
	throwforce = THROWING_DECENT
	armour_penetration = PIERCING_MINOR
	bare_wound_bonus = WOUNDING_BONUS_TINY
	throw_speed = 3
	throw_range = THROWRANGE_GOOD
	sharpness = SHARP_POINTY
	custom_materials = list(/datum/material/iron=6000)
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	var/bayonet = FALSE	//Can this be attached to a gun?

/obj/item/melee/onehanded/knife/Initialize()
	. = ..()
	AddComponent(/datum/component/butchering, 80 - force, 100, force - 10) //bonus chance increases depending on force

/obj/item/melee/onehanded/knife/attack(mob/living/carbon/M, mob/living/carbon/user)
	if(user.zone_selected == BODY_ZONE_PRECISE_EYES)
		return eyestab(M,user)
	else
		return ..()

/obj/item/melee/onehanded/knife/suicide_act(mob/user)
	user.visible_message(pick(span_suicide("[user] is slitting [user.p_their()] wrists with the [src.name]! It looks like [user.p_theyre()] trying to commit suicide."), \
						span_suicide("[user] is slitting [user.p_their()] throat with the [src.name]! It looks like [user.p_theyre()] trying to commit suicide."), \
						span_suicide("[user] is slitting [user.p_their()] stomach open with the [src.name]! It looks like [user.p_theyre()] trying to commit seppuku.")))
	return (BRUTELOSS)


/obj/item/melee/onehanded/knife/hunting			//	[ Damage KNIFE, Minor AP, Fast attack, Embed good] --------------
	name = "hunting knife"
	icon_state = "knife_hunting"
	desc = "Dependable hunting knife."
	embedding = list("pain_mult" = 4, "embed_chance" = 65, "fall_chance" = 10, "ignore_throwspeed_threshold" = TRUE)
	throwforce = THROWING_EFFECTIVE
	attack_verb = list("slashed", "stabbed", "sliced", "torn", "ripped", "cut")

/obj/item/melee/onehanded/knife/survival		//	[ Damage KNIFE, Minor AP, Fast attack, Embed ok ] ----------------
	name = "survival knife"
	icon_state = "knife_survival"
	desc = "Multi-purpose knife with blackened steel."
	embedding = list("pain_mult" = 4, "embed_chance" = 35, "fall_chance" = 10)
	throwforce = THROWING_EFFECTIVE

/obj/item/melee/onehanded/knife/bone			//	[ Damage KNIFE, Minor AP, Fast attack, Embed ok ] ---------------- Another copypaste detected, survival knife
	name = "bone dagger"
	item_state = "knife_bone"
	icon_state = "knife_bone"
	lefthand_file = 'icons/mob/inhands/weapons/swords_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/swords_righthand.dmi'
	desc = "A sharpened bone. The bare minimum in survival."
	embedding = list("pain_mult" = 4, "embed_chance" = 35, "fall_chance" = 10)
	custom_materials = null

/obj/item/melee/onehanded/knife/bayonet			//	[ Damage KNIFE, Minor AP, Fast attack, Bayonet ] -----------------
	name = "bayonet knife"
	icon_state = "knife_bayonet"
	desc = "This weapon is made for stabbing, not much use for other things."
	bayonet = TRUE

/obj/item/melee/onehanded/knife/bowie			//	[ Damage BIG KNIFE, Minor AP, Fast attack ] ----------------------
	name = "bowie knife"
	icon_state = "knife_bowie"
	item_state = "knife_bowie"
	desc = "A large clip point fighting knife."
	force = WEAPON_FORCE_BIG_KNIFE
	throwforce = THROWING_EFFECTIVE
	attack_verb = list("slashed", "stabbed", "sliced", "shanked", "ripped", "lacerated")

/obj/item/melee/onehanded/knife/trench			//	[ Damage BIG KNIFE + 1, Minor AP, Fast attack ] ------------------
	name = "trench knife"
	icon_state = "knife_trench"
	item_state = "knife_trench"
	desc = "This blade is designed for brutal close quarters combat."
	force = WEAPON_FORCE_BIG_KNIFE+1
	w_class = WEIGHT_CLASS_NORMAL
	custom_materials = list(/datum/material/iron=8000)
	attack_verb = list("slashed", "stabbed", "sliced", "shanked", "ripped", "lacerated")

/obj/item/melee/onehanded/knife/ritualdagger	//	[ Damage BIG KNIFE + 1, Minor AP, Fast attack ] ------------------
	name = "ritual dagger"
	desc = "An ancient blade used to carry out the spiritual rituals of the Wayfarer people."
	icon_state = "knife_ritual"
	item_state = "knife_ritual"
	armour_penetration = PIERCING_MINOR
	custom_materials = null

/obj/item/melee/onehanded/knife/switchblade		//	[ Damage KNIFE, Minor AP, Fast attack ] --------------------------
	name = "switchblade"
	desc = "A sharp, concealable, spring-loaded knife."
	icon_state = "knife_switch"
	force = 3
	throwforce = THROWING_PATHETIC
	hitsound = 'sound/weapons/genhit.ogg'
	attack_verb = list("stubbed", "poked")
	var/extended = 0
	var/extended_force = WEAPON_FORCE_KNIFE
	var/extended_throwforce = THROWING_DECENT
	var/extended_icon_state = "knife_switch_ext"
	var/retracted_icon_state = "knife_switch"

/obj/item/melee/onehanded/knife/switchblade/Initialize()
	. = ..()
	AddComponent(/datum/component/butchering, 40, 105)

/obj/item/melee/onehanded/knife/switchblade/attack_self(mob/user)
	extended = !extended
	playsound(src.loc, 'sound/weapons/batonextend.ogg', 50, 1)
	if(extended)
		force = extended_force
		w_class = WEIGHT_CLASS_NORMAL
		throwforce = extended_throwforce
		icon_state = extended_icon_state
		attack_verb = list("slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
		hitsound = 'sound/weapons/bladeslice.ogg'
		sharpness = SHARP_EDGED
	else
		force = initial(force)
		w_class = WEIGHT_CLASS_SMALL
		throwforce = initial(throwforce)
		icon_state = retracted_icon_state
		attack_verb = list("stubbed", "poked")
		hitsound = 'sound/weapons/genhit.ogg'
		sharpness = SHARP_NONE



////////////////////
//  Cosmic Knife  //	----------------------------------------
//////////////////// now you do the cleaning & heating manually.
/obj/item/melee/onehanded/knife/cosmicdirty		//	[ Damage KNIFE, Minor AP, Fast attack ] ----------------
	name = "dirty cosmic knife"
	desc = "A high-quality kitchen knife made from Saturnite alloy, this one is covered in oxidation. Perhaps Abraxo might clean it up?"
	icon_state = "knife_cosmic_dirty"
	item_state = "knife"
	force = WEAPON_FORCE_KNIFE
	armour_penetration = PIERCING_MINOR
	throwforce = THROWING_POOR

// Abraxo my beloved. Can now be used directly to clean the blade.
/obj/item/melee/onehanded/knife/cosmicdirty/attackby(obj/item/C, mob/user, params)
	if(istype(C, /obj/item/crafting/abraxo))
		user.visible_message("[user] begins cleaning the blade of the [src].", \
				span_notice("You begin scrubbing the [src] with Abraxo. Smells nice."), \
				span_italic("You hear faint sounds of scrubbing."))
		playsound(get_turf(src), 'sound/FermiChem/heatdam.ogg', 50, TRUE)
		if(!do_after(user, 60, TRUE, src))
			return
		new /obj/item/melee/onehanded/knife/cosmic(drop_location())
		qdel(src)
		qdel(C)
		return
	return ..()

/obj/item/melee/onehanded/knife/cosmic			//	[ Damage BIG KNIFE, Moderate AP, Fast attack ] -----------
	name = "cosmic knife"
	desc = "A high-quality kitchen knife made from Saturnite alloy, can be heated with a welder for easier cutting of frozen butter."
	icon_state = "knife_cosmic"
	item_state = "knife"
	force = WEAPON_FORCE_BIG_KNIFE
	armour_penetration = PIERCING_MODERATE
	throwforce = THROWING_DECENT

// Heat it with a welder
/obj/item/melee/onehanded/knife/cosmic/welder_act(mob/living/user, obj/item/I)
	if(I.use_tool(src, user, 20, volume=50, amount=15))
		user.visible_message("[user] heats up the blade of the [src].", \
				span_notice("You heat up the [src] until the blade glows!"), \
				span_italic("You hear faint sounds of a welder working."))
		new /obj/item/melee/onehanded/knife/cosmicheated(drop_location())
		qdel(src)
		return
	return ..()

/obj/item/melee/onehanded/knife/cosmicheated	//	[ Damage BIG KNIFE + 2, Major AP, Fast attack ] -----------
	name = "superheated cosmic knife"
	desc = "A high-quality kitchen knife made from Saturnite alloy, this one looks like it has been heated to high temperatures."
	icon_state = "knife_cosmic_heated"
	item_state = "knife"
	damtype = BURN
	force = WEAPON_FORCE_BIG_KNIFE+2
	armour_penetration = PIERCING_MAJOR
	throwforce = THROWING_EFFECTIVE
	w_class = WEIGHT_CLASS_NORMAL // Its super hot, not comfy to put back in your pocket.




////////////////////////////////// -------------------------------------------------
//								//
//		THROWING WEAPONS		//		[ Bonus damage STAMINA ]
//								//
//////////////////////////////////

/obj/item/throwing_star/spear					//	[ Throw Damage SUPREME, Minor AP, Embed] ------------------
	name = "throwing spear"
	desc = "An heavy hefty ancient weapon used to this day, due to its ease of lodging itself into its victim's body parts."
	lefthand_file = 'icons/mob/inhands/items_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/items_righthand.dmi'
	icon_state = "throw_spear"
	item_state = "tribalspear"
	force = WEAPON_FORCE_BIG_TOOL
	armour_penetration = PIERCING_MINOR
	throwforce = THROWING_SUPREME //clears threshholds for trash mobs
	max_reach = 2
	embedding = list("pain_mult" = 2, "embed_chance" = 40, "fall_chance" = 15)
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/melee/onehanded/knife/throwing		//	[ Throw Damage GOOD, Moderate AP, Fast attack, Embed ] -----
	name = "throwing knife"
	desc = "a finely balanced knife made from a lightweight alloy, designed for being thrown. You can easily embed these in someone, and you look darn cool while doing so."
	icon_state = "knife_throw"
	force = WEAPON_FORCE_KNIFE
	armour_penetration = PIERCING_MODERATE
	throwforce = THROWING_GOOD
	throw_speed = 5
	throw_range = THROWRANGE_JAVELIN
	bare_wound_bonus = WOUNDING_BONUS_MODEST //keep your arteries covered
	embedding = list("pain_mult" = 3, "embed_chance" = 55, "fall_chance" = 5)




//////////////////////-------------------------------------------------------------
//					//
//		CLUBS		//		[ Bonus damage STAMINA ]
//					//
//////////////////////

// Pipe						[ Damage CLUB, Bonus damage STAMINA ] -----------------------
/obj/item/melee/onehanded/club
	name = "pipe"
	desc = "A piece of rusted metal pipe, good for smashing heads. "
	icon_state = "pipe"
	item_state = "pipe"
	force = WEAPON_FORCE_CLUB
	throw_speed = 3
	attack_verb = list("mashed", "bashed", "piped", "hit", "bludgeoned", "whacked", "bonked")

/obj/item/melee/onehanded/club/attack(mob/living/M, mob/living/user)
	. = ..()
	if(!istype(M))
		return
	M.apply_damage(10, STAMINA, "chest", M.run_armor_check("chest", "melee"))


// War Club					[ Damage CLUB + 1, Bonus damage STAMINA ] --------------------
/obj/item/melee/onehanded/club/warclub
	name = "war club"
	desc = "A simple carved wooden club with turquoise inlays."
	icon_state = "warclub"
	item_state = "warclub"
	force = WEAPON_FORCE_CLUB+1
	throwforce = THROWING_EFFECTIVE
	block_chance = 5
	attack_verb = list("mashed", "bashed", "hit", "bludgeoned", "whacked")

/obj/item/melee/onehanded/club/warclub/attack(mob/living/M, mob/living/user)
	. = ..()
	if(!istype(M))
		return
	M.apply_damage(20, STAMINA, "chest", M.run_armor_check("chest", "melee"))


// Tire Iron 				[ Damage CLUB + 2 ] ------------------------------------------
/obj/item/melee/onehanded/club/tireiron
	name = "tire iron"
	desc = "A rusty old tire iron, normally used for loosening nuts from car tires.<br>Though it has a short reach, it has decent damage and a fast swing."
	icon_state = "tire"
	item_state = "tire"
	force = WEAPON_FORCE_CLUB + 2
	custom_materials = list(/datum/material/iron = 4000)


// NCR Flag					[ Damage CLUB, Block, NCR ] ----------------------------------
/obj/item/melee/onehanded/club/ncrflag
	name = "NCR flagpole"
	desc = "The proud standard of the New California Republic. Used as a tool by patriots, used as a weapon by legends."
	icon_state = "flag-ncr"
	item_state = "flag-ncr"
	force = WEAPON_FORCE_CLUB
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = null
	block_chance = 30
	attack_verb = list("smacked", "thwacked", "democratized", "freedomed")


// Classic Baton
/obj/item/melee/classic_baton
	name = "wooden baton"
	desc = "A wooden truncheon for beating criminal scum."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "baton"
	item_state = "classic_baton"
	lefthand_file = 'icons/mob/inhands/equipment/security_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/security_righthand.dmi'
	force = 18
	wound_bonus = 15
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = ITEM_SLOT_BELT
	var/stun_stam_cost_coeff = 1.25
	var/hardstun_ds = TRUE
	var/softstun_ds = 0
	var/stam_dmg = 30
	var/cooldown_check = 0 // Used internally, you don't want to modify
	var/cooldown = 13 // Default wait time until can stun again.
	var/stun_time_silicon = 60 // How long it stuns silicons for - 6 seconds.
	var/affect_silicon = FALSE // Does it stun silicons.
	var/on_sound // "On" sound, played when switching between able to stun or not.
	var/on_stun_sound = "sound/effects/woodhit.ogg" // Default path to sound for when we stun.
	var/stun_animation = TRUE // Do we animate the "hit" when stunning.
	var/on = TRUE // Are we on or off
	var/on_icon_state // What is our sprite when turned on
	var/off_icon_state // What is our sprite when turned off
	var/on_item_state // What is our in-hand sprite when turned on
	var/force_on // Damage when on - not stunning
	var/force_off // Damage when off - not stunning
	var/weight_class_on // What is the new size class when turned on

/obj/item/melee/classic_baton/Initialize()
	. = ..()

// Description for trying to stun when still on cooldown.
/obj/item/melee/classic_baton/proc/get_wait_description()
	return

// Description for when turning their baton "on"
/obj/item/melee/classic_baton/proc/get_on_description()
	. = list()
	.["local_on"] = "<span class ='warning'>You extend the baton.</span>"
	.["local_off"] = "<span class ='notice'>You collapse the baton.</span>"
	return .

// Default message for stunning mob.
/obj/item/melee/classic_baton/proc/get_stun_description(mob/living/target, mob/living/user)
	. = list()
	.["visible"] =  "<span class ='danger'>[user] has knocked down [target] with [src]!</span>"
	.["local"] = "<span class ='danger'>[user] has knocked down [target] with [src]!</span>"
	return .

// Default message for stunning a silicon.
/obj/item/melee/classic_baton/proc/get_silicon_stun_description(mob/living/target, mob/living/user)
	. = list()
	.["visible"] = span_danger("[user] pulses [target]'s sensors with the baton!")
	.["local"] = span_danger("You pulse [target]'s sensors with the baton!")
	return .

// Are we applying any special effects when we stun to carbon
/obj/item/melee/classic_baton/proc/additional_effects_carbon(mob/living/target, mob/living/user)
	return

// Are we applying any special effects when we stun to silicon
/obj/item/melee/classic_baton/proc/additional_effects_silicon(mob/living/target, mob/living/user)
	return

/obj/item/melee/classic_baton/attack(mob/living/target, mob/living/user)
	if(!on)
		return ..()

	if(IS_STAMCRIT(user))//CIT CHANGE - makes batons unusuable in stamina softcrit
		to_chat(user, span_warning("You're too exhausted for that."))//CIT CHANGE - ditto
		return //CIT CHANGE - ditto

	add_fingerprint(user)
	if((HAS_TRAIT(user, TRAIT_CLUMSY)) && prob(50))
		to_chat(user, "<span class ='danger'>You club yourself over the head.</span>")
		user.DefaultCombatKnockdown(60 * force)
		if(ishuman(user))
			var/mob/living/carbon/human/H = user
			H.apply_damage(2*force, BRUTE, BODY_ZONE_HEAD)
		else
			user.take_bodypart_damage(2*force)
		return
	if(iscyborg(target))
		if(user.a_intent != INTENT_HARM)	// We don't stun if we're on harm.
			if(affect_silicon)
				var/list/desc = get_silicon_stun_description(target, user)
				target.flash_act(affect_silicon = TRUE)
				target.Stun(stun_time_silicon)
				additional_effects_silicon(target, user)
				user.visible_message(desc["visible"], desc["local"])
				playsound(get_turf(src), on_stun_sound, 100, TRUE, -1)
				if(stun_animation)
					user.do_attack_animation(target)
			else
				..()
		else
			..()
		return
	if(!isliving(target))
		return
	if(user.a_intent == INTENT_HARM)
		if(!..() || !iscyborg(target))
			return
	else
		if(cooldown_check < world.time)
			if(target.mob_run_block(src, 0, "[user]'s [name]", ATTACK_TYPE_MELEE, 0, user, null, null) & BLOCK_SUCCESS)
				playsound(target, 'sound/weapons/genhit.ogg', 50, 1)
				return
			if(ishuman(target) && !user.zone_selected ==	BODY_ZONE_L_LEG || !user.zone_selected == BODY_ZONE_R_LEG)
				var/mob/living/carbon/human/H = target
				if(check_martial_counter(H, user))
					return
			var/list/desc = get_stun_description(target, user)
			if(stun_animation)
				user.do_attack_animation(target)
			playsound(get_turf(src), on_stun_sound, 75, 1, -1)
			target.adjustStaminaLoss(30)
			additional_effects_carbon(target, user)
			add_fingerprint(user)
			target.visible_message(desc["visible"], desc["local"])
			if(!iscarbon(user))
				target.LAssailant = null
			else
				target.LAssailant = WEAKREF(user)
			cooldown_check = world.time + cooldown
			user.adjustStaminaLossBuffered(getweight(user, STAM_COST_BATON_MOB_MULT))
		else
			var/wait_desc = get_wait_description()
			if(wait_desc)
				to_chat(user, wait_desc)
			return DISCARD_LAST_ACTION

// Military baton - Desired effect instant disarm on hit on NCR when used by MP, could be sorted with a interesting martial art maybe.
/obj/item/melee/classic_baton/militarypolice
	name = "military baton"
	desc = "Sturdy stick painted white, used by military police to get unruly troopers into line."
	icon = 'icons/fallout/objects/melee/melee.dmi'
	lefthand_file = 'icons/fallout/onmob/weapons/melee1h_lefthand.dmi'
	righthand_file = 'icons/fallout/onmob/weapons/melee1h_righthand.dmi'
	icon_state = "batonmp"
	item_state = "batonmp"

// Baton but coloured black
/obj/item/melee/classic_baton/police
	name = "police baton"
	desc = "A black plastic nightstick, used by police officers to detain rowdy law-breakers."
	icon = 'icons/fallout/objects/melee/melee.dmi'
	lefthand_file = 'icons/fallout/onmob/weapons/melee1h_lefthand.dmi'
	righthand_file = 'icons/fallout/onmob/weapons/melee1h_righthand.dmi'
	icon_state = "batonpolice"
	item_state = "batonpolice"

// Telescopic baton
/obj/item/melee/classic_baton/telescopic
	name = "telescopic baton"
	desc = "A compact yet robust personal defense weapon. Can be concealed when folded."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "telebaton_0"
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	item_state = null
	slot_flags = ITEM_SLOT_BELT
	w_class = WEIGHT_CLASS_SMALL
	item_flags = NONE
	force = 0
	on = FALSE
	on_sound = 'sound/weapons/batonextend.ogg'
	on_icon_state = "telebaton_1"
	off_icon_state = "telebaton_0"
	on_item_state = "nullrod"
	force_on = 10
	force_off = 0
	weight_class_on = WEIGHT_CLASS_BULKY
	total_mass = TOTAL_MASS_NORMAL_ITEM
	bare_wound_bonus = 5

/obj/item/melee/classic_baton/telescopic/suicide_act(mob/user)
	var/mob/living/carbon/human/H = user
	var/obj/item/organ/brain/B = H.getorgan(/obj/item/organ/brain)

	user.visible_message(span_suicide("[user] stuffs [src] up [user.p_their()] nose and presses the 'extend' button! It looks like [user.p_theyre()] trying to clear [user.p_their()] mind."))
	if(!on)
		src.attack_self(user)
	else
		playsound(loc, on_sound, 50, 1)
		add_fingerprint(user)
	sleep(3)
	if (H && !QDELETED(H))
		if (B && !QDELETED(B))
			H.internal_organs -= B
			qdel(B)
		H.spawn_gibs()
		return (BRUTELOSS)

/obj/item/melee/classic_baton/telescopic/attack_self(mob/user)
	on = !on
	var/list/desc = get_on_description()
	if(on)
		to_chat(user, desc["local_on"])
		icon_state = on_icon_state
		item_state = on_item_state
		w_class = weight_class_on
		force = force_on
		attack_verb = list("smacked", "struck", "cracked", "beaten")
	else
		to_chat(user, desc["local_off"])
		icon_state = off_icon_state
		item_state = null //no sprite for concealment even when in hand
		slot_flags = ITEM_SLOT_BELT
		w_class = WEIGHT_CLASS_SMALL
		force = force_off
		attack_verb = list("hit", "poked")
	playsound(loc, on_sound, 50, TRUE)
	add_fingerprint(user)




//////////////////////////////-----------------------------------------------------
//							//
//		GLOVE WEAPONS		//		[ fast attack, unarmed wonkiness ]
//							//
//////////////////////////////
/obj/item/melee/unarmed
	name = "glove weapon template"
	desc = "should not be here"
	icon = 'icons/fallout/objects/melee/melee.dmi'
	lefthand_file = 'icons/fallout/onmob/weapons/melee1h_lefthand.dmi'
	righthand_file = 'icons/fallout/onmob/weapons/melee1h_righthand.dmi'
	attack_speed = MELEE_SPEED_FAST
	force = WEAPON_FORCE_FIST_WEAPON
	throwforce = THROWING_PATHETIC
	throw_range = 5
	slot_flags = ITEM_SLOT_BELT | ITEM_SLOT_GLOVES
	w_class = WEIGHT_CLASS_SMALL
	flags_1 = CONDUCT_1
	sharpness = SHARP_NONE
	attack_verb = list("punched", "jabbed", "whacked")
	var/can_adjust_unarmed = TRUE
	var/unarmed_adjusted = TRUE

/obj/item/melee/unarmed/equipped(mob/user, slot)
	. = ..()
	var/mob/living/carbon/human/H = user
	if(unarmed_adjusted)
		mob_overlay_icon = righthand_file
	if(!unarmed_adjusted)
		mob_overlay_icon = lefthand_file
	if(ishuman(user) && slot == SLOT_GLOVES)
		ADD_TRAIT(user, TRAIT_UNARMED_WEAPON, "glove")
		if(HAS_TRAIT(user, TRAIT_UNARMED_WEAPON))
			H.dna.species.punchdamagehigh = force
			H.dna.species.punchdamagelow = force
			H.dna.species.attack_sound = hitsound
			if(sharpness == SHARP_POINTY || sharpness ==  SHARP_EDGED)
				H.dna.species.attack_verb = pick("slash","slice","rip","tear","cut","dice")
			if(sharpness == SHARP_NONE)
				H.dna.species.attack_verb = pick("punch","jab","whack")
	if(ishuman(user) && slot != SLOT_GLOVES && !H.gloves)
		REMOVE_TRAIT(user, TRAIT_UNARMED_WEAPON, "glove")
		if(!HAS_TRAIT(user, TRAIT_UNARMED_WEAPON))
			H.dna.species.punchdamagehigh = 1
			H.dna.species.punchdamagelow = 10
		if(HAS_TRAIT(user, TRAIT_IRONFIST))
			H.dna.species.punchdamagehigh = 4
			H.dna.species.punchdamagelow = 11
		H.dna.species.attack_sound = 'sound/weapons/punch1.ogg'
		H.dna.species.attack_verb = "punch"

/obj/item/melee/unarmed/examine(mob/user)
	. = ..()
	if(can_adjust_unarmed == TRUE)
		if(unarmed_adjusted == TRUE)
			. += span_notice("Alt-click on [src] to wear it on a different hand. You must take it off first, then put it on again.")
		else
			. += span_notice("Alt-click on [src] to wear it on a different hand. You must take it off first, then put it on again.")

/obj/item/melee/unarmed/AltClick(mob/user)
	. = ..()
	if(!istype(user) || !user.canUseTopic(src, BE_CLOSE, ishuman(user)))
		return
	if(can_adjust_unarmed == TRUE)
		toggle_unarmed_adjust()

/obj/item/melee/unarmed/proc/toggle_unarmed_adjust()
	unarmed_adjusted = !unarmed_adjusted
	to_chat(usr, span_notice("[src] is ready to be worn on another hand."))


// Brass knuckles				[ Damage FIST WEAPON ] ----------------------------------
/obj/item/melee/unarmed/brass
	name = "brass knuckles"
	desc = "Hardened knuckle grip that is actually made out of steel. They protect your hand, and do more damage, in unarmed combat."
	icon_state = "brass"
	item_state = "brass"
	attack_verb = list("punched", "jabbed", "whacked")
	custom_materials = list(/datum/material/iron = 2000)


// Spiked knuckles				[ Damage FIST WEAPON, Minor Piercing, Sharp ] ------------
/obj/item/melee/unarmed/brass/spiked
	name = "spiked knuckes"
	desc = "Unlike normal brass knuckles, these have a metal plate across the knuckles with four spikes on, one for each knuckle. So not only does the victim feel the force of the punch, but also the devastating effects of spikes being driven in."
	icon_state = "spiked"
	item_state = "spiked"
	force = WEAPON_FORCE_FIST_WEAPON
	armour_penetration = PIERCING_MINOR
	sharpness = SHARP_POINTY


// Sappers						[ Damage FIST WEAPON - 1, Bonus damage STAMINA ] --------
/obj/item/melee/unarmed/sappers
	name = "sappers"
	desc = "Lead filled gloves which are ideal for beating the crap out of opponents."
	icon_state = "sapper"
	item_state = "sapper"
	force = WEAPON_FORCE_FIST_WEAPON-1
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/melee/unarmed/sappers/attack(mob/living/M, mob/living/user)
	. = ..()
	if(!istype(M))
		return
	M.apply_damage(20, STAMINA, "head", M.run_armor_check("head", "melee"))


// Tiger claws					[ Damage FIST WEAPON + 4, Sharp ] -----------------------
/obj/item/melee/unarmed/tigerclaw
	name = "tiger claws"
	desc = "Gloves with short claws built into the palms."
	icon_state = "tiger_claw"
	item_state = "tiger_claw"
	force = WEAPON_FORCE_FIST_WEAPON+4
	w_class = WEIGHT_CLASS_NORMAL
	attack_verb = list("slashed", "sliced", "torn", "ripped", "diced", "cut")
	sharpness = SHARP_POINTY
	hitsound = 'sound/weapons/bladeslice.ogg'


// Lacerator					[ Damage FIST WEAPON + 1, Sharp, Wounding ] --------------
/obj/item/melee/unarmed/lacerator
	name = "lacerator"
	desc = "Leather gloves with razor blades built into the back of the hand."
	icon_state = "lacerator"
	item_state = "lacerator"
	w_class = WEIGHT_CLASS_NORMAL
	force = WEAPON_FORCE_FIST_WEAPON+1
	bare_wound_bonus = WOUNDING_BONUS_SMALL
	armour_penetration = 0 //my brother in christ it is razor blades on tape
	sharpness = SHARP_EDGED
	attack_verb = list("slashed", "sliced", "torn", "ripped", "diced", "cut")
	hitsound = 'sound/weapons/bladeslice.ogg'


// Mace Glove					[ Damage FIST WEAPON + 2 ] -------------------------------
/obj/item/melee/unarmed/maceglove
	name = "mace glove"
	desc = "Weighted metal gloves that are covered in spikes.  Don't expect to grab things with this."
	icon_state = "mace_glove"
	item_state = "mace_glove"
	force = WEAPON_FORCE_FIST_WEAPON+2
	w_class = WEIGHT_CLASS_BULKY
	sharpness = SHARP_NONE


// Punch Dagge					[ Damage FIST WEAPON + 1, Minor AP, Sharp ] ---------------
/obj/item/melee/unarmed/punchdagger
	name = "punch dagger"
	desc = "A dagger designed to be gripped in the user�s fist with the blade protruding between the middle and ring fingers, to increase the penetration of a punch."
	icon_state = "punch_dagger"
	item_state = "punch_dagger"
	force = WEAPON_FORCE_FIST_WEAPON+1
	armour_penetration = PIERCING_MINOR
	sharpness = SHARP_POINTY
	attack_verb = list("stabbed", "sliced", "pierced", "diced", "cut")
	hitsound = 'sound/weapons/bladeslice.ogg'

/obj/item/melee/unarmed/punchdagger/cyborg
	name = "assaultron claws"
	desc = "Razor sharp blades embedded into the grippers of an assaultron. Sharp."
	icon_state = "tiger_claw"
	item_state = "tiger_claw"
	force = 40 //Assaultron, so, makes sense.


// Deathclaw Gauntlet			[ Damage FIST WEAPON + 6, Huge AP, Sharp ] ---------------
/obj/item/melee/unarmed/deathclawgauntlet
	name = "deathclaw gauntlet"
	desc = "The severed hand of a mighty Deathclaw, cured, hollowed out, and given a harness to turn it into the deadliest gauntlet the wastes have ever seen."
	icon_state = "deathclaw_g"
	item_state = "deathclaw_g"
	force = WEAPON_FORCE_FIST_WEAPON+6
	armour_penetration = 0.6
	w_class = WEIGHT_CLASS_NORMAL
	sharpness = SHARP_EDGED
	attack_verb = list("slashed", "sliced", "torn", "ripped", "diced", "cut")
	hitsound = 'sound/weapons/bladeslice.ogg'


//Yao Guai Gauntlet				[ Damage FIST WEAPON -4, Bleeding, Fast ] ----------------
/obj/item/melee/unarmed/yaoguaigauntlet
	name = "yao guai gauntlet"
	desc = "The severed hand of a yao guai, the hide cured, the muscles and bone removed, and given a harness to turn it into a deadly gauntlet. Usually seen around the hands of the Sorrows tribe."
	icon_state = "yao_guai_g"
	item_state = "deathclaw_g"
	attack_speed = MELEE_SPEED_FAST
	force = WEAPON_FORCE_FIST_WEAPON-4
	w_class = WEIGHT_CLASS_NORMAL
	sharpness = SHARP_EDGED
	attack_verb = list("slashed", "sliced", "torn", "ripped", "diced", "cut")
	hitsound = 'sound/weapons/bladeslice.ogg'

/obj/item/melee/unarmed/yaoguaigauntlet/attack(mob/living/target, mob/living/user)
	. = ..()
	if(!isliving(target))
		return
	target.apply_status_effect(/datum/status_effect/stacking/saw_bleed/yaoguaigauntlet)




//////////////////////-------------------------------------------------------------
//					//
//		MISC		//
//					//
//////////////////////

// Slave whip					[ Damage 1, Sharp ] ----------------
/obj/item/melee/onehanded/slavewhip
	name = "slave whip"
	desc = "Corded leather strips turned into a instrument of pain. Cracks ominously when a skilled wielder uses it."
	icon_state = "whip"
	item_state = "chain"
	force = 1
	bare_wound_bonus = WOUNDING_BONUS_TINY
	sharpness = SHARP_EDGED
	attack_verb = list("flogged", "whipped", "lashed", "disciplined")
	hitsound = 'sound/weapons/whip.ogg'

/obj/item/melee/onehanded/slavewhip/attack(mob/living/M, mob/living/user)
	. = ..()
	if(!istype(M))
		return
	M.apply_damage(20, STAMINA, null, 0)

//Tribal Butcher's Knife
/obj/item/kitchen/knife/butcher/tribal
	name = "Carving Knife"
	desc = "A simple, hand-fashioned carving knife meant for separating meat from bone. Hardly more than some sharpened, rusty metal stuck between a tied wooden handle."
	icon = 'icons/fallout/objects/kitchen.dmi'
	icon_state = "knife_butcher_primal"
	force = 13
	throwforce = 7
	custom_materials = list(/datum/material/iron=MINERAL_MATERIAL_AMOUNT*3, /datum/material/wood=MINERAL_MATERIAL_AMOUNT*2)
	custom_price = PRICE_ALMOST_CHEAP

// Frying pan					[ Damage CLUB - 5 ] ----------------
/obj/item/melee/onehanded/club/fryingpan
	name = "frying pan"
	desc = "An ancient cast iron frying pan.<br>It's heavy, but fairly useful if you need to keep the mutants away, and don't have a better weapon around."
	icon_state = "pan"
	item_state = "pan"
	force = WEAPON_FORCE_CLUB-5 //Just try to swing a frying pan//BONK
	throwforce = THROWING_POOR
	throw_speed = 1
	throw_range = THROWRANGE_BAD
	hitsound = 'sound/f13weapons/pan.ogg'
	custom_materials = list(/datum/material/iron = 4000)

// Entrenching tool P81
/obj/item/shovel/trench
	name = "p81 entrenching tool"
	desc = "The 'Pattern 2281' Entrenching Tool is a new piece of infantry equipment given in limited quantity to infantry troops. An extremely robust shovel with a serrated edge for chopping wood."
	icon = 'icons/fallout/objects/melee/melee.dmi'
	lefthand_file = 'icons/fallout/onmob/weapons/melee1h_lefthand.dmi'
	righthand_file = 'icons/fallout/onmob/weapons/melee1h_righthand.dmi'
	icon_state = "entrenching_tool"
	item_state = "trench"
	force = WEAPON_FORCE_CLUB
	throwforce = THROWING_PATHETIC
	w_class = WEIGHT_CLASS_NORMAL
	toolspeed = 0.7
	sharpness = SHARP_EDGED
	attack_verb = list("cleaved", "chopped", "sliced", "slashed")


// Hatchet				Force 24
// Wrench				Force 12
// Crowbar				Force 15
// Kitchen knife		Force 15
// Rolling pin			Force x

// =/ Sus
/obj/item/melee/onehanded/dragonfire
	name = "Dragonfire Katana"
	desc = "After the world ended, seppuku rates in Japan skyrocketed, the owner of this one however is crazy enough to keep going!"
	icon_state = "DFkatana"
	item_state = "DFkatana"
	lefthand_file = 'icons/mob/inhands/weapons/swords_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/swords_righthand.dmi'
	flags_1 = CONDUCT_1
	slot_flags = ITEM_SLOT_BELT | ITEM_SLOT_BACK
	force = 30
	throwforce = 10
	w_class = WEIGHT_CLASS_BULKY
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	sharpness = SHARP_EDGED
	max_integrity = 200
	armor = ARMOR_VALUE_GENERIC_ITEM
	resistance_flags = FIRE_PROOF
	total_mass = TOTAL_MASS_MEDIEVAL_WEAPON

/obj/item/melee/onehanded/machete/spatha/longblade
	name = "forged claymore"
	desc = "A long one-handed blade sporting lovingly applied wraps and a wonderfully forged and engraved guard. The blade looks to be carefully sharpened."
	icon_state = "longblade"
	item_state = "longblade"
	force = 38
	block_chance = 18

/*
CODE ARCHIVE MELEE

CODE FOR BLEEDING STACK
/obj/item/kitchen/knife/bloodletter/afterattack(atom/target, mob/user, proximity_flag, click_parameters)
	. = ..()
	if(!isliving(target) || !proximity_flag)
		return
	var/mob/living/M = target
	if(!(M.mob_biotypes & MOB_ORGANIC))
		return
	var/datum/status_effect/stacking/saw_bleed/bloodletting/B = M.has_status_effect(/datum/status_effect/stacking/saw_bleed/bloodletting)
	if(!B)
		M.apply_status_effect(/datum/status_effect/stacking/saw_bleed/bloodletting, bleed_stacks_per_hit)
	else
		B.add_stacks(bleed_stacks_per_hit)
*/
