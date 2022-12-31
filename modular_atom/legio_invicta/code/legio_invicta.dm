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



// --------------------- RADIO CONTROL ---------------------------  -meant to be wall mounted so not solid, and pixel shifted until it looks good on the specific wall

/obj/machinery/radioterminal/legion/wallmounted
	name = "Legion radio control"
	desc = "Cobbled together radio master set for disabling lost radios."
	icon = 'modular_atom/legio_invicta/icons/icons_64x32_legion.dmi'
	icon_state = "radio_legion"



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
	
