// This file basically redirects the art here without changing the rest of the values. If you reformat the armors or something obviously you will need to copy these paths to the new items for the correct art to display.
// Commented out stuff has been edited in the base files to redirect the art already.


// --------------------- ID & MEDALLIONS -------------------------

// /obj/item/card/id/dogtag/legrecruit obsolete
/obj/item/card/id/dogtag/legion
	name = "recruit medallion"
	desc = "A cheap metal disc stamped with the Legion's bull insignia."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	icon_state = "medallion_recruit"
	item_state = null
	assignment = "recruit medallion"

// /obj/item/card/id/dogtag/legprime obsolete
/obj/item/card/id/dogtag/legion/prime
	name = "prime medallion"
	desc = "A silver disc stamped with the Legion's bull insignia."
	icon_state = "medallion_prime"
	assignment = "prime medallion"

// /obj/item/card/id/dogtag/legveteran obsolete
/obj/item/card/id/dogtag/legion/veteran
	name = "veteran medallion"
	desc = "A silver disc stamped with the Legion's bull insignia and red honorific markings."
	icon_state = "medallion_veteran"
	assignment = "veteran medallion"

// -/obj/item/card/id/dogtag/legcenturion obsolete
/obj/item/card/id/dogtag/legion/centurion
	name = "centurion medallion"
	desc = "A golden disc awarded to the most fierce men in the whole legion. If you are close enough to read the insignia you won't be alive much longer."
	icon_state = "medallion_centurion"
	assignment = "centurion medallion"

// /obj/item/card/id/dogtag/legforgemaster obsolete
/obj/item/card/id/dogtag/legion/follower
	name = "camp follower medallion"
	desc = "A silver disc stamped with the Legion's Bull insignia."
	icon_state = "medallion_recruit"
	assignment = "camp follower medallion"

// /obj/item/card/id/dogtag/legauxilia obsolete
/obj/item/card/id/dogtag/legion/follower/auxilia
	name = "auxilia medallion"
	desc = "A silver disc stamped with the Legion's Bull insignia."
	icon_state = "medallion_prime"
	assignment = "auxilia medallion"

// /obj/item/card/id/dogtag/legorator obsolete 
/obj/item/card/id/dogtag/legion/orator
	name = "orator medallion"
	desc = "A golden disc awarded to the one who is a dedicated ambassador for Caesar's Legion."
	icon_state = "medallion_centurion"
	assignment = "orator medallion"

/obj/item/card/id/dogtag/legion/offduty
	name = "off-duty medallion"
	desc = "The wearer is free from his military duties this week."


// - /obj/item/card/id/legionbrand obsolete
/obj/item/card/id/legion_slave
	name = "Legion slave brand"
	desc = "Property of the Legion. Burned into the flesh with a cattle-iron."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
	icon_state = "brand_slave"
	assignment = "Slave brand"
	uses_overlays = FALSE

/obj/item/card/id/legion_slave/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, TRAIT_GENERIC)

// obsolete /obj/item/card/id/rusted/rustedmedallion
/obj/item/card/id/rusted/legion_exile
	name = "rusted medallion"
	desc = "This Legion medallion is rusted and worn, kept as a memento."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
	icon_state = "medallion_exile"


// --------------------- GLOVES -----------------------------
/* Already copied to main
/obj/item/clothing/gloves/legion
	name = "fingerless gloves"
	desc = "Improves the grip on a machete even when slick with blood, widely used by Legion warriors."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	icon_state = "gloves_fingerless"
	item_state = "gloves_fingerless"

/obj/item/clothing/gloves/legion/plated
	name = "plated gloves"
	desc = "Leather gloves with metal reinforcements."
	icon_state = "gloves_plated"
	item_state = "gloves_plated"
*/


// --------------------- BANDANA -----------------------------

/obj/item/clothing/mask/bandana/legion
	name = "red bandana"
	desc = "Simple cloth bandana dyed red. Very common in the Legion."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	icon_state = "bandana_legion"
	flags_inv = HIDEFACE
	visor_flags_inv = HIDEFACE
	adjusted_flags = null
	actions_types = list(/datum/action/item_action/adjust)

// /obj/item/clothing/mask/bandana/legion/legrecruit obsolete
/obj/item/clothing/mask/bandana/legion/recruit
	name = "recruit bandana"
	desc = "Bandana made from cheap cloth."
	icon_state = "bandana_recruit"

// /obj/item/clothing/mask/bandana/legion/camp obsolete
/obj/item/clothing/mask/bandana/legion/dark
	name = "dark bandana"
	desc = "Plain cotton bandana."
	icon_state = "bandana_dark"

/obj/item/clothing/mask/bandana/legion/centurion
	name = "centurions bandana"
	desc = "Made from fine cloth with a distinctive pattern."
	icon_state = "bandana_centurion"



// ------------------- GOGGLES -----------------------------

// Polarizing goggles. togglable, Nightvision goggles basically
/obj/item/clothing/glasses/night/polarizing // possibly it would be better to make this just flash protect or such, and keep NVG to NVG looking goggle thingies. Dunno. 
	name = "polarizing goggles"
	desc = "Fancy goggles with rare polarizing glass from some old cache, usually reserved for commanders."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
	icon_state = "goggles_polarizing"
	item_state = "goggles_polarizing"
	darkness_view = 12
	lighting_alpha = LIGHTING_PLANE_ALPHA_NV_TRAIT
	glass_colour_type = /datum/client_colour/glass_colour/lightorange
	actions_types = list(/datum/action/item_action/toggle)
	visor_flags_inv = HIDEEYES
	visor_flags_cover = MASKCOVERSEYES
	visor_vars_to_toggle = VISOR_TINT | VISOR_DARKNESSVIEW
	alternate_worn_layer = (HEAD_LAYER-0.1) // so its not hidden

/obj/item/clothing/glasses/night/polarizing/attack_self(mob/user)
	weldingvisortoggle(user)

// /obj/item/clothing/glasses/legiongoggles obsolete. Togglable, gives some slight environment armor bonus I believe.
/obj/item/clothing/glasses/f13/goggles_sandstorm
	name = "sandstorm goggles"
	desc = "Simple, tight-fitting goggles that protect your eyes from dust and sand."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
	icon_state = "goggles"
	item_state = "goggles"
	toggle_message = "You pull down the"
	alt_toggle_message = "You push up the"
	actions_types = list(/datum/action/item_action/toggle)
	visor_flags_inv = HIDEEYES
	visor_flags_cover = MASKCOVERSEYES
	visor_vars_to_toggle = VISOR_TINT | VISOR_DARKNESSVIEW
	alternate_worn_layer = (HEAD_LAYER-0.1) // so its not hidden

/obj/item/clothing/glasses/f13/goggles_sandstorm/attack_self(mob/user)
	weldingvisortoggle(user)


// ------------------- BELT -----------------------------
/* Already copied to main
/obj/item/storage/belt/military/legion
	name = "legion marching belt"
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	icon_state = "belt_legion"
	item_state = "belt_legion"
*/

// ------------------- WEAPONS -----------------------------

/* Already copied to main
/obj/item/melee/onehanded/machete
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/beltslot.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	icon_state = "machete_lawnmower"
	item_state = "machete_lawnmower"

/obj/item/melee/onehanded/machete/spatha	
/obj/item/melee/onehanded/machete/gladius
/obj/item/melee/onehanded/machete/training

/obj/item/melee/onehanded/machete/forgedmachete
	icon_state = "machete"
	item_state = "machete"

/obj/item/twohanded/sledgehammer/supersledge
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/backslot.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'

/obj/item/twohanded/spear/lance
	name = "legion lance"
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/64x64_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/64x64_lefthand.dmi'
	icon_state = "lance"
	icon_prefix = "lance"
	wielded_icon = "lance_wield"
	inhand_x_dimension = 64
	inhand_y_dimension = 64

/obj/item/melee/unarmed/powerfist/goliath
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'

/obj/item/twohanded/thermic_lance
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/backslot.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/64x64_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/64x64_lefthand.dmi'

/obj/item/twohanded/sledgehammer/rockethammer
/obj/item/twohanded/fireaxe
/obj/item/melee/powered/ripper

/obj/item/twohanded/chainsaw
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/backslot.dmi'

/obj/item/clothing/glasses/f13/sunglasses
	name = "sunglasses"
	desc = "Makes the strong desert sun a lot more bearable. Some protection against blinding lights is a bonus."
	icon = 'icons/fallout/clothing/glasses.dmi'
	icon_state = "sun"
	item_state = "sunglasses"
	darkness_view = 1
	flash_protect = 1
	tint = 1
	glass_colour_type = /datum/client_colour/glass_colour/gray

/obj/item/clothing/glasses/f13/sunglasses/big
	icon_state = "bigsunglasses"
	item_state = "bigsunglasses"
	layer = (FACEMASK_LAYER-0.1) // only reason for this is to make it look good over bandana masks.
	alternate_worn_layer = (FACEMASK_LAYER-0.1)
*/




// ------------------- APRONS & MANTLES -----------------------------
// same as medical apron but visually unique
/obj/item/clothing/neck/apron/medicus_legion
	name = "medicus apron"
	desc = "Waxed cotton apron with a red bull on it. Marks the wearer as a healer following the wisdom of Caesar. Has pockets for some small medical equipment."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	icon_state = "apron_medicus"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/medical

// same as normal labor apron but visually unique
/obj/item/clothing/neck/apron/labor/blacksmith_legion
	name = "blacksmith's apron"
	desc = "A heavy leather apron designed for protecting the user when metalforging and help carry some minor tools. Marked with a yellow bull."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	icon_state = "apron_blacksmith"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/service
/*
/obj/item/clothing/neck/mantle/legion/treasurer
	name = "treasurers mantle"
	desc = "The grey and black mantle with gold thread trimming shows the wearer is entrusted with matters of money and records. Hidden inner pockets can store money, keys and documents safely, and a discrete sheath for a knife for self defence is also attached."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	icon_state = "mantle_treasurer"
	item_state = "mantle_treasurer"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/treasurer
*/

// Mantle for the Orator, also works as a holster since it occupies the accessory slot
/obj/item/clothing/neck/mantle/legion
	name = "legion mantle"
	desc = "A bull flag adapted to be worn, a honor not given to every warrior. Comes with a holster for a handgun."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	icon_state = "mantle_legion"
	item_state = "mantle_legion"
	layer = NECK_LAYER

/obj/item/clothing/neck/mantle/legion/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_items = 1
	STR.max_w_class = WEIGHT_CLASS_NORMAL
	STR.can_hold = typecacheof(list(
		/obj/item/gun/ballistic/automatic/pistol,
		/obj/item/gun/ballistic/revolver,
		/obj/item/gun/energy/laser/solar,
		/obj/item/gun/energy/laser/pistol,
		/obj/item/gun/energy/laser/plasma/pistol,
		/obj/item/gun/energy/laser/plasma/glock,
		/obj/item/gun/energy/laser/plasma/glock/extended,
		/obj/item/gun/energy/laser/wattz,
		/obj/item/gun/energy/laser/wattz/magneto,
		))


// ------------------- KITS & BAGS & HOLSTERS -----------------------------

// Ration package is a paper container for food/misc survival stuff
/obj/item/storage/survivalkit/legion_rations
	name = "ration package"
	desc = "Waxed paper package with food and some minor accessories a warrior might need."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	icon_state = "survival_legion"

/obj/item/storage/survivalkit/legion_rations/PopulateContents()
	new /obj/item/storage/box/matches(src)
	new /obj/item/reagent_containers/food/snacks/meatsalted(src)
	new /obj/item/reagent_containers/food/snacks/breadhard(src)
	new /obj/item/reagent_containers/food/drinks/flask/survival(src)

// proc to make the quiver look empty when empty
/obj/item/storage/survivalkit/legion_rations/update_icon_state()
	. = ..()
	if(!contents.len)
		icon_state = "[icon_state]_empty"
	else
		icon_state = initial(icon_state)

// Leather pouch for medicines
/obj/item/storage/survivalkit/medical/legion
	name = "medicine bag"
	desc = "Medical kit compliant with the laws of Caesar."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
	icon_state = "survival_medical"

/obj/item/storage/survivalkit/medical/legion/PopulateContents()
	new /obj/item/stack/medical/gauze/improvised(src)
	new /obj/item/stack/medical/suture(src)
	new /obj/item/stack/medical/mesh/aloe(src)
	new /obj/item/reagent_containers/pill/patch/healpoultice(src)

// proc to make the quiver look empty when empty
/obj/item/storage/survivalkit/medical/legion/update_icon_state()
	. = ..()
	if(!contents.len)
		icon_state = "[icon_state]_empty"
	else
		icon_state = initial(icon_state)

/obj/item/storage/survivalkit/medical/legion/advanced
	desc = "Medical kit compliant with the laws of Caesar, of higher than average quality."

/obj/item/storage/survivalkit/medical/legion/adv/PopulateContents()
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/stack/medical/suture(src)
	new /obj/item/stack/medical/mesh(src)
	new /obj/item/reagent_containers/pill/bitterdrink(src)

// new satchel style that doesnt clutter up the mob so much
/obj/item/storage/backpack/marching_satchel
	name = "marching satchel"
	desc = "A sturdy leather bag attacked to the belt, for carrying necessary supplies."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
	icon_state = "satchel_marching"
	item_state = "satchel_marching"

/obj/item/storage/backpack/marching_satchel/update_icon_state()
	. = ..()
	if(!contents.len)
		icon_state = "[icon_state]_empty"
	else
		icon_state = initial(icon_state)

// new style of holsters that show when occupied
/obj/item/storage/belt/holster/rugged	// some sort of overlay system for the filled holsters would be better naturally but lack the time to figure it out.
	name = "rugged holster"
	desc = "A plain holster for a revolver."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
	icon_state = "holster_rugged"
	item_state = "holster_rugged"

// proc to make the holster look empty when empty
/obj/item/storage/belt/holster/rugged/update_icon_state()
	. = ..()
	if(!contents.len)
		icon_state = "[icon_state]_empty"
	else
		icon_state = initial(icon_state)

// some prefilled holsters
/obj/item/storage/belt/holster/rugged/revolver_357
	icon_state = "holster_rugged"

/obj/item/storage/belt/holster/rugged/revolver_357/PopulateContents()
	new /obj/item/gun/ballistic/revolver/colt357(src)

/obj/item/storage/belt/holster/rugged/revolver_45
	icon_state = "holster_rugged_45"

/obj/item/storage/belt/holster/rugged/revolver_45/PopulateContents()
	new /obj/item/gun/ballistic/revolver/revolver45(src)

/obj/item/storage/belt/holster/rugged/revolver_hunting
	icon_state = "holster_rugged_hunting"

/obj/item/storage/belt/holster/rugged/revolver_hunting/PopulateContents()
	new /obj/item/gun/ballistic/revolver/hunting(src)

/* copy pasted to base files
/obj/item/storage/belt/utility/waster
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
	icon_state = "belt_blacksmith"
	item_state = "belt_blacksmith"

/obj/item/storage/backpack/spearquiver
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
*/

// proc to make the quiver look empty when empty
/obj/item/storage/backpack/spearquiver/update_icon_state()
	. = ..()
	if(!contents.len)
		icon_state = "[icon_state]_empty"
	else
		icon_state = initial(icon_state)


// ------------------- ARMOR -----------------------------

/obj/item/clothing/suit/armor/light/legion
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'


/obj/item/clothing/suit/armor/light/legion/recruit
	icon_state = "armor_recruit"

/obj/item/clothing/suit/armor/light/legion/prime
	icon_state = "armor_prime"

/obj/item/clothing/suit/armor/light/legion/explorer
	icon_state = "armor_explorer"

/obj/item/clothing/suit/armor/medium/legion
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'

/obj/item/clothing/suit/armor/medium/legion/vet
	icon_state = "armor_veteran"

/obj/item/clothing/suit/armor/medium/legion/vexil
	icon_state = "armor_vexillarius"

/obj/item/clothing/suit/armor/medium/legion/orator
	name = "legion orator armor"
	desc = "Similar in style to the armor praetorians wear."
	icon_state = "armor_praetorian"
/* Not ready yet
/obj/item/clothing/suit/armor/medium/legion/centurion
	icon_state = "armor_centurion"

/obj/item/clothing/suit/armor/medium/legion/rangercent 
	icon_state = "armor_rangerhunter"

/obj/item/clothing/suit/armor/heavy/legion
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'

/obj/item/clothing/suit/armor/heavy/legion/palacent
	icon_state = "armor_paladinslayer"

/obj/item/clothing/suit/armor/heavy/legion/legate
	icon_state = "armor_legate"
*/
/obj/item/clothing/suit/armor/heavy/metal/smithed/legion
	name = "smithed legion armor"
	desc = "A set of plates with leather straps, protecting some vital areas. This one is combined with football shoulder pads and marked with the red X of Caesars Legion."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
	icon_state = "armor_smithed"
	item_state = "armor_smithed"


// ------------------- HELMETS -----------------------------

/obj/item/clothing/head/helmet/f13/legion
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'

/obj/item/clothing/head/f13/servant
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
	icon_state = "hat_servant"
	item_state = "hat_servant"
	dynamic_hair_suffix = "+generic"
	flags_inv = null
	flags_cover = null

/obj/item/clothing/head/f13/servant/auxilia
	name = "auxilia headwear"
	desc = "A soft red cap with a black band, used by Auxilia outside camp."
	icon_state = "hat_auxilia"
	item_state = "hat_auxilia"

/obj/item/clothing/head/helmet/f13/legion/recruit
	icon_state = "helmet_recruit"

/obj/item/clothing/head/helmet/f13/legion/prime
	icon_state = "helmet_prime"

/obj/item/clothing/head/helmet/f13/legion/explorer
	icon_state = "helmet_explorer"

/obj/item/clothing/head/helmet/f13/legion/vet
	icon_state = "helmet_veteran"

/obj/item/clothing/head/helmet/f13/legion/vet/vexil
	icon_state = "helmet_vexillarius"





// ------------------- CRAFTING -----------------------------

/datum/crafting_recipe/blacksmith/smithed_armor_legion
	name = "Legion metal armor set"
	result = /obj/item/clothing/suit/armor/heavy/metal/smithed/legion
	reqs = list(
		/obj/item/smithing/armor_piece = 2,
		/obj/item/stack/sheet/leather = 2,
		)
	time = 200
	tools = list(TOOL_METAL_BENCH)
	category = CAT_CRAFTING
	subcategory = CAT_FORGING
	always_available = FALSE
	

// --------------------- RADIO CONTROL ---------------------------  -meant to be wall mounted so not solid, and pixel shifted until it looks good on the specific wall

/obj/machinery/radioterminal/legion/wallmounted
	name = "Legion radio control"
	desc = "Cobbled together radio master set for disabling lost radios."
	icon = 'modular_atom/legio_invicta/icons/icons_64x32_legion.dmi'
	icon_state = "radio_wall_legion"



// ------------------- LEGION STATIONARY STORAGE -----------------------------

/obj/machinery/smartfridge/bottlerack/wardrobe
	name = "large clothing rack"
	desc = "holds clothing and various acessories."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	icon_state = "wardrobe"
	layer = ABOVE_OBJ_LAYER
	max_n_of_items = 30

/obj/machinery/smartfridge/bottlerack/wardrobe/accept_check(obj/item/O)
	if(istype(O, /obj/item/clothing/shoes) || istype(O, /obj/item/clothing/head) || istype(O, /obj/item/clothing/mask) || istype(O, /obj/item/clothing/under) || istype(O, /obj/item/clothing/glasses) || istype(O, /obj/item/clothing/gloves) || istype(O, /obj/item/storage/belt)  || istype(O, /obj/item/clothing/neck))
		return TRUE
	return FALSE

// Preloaded Legion wardrobe
/obj/machinery/smartfridge/bottlerack/wardrobe/legion
	initial_contents = list(
		/obj/item/clothing/under/f13/legskirt = 3,
		/obj/item/clothing/mask/bandana/legion/dark  = 2,
		/obj/item/clothing/head/f13/servant/auxilia = 1,
		/obj/item/clothing/head/f13/servant = 1,
		/obj/item/clothing/gloves/legion = 2,
		/obj/item/clothing/gloves/blacksmith_mittens = 1,
		/obj/item/clothing/neck/apron/labor = 1,
		/obj/item/clothing/shoes/f13/military/legion = 3,
		/obj/item/clothing/shoes/sandals_leather = 1,
		/obj/item/storage/belt/military/legion = 1,
		/obj/item/clothing/glasses/f13/goggles_sandstorm = 1)


/obj/machinery/smartfridge/bottlerack/wardrobe/armor
	name = "armor hanging rack"
	desc = "a place to hang your armor and helmet."
	icon_state = "armordrobe"

/obj/machinery/smartfridge/bottlerack/wardrobe/armor/accept_check(obj/item/O)
	if(istype(O, /obj/item/clothing/shoes) || istype(O, /obj/item/clothing/suit/armor) || istype(O, /obj/item/clothing/head/helmet))
		return TRUE
	return FALSE

// Preloaded Legion armor rack
/obj/machinery/smartfridge/bottlerack/wardrobe/armor/legion
	initial_contents = list(
		/obj/item/clothing/suit/armor/light/legion/recruit = 2,
		/obj/item/clothing/head/helmet/f13/legion/recruit = 2)


/obj/machinery/smartfridge/bottlerack/rack_melee
	name = "melee weapon rack"
	desc = "holds most melee and throwing weapons."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	icon_state = "rack_melee"
	layer = ABOVE_OBJ_LAYER
	max_n_of_items = 30

/obj/machinery/smartfridge/bottlerack/rack_melee/accept_check(obj/item/O)
	if(istype(O, /obj/item/melee) || istype(O, /obj/item/shishkebabpack) || istype(O, /obj/item/throwing_star) || istype(O, /obj/item/restraints/legcuffs/bola) || istype(O, /obj/item/shovel) || istype(O, /obj/item/twohanded))
		return TRUE
	return FALSE

// Preloaded Legion melee rack
/obj/machinery/smartfridge/bottlerack/rack_melee/legion
	initial_contents = list(
		/obj/item/melee/onehanded/machete = 1,
		/obj/item/restraints/legcuffs/bola = 1)


// ------------------- BUTCHERS TABLE -----------------------------

/obj/structure/table/optable/primitive
	name = "butchers table"
	desc = "Used for painful, primitive medical procedures."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'


// ------------------- PRIMITIVE SURGERY STUFF -----------------------------

/obj/item/cautery/primitive
	name = "primitive cautery"
	desc = "A welding device tuned down to cauterize wounds. Not very precise."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	icon_state = "cautery_primitive"
	toolspeed = 1.5

/obj/item/circular_saw/primitive
	name = "handsaw"
	desc = "For sawing through wood or possibly bones."
	icon = 'icons/obj/tools.dmi'
	icon_state = "saw"
	item_state = "saw"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	hitsound = 'sound/effects/shovel_dig.ogg'
	usesound = 'sound/effects/shovel_dig.ogg'
	custom_materials = list(/datum/material/iron=2000)
	toolspeed = 1.2
	wound_bonus = 0
	bare_wound_bonus = 10
	attack_verb = list("sawed", "scratched")


// ------------------- PRIMITIVE MEDICAL BAG -----------------------------

/obj/item/storage/backpack/duffelbag/med/surgery/primitive
	name = "surgical duffel bag"
	desc = "A large duffel bag for holding extra medical supplies - this one seems to be designed for holding surgical tools."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	icon_state = "toolbag_primitive"

/obj/item/storage/backpack/duffelbag/med/surgery/primitive/PopulateContents()
	new /obj/item/kitchen/knife/butcher/tribal(src)
	new /obj/item/hemostat/tribal(src)
	new /obj/item/retractor/tribal(src)
	new /obj/item/circular_saw/primitive(src)
	new /obj/item/surgicaldrill(src)
	new /obj/item/cautery/primitive(src)
	new /obj/item/bonesetter(src)
	new /obj/item/bedsheet/blanket(src)
	new /obj/item/reagent_containers/medspray/sterilizine(src)
	new /obj/item/stack/sticky_tape/surgical(src)
	new /obj/item/stack/medical/bone_gel(src)


// ------------------- PRIMITIVE MEDICAL TOOLBELT -----------------------------

obj/item/storage/belt/medical/surgical/primitive
	name = "simple surgical toolbelt"
	desc = "A belt designed for holding surgical tools."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	righthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_righthand.dmi'
	lefthand_file = 'modular_atom/legio_invicta/icons/onmob_legion_lefthand.dmi'
	mob_overlay_icon = 'modular_atom/legio_invicta/icons/onmob_legion.dmi'
	icon_state = "belt_blacksmith"
	item_state = "belt_blacksmith"

/obj/item/storage/belt/medical/primitive/PopulateContents()
	new /obj/item/surgical_drapes(src)
	new /obj/item/kitchen/knife/butcher/tribal(src)
	new /obj/item/handsaw(src)
	new /obj/item/retractor/tribal(src)
	new /obj/item/hemostat/tribal(src)
	new /obj/item/cautery/primitive(src)
	new /obj/item/bonesetter(src)


// ------------------- BUST OF CAESAR -----------------------------


/obj/item/statuebust/legion
	name = "a bust of the great leader"
	desc = "Caesar, a magnificent man, depicted in some tacky imitation of marble."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	icon_state = "bust_legion"



// -------------- BATHTUB ----------------- - no mechanical function, just for RP


/obj/structure/chair/comfy/bathtub
	name = "bathtub"
	desc = "A relaxing bath in hot water, or a endurance test in freezing water, depending on how lazy you are."
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	icon_state = "bathtub"
	max_integrity = 200
	item_chair = null
	resistance_flags = NONE
	flags_1 = NODECONSTRUCT_1

/obj/structure/chair/comfy/bathtub/GetArmrest()
	return mutable_appearance('modular_atom/legio_invicta/icons/icons_legion.dmi', "bathtub_bathing")

/obj/structure/chair/comfy/bathtub/post_buckle_mob(mob/living/M)
	. = ..()
	handle_layer()
	playsound(src, 'modular_atom/blacksmith/sound/water_splash2.ogg',50, 1)

/obj/structure/chair/comfy/bathtub/post_unbuckle_mob()
	. = ..()
	handle_layer()
	playsound(src, 'modular_atom/blacksmith/sound/water_splash2.ogg',50, 1)


// ------------------- SIGNS -----------------------------

/obj/structure/sign/legion
	name = "war room"
	desc = "For planning the next great victory!"
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	icon_state = "sign"
	layer = SIGN_LAYER

/obj/structure/sign/legion/radio
	name = "radio room"
	desc = "Spare radios and radio linking equipment are kept here"

/obj/structure/sign/legion/medicus
	name = "medicus tent"
	desc = "Caesar approves the methods used here. Degenerates not welcome."
	icon_state = "sign_medicus"
	layer = BELOW_MOB_LAYER

/obj/structure/sign/legion/recruit
	name = "recruit barracks"
	desc = "The decanus sleeps with his men and keeps track of them." // Theyre definitively straight
	icon_state = "sign_ground"

/obj/structure/sign/legion/smithy
	name = "smithy"
	desc = "Where weapons are forged and tools stored"

/obj/structure/sign/legion/armory
	name = "armory"
	desc = "Great amounts of weapons and equipment are stored here"

/obj/structure/sign/legion/prime
	name = "prime barracks"
	desc = "Primes and their decanus live here"
	icon_state = "sign_ground"

/obj/structure/sign/legion/veteran
	name = "veteran barracks"
	desc = "Experienced troops live here in comparable comfort."

/obj/structure/sign/legion/mess
	name = "mess pavillion"
	desc = "Food and a place to talk to brothers in arms."
	icon_state = "sign_ground"

/obj/structure/sign/legion/gym
	name = "the temple"
	desc = "Build your body or use it as a speaking platform."

/obj/structure/sign/legion/latrine
	name = "latrine"
	desc = "Has a certain odor."
	icon_state = "sign_ground"

/obj/structure/sign/legion/mines
	name = "mines"
	desc = "Put slave here"
	icon_state = "sign_chain"

/obj/structure/sign/legion/prison
	name = "prison"
	desc = "Lets the prisoner enjoy the local climate without interfering roofing."

/obj/structure/sign/legion/storeroom
	name = "storeroom"
	desc = "a place to store low-value goods and slaving equipment."

/obj/structure/sign/legion/records
	name = "office of records"
	desc = "Where the Treasurer and other nerds store paperwork about stores and payrolls, and maybe the treasury."

/obj/structure/sign/legion/stronghold
	name = "stronghold"
	desc = "Main building, fortified."

/obj/machinery/door/unpowered/securedoor/legion/warroom
	name = "war room"
	req_access_txt = "254" // ACCESS_LEGION_CPMMAND

/obj/machinery/door/unpowered/securedoor/legion/centurion
	name = "centurions quarters"
	req_access_txt = "264" // ACCESS_LEGION4

/* Added to base code
/obj/structure/campfire/stove
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'

added to end of campfire/attackby
	else if(fired && istype(P, /obj/item/stack/medical/gauze/improvised))
		if(!ishuman(user))
			return
		if(istype(P, /obj/item/stack/medical/gauze/improvised))
			var/obj/item/stack/medical/gauze/improvised/F = P
			to_chat(user, "You start baking the [F.name].")
			if(do_after(user, 30, target = src))
				F.microwave_act()

*/
/obj/structure/fireplace/preloaded
	fuel_added = 1000

// Finally time to add my old dirt alternative, ploughed dirt
/obj/machinery/hydroponics/soil/plowed //Just looks different
	icon_state = "soil_plowexperiment"

/obj/effect/overlay/darkwoodfancyedge
	name = "wood edge"
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	icon_state = "darkwood_fancyedge"
	layer = (FLOOR_PLANE+1)


// Matrix for slaves/prison
/turf/closed/indestructible/f13/matrix/slave //Less obtrusive matrix for prison
	name = "mattress of despair"
	desc = "<font color='#6eaa2c'>This is incredibly filthy. Sleeping here means your spirit is broken, and you submit to be taken far away to a bleak future as a prisoner. Count as dead for respawning rules.</font>"
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	icon_state = "despair"


// Better gravel smoothing
/obj/effect/turf_decal/gravel_edge
	icon = 'icons/fallout/turfs/gravel.dmi'
	icon_state = "gravel_edge"

// New roof for tent
/turf/open/floor/plating/f13/outside/roof/tent_leather 
	name = "leather tent roof"
	icon = 'icons/fallout/turfs/walls/tents.dmi'
	icon_state = "leather_roof"

// shading under the pavillon
/obj/effect/turf_decal/shadow
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	icon_state = "shadow"


// stairs platform to make it prettier
/turf/open/floor/f13/stairs_platform
	name = "stairs"
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	icon_state = "stairs_platform"
	color = "#A47449"


// -------------- STATUE OF MARS ----------------- 
// more fitting mars statue for the Legion players
/obj/structure/statue/mars
	name = "statue of mars"
	desc = "A monument to masculine virtue, made out of plaster and wood with a thin bronze outer layer."
	icon = 'modular_atom/legio_invicta/icons/64x64_icons.dmi'
	icon_state = "statue_mars"
	anchored = TRUE

/obj/structure/decoration/legion
	name = "legion bull flag of high quality"
	icon = 'modular_atom/legio_invicta/icons/icons_legion.dmi'
	icon_state = "decal_bull"

/obj/structure/decoration/legion/spears
	name = "old decorative spears"
	icon_state = "decal_spears"

/obj/structure/decoration/legion/chains
	name = "chains"
	icon_state = "decal_chain1"

/obj/structure/decoration/legion/chains2
	name = "chains"
	icon_state = "decal_chain2"

/obj/structure/decoration/legion/tentpole
	name = "tentpole"
	icon_state = "decal_tentpole"

