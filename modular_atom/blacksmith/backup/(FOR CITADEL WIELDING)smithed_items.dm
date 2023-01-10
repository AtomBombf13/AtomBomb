// this file only exists so its easier to convert to citadel style wielding if a server using this module goes that way. Clunky but I lack the time to make it more elegant. No biggie if it gets purged.

/*
/obj/item/blacksmith
	icon = 'modular_atom/blacksmith/icons/blacksmith.dmi'
	righthand_file = 'modular_atom/blacksmith/icons/onmob/righthand.dmi'
	lefthand_file = 'modular_atom/blacksmith/icons/onmob/lefthand.dmi'
	force = WEAPON_FORCE_TOOL_LARGE
	max_integrity = 50
	w_class = WEIGHT_CLASS_SMALL

/obj/item/smithing
	name = "base class /obj/item/smithing"
	desc = "Attach a wooden rod."
	icon = 'modular_atom/blacksmith/icons/blacksmith.dmi'
	icon_state = "unfinished"
	material_flags = MATERIAL_COLOR | MATERIAL_ADD_PREFIX
	light_system = MOVABLE_LIGHT
	light_range = 1
	light_power = GLOW_WEAK
	light_color = LIGHT_COLOR_FIRE
	light_on = FALSE
	var/quality = 0 //quality. Changed by the smithing process.
	var/obj/item/finishingitem = WOODEN_ROD //What this item needs to be hit by to create finalitem
	var/obj/item/finalitem
	var/artifact = FALSE
	var/toohot = TRUE // Too hot to touch with bare hands, not tempered yet


//////////////////////////////////////////////////
//												//
//  			TWOHANDED WEAPONS				//
//												//
//////////////////////////////////////////////////

// ------------ KATANA ------------ //
/obj/item/smithing/katanablade
	name = "smithed katana blade"
	desc = "Attach a sword handle."
	icon_state = "katana_smith"
	finishingitem = SWORD_HANDLE
	finalitem = /obj/item/twohanded/smithed/katana

/obj/item/smithing/katanablade/startfinish()
	var/obj/item/twohanded/smithed/katana/finalforreal = new /obj/item/twohanded/smithed/katana(src)
	finalforreal.force += QUALITY_MODIFIER
	finalforreal.wield_force = finalforreal.force*finalforreal.wielded_mult
	finalforreal.AddComponent(/datum/component/two_handed, force_unwielded=finalforreal.force, force_wielded=finalforreal.wield_force, icon_wielded="[icon_state]2")
	finalitem = finalforreal
	..()

// ------------ LONG SWORDS ------------ //
/obj/item/smithing/longswordblade
	name = "smithed longsword blade"
	desc = "Attach a sword handle."
	icon_state = "longsword_smith"
	finishingitem = SWORD_HANDLE
	finalitem = /obj/item/twohanded/smithed/katana/longsword

/obj/item/smithing/longswordblade/startfinish()
	var/obj/item/twohanded/smithed/katana/longsword/finalforreal = new /obj/item/twohanded/smithed/katana/longsword(src)
	finalforreal.force += QUALITY_MODIFIER
	finalforreal.wield_force = finalforreal.force*finalforreal.wielded_mult
	finalforreal.AddComponent(/datum/component/two_handed, force_unwielded=finalforreal.force, force_wielded=finalforreal.wield_force, icon_wielded="[icon_state]2")
	finalitem = finalforreal
	..()

// ------------ SCRAP BLADE ------------ //
/obj/item/smithing/scrapblade
	name = "smithed scrap blade"
	desc = "Wrap in leather strips."
	icon_state = "scrap_smith"
	finishingitem = LEATHER_STRIP
	finalitem = /obj/item/twohanded/smithed/katana/scrapblade

/obj/item/smithing/scrapblade/startfinish()
	var/obj/item/twohanded/smithed/katana/scrapblade/finalforreal = new /obj/item/twohanded/smithed/katana/scrapblade(src)
	finalforreal.force += QUALITY_MODIFIER
	finalforreal.wield_force = finalforreal.force*finalforreal.wielded_mult
	finalforreal.AddComponent(/datum/component/two_handed, force_unwielded=finalforreal.force, force_wielded=finalforreal.wield_force, icon_wielded="[icon_state]2")
	finalitem = finalforreal
	..()


// ------------ HEAVY AXE ------------ //
/obj/item/smithing/axehead
	name = "smithed axehead"
	icon_state = "axe_smith"
	finalitem = /obj/item/twohanded/smithed/axe

/obj/item/smithing/axehead/startfinish()
	var/obj/item/twohanded/smithed/axe/finalforreal = new /obj/item/twohanded/smithed/axe(src)
	finalforreal.force += QUALITY_MODIFIER
	finalforreal.wield_force = finalforreal.force*finalforreal.wielded_mult
	finalforreal.AddComponent(/datum/component/two_handed, force_unwielded=finalforreal.force, force_wielded=finalforreal.wield_force, icon_wielded="[icon_state]2")
	finalitem = finalforreal
	..()

// ------------ WAR AXE ------------ //
/obj/item/smithing/waraxehead
	name = "smithed war-axehead"
	icon_state = "waraxe_smith"
	finalitem = /obj/item/twohanded/smithed/axe/waraxe

/obj/item/smithing/waraxehead/startfinish()
	var/obj/item/twohanded/smithed/axe/waraxe/finalforreal = new /obj/item/twohanded/smithed/axe/waraxe(src)
	finalforreal.force += QUALITY_MODIFIER
	finalforreal.wield_force = finalforreal.force*finalforreal.wielded_mult
	finalforreal.AddComponent(/datum/component/two_handed, force_unwielded=finalforreal.force, force_wielded=finalforreal.wield_force, icon_wielded="[icon_state]2")
	finalitem = finalforreal
	..()

// ------------ GHOUL CRUSHER ------------ // - for those dry twig like limbs, snap snap.
/obj/item/smithing/crusherhead
	name = "smithed crusher head"
	finalitem = /obj/item/twohanded/smithed/crusher
	icon_state = "crusher_smith"

/obj/item/smithing/crusherhead/startfinish()
	var/obj/item/twohanded/smithed/crusher/finalforreal = new /obj/item/twohanded/smithed/crusher(src)
	finalforreal.force += QUALITY_MODIFIER
	finalforreal.wield_force = finalforreal.force*finalforreal.wielded_mult
	finalforreal.AddComponent(/datum/component/two_handed, force_unwielded=finalforreal.force, force_wielded=finalforreal.wield_force, icon_wielded="[icon_state]2")
	finalitem = finalforreal
	..()


// ------------ SPEAR ------------ //
/obj/item/smithing/spearhead
	name = "smithed spearhead"
	finalitem = /obj/item/twohanded/smithed/spear
	icon_state = "spear_smith"

/obj/item/smithing/spearhead/startfinish()
	var/obj/item/twohanded/smithed/spear/finalforreal = new /obj/item/twohanded/smithed/spear(src)
	finalforreal.force += QUALITY_MODIFIER
	finalforreal.wield_force = finalforreal.force*finalforreal.wielded_mult
	finalforreal.AddComponent(/datum/component/two_handed, force_unwielded=finalforreal.force, force_wielded=finalforreal.force_wielded, icon_wielded="[icon_state]2")
	finalforreal.throwforce = finalforreal.force
	finalitem = finalforreal
	..()

// ------------ TRIDENT ------------ //
/obj/item/smithing/tridenthead
	name = "smithed tridenthead"
	finalitem = /obj/item/twohanded/smithed/spear/trident
	icon_state = "trident_smith"

/obj/item/smithing/tridenthead/startfinish()
	var/obj/item/twohanded/smithed/spear/trident/finalforreal = new /obj/item/twohanded/smithed/spear/trident(src)
	finalforreal.force += QUALITY_MODIFIER
	finalforreal.wield_force = finalforreal.force*finalforreal.wielded_mult
	finalforreal.AddComponent(/datum/component/two_handed, force_unwielded=finalforreal.force, force_wielded=finalforreal.force_wielded, icon_wielded="[icon_state]2")
	finalforreal.throwforce = finalforreal.force
	finalitem = finalforreal
	..()

// ------------ LEGION LANCE ------------ //
/obj/item/smithing/lancehead
	name = "smithed lancehead"
	finalitem = /obj/item/twohanded/smithed/spear/lance
	icon_state = "lance_smith"

/obj/item/smithing/lancehead/startfinish()
	var/obj/item/twohanded/smithed/spear/lance/finalforreal = new /obj/item/twohanded/smithed/spear/lance(src)
	finalforreal.force += QUALITY_MODIFIER
	finalforreal.force_wielded = finalforreal.force*finalforreal.wielded_mult
	finalforreal.AddComponent(/datum/component/two_handed, force_unwielded=finalforreal.force, force_wielded=finalforreal.force_wielded, icon_wielded="[icon_state]2")
	finalforreal.throwforce = finalforreal.force
	finalitem = finalforreal
	..()

*/
