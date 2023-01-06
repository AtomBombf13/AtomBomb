// this file only exists so its easier to convert to citadel style wielding if a server using this module goes that way. Clunky but I lack the time to make it more elegant. No biggie if it gets purged.

/*
/obj/item/melee/smith
	name = "base class obj/item/melee/smith"
	desc = "cringe"
	icon = 'modular_atom/blacksmith/icons/blacksmith.dmi'
	lefthand_file = 'modular_atom/blacksmith/icons/onmob/lefthand.dmi'
	righthand_file = 'modular_atom/blacksmith/icons/onmob/righthand.dmi'
	mob_overlay_icon = 'modular_atom/blacksmith/icons/onmob/slot.dmi'
	force = FORCE_SMITH_LOW
	throwforce = THROWING_DECENT
	wound_bonus = WOUNDING_BONUS_MODEST
	wielded_mult = 1
	material_flags = MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS
	total_mass = TOTAL_MASS_MEDIEVAL_WEAPON
	slot_flags = ITEM_SLOT_BELT
	w_class = WEIGHT_CLASS_NORMAL
	obj_flags = UNIQUE_RENAME
	flags_1 = CONDUCT_1
	var/quality
	var/overlay_state = "woodenrod"
	var/mutable_appearance/overlay
	var/wield_force = 15

/obj/item/melee/smith/Initialize()
	. = ..()
	if(desc == "cringe")
		desc = "A handmade [name]."
	overlay = mutable_appearance(icon, overlay_state)
	overlay.appearance_flags = RESET_COLOR
	add_overlay(overlay)
	if(force < 0)
		force = 0
// to make it eris compatible
/obj/item/twohanded/smithed
	icon = 'modular_atom/blacksmith/icons/blacksmith.dmi'
	lefthand_file = 'modular_atom/blacksmith/icons/onmob/lefthand.dmi'
	righthand_file = 'modular_atom/blacksmith/icons/onmob/righthand.dmi'
	mob_overlay_icon = 'modular_atom/blacksmith/icons/onmob/slot.dmi'
	attack_speed = MELEE_SPEED_SLOW
	force = FORCE_SMITH_LOW
	throwforce = THROWING_POOR
	sharpness = SHARP_EDGED
	material_flags = MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS
	wielded_mult = 1.5
	w_class = WEIGHT_CLASS_BULKY
	wielded = FALSE
	total_mass = (TOTAL_MASS_MEDIEVAL_WEAPON * 1.5)
	max_integrity = 200
	armor = ARMOR_VALUE_GENERIC_ITEM
	flags_1 = CONDUCT_1
	var/mutable_appearance/overlay
	var/overlay_state = "woodenrod"
	var/x_offset = null
	var/y_offset = null

/obj/item/twohanded/smithed/Initialize()
	. = ..()
	overlay = mutable_appearance(icon, overlay_state)
	overlay.appearance_flags = RESET_COLOR
	add_overlay(overlay)
	if(force < 0)
		force = 0
/*
/obj/item/melee/smith/twohand/Initialize()
	. = ..()
	RegisterSignal(src, COMSIG_TWOHANDED_WIELD, .proc/on_wield)
	RegisterSignal(src, COMSIG_TWOHANDED_UNWIELD, .proc/on_unwield)

/obj/item/twohanded/smithed/proc/on_wield(obj/item/source, mob/user)
	wielded = TRUE

/obj/item/twohanded/smithed/proc/on_unwield(obj/item/source, mob/user)
	wielded = FALSE

/obj/item/twohanded/smithed/update_icon_state()
	icon_state = "[icon_prefix]"
*/

/obj/item/melee/smith/twohand
	icon = 'modular_atom/blacksmith/icons/blacksmith.dmi'
	lefthand_file = 'modular_atom/blacksmith/icons/onmob/lefthand.dmi'
	righthand_file = 'modular_atom/blacksmith/icons/onmob/righthand.dmi'
	mob_overlay_icon = 'modular_atom/blacksmith/icons/onmob/slot.dmi'
	attack_speed = MELEE_SPEED_SLOW
	force = FORCE_SMITH_LOW
	throwforce = THROWING_POOR
	sharpness = SHARP_EDGED
	material_flags = MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS
	wielded_mult = 1.5
	w_class = WEIGHT_CLASS_BULKY
	wielded = FALSE
	total_mass = (TOTAL_MASS_MEDIEVAL_WEAPON * 1.5)
	var/icon_prefix = null
	var/x_offset = null
	var/y_offset = null

/obj/item/melee/smith/twohand/Initialize()
	. = ..()
	RegisterSignal(src, COMSIG_TWOHANDED_WIELD, .proc/on_wield)
	RegisterSignal(src, COMSIG_TWOHANDED_UNWIELD, .proc/on_unwield)

/obj/item/melee/smith/twohand/proc/on_wield(obj/item/source, mob/user)
	wielded = TRUE

/obj/item/melee/smith/twohand/proc/on_unwield(obj/item/source, mob/user)
	wielded = FALSE

/obj/item/melee/smith/twohand/update_icon_state()
	icon_state = "[icon_prefix]"



//////////////////////////////////
//								//
//  		LONG SWORDS			//
//								//
//////////////////////////////////

// ------------ KATANA ------------ // [AP 0.2 Parry]
/obj/item/twohanded/smithed/katana
	name = "katana"
	icon_state = "katana_smith"
	icon_prefix = "katana_smith"
// 	icon_wielded = "katana_smith2"
	overlay_state = "hilt_katana"
	force = (FORCE_SMITH_HIGH-1)
	armour_penetration = PIERCING_MODERATE
	throwforce = THROWING_POOR
	wound_bonus = WOUNDING_BONUS_BIG
	wielded_mult = 1.25
	item_flags = ITEM_CAN_PARRY
	block_chance = 15
	block_parry_data = /datum/block_parry_data/smithkatana
	slot_flags = ITEM_SLOT_BELT
	hitsound = 'modular_atom/blacksmith/sound/hit_sword.ogg'


// ------------ LONGSWORD ------------ // [AP 0.2 Parry]
/obj/item/twohanded/smithed/katana/longsword
	name = "longsword"
	icon_state = "longsword_smith"
	icon_prefix = "longsword_smith"
// 	icon_wielded = "longsword_smith2"
	overlay_state = "hilt_longsword"


// ------------ SCRAP BLADE ------------ // [AP 0.2 Parry]
/obj/item/twohanded/smithed/katana/scrapblade
	name = "scrap blade"
	icon_state = "scrap_smith"
	icon_prefix = "scrap_smith"
// 	icon_wielded = "scrap_smith2"
	overlay_state = "hilt_scrap"
	attack_speed = MELEE_SPEED_SLOW
	force = FORCE_SMITH_HIGH

/obj/item/twohanded/smithed/katana/scrapblade/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/butchering, 110, 75) //decent in a pinch, but pretty bad.


//////////////////////////////////
//								//
// 		 		AXES			//
//								//
//////////////////////////////////

// ------------ HEAVY AXE ------------ // [AP 0.1 Doorbusting]
/obj/item/twohanded/smithed/axe
	name = "heavy axe"
	icon_state = "axe_smith"
	icon_prefix = "axe_smith"
// 	icon_wielded = "axe_smith2"
	overlay_state = "shaft_axe"
	force = FORCE_SMITH_LOW
	armour_penetration = PIERCING_MINOR
	throwforce = THROWING_POOR
	wound_bonus = WOUNDING_BONUS_BIG
	total_mass = TOTAL_MASS_MEDIEVAL_WEAPON * 2
	slot_flags = ITEM_SLOT_BACK


// ------------ LEGION WAR AXE ------------ // [AP 0.1 Doorbusting]
/obj/item/twohanded/smithed/axe/waraxe
	name = "war axe"
	icon_state = "waraxe_smith"
	icon_prefix = "waraxe_smith"
// 	icon_wielded = "waraxe_smith2"
	overlay_state = "shaft_waraxe"
	throwforce = THROWING_GOOD


// ------------ GHOUL CRUSHER ------------ // [Ghoul bonus] - for those dry twig like limbs, snap snap..(was meant to dislocate PC ghouls but code did not work properly so removed)
/obj/item/twohanded/smithed/crusher
	name = "crusher"
	icon_state = "crusher_smith"
	icon_prefix = "crusher_smith"
// 	icon_wielded = "crusher_smith2"
	overlay_state = "shaft_crusher"
	attack_speed = MELEE_SPEED_SLOWER
	force = FORCE_SMITH_LOW
	armour_penetration = PIERCING_MODERATE
	throwforce = THROWING_PATHETIC
	wound_bonus = WOUNDING_BONUS_HUGE
	sharpness = SHARP_NONE
	slot_flags = null
	total_mass = TOTAL_MASS_MEDIEVAL_WEAPON * 2
	hitsound = 'modular_atom/blacksmith/sound/hit_mace.ogg'



//////////////////////////////////////
//									//
// 		 		POLEARMS			//
//									//
//////////////////////////////////////

// ------------ SPEAR ------------ // [Reach]
/obj/item/twohanded/smithed/spear
	name = "spear"
	lefthand_file = 'modular_atom/blacksmith/icons/onmob/64x64_lefthand.dmi'
	righthand_file = 'modular_atom/blacksmith/icons/onmob/64x64_righthand.dmi'
	icon_state = "spear_smith"
	icon_prefix = "spear_smith"
	wielded_icon = "spear_smith2"
	overlay_state = "shaft_spear"
	force = FORCE_SMITH_REACH
	throwforce = THROWING_GOOD
	wielded_mult = 1.3
	max_reach = 2
	sharpness = SHARP_POINTY
	inhand_x_dimension = 64
	inhand_y_dimension = 64


// ------------ TRIDENT ------------ // [Reach Embed]
/obj/item/twohanded/smithed/spear/trident
	name = "trident"
	desc = "Made for spearing small lizard and fish, able to pin down the prey if thrown."
	icon_state = "trident_smith"
	icon_prefix = "trident_smith"
	wielded_icon = "trident_smith2"
	overlay_state = "shaft_trident"
	attack_speed = MELEE_SPEED_SLOW
	force = (FORCE_SMITH_REACH+1)	
	embedding = list("pain_mult" = 2, "embed_chance" = 40, "fall_chance" = 30, "ignore_throwspeed_threshold" = TRUE)
	armour_penetration = 0
/*
/obj/item/twohanded/smithed/spear/trident/Initialize()
	. = ..()
	desc = "Made for spearing small lizard and fish, able to pin down the prey if thrown."
*/
// ------------ LEGION LANCE ------------ // [Reach]
/obj/item/twohanded/smithed/spear/lance
	name = "legion lance"
	icon_state = "lance_smith"
	icon_prefix = "lance_smith"
	wielded_icon = "lance_smith2"
	overlay_state = "shaft_lance"

*/
