

/////////////
// MEDIUM  //
/////////////

/*
 * Stats
 * Some slowdown, decent protection
 * 25% DR for general armor - 134% effective HP
 * 30-35% for specialist armor (most everything else is butt)
 * Assuming 25 damage from the average attack:
 * - goes from 4 hit crit to 6 at 25
 * - 5 hit crit to 7 at 20 dmg
 * - 4 hit crit to 6 at 30 dmg
 *
 * Tribal (general, got extra pockets)
 * Raider (general, ammo pouches?)
 * combat armor (Just good, also holds lots of stuff in the armor slot)
 * ballistic vest (++bullet , --melee, --laser)
 * breastplate (--bullet , ++melee, +laser)
 * riot (+++melee , -bullet, --laser, full body)
 */

/obj/item/clothing/suit/armor/medium
	name = "medium armor template"
	//icon = 'icons/fallout/clothing/armored_medium.dmi'
	//mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	slowdown = 0.5
	cold_protection = CHEST|GROIN
	heat_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 30
	equip_delay_other = 50
	max_integrity = 200
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/armor
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_GLOBAL_MULT
	armor = ARMOR_VALUE_MEDIUM
	armor_tier_desc = ARMOR_CLOTHING_MEDIUM
	stiffness = MEDIUM_STIFFNESS

////////////////////////////
/// MEDIUM TRIBAL ARMOR ////
////////////////////////////

// big pockets, lighter, melee focus
/obj/item/clothing/suit/armor/medium/tribal
	name = "heavy tribal armor"
	desc = "A thick suit of armor made of brahmin and gecko hides. It seems lighter than one would expect."
	cold_protection = CHEST|GROIN
	heat_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 30
	equip_delay_other = 50
	max_integrity = 200
	armor = ARMOR_VALUE_REINFORCED_LEATHER_ARMOR
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/duster
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_LESS_T2 * ARMOR_SLOWDOWN_GLOBAL_MULT // lighter, cus melee focus

/obj/item/clothing/suit/armor/medium/tribal/chitinarmor
	name = "insect chitin armor"
	desc = "A suit made from gleaming insect chitin. The glittering black scales are remarkably resistant to hostile environments, except cold."
	icon = 'icons/obj/clothing/suits.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_light.dmi'
	icon_state = "insect"
	item_state = "insect"
	flags_inv = HIDEJUMPSUIT
	heat_protection = CHEST | GROIN | LEGS| ARMS | HEAD
	resistance_flags = FIRE_PROOF | ACID_PROOF
	siemens_coefficient = 0.5
	permeability_coefficient = 0.5
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T2, ARMOR_MODIFIER_UP_DT_T2) // tribal enviro armor

/obj/item/clothing/suit/armor/medium/tribal/rustwalkers
	name = "Rustwalkers armor"
	desc = "A car seat leather duster, a timing belt bandolier, and armour plating made from various parts of a car, it surely would weigh the wearer down. Commonly worn by members of the Rustwalkers tribe."
	icon_state = "rustwalkers_armour"
	item_state = "rustwalkers_armour"
	body_parts_hidden = CHEST

/obj/item/clothing/suit/armor/medium/tribal/whitelegs
	name = "White Legs armour"
	desc = "A series of tan and khaki armour plates, held in place with a considerable amount of strapping and possibly duct tape. Commonly worn by members of the White Legs tribe."
	icon_state = "white_legs_armour"
	item_state = "white_legs_armour"
	body_parts_hidden = ARMS | LEGS

/obj/item/clothing/suit/armor/medium/tribal/eighties
	name = "80s armour"
	desc = "A ballistic duster with the number 80 stitched onto the back worn over a breastplate made from a motorcycle's engine housing, with kneepads made from stirrups. Worn by the members of the 80s tribe."
	icon_state = "80s_armour"
	item_state = "80s_armour"
	body_parts_hidden = ARMS | CHEST

/obj/item/clothing/suit/armor/medium/tribal/deadhorses
	name = "Dead Horses armour"
	desc = "A simple leather bandolier and gecko hide chest covering, with an engraved metal pauldron and a set of black leather straps, one holding a shinpad in place. Commonly worn by the members of the Dead Horses tribe."
	icon_state = "dead_horses_armour"
	item_state = "dead_horses_armour"
	body_parts_hidden = 0

/obj/item/clothing/suit/armor/medium/tribal/bone
	name = "Reinforced Bone armor"
	desc = "A tribal armor plate, reinforced with leather and a few metal parts."
	icon_state = "bone_dancer_armor"
	item_state = "bone_dancer_armor"
	blood_overlay_type = "armor"
	armor_tokens = list(ARMOR_MODIFIER_UP_DT_T2)

/*/obj/item/clothing/suit/armor/medium/tribal/westernwayfarer
	name = "Western Wayfarer armor"
	desc = "A Suit of armor crafted by Tribals using pieces of scrap metals and the armor of fallen foes, a bighorner's skull sits on the right pauldron along with bighorner fur lining the collar of the leather bound chest. Along the leather straps adoring it are multiple bone charms with odd markings on them."
	icon_state = "western_wayfarer_armor"
	item_state = "western_wayfarer_armor"
	// body_parts_covered = CHEST|GROIN|LEGS|ARMS|HANDS
	*/

/obj/item/clothing/suit/armor/medium/tribal/tribe_heavy_armor
	name = "heavy tribal armor"
	desc = "Heavy armor make of sturdy leather and pieces of bone. Worn by seasoned veterans within the Wayfinder tribe."
	icon = 'icons/fallout/clothing/armored_heavy.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_heavy.dmi'
	icon_state = "tribal_heavy"
	item_state = "tribal_heavy"
	armor_tokens = list(ARMOR_MODIFIER_UP_DT_T3)

////////////////////////////////
//// MEDIUM BALLISTIC VESTS ////
////////////////////////////////

// Bullet resistant, melee vulnerable, light
/obj/item/clothing/suit/armor/medium/vest
	name = "armor vest"
	desc = "A slim armored vest with a rigid exterior that provides decent protection against pistol rounds, stabs, and bludgeons."
	icon_state = "armoralt"
	item_state = "armoralt"
	blood_overlay_type = "armor"
	dog_fashion = /datum/dog_fashion/back
	mutantrace_variation = STYLE_DIGITIGRADE|STYLE_NO_ANTHRO_ICON
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_LESS_T2 * ARMOR_SLOWDOWN_GLOBAL_MULT
	armor = ARMOR_VALUE_BALLISTIC_ARMOR
	body_parts_hidden = CHEST

/obj/item/clothing/suit/armor/medium/vest/bulletproof
	name = "bulletproof vest"
	desc = "This vest is in good shape, the layered kevlar lightweight yet very good at stopping bullets."
	icon = 'icons/fallout/clothing/armored_light.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_light.dmi'
	icon_state = "vest_bullet"
	item_state = "vest_bullet"
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_LESS_T1 * ARMOR_SLOWDOWN_GLOBAL_MULT
	armor = ARMOR_VALUE_BULLETPROOF_ARMOR

/obj/item/clothing/suit/armor/medium/vest/kevlar
	name = "kevlar vest"
	desc = "Worn but serviceable, the vest is is effective against ballistic impacts."
	icon = 'icons/fallout/clothing/armored_light.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_light.dmi'
	icon_state = "vest_kevlar"
	item_state = "vest_kevlar"

//bullet: 50, melee: 25, laser: 15, threshold: 9
/obj/item/clothing/suit/armor/medium/vest/bulletproof/big
	name = "security vest"
	desc = "A thick bullet-resistant vest composed of ballistic plates and padding. Common with pre-war security forces."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "vest_armor"
	item_state = "vest_armor"
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_GLOBAL_MULT
	armor = ARMOR_VALUE_COMBAT_ARMOR
	armor_tokens = list(ARMOR_MODIFIER_UP_BULLET_T2, ARMOR_MODIFIER_DOWN_LASER_T1, ARMOR_MODIFIER_DOWN_ENV_T1, ARMOR_MODIFIER_UP_DT_T1)

/obj/item/clothing/suit/armor/light/vest/russian
	name = "russian vest"
	desc = "A bulletproof vest with forest camo. Good thing there's plenty of forests to hide in around here, right?"
	icon_state = "rus_armor"
	item_state = "rus_armor"

/obj/item/clothing/suit/armor/medium/vest/chinese
	name = "chinese flak vest"
	desc = "An uncommon suit of pre-war Chinese armor. It's a very basic and straightforward piece of armor that covers the front of the user."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "vest_chicom"
	item_state = "vest_chicom"

//light armor in disguise with balanced 20 in all stats, 4 threshold, and less slowown
/obj/item/clothing/suit/armor/medium/vest/alt
	desc = "A thick armored vest that provides decent protection against most types of damage."
	icon_state = "armor"
	item_state = "armor"
	armor_tier_desc = ARMOR_CLOTHING_LIGHT
	armor = ARMOR_VALUE_LIGHT
	armor_tokens = list(ARMOR_MODIFIER_UP_DT_T3)
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_LESS_T3 * ARMOR_SLOWDOWN_GLOBAL_MULT

//joke armor, just like legion armor
/obj/item/clothing/suit/armor/medium/vest/old
	name = "degrading armor vest"
	desc = "Older generation Type 1 armored vest. It looks like a fixer-upper, but it could still stop a bullet."
	icon_state = "armor"
	item_state = "armor"
	armor = ARMOR_VALUE_LIGHT
	armor_tokens = list(ARMOR_MODIFIER_DOWN_MELEE_T1, ARMOR_MODIFIER_DOWN_LASER_T1, ARMOR_MODIFIER_UP_DT_T2)
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_GLOBAL_MULT

/obj/item/clothing/suit/armor/medium/vest/warden
	name = "warden's jacket"
	desc = "A navy-blue armored jacket with blue shoulder designations and '/Warden/' stitched into one of the chest pockets."
	icon_state = "warden_alt"
	item_state = "armor"
	resistance_flags = FLAMMABLE
	dog_fashion = null
	mutantrace_variation = STYLE_DIGITIGRADE

/obj/item/clothing/suit/armor/medium/vest/warden/alt
	name = "warden's armored jacket"
	desc = "A red jacket with silver rank pips and body armor strapped on top."
	icon_state = "warden_jacket"

/obj/item/clothing/suit/armor/medium/vest/warden/navyblue
	name = "warden's jacket"
	desc = "Perfectly suited for the warden that wants to leave an impression of style on those who visit the brig."
	icon_state = "wardenbluejacket"
	item_state = "wardenbluejacket"
	// body_parts_covered = CHEST|ARMS
	mutantrace_variation = STYLE_DIGITIGRADE|STYLE_NO_ANTHRO_ICON

/obj/item/clothing/suit/armor/medium/vest/leather
	name = "security overcoat"
	desc = "Lightly armored leather overcoat meant as casual wear for high-ranking officers."
	icon_state = "leathercoat-sec"
	item_state = "hostrench"
	dog_fashion = null

/obj/item/clothing/suit/armor/medium/vest/capcarapace
	name = "captain's carapace"
	desc = "A fireproof armored chestpiece reinforced with ceramic plates and plasteel pauldrons to provide additional protection whilst still offering maximum mobility and flexibility. Issued only to the station's finest, although it does chafe your nipples."
	icon_state = "capcarapace"
	item_state = "armor"
	dog_fashion = null
	resistance_flags = FIRE_PROOF

/obj/item/clothing/suit/armor/medium/vest/capcarapace/syndicate
	name = "syndicate captain's vest"
	desc = "A sinister looking vest of advanced armor worn over a black and red fireproof jacket. The gold collar and shoulders denote that this belongs to a high ranking syndicate officer."
	icon_state = "syndievest"
	mutantrace_variation = STYLE_DIGITIGRADE

/obj/item/clothing/suit/armor/medium/vest/capcarapace/alt
	name = "captain's parade jacket"
	desc = "For when an armoured vest isn't fashionable enough."
	icon_state = "capformal"
	item_state = "capspacesuit"

/obj/item/clothing/suit/armor/medium/vest/det_suit
	name = "detective's armor vest"
	desc = "An armored vest with a detective's badge on it."
	icon_state = "detective-armor"
	resistance_flags = FLAMMABLE
	dog_fashion = null

/obj/item/clothing/suit/armor/medium/vest/infiltrator
	name = "insidious combat vest"
	desc = "An insidious combat vest designed using Syndicate nanofibers to absorb the supreme majority of kinetic blows. Although it doesn't look like it'll do too much for energy impacts."
	icon_state = "infiltrator"
	item_state = "infiltrator"
	resistance_flags = FIRE_PROOF | ACID_PROOF
	strip_delay = 80

/////////////////////////////
//// MEDIUM BREASTPLATES ////
/////////////////////////////

// metal breastplates!
// ++Melee, -Bullet, +laser, bit slower
/obj/item/clothing/suit/armor/medium/vest/breastplate
	name = "steel breastplate"
	desc = "a steel breastplate, inspired by a pre-war design. It provides some protection against impacts, cuts, and medium-velocity bullets."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "steel_bib"
	item_state = "steel_bib"
	armor = ARMOR_VALUE_METAL_ARMOR
	armor_tokens = list(ARMOR_MODIFIER_UP_DT_T3,ARMOR_MODIFIER_DOWN_MELEE_T1,ARMOR_MODIFIER_DOWN_LASER_T1)
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_MORE_T1 * ARMOR_SLOWDOWN_GLOBAL_MULT

/obj/item/clothing/suit/armor/medium/vest/breastplate/reinforced
	name = "reinforced steel breastplate"
	desc = "a steel breastplate inspired by a pre-war design. It provides some protection against impacts, cuts, and medium-velocity bullets. It's chest section has additional armor."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "steel_bib_heavy"
	item_state = "steel_bib_heavy"
	armor = ARMOR_VALUE_REINFORCED_METAL_ARMOR
	
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_MORE_T2 * ARMOR_SLOWDOWN_GLOBAL_MULT

/obj/item/clothing/suit/armor/medium/vest/breastplate/scrap
	name = "scrap metal chestplate"
	desc = "Various metal bits welded together to form a crude chestplate."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "metal_chestplate"
	item_state = "metal_chestplate"
	siemens_coefficient = 1.3

/obj/item/clothing/suit/armor/medium/vest/breastplate/scrap/reinforced
	name = "reinforced metal chestplate"
	desc = "Various metal bits welded together to form a crude chestplate, with extra bits of metal top of the first layer. Heavy."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "metal_chestplate2"
	item_state = "metal_chestplate2"
	armor = ARMOR_VALUE_REINFORCED_METAL_ARMOR

/obj/item/clothing/suit/armor/medium/vest/breastplate/scrap/mutant
	name = "mutant armour"
	desc = "Metal plates rigged to fit the frame of a super mutant. Maybe he's the big iron with a ranger on his hip?"
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "mutie_heavy_metal"
	item_state = "mutie_heavy_metal"
	mutantrace_variation = NONE

///////////////////////
//// MEDIUM DUSTER ////
///////////////////////

/obj/item/clothing/suit/armor/medium/duster
	name = "armored greatcoat"
	desc = "A greatcoat enhanced with a special alloy for some extra protection and style for those with a commanding presence."
	icon_state = "hos"
	item_state = "greatcoat"
	// body_parts_covered = CHEST|GROIN|ARMS|LEGS
	cold_protection = CHEST|GROIN|LEGS|ARMS
	heat_protection = CHEST|GROIN|LEGS|ARMS
	strip_delay = 80
	mutantrace_variation = STYLE_DIGITIGRADE|STYLE_NO_ANTHRO_ICON
	equip_delay_other = 50
	max_integrity = 200
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/duster/armored
	armor = ARMOR_VALUE_DUSTER_ARMOR
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_LESS_T3 * ARMOR_SLOWDOWN_GLOBAL_MULT

/obj/item/clothing/suit/armor/medium/duster/navyblue
	name = "head of security's jacket"
	desc = "This piece of clothing was specifically designed for asserting superior authority."
	icon_state = "hosbluejacket"
	item_state = "hosbluejacket"

/obj/item/clothing/suit/armor/medium/duster/trenchcoat
	name = "armored trenchcoat"
	desc = "A trenchcoat enhanced with a special lightweight kevlar. The epitome of tactical plainclothes."
	icon_state = "hostrench"
	item_state = "hostrench"
	flags_inv = 0
	unique_reskin = list("Coat" = "hostrench",
						"Cloak" = "trenchcloak")

/obj/item/clothing/suit/armor/medium/duster/armoredcoat
	name = "armored battlecoat"
	desc = "A heavy padded leather coat with faded colors, worn over a armor vest."
	icon_state = "battlecoat_tan"
	item_state = "battlecoat_tan"

/obj/item/clothing/suit/armor/medium/duster/duster_renegade
	name = "renegade duster"
	desc = "Metal armor worn under a stylish duster. For the bad boy who wants to look good while commiting murder."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "duster-renegade"
	item_state = "duster-renegade"

/obj/item/clothing/suit/armor/medium/duster/town/commissioner
	name = "commissioner's jacket"
	desc = "A navy-blue jacket with blue shoulder designations, '/NPD/' stitched into one of the chest pockets, and hidden ceramic trauma plates. It has a small compartment for a holdout pistol."
	icon_state = "warden_alt"
	item_state = "armor"

/obj/item/clothing/suit/armor/medium/duster/town/chief
	name = "NPD Chief's jacket"
	desc = "A navy-blue jacket with blue shoulder designations, '/NPD/' stitched into one of the chest pockets, and hidden ceramic trauma plates. It has a small compartment for a holdout pistol."
	icon = 'icons/fallout/clothing/suits_cosmetic.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/suit_cosmetic.dmi'
	icon_state = "police_chief"
	item_state = "police_chief"

/obj/item/clothing/suit/armor/medium/duster/motorball
	name = "motorball suit"
	desc = "Reproduction motorcycle-football suit, made in vault 75 that was dedicated to a pure sports oriented culture."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "motorball"
	item_state = "motorball"

/obj/item/clothing/suit/armor/medium/duster/mutant
	name = "mutant poncho"
	desc = "An oversized poncho, made to fit the frame of a super mutant. Maybe he's the big ranger with an iron on his hip?"
	icon_state = "mutie_poncho"
	item_state = "mutie_poncho"

/obj/item/clothing/suit/armor/medium/duster/cloak_armored
	name = "armored cloak"
	desc = "A dark cloak worn over protective plating."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "cloak_armored"
	item_state = "cloak_armored"

//////////////////////
//// COMBAT ARMOR ////
//////////////////////

/obj/item/clothing/suit/armor/medium/combat
	name = "combat armor"
	desc = "An old military grade pre war combat armor."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "combat_armor"
	item_state = "combat_armor"
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 5)
	equip_delay_other = 50
	max_integrity = 200
	armor = ARMOR_VALUE_COMBAT_ARMOR
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/magpouch // 4 slots for ammo!
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_LESS_T1 * ARMOR_SLOWDOWN_GLOBAL_MULT
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T1)

/obj/item/clothing/suit/armor/medium/combat/laserproof
	name = "ablative combat armor"
	desc = "An old military grade pre war combat armor. This one switches out its ballistic fibers for an ablative coating that disrupts energy weapons."
	armor_tokens = list(ARMOR_MODIFIER_UP_LASER_T2, ARMOR_MODIFIER_UP_ENV_T1)

/obj/item/clothing/suit/armor/medium/combat/dark
	name = "combat armor"
	desc = "An old military grade pre war combat armor. Now in dark, and extra-crispy!"
	color = "#514E4E"

/obj/item/clothing/suit/armor/medium/combat/Initialize()
	. = ..()
	AddComponent(/datum/component/spraycan_paintable)
	START_PROCESSING(SSobj, src) // Lagg note: No idea what this does

/obj/item/clothing/suit/armor/medium/combat/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/clothing/suit/armor/medium/combat/mk2
	name = "reinforced combat armor"
	desc = "A reinforced set of bracers, greaves, and torso plating of prewar design. This one is kitted with additional plates."
	icon_state = "combat_armor_mk2"
	item_state = "combat_armor_mk2"
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 8)
	armor = ARMOR_VALUE_REINFORCED_COMBAT_ARMOR
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_MORE_T1 * ARMOR_SLOWDOWN_GLOBAL_MULT

/obj/item/clothing/suit/armor/medium/combat/mk2/Vault
	name = "Vault security armor"
	desc = "A thick bullet-resistant vest composed of ballistic plates and padding. Common with Vault-tec security forces. The set looks pristine."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "vest_armor"
	item_state = "vest_armor"

/obj/item/clothing/suit/armor/medium/combat/mk2/dark
	name = "reinforced combat armor"
	desc = "A reinforced model based of the pre-war combat armor. Now in dark, light, and smoky barbeque!"
	color = "#302E2E"

/obj/item/clothing/suit/armor/medium/combat/swat
	name = "SWAT combat armor"
	desc = "A custom version of the pre-war combat armor, slimmed down and minimalist for domestic S.W.A.T. teams."
	icon_state = "combat_armor_swat"
	item_state = "combat_armor_swat"

/obj/item/clothing/suit/armor/medium/combat/chinese
	name = "chinese combat armor"
	desc = "(An uncommon suit of pre-war Chinese combat armor. It's a very basic and straightforward piece of armor that covers the front of the user."
	icon_state = "chicom_armor"
	item_state = "chicom_armor"

/obj/item/clothing/suit/armor/medium/combat/rusted
	name = "rusted combat armor"
	desc = "An old military grade pre war combat armor. This set has seen better days, weathered by time. The composite plates look sound and intact still."
	icon_state = "rusted_combat_armor"
	item_state = "rusted_combat_armor"
	slowdown = 0.6

/obj/item/clothing/suit/armor/medium/combat/environmental
	name = "environmental armor"
	desc = "A pre-war suit developed for use in heavily contaminated environments, and is prized in the Wasteland for its ability to protect against biological threats."
	icon_state = "environmental_armor"
	item_state = "environmental_armor"
	w_class = WEIGHT_CLASS_BULKY
	gas_transfer_coefficient = 0.9
	permeability_coefficient = 0.1
	strip_delay = 60
	equip_delay_other = 60
	flags_inv = HIDEJUMPSUIT
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_MORE_T1 * ARMOR_SLOWDOWN_GLOBAL_MULT
	armor_tokens = list(ARMOR_MODIFIER_UP_BULLET_T1, ARMOR_MODIFIER_UP_LASER_T1, ARMOR_MODIFIER_UP_ENV_T3)

/obj/item/clothing/suit/armor/medium/combat/environmental/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/rad_insulation, RAD_NO_INSULATION, TRUE, FALSE)

///////////////////
// MEDIUM RAIDER //
///////////////////
// Has the heavier raider armors in it, less style, more protection. Still pretty light

/obj/item/clothing/suit/armor/medium/raider
	name = "base raider armor"
	desc = "for testing"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/jacket
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_LESS_T1 * ARMOR_SLOWDOWN_GLOBAL_MULT
	armor = ARMOR_VALUE_RAIDER_ARMOR
	armor_tokens = list(ARMOR_MODIFIER_DOWN_ENV_T1)

/obj/item/clothing/suit/armor/medium/raider/badlands
	name = "fiend raider armor"
	desc = "A leather top with a bandolier over it and a straps that cover the arms."
	icon_state = "badlands"
	item_state = "badlands"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/magpouch
	body_parts_hidden = ARMS | LEGS | GROIN

/obj/item/clothing/suit/armor/medium/raider/blastmaster
	name = "blastmaster raider armor"
	desc = "A suit composed largely of blast plating, though there's so many holes it's hard to say if it will protect against much."
	icon_state = "blastmaster"
	item_state = "blastmaster"
	flash_protect = 2

/obj/item/clothing/suit/armor/medium/raider/yankee
	name = "yankee raider armor"
	desc = "A set of armor made from bulky plastic and rubber. A faded sports team logo is printed in various places. Go Desert Rats!"
	icon_state = "yankee"
	item_state = "yankee"
	body_parts_hidden = ARMS | CHEST

/// Environmental raider armor
/obj/item/clothing/suit/armor/medium/raider/iconoclast
	name = "iconoclast raider armor"
	desc = "A rigid armor set that appears to be fashioned from a radiation suit, or a mining suit."
	icon_state = "iconoclast"
	item_state = "iconoclast"
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_MORE_T1 * ARMOR_SLOWDOWN_GLOBAL_MULT
	armor_tokens = list (ARMOR_MODIFIER_UP_ENV_T2)

/obj/item/clothing/suit/armor/medium/raider/combatduster
	name = "raider combat duster"
	desc = "An old military-grade pre-war combat armor under a weathered duster. It appears to be fitted with metal plates to replace the crumbling ceramic."
	icon_state = "combatduster"
	item_state = "combatduster"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/duster/armored
	armor = ARMOR_VALUE_DUSTER_ARMOR
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_LESS_T1 * ARMOR_SLOWDOWN_GLOBAL_MULT
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T2, ARMOR_MODIFIER_UP_DT_T1)

/obj/item/clothing/suit/armor/medium/raider/raidermetal
	name = "raider metal armor"
	desc = "A suit of welded, fused metal plates. Looks bulky, with great protection."
	icon_state = "raider_metal"
	item_state = "raider_metal"
	resistance_flags = FIRE_PROOF
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_MORE_T1 * ARMOR_SLOWDOWN_GLOBAL_MULT
	armor = ARMOR_VALUE_METAL_ARMOR
	armor_tokens = list(ARMOR_MODIFIER_UP_DT_T2)

/obj/item/clothing/suit/armor/medium/raider/wastewar
	name = "wasteland warrior armor"
	desc = "a mad attempt to recreate armor based of images of japanese samurai, using a sawn up old car tire as shoulder pads, bits of chain to cover the hips and pieces of furniture for a breastplate. Might stop a blade but nothing else, burns easily too. Comes with an enormous scabbard welded to the back!"
	icon_state = "wastewar"
	item_state = "wastewar"
	resistance_flags = FLAMMABLE
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/massive/swords
	body_parts_hidden = CHEST | GROIN

///////////////////////////
// !!!FACTION SECTION!!! //
///////////////////////////

////////////////
//Combat Armor//
////////////////

/obj/item/clothing/suit/armor/medium/combat/raider
	name = "raider combat armor"
	desc = "An old military-grade pre-war combat armor. It appears to be fitted with metal plates to replace the crumbling ceramic."
	icon_state = "combat_armor_raider"

/obj/item/clothing/suit/armor/medium/combat/mk2/raider
	name = "reinforced raider combat armor"
	desc = "An old set of reinforced combat armor with some parts supplanted with painspike armor. It seems less protective than a mint-condition set of combat armor."
	icon_state = "combat_armor_raider"

/obj/item/clothing/suit/armor/medium/combat/ncr
	name = "NCR combat armor"
	desc = "Pre-war military style armor, patched and missing some parts. Modified and repainted to declare the user a fighter for New California Republic."
	icon_state = "combat_armor_ncr"

/obj/item/clothing/suit/armor/medium/combat/mk2/ncr
	name = "reinforced NCR combat armor"
	desc = "Pre-war military style armor, a full set with bracers and reinforcements. Modified and repainted to declare the user a fighter for New California Republic."
	icon_state = "combat_armor_ncr_mk2"
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 8)

/obj/item/clothing/suit/armor/medium/combat/legion
	name = "legion combat armor"
	desc = "Pre-war military style armor, patched and missing some parts. Modified and repainted to declare the user a fighter for Caesar's Legion."
	icon_state = "combat_armor_legion"

/obj/item/clothing/suit/armor/medium/combat/mk2/legion
	name = "reinforced legion combat armor"
	desc = "Pre-war military style armor, a full set with bracers and reinforcements. Modified and repainted to declare the user a fighter for Caesar's Legion."
	icon_state = "combat_armor_legion_mk2"
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 8)

/obj/item/clothing/suit/armor/medium/combat/tribal
	name = "tribal combat armor"
	desc = "An old military grade pre war combat armor, now decorated with sinew and the bones of the hunted for its new wearer."
	icon_state = "combat_armor_tribe"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_LESS_T1 * ARMOR_SLOWDOWN_GLOBAL_MULT

/obj/item/clothing/suit/armor/medium/combat/mk2/tribal
	name = "tribal reinforced combat armor"
	desc = "An old military grade pre-war reinforced combat armor, now decorated with sinew and the bones of the hunted for its new wearer."
	icon_state = "combat_armor_tribe"
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_GLOBAL_MULT

/////////
// NCR //
/////////

//Army

//melee: 20, bullet: 20, laser: 10, threshold: 7
/obj/item/clothing/suit/armor/medium/vest/ncr
	name = "NCR patrol vest"
	desc = "A standard issue NCR Infantry vest."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "ncr_infantry_vest"
	item_state = "ncr_infantry_vest"
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 2)
	armor = ARMOR_VALUE_DUSTER_ARMOR
	armor_tokens = list(ARMOR_MODIFIER_UP_DT_T2)

/obj/item/clothing/suit/armor/medium/vest/ncr/mant
	name = "NCR mantle vest"
	desc = "A standard issue NCR Infantry vest with a mantle on the shoulder."
	icon_state = "ncr_standard_mantle"
	item_state = "ncr_standard_mantle"

/obj/item/clothing/suit/armor/medium/vest/ncr/reinf
	name = "NCR reinforced armor vest"
	desc = "A standard issue NCR Infantry vest reinforced with a groinpad."
	icon_state = "ncr_reinforced_vest"
	item_state = "ncr_reinforced_vest"
	armor = ARMOR_VALUE_REINFORCED_LEATHER_ARMOR

/obj/item/clothing/suit/armor/medium/vest/ncr/mantreinf
	name = "NCR reinforced mantle vest"
	desc = "A standard issue NCR Infantry vest reinforced with a groinpad and a mantle."
	icon_state = "ncr_reinforced_mantle"
	item_state = "ncr_reinforced_mantle"
	armor = ARMOR_VALUE_REINFORCED_LEATHER_ARMOR

/obj/item/clothing/suit/armor/medium/vest/ncr/officer
	name = "NCR officer armor vest"
	desc = "A reinforced set of NCR mantle armour, with added padding on the groin, neck and shoulders. Intended for use by the officer class."
	icon_state = "ncr_lt_armour"
	item_state = "ncr_lt_armour"
	armor = ARMOR_VALUE_REINFORCED_LEATHER_ARMOR

//Rangers
/obj/item/clothing/suit/armor/medium/combat/patrol
	name = "NCR patrol ranger combat armor"
	desc = "A modified set of combat armor specifically for use of heavy patrol rangers."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "ncr_ranger_patrol"

/obj/item/clothing/suit/armor/medium/ncr/vetranger
	name = "NCR veteran ranger combat armor"
	desc = "The NCR veteran ranger combat armor, or black armor consists of a pre-war L.A.P.D. riot suit under a duster with rodeo jeans. Considered one of the most prestigious suits of armor to earn and wear while in service of the NCR Rangers."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "ncr_ranger_veteran"
	armor = ARMOR_VALUE_RIOT_ARMOR
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_LESS_T1 * ARMOR_SLOWDOWN_GLOBAL_MULT

//Mutants
/obj/item/clothing/suit/armor/medium/combat/desert_ranger/mutant
	name = "NCR mutant armor"
	desc = "Multiple sets of NCR patrol vests that have been fused, stitched and welded together in order to fit the frame of a Super Mutant."
	icon_state = "mutie_ncr"
	item_state = "mutie_ncr"

/obj/item/clothing/suit/armor/medium/combat/patrol/mutant
	name = "mutant desert ranger armor"
	desc = "Multiple sets of desert ranger patrol armor made to protect a massive humanoid, and smelling like blood sausage."
	icon_state = "mutie_ranger_armour"
	item_state = "mutie_ranger_armour"

//Event
/obj/item/clothing/suit/armor/medium/combat/desert_ranger/officer/colonel
	name = "NCR colonel armor"
	desc = "A suit of desert ranger styled armor, decorated to look more official. Very, very official."
	icon_state = "ncr_captain_armour"
	item_state = "ncr_captain_armour"

////////////
// LEGION //
////////////
/obj/item/clothing/suit/armor/medium/legion
	name = "modified Legion armor"
	desc = "A modified detoriated armor kit consisting of Legion gear and scrap metal."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	cold_protection = CHEST|GROIN
	heat_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 30
	equip_delay_other = 50
	max_integrity = 200
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/duster
	armor = ARMOR_VALUE_REINFORCED_LEATHER_ARMOR
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_LESS_T2 * ARMOR_SLOWDOWN_GLOBAL_MULT // lighter, cus melee focus

// bullet: 35, melee: 35, laser: 25, threshold: 4
/obj/item/clothing/suit/armor/medium/legion/vet
	name = "legion veteran armor"
	desc = "An armor worn by veteran legionaries who have proven their combat prowess in many battles, its hardened leather is sturdier than that of previous ranks."
	icon_state = "leg_vet"
	heat_protection = CHEST | GROIN | LEGS| ARMS | HEAD
	armor = ARMOR_VALUE_MEDIUM
	armor_tokens = list(ARMOR_MODIFIER_UP_DT_T1, ARMOR_MODIFIER_DOWN_LASER_T1)

// bullet: 35, melee: 35, laser: 25, threshold: 6
/obj/item/clothing/suit/armor/medium/legion/vexil
	name = "legion vexillarius armor"
	desc = "The armor appears to be based off of a suit of Legion veteran armor, with the addition of circular metal plates attached to the torso, as well as a banner displaying the flag of the Legion worn on the back."
	icon_state = "leg_vex"
	heat_protection = CHEST | GROIN | LEGS| ARMS | HEAD
	armor = ARMOR_VALUE_MEDIUM
	armor_tokens = list(ARMOR_MODIFIER_UP_DT_T3, ARMOR_MODIFIER_DOWN_LASER_T1)
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_LESS_T1 * ARMOR_SLOWDOWN_GLOBAL_MULT //heavier

/obj/item/clothing/suit/armor/medium/legion/orator
	name = "legion orator armor"
	desc = "The armor appears to be based off of a suit of Legion veteran armor, with the addition of bracers, a chainmail skirt, and large pauldrons.  A tabard emblazoned with the bull is loosely draped over the torso."
	icon_state = "leg_orator"

/obj/item/clothing/suit/armor/medium/legion/centurion //reinforced combat armor
	name = "legion centurion armor"
	desc = "Every Centurion is issued some of the best armor available in the Legion, and adds better pieces from slain opponents over time."
	icon = 'icons/fallout/clothing/armored_medium.dmi' // temp solution to inheritance
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi' // temp solution to inheritance
	icon_state = "leg_cent"
	armor = ARMOR_VALUE_REINFORCED_COMBAT_ARMOR
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 10) // Rest in pieces

//-10 to melee and laser and -2 threshold compared to stock, but has 50 bullet resist and less slowdown
/obj/item/clothing/suit/armor/medium/legion/rangercent 
	name = "legion centurion ranger-hunter armor"
	desc = "Centurions who have led many patrols and ambushes against NCR Rangers have a distinct look from the many looted pieces of Ranger armor, and are often experienced in skirmishing."
	icon = 'icons/fallout/clothing/armored_medium.dmi' // temp solution to inheritance
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi' // temp solution to inheritance
	icon_state = "leg_cent_ranger"
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 8)
	heat_protection = CHEST | GROIN | LEGS| ARMS | HEAD
	armor = ARMOR_VALUE_COMBAT_ARMOR
	armor_tokens = list(ARMOR_MODIFIER_UP_BULLET_T2)
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_LESS_T3 * ARMOR_SLOWDOWN_GLOBAL_MULT

//////////////////////////
// Brotherhood of Steel //
//////////////////////////

/obj/item/clothing/suit/armor/medium/combat/brotherhood
	name = "brotherhood armor"
	desc = "A combat armor set made by the Brotherhood of Steel, standard issue for all Knights. It bears a red stripe."
	icon_state = "brotherhood_armor_knight"
	armor = ARMOR_VALUE_COMBAT_ARMOR
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_GLOBAL_MULT

/obj/item/clothing/suit/armor/medium/combat/brotherhood/initiate
	name = "initiate armor"
	desc = "An old military grade pre war combat armor, repainted to the colour scheme of the Brotherhood of Steel."
	icon_state = "brotherhood_armor"

/obj/item/clothing/suit/armor/medium/combat/brotherhood/initiate/mk2
	name = "reinforced initiate armor"
	desc = "A combat armor set made and updated by the Brotherhood of Steel. This varient appears to be a refurbished set based on its welding marks."
	icon_state = "brotherhood_armor_mk2"

/obj/item/clothing/suit/armor/medium/combat/brotherhood/senior
	name = "brotherhood senior knight armor"
	desc = "A renforced combat armor set made by the Brotherhood of Steel, standard issue for all Senior Knights. It bears a silver stripe."
	icon_state = "brotherhood_armor_senior"
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 8)
	armor = ARMOR_VALUE_REINFORCED_COMBAT_ARMOR
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_MORE_T1 * ARMOR_SLOWDOWN_GLOBAL_MULT

/obj/item/clothing/suit/armor/medium/combat/brotherhood/captain
	name = "brotherhood knight-captain armor"
	desc = "A renforced combat armor set made by the Brotherhood of Steel, standard issue for all Knight-Captains. It bears golden embroidery."
	icon_state = "brotherhood_armor_captain"
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 8)
	armor = ARMOR_VALUE_REINFORCED_COMBAT_ARMOR
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_MORE_T1 * ARMOR_SLOWDOWN_GLOBAL_MULT

//////////////////////
// Town of Eastwood //
//////////////////////

/obj/item/clothing/suit/armor/medium/duster/mayor
	name = "eastwood mayor duster"
	desc = "A long blue coat belonging to the man with finaly say in the town's matters, the Mayor."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "town_command"

/obj/item/clothing/suit/armor/medium/combat/sheriff
	name = "eastwood provost's trenchcoat"
	desc = "A trenchcoat which does a poor job at hiding the full-body combat armor beneath it."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "town_marshal"

/obj/item/clothing/suit/armor/medium/combat/town
	name = "eastwood security combat armor"
	desc = "A traditional Vault-Tec riot vest reinforced for use out in wastes. Features wrist and legguards compared to standard version"
	icon_state = "town_armor"

/obj/item/clothing/suit/armor/medium/town/riot //UN Glowie
	name = "eastwood provost riot coat"
	desc = "A weathered coat made for most part out of ballistic fiber and stuffed with ceramic plates underneath, it provides more than enough protection for the big gun of the town."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "town_marshal_riot"
	armor = ARMOR_VALUE_RIOT_ARMOR

/////////////
// Enclave //
/////////////

/obj/item/clothing/suit/armor/medium/combat/enclave
	name = "remnant combat armor"
	desc = "An old well-kept combat armor bearing a small faded circle of stars encompassing an E."
	icon_state = "enclave_armor"

/obj/item/clothing/suit/armor/medium/combat/mk2/enclave
	name = "reinforced remnant combat armor"
	desc = "An old well-kept combat armor bearing a small faded circle of stars encompassing an E. This one is meant for heavier duties."
	icon_state = "enclave_armor_mk2"

/obj/item/clothing/suit/armor/medium/duster/enclave
	name = "enclave officer trenchcoat"
	desc = "Premium prewar military armor worn under a coat for Enclave officers."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "armor_enclave_officer"

/////////////////
// Great Khans //
/////////////////

//has slowdown, good resistances and bad threshold
/obj/item/clothing/suit/toggle/labcoat/khan_jacket/armored
	name = "Great Khan armored jacket"
	desc = "A black leather jacket with ballistic plates and a big Great Khan logo on the back. Some prefer to wear a leather vest (alt-click)."
	icon_state = "khan_jacket_armored"
	item_state = "khan_jacket_armored"
	slowdown = 0.5
	cold_protection = CHEST|GROIN
	heat_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 30
	equip_delay_other = 50
	max_integrity = 200
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/armor
	slowdown = ARMOR_SLOWDOWN_MEDIUM * ARMOR_SLOWDOWN_GLOBAL_MULT
	armor =  ARMOR_VALUE_MEDIUM
	armor_tokens = list(ARMOR_MODIFIER_DOWN_BULLET_T1)
	armor_tier_desc = ARMOR_CLOTHING_MEDIUM
	stiffness = MEDIUM_STIFFNESS

