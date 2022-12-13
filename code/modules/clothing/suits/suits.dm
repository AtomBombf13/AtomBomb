///////////////
//// ARMOR ////
///////////////

/obj/item/clothing/suit/armor
	name = "armor template"
	icon = 'icons/obj/clothing/suits.dmi'
	lefthand_file = 'icons/mob/inhands/clothing_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/clothing_righthand.dmi'
	cold_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 30
	equip_delay_other = 40
	max_integrity = 250
	resistance_flags = NONE
	body_parts_covered = CHEST|GROIN|ARMS|LEGS // gonna be like this until limbs stop critting people
	blood_overlay_type = "armor"
	slowdown = ARMOR_SLOWDOWN_NONE * ARMOR_SLOWDOWN_GLOBAL_MULT
	armor_tier_desc = ARMOR_CLOTHING_DESC

	/// which mutantrace variations are supported. leave at NONE to keep it snapped at plantigrade
	//mutantrace_variation = NONE

	/// These dont seem to do anything
	var/list/protected_zones = list(BODY_ZONE_CHEST, BODY_ZONE_PRECISE_GROIN, BODY_ZONE_L_ARM, BODY_ZONE_R_ARM, BODY_ZONE_L_LEG, BODY_ZONE_R_LEG)
	var/armor_block_chance = null //Chance for the armor to block a low penetration projectile
	var/deflection_chance = null //Chance for the armor to redirect a blocked projectile
	var/melee_block_threshold = null
	var/dmg_block_threshold = null

/obj/item/clothing/suit/armor/Initialize()
	. = ..()
	if(!islist(allowed))
		allowed = list()
	// Here we set up what's allowed in their suit storage.
	// this lets us merge multiple lists, and also disallow certain things from it too
	allowed |= GLOB.default_all_armor_slot_allowed

/obj/item/clothing/suit/armor/examine()
	. = ..()
	. += span_notice(armor_tier_desc)


/*

* ARMOR TIERS
*
* Clothes (not armor)
* - lightly armored at best, might be craftable into armor accessories later
* - Pockets?
*
* Light
* - High mobility (can run from most mobs easily)
* - Common, cheap, usually
* - Low protection
* Medium
* - Less mobility (likely need sprint to escape most mobs)
* - something
* - Med protection
* Heavy
* - Low mobility (Tank hits or have friends)
* - High protection
* - More specialized armor too
* Power Armor
* - Mobile
* - Just about godmode

 */

/////////////
// CLOTHES //
/////////////

/*
 * Types:
 * Overalls (chest legs)
 * - utility suits for holding tools and stuff
 * Jacket (chest arms)
 * - Might have pockets?
 * Duster (chest arms legs)
 * - Full body decorative and cool
 * vest (chest)
 * - Decorative and cool
 * costume? (everything?)
 * Also should have armor inserts later
 */

//// Clothes ARMOR PARENT ////

/obj/item/clothing/suit/armor/outfit
	name = "basic outerwear template"
	desc = "probably shouldnt see this"
	icon = 'icons/obj/clothing/suits.dmi'
	//mob_overlay_icon = 'icons/fallout/onmob/clothes/suit_utility.dmi'
	icon_state = "overalls_farmer"
	item_state = "overalls_farmer"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/jacket //fuck it everyone gets pockets
	cold_protection = CHEST|GROIN
	heat_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 10
	equip_delay_other = 10
	max_integrity = 100
	armor = ARMOR_VALUE_CLOTHES

//////////////////
//// OVERALLS ////
//////////////////

/obj/item/clothing/suit/armor/outfit/overalls
	name = "overalls"
	desc = "A set of overall templates that shouldnt exist."
	icon = 'icons/fallout/clothing/suits_utility.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/suit_utility.dmi'
	icon_state = "overalls_farmer"
	item_state = "overalls_farmer"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets // big pockets!

/obj/item/clothing/suit/armor/outfit/overalls/farmer
	name = "farmer overalls"
	desc = "A set of denim overalls suitable for farming."
//	icon = 'icons/fallout/clothing/suits_utility.dmi'
//	mob_overlay_icon = 'icons/fallout/onmob/clothes/suit_utility.dmi' Commented out, below added with Fashion module
	icon = 'modular_atom/fashion/icons/clothing_fashion.dmi'
	mob_overlay_icon = 'modular_atom/fashion/icons/onmob.dmi'
	righthand_file = 'modular_atom/fashion/icons/onmobright.dmi'
	lefthand_file = 'modular_atom/fashion/icons/onmobleft.dmi'
	icon_state = "overalls_farmer"
	item_state = "overalls_farmer"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/service/overalls

/obj/item/clothing/suit/armor/outfit/overalls/farmer/Initialize()
	. = ..()
	allowed |= GLOB.toolbelt_allowed

/obj/item/clothing/suit/armor/outfit/overalls/sexymaid // best suit
	name = "sexy maid outfit"
	desc = "A maid outfit that shows just a little more skin than needed for cleaning duties."
	icon = 'icons/obj/clothing/suits.dmi'
	mob_overlay_icon = 'icons/mob/clothing/suit.dmi'
	icon_state = "sexymaid_s"
	item_state = "sexymaid_s"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/service/overalls

/obj/item/clothing/suit/armor/outfit/overalls/sexymaid/Initialize()
	. = ..()
	allowed |= GLOB.toolbelt_allowed

/obj/item/clothing/suit/armor/outfit/overalls/blacksmith
	name = "blacksmith apron"
	desc = "A heavy leather apron designed for protecting the user when metalforging."
	icon = 'icons/fallout/clothing/aprons.dmi'
	icon_state = "forge"
	item_state = "forge"
	blood_overlay_type = "armor"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/service/overalls
/* 	icon = 'icons/obj/clothing/suits.dmi'
	icon_state = "opifex_apron"
	item_state = "opifex_apron" */ // cus this darn sprite is hidden so well I cant find it

/obj/item/clothing/suit/armor/outfit/overalls/blacksmith/Initialize()
	. = ..()
	allowed |= GLOB.toolbelt_allowed

/obj/item/clothing/suit/armor/outfit/overalls/ncrcfjacket
	name = "NCRCF jacket"
	icon_state = "ncrcfjacket"
	item_state = "ncrcfjacket"
	desc = "A cheap, standard issue teal canvas jacket issued to poor suckers who find themselves at the butt-end of the NCR's judiciary system."

/obj/item/clothing/suit/armor/outfit/overalls/ncrcfjacket/Initialize()
	. = ..()
	allowed |= GLOB.toolbelt_allowed

//////////////
//// VEST ////
//////////////

/obj/item/clothing/suit/armor/outfit/vest
	name = "tan vest"
	desc = "It's a vest made of tanned leather."
	icon_state = "tanleather"
	item_state = "det_suit"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/armor
	body_parts_hidden = GROIN

/obj/item/clothing/suit/armor/outfit/vest/cowboy //Originally cowboy stuff by Nienhaus
	name = "brown vest"
	desc = "A brown vest, typically worn by wannabe cowboys and prospectors. It has a few pockets for tiny items."
	icon_state = "cowboybvest"
	item_state = "lb_suit"

/obj/item/clothing/suit/armor/outfit/vest/bartender
	name = "bartenders vest"
	desc = "A grey vest, adorned with bartenders arm cuffs, a classic western look."
	icon_state = "westender"
	item_state = "lb_suit"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/service/overalls

/obj/item/clothing/suit/armor/outfit/vest/cowboy/grey
	name = "grey vest"
	desc = "A grey vest, typically worn by wannabe cowboys and prospectors. It has a few pockets for tiny items."
	icon_state = "cowboygvest"
	item_state = "gy_suit"


////////////////
//// JACKET ////
////////////////

/obj/item/clothing/suit/armor/outfit/jacket
	name = "jacket template"
	desc = "its a jacket!!"
	icon_state = "veteran"
	item_state = "suit-command"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/jacket
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T1)

/obj/item/clothing/suit/armor/outfit/jacket/merc
	name = "merc veteran coat"
	desc = " A blue leather coat adorned with war medals.<br>This type of outfit is common for professional mercenaries and bounty hunters."
	icon_state = "veteran"
	item_state = "suit-command"

/obj/item/clothing/suit/armor/outfit/jacket/battlecruiser //Do we have Star Craft here as well?!
	name = "captain's coat"
	desc = "Battlecruiser operational!"
	icon_state = "battlecruiser"
	item_state = "hostrench"

/obj/item/clothing/suit/armor/outfit/jacket/mantle
	name = "hide mantle"
	desc = " A rather grisly selection of cured hides and skin, sewn together to form a ragged mantle."
	icon_state = "mantle_liz"
	item_state = "det_suit"

/obj/item/clothing/suit/armor/outfit/jacket/mfp //Mad Max 1 1979 babe!
	name = "MFP jacket"
	desc = "A Main Force Patrol leather jacket.<br>Offbeat."
	icon_state = "mfp"
	item_state = "hostrench"

/obj/item/clothing/suit/armor/outfit/jacket/mfp/raider
	name = "offbeat jacket"
	desc = "A black leather jacket with a single metal shoulder pad on the right side.<br>The right sleeve was obviously ripped or cut away.<br>It looks like it was originally a piece of a Main Force Patrol uniform."
	icon_state = "mfp_raider"

/obj/item/clothing/suit/armor/outfit/jacket/navyblue
	name = "security officer's jacket"
	desc = "This jacket is for those special occasions when a security officer isn't required to wear their armor."
	icon_state = "officerbluejacket"
	item_state = "officerbluejacket"
	// body_parts_covered = CHEST|ARMS
	mutantrace_variation = STYLE_DIGITIGRADE|STYLE_NO_ANTHRO_ICON

/obj/item/clothing/suit/armor/outfit/jacket/banker
	name = "bankers tailcoat"
	desc = " A long black jacket, finely crafted black leather and smooth finishings make this an extremely fancy piece of rich-mans apparel."
	icon_state = "banker"
	item_state = "banker"
	// body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS

/obj/item/clothing/suit/armor/outfit/jacket/jamrock
	name = "disco-ass blazer"
	desc = "Looks like someone skinned this blazer off some long extinct disco-animal. It has an enigmatic white rectangle on the back and the right sleeve."
	icon_state = "jamrock_blazer"
	item_state = "jamrock_blazer"

/obj/item/clothing/suit/armor/outfit/jacket/blackformaljacket
	name = "black formal overcoat"
	desc = "A neat black overcoat that's only slightly weathered from a nuclear apocalypse."
	icon_state = "black_oversuit"
	item_state = "banker"

/obj/item/clothing/suit/armor/outfit/police
	name = "police officer's jacket"
	desc = "A simple dark navy jacket, worn by police."
	icon = 'icons/fallout/clothing/suits_cosmetic.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/suit_cosmetic.dmi'
	icon_state = "police_officer"
	item_state = "police_officer"
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T1, ARMOR_MODIFIER_UP_DT_T1)

/obj/item/clothing/suit/armor/outfit/police/lieutenant
	name = "police lieutenant's jacket"
	desc = " A simple dark navy jacket, worn by police."
	icon = 'icons/fallout/clothing/suits_cosmetic.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/suit_cosmetic.dmi'
	icon_state = "police_lieutenant"
	item_state = "police_lieutenant"
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T1, ARMOR_MODIFIER_UP_DT_T1)

/obj/item/clothing/suit/armor/outfit/police/chief
	name = "police chief's jacket"
	desc = "A simple dark navy jacket, worn by police."
	icon = 'icons/fallout/clothing/suits_cosmetic.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/suit_cosmetic.dmi'
	icon_state = "police_chief"
	item_state = "police_chief"
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T1, ARMOR_MODIFIER_UP_DT_T1)

/obj/item/clothing/suit/armor/ncrarmor/ncr_dressjack
	name = "NCR dress jacket"
	desc = "A brown dress uniform jacket intended for enlisted NCRA personnel."
	icon_state = "ncr_dressjack"
	item_state = "ncr_dressjack"

// until togglesuits are made into normal suits, treat these as jackets

/obj/item/clothing/suit/toggle/labcoat
	name = "labcoat"
	desc = "A suit that protects against minor chemical spills."
	icon_state = "labcoat"
	item_state = "labcoat"
	blood_overlay_type = "coat"
	// body_parts_covered = CHEST|ARMS
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/jacket
	togglename = "buttons"
	species_exception = list(/datum/species/golem)
	armor = ARMOR_VALUE_CLOTHES
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T1)
	body_parts_hidden = CHEST | ARMS
	toggled_hidden_parts = ARMS

/obj/item/clothing/suit/toggle/labcoat/cmo
	name = "chief medical officer's labcoat"
	desc = "Bluer than the standard model."
	icon_state = "labcoat_cmo"
	item_state = "labcoat_cmo"
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T2)

/obj/item/clothing/suit/toggle/labcoat/mad
	name = "\proper The Mad's labcoat"
	desc = "It makes you look capable of konking someone on the noggin and shooting them into space."
	icon_state = "labgreen"
	item_state = "labgreen"

/obj/item/clothing/suit/toggle/labcoat/genetics
	name = "geneticist labcoat"
	desc = "A suit that protects against minor chemical spills. Has a blue stripe on the shoulder."
	icon_state = "labcoat_gen"

/obj/item/clothing/suit/toggle/labcoat/chemist
	name = "chemist labcoat"
	desc = " A suit that protects against minor chemical spills. Has an orange stripe on the shoulder."
	icon_state = "labcoat_chem"
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T2)

/obj/item/clothing/suit/toggle/labcoat/virologist
	name = "virologist labcoat"
	desc = "A suit that protects against minor chemical spills. Offers slightly more protection against biohazards than the standard model. Has a green stripe on the shoulder."
	icon_state = "labcoat_vir"
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T2)

/obj/item/clothing/suit/toggle/labcoat/science
	name = "scientist labcoat"
	desc = "A suit that protects against minor chemical spills. Has a purple stripe on the shoulder."
	icon_state = "labcoat_tox"
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T2)

// Departmental Jackets

/obj/item/clothing/suit/toggle/labcoat/depjacket/sci
	name = "science jacket"
	desc = "A comfortable jacket in science purple."
	icon_state = "sci_dep_jacket"
	item_state = "sci_dep_jacket"
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T2)

/obj/item/clothing/suit/toggle/labcoat/depjacket/med
	name = "medical jacket"
	desc = "A comfortable jacket in medical blue."
	icon_state = "med_dep_jacket"
	item_state = "med_dep_jacket"

/obj/item/clothing/suit/toggle/labcoat/depjacket/sec
	name = "security jacket"
	desc = "A comfortable jacket in security red."
	icon_state = "sec_dep_jacket"
	item_state = "sec_dep_jacket"
	armor_tokens = list(ARMOR_MODIFIER_UP_DT_T1)

/obj/item/clothing/suit/toggle/labcoat/depjacket/sup
	name = "supply jacket"
	desc = "A comfortable jacket in supply brown."
	icon_state = "supply_dep_jacket"
	item_state = "supply_dep_jacket"

/obj/item/clothing/suit/toggle/labcoat/depjacket/sup/qm
	name = "quartermaster's jacket"
	desc = "A loose covering often warn by station quartermasters."
	icon_state = "qmjacket"
	item_state = "qmjacket"

/obj/item/clothing/suit/toggle/labcoat/depjacket/eng
	name = "engineering jacket"
	desc = "A comfortable jacket in engineering yellow."
	icon_state = "engi_dep_jacket"
	item_state = "engi_dep_jacket"

/obj/item/clothing/suit/toggle/labcoat/fieldscribe
	name = "fieldscribe suit"
	desc = "A heavy-duty coat and chestrig fitted with tons of pockets. Ballistic weave and ceramic inserts are included to substantially increase Field Scribe survival rates."
	icon_state = "fieldscribe"

/obj/item/clothing/suit/toggle/labcoat/scribecoat
	name = "fieldscribe coat"
	desc = "A heavy-duty coat and chestrig fitted with tons of pockets. Ballistic weave and ceramic inserts are included to substantially increase Field Scribe survival rates."
	icon_state = "scribecoat"

/obj/item/clothing/suit/toggle/labcoat/emergency
	name = "first responder jacket"
	desc = "A high-visibility jacket worn by medical first responders."
	icon_state = "fr_jacket"
	item_state = "fr_jacket"
	armor_tokens = list(ARMOR_MODIFIER_UP_DT_T1)

/obj/item/clothing/suit/toggle/labcoat/warriors
	name = "warriors jacket"
	desc = "A red leather jacket, with the word \"Warriors\" sewn above the white wings on the back."
	icon_state = "warriors"
	item_state = "owl"
	armor_tokens = list(ARMOR_MODIFIER_UP_DT_T1)

/obj/item/clothing/suit/toggle/labcoat/wanderer
	name = "wanderer jacket"
	desc = "A zipped-up hoodie made of tanned leather."
	icon_state = "wanderer"
	item_state = "owl"
	armor_tokens = list(ARMOR_MODIFIER_UP_DT_T1)

/obj/item/clothing/suit/toggle/labcoat/followers
	name = "followers lab coat"
	desc = "A worn-down white labcoat with some wiring hanging from the right side.<br>Upon closer inspection, you can see an ancient bloodstains that could tell an entire story about thrilling adventures of a previous owner."
	icon_state = "followers"
	item_state = "labcoat"

//these are jackets too
/obj/item/clothing/suit/hooded/parka/medical
	name = "armored medical parka"
	icon_state = "armormedical"
	desc = "A staunch, practical parka made out of a wind-breaking jacket, reinforced with metal plates."
	hoodtype = /obj/item/clothing/head/hooded/parkahood/medical
	body_parts_hidden = CHEST | ARMS
	armor_tokens = list(ARMOR_MODIFIER_UP_DT_T1)

/obj/item/clothing/head/hooded/parkahood/medical
	name = "armored medical parka hood"
	icon_state = "armorhoodmedical"
	desc = " A protective & concealing parka hood."
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/suit/hooded/parka/grey
	name = "grey armored parka"
	desc = "A staunch, practical parka made out of a wind-breaking jacket, reinforced with metal plates."
	icon_state = "armorgrey"
	hoodtype = /obj/item/clothing/head/hooded/parkahood/grey
	armor_tokens = list(ARMOR_MODIFIER_UP_DT_T1)

/obj/item/clothing/head/hooded/parkahood/grey
	name = "armored grey parka hood"
	desc = "A protective & concealing parka hood."
	icon_state = "armorhoodgrey"
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR

/////////////////
//// COSTUME ////
/////////////////

/obj/item/clothing/suit/armor/outfit/costume/ghost
	name = "ghost sheet"
	desc = "The hands float by themselves, so it's extra spooky."
	icon_state = "ghost_sheet"
	item_state = "ghost_sheet"
	throwforce = 0
	throw_speed = 1
	throw_range = 2
	w_class = WEIGHT_CLASS_TINY
	flags_inv = HIDEGLOVES|HIDEEARS|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/suit/armor/outfit/slavelabor
	name = "old leather strips"
	desc = "Worn leather strips, used as makeshift protection from chafing and sharp stones by labor slaves."
	icon = 'icons/fallout/clothing/suits_utility.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/suit_utility.dmi'
	icon_state = "legion_slaveleather"
	item_state = "legion_slaveleather"
	body_parts_hidden = 0

/obj/item/clothing/suit/toggle/armor
	// body_parts_covered = CHEST|GROIN
	cold_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 60
	equip_delay_other = 40
	max_integrity = 250
	resistance_flags = NONE
	togglename = "collar"

// Toggle armor
/obj/item/clothing/suit/toggle/armored
	// body_parts_covered = CHEST|GROIN
	cold_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 60
	equip_delay_other = 40
	max_integrity = 250
	resistance_flags = NONE
	togglename = "collar"

//Biosuit complete with shoes (in the item sprite)
/obj/item/clothing/head/bio_hood
	name = "bio hood"
	icon_state = "bio"
	desc = "A hood that protects the head and face from biological contaminants."
	permeability_coefficient = 0.01
	clothing_flags = THICKMATERIAL | BLOCK_GAS_SMOKE_EFFECT
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR|HIDEFACE|HIDESNOUT
	resistance_flags = ACID_PROOF
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	mutantrace_variation = STYLE_MUZZLE
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_LESS_T3 * ARMOR_SLOWDOWN_GLOBAL_MULT
	armor = ARMOR_VALUE_MEDIUM
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T3)

/obj/item/clothing/suit/bio_suit
	name = "bio suit"
	desc = "A suit that protects against biological contamination."
	icon_state = "bio"
	item_state = "bio_suit"
	w_class = WEIGHT_CLASS_BULKY
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	clothing_flags = THICKMATERIAL
	// body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT|HIDETAUR
	strip_delay = 70
	equip_delay_other = 70
	resistance_flags = ACID_PROOF
	mutantrace_variation = STYLE_DIGITIGRADE|STYLE_SNEK_TAURIC|STYLE_PAW_TAURIC
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_LESS_T3 * ARMOR_SLOWDOWN_GLOBAL_MULT
	armor = ARMOR_VALUE_LIGHT
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T3)

/obj/item/clothing/suit/bio_suit/enclave
	name = "enclave envirosuit"
	desc = "An advanced white and airtight environmental suit. It seems to be equipped with a fire-resistant seal and a refitted internals system. This one looks to have been developed by the Enclave sometime after the Great War. You'd usually exclusively see this on scientists of the Enclave."
	icon_state = "envirosuit"
	item_state = "envirosuit"
	w_class = WEIGHT_CLASS_BULKY
	gas_transfer_coefficient = 0.9
	permeability_coefficient = 0.5
	clothing_flags = THICKMATERIAL
	strip_delay = 60
	equip_delay_other = 60
	flags_inv = HIDEJUMPSUIT
	rad_flags = RAD_PROTECT_CONTENTS | RAD_NO_CONTAMINATE

//Standard biosuit, orange stripe
/obj/item/clothing/head/bio_hood/general
	icon_state = "bio_general"

/obj/item/clothing/suit/bio_suit/general
	icon_state = "bio_general"


//Virology biosuit, green stripe
/obj/item/clothing/head/bio_hood/virology
	icon_state = "bio_virology"

/obj/item/clothing/suit/bio_suit/virology
	icon_state = "bio_virology"


//Security biosuit, grey with red stripe across the chest
/obj/item/clothing/head/bio_hood/security
	icon_state = "bio_security"
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T3, ARMOR_MODIFIER_UP_DT_T1)

/obj/item/clothing/suit/bio_suit/security
	icon_state = "bio_security"
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T3, ARMOR_MODIFIER_UP_DT_T1)

//Janitor's biosuit, grey with purple arms
/obj/item/clothing/head/bio_hood/janitor
	icon_state = "bio_janitor"

/obj/item/clothing/suit/bio_suit/janitor
	icon_state = "bio_janitor"


//Scientist's biosuit, white with a pink-ish hue
/obj/item/clothing/head/bio_hood/scientist
	icon_state = "bio_scientist"

/obj/item/clothing/suit/bio_suit/scientist
	icon_state = "bio_scientist"


//CMO's biosuit, blue stripe
/obj/item/clothing/suit/bio_suit/cmo
	icon_state = "bio_cmo"

/obj/item/clothing/head/bio_hood/cmo
	icon_state = "bio_cmo"


//Plague Dr mask can be found in clothing/masks/gasmask.dm
/obj/item/clothing/suit/bio_suit/plaguedoctorsuit
	name = "plague doctor suit"
	desc = "It protected doctors from the Black Death, back then. You bet your arse it's gonna help you against viruses."
	icon_state = "plaguedoctor"
	item_state = "bio_suit"
	strip_delay = 40
	equip_delay_other = 20

/obj/item/clothing/suit/bio_suit/hazmat
	name = "hazmat suit"
	desc = "(Yellow Level A , hazmat protective suit.<br>You can see some numbers on the tag: 35 56."
	icon = 'icons/fallout/clothing/suits_utility.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/suit_utility.dmi'
	icon_state = "hazmat"
	item_state = "hazmat"

/obj/item/clothing/head/bio_hood/hazmat
	name = "hazmat hood"
	desc = "My star, my perfect silence."
	icon = 'icons/fallout/clothing/hats.dmi'
	icon_state = "hazmat"
	item_state = "hazmat_helmet"
