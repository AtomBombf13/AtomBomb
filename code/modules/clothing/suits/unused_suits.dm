/* 
 * Old armors we dont need or use or anything go here
 */

// Metal- Melee, Laser Good, Ballistics Moderate, Energy, Explosion bad
// Leather/soft armor: Melee Good, Laser , Energy, Explosion Moderate, Ballistic Bad
// Coat style armor is good for allround protection but excels at none. (note plated with unarmored duster over is still plated.)
// Kevlar: Ballistic Good, all others Bad.
// Mix can vary wildly but usually has some glaring strongpoints and weakspots.
// Combat armor is allround but not top defense against any single category.
// Thick warm armor gives cold protection, piecemeal gives overheating protection.
// Armor covering much of the body gives more defense vs acid, fire, bio in general and vice versa.

/*
Suits. 0-10 in its primary value, slowdown 0, various utility
/obj/item/clothing/suit
	name = "suit template"
	lefthand_file = 'icons/mob/inhands/clothing_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/clothing_righthand.dmi'
	slowdown = 0
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	allowed = null
	strip_delay = 10
*/


////////////
// LEGION //
////////////

// Recipe combine veteran armor with a kevlar vest
/obj/item/clothing/suit/armor/heavy/legion/breacher
	name = "legion breacher armor"
	desc = "A suit with the standard metal reinforcements of a veteran and a patched bulletproof vest worn over it."
	icon_state = "legion_heavy"
	item_state = "legion_heavy"

/obj/item/clothing/suit/armor/heavy/legion/centurion
	name = "legion centurion armor"
	desc = "The Legion centurion armor is by far the strongest suit of armor available to Caesar's Legion. The armor is composed from other pieces of armor taken from that of the wearer's defeated opponents in combat."
	icon_state = "legion_centurion"

/obj/item/clothing/suit/armor/heavy/legion/palacent
	name = "paladin-slayer centurion armor"
	desc = "The armor of a Centurion who has bested one or more Brotherhood Paladins, adding pieces of his prizes to his own defense. The symbol of the Legion is crudely painted on this once-marvelous suit of armor."
	icon_state = "legion_palacent"

/obj/item/clothing/suit/armor/heavy/legion/rangercent
	name = "ranger-hunter centurion armor"
	desc = "A suit of armor collected over the years by the deaths of countless NCR rangers."
	icon_state = "legion_rangercent"
	item_state = "legion_rangercent"

/obj/item/clothing/suit/armor/heavy/legion/legate
	name = "legion legate armor"
	desc = "The armor appears to be a full suit of heavy gauge steel and offers full body protection. It also has a cloak in excellent condition, but the armor itself bears numerous battle scars and the helmet is missing half of the left horn. The Legate's suit appears originally crafted, in contrast to other Legion armor which consists of repurposed pre-War sports equipment."
	icon_state = "legion_legate"

//FOR BOTH SUITS AND ARMORS BELONGING TO FACTIONS
//PLEASE PUT CUSTOM ARMORS IN f13armor.dm. All power armors are found in f13armor.dm.



/obj/item/clothing/suit/armor/exile
	name = "base faction exile armor"
	desc = "this is for testing."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'

/obj/item/clothing/suit/armor/exile/ncrexile
	name = "modified NCR armor"
	desc = "A modified detoriated armor kit consisting of NCR gear and scrap metal."
	icon_state = "ncrexile"
	item_state = "ncrexile"

/obj/item/clothing/suit/armor/exile/legexile
	name = "modified Legion armor"
	desc = "A modified detoriated armor kit consisting of Legion gear and scrap metal."
	icon_state = "legexile"
	item_state = "legexile"

//////////
//LEGION//
//////////

/obj/item/clothing/suit/armor/legion
	name = "legion armor template"
	desc = "should not exist. Bugreport."
	icon = 'icons/fallout/clothing/armored_light.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_light.dmi'
	icon_state = "legrecruit"
	item_state = "legarmor"
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 2) // Because shit armor

/datum/component/storage/concrete/pockets/tiny/legion
	max_items = 3

/obj/item/clothing/suit/armor/legion/recruit
	name = "legion recruit armor"
	desc = "Well, it's better than nothing."
	icon_state = "legion_recruit"
	item_state = "legion_recruit"

/obj/item/clothing/suit/armor/legion/recruit/decan
	name = "legion recruit armor"
	desc = "Recruit decanii receive slightly better protection than regular recruits. Slightly."

/obj/item/clothing/suit/armor/legion/prime
	name = "legion prime armor"
	desc = "Legion Primes have survived some skirmishes, and when promoted often receive a set of armor, padded leather modeled on ancient baseball catcher uniforms and various plates of metal or boiled leather."
	icon_state = "legion_prime"
	item_state = "legion_prime"

/obj/item/clothing/suit/armor/legion/prime/decan
	name = "legion prime decanus armor"
	desc = "Legion prime decanus armor-an extra reinforced baseball uniform."

/obj/item/clothing/suit/armor/legion/prime/slavemaster
	name = "slavemaster armor"
	desc = "Issued to slave masters to keep them cool during long hours of watching the slaves work in the sun."
	icon_state = "legion-master"
	item_state = "legion-master"

/obj/item/clothing/suit/armor/legion/heavy
	name = "legion veteran decan armor"
	desc = "A Legion veterans armor reinforced with a patched bulletproof vest, the wearer has the markings of a Decanus."
	icon = 'icons/fallout/clothing/armored_heavy.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_heavy.dmi'
	icon_state = "legion_heavy"
	item_state = "legion_heavy"
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 5)

/obj/item/clothing/suit/armor/legion/vet/vexil
	name = "legion vexillarius armor"
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	desc = " Worn by Vexillarius, this armor has been reinforced with circular metal plates on the chest and a back mounted pole for the flag of the Bull, making the wearer easy to see at a distance."
	icon_state = "legion_vex"
	item_state = "legion_vex"

/obj/item/clothing/suit/armor/legion/venator
	name = "legion explorer armor"
	desc = "Explorer armor reinforced with metal plates and chainmail."
	icon_state = "legion-venator"
	item_state = "legion-venator"
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 5)

/obj/item/clothing/suit/armor/legion/vet/explorercanada
	name = "custom explorer armor"
	desc = "Armor based on layered strips of laminated linen and leather, the technique giving it surprising resilience for low weight. This one has been custom made."
	icon = 'icons/fallout/clothing/armored_light.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_light.dmi'
	icon_state = "legion-explorercustom"
	item_state = "legion-explorercustom"

//NCR
/obj/item/clothing/suit/armor/utilityvest
	name = "utility vest"
	desc = "A practical vest with pockets for tools and such."
	icon_state = "vest_utility"
	item_state = "vest_utility"
	icon = 'icons/fallout/clothing/suits_utility.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/suit_utility.dmi'
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/small/four

/obj/item/clothing/suit/armor/utilityvest/logisticsofficer //same as his beret
	name = "logistics officer utility vest"
	desc = "A practical and armored vest with pockets for tools and such."

/obj/item/clothing/suit/armor/ncrarmor
	name = "NCR patrol vest"
	desc = "A standard issue NCR Infantry vest."
	icon_state = "ncr_infantry_vest"
	item_state = "ncr_infantry_vest"
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 2)

/datum/component/storage/concrete/pockets/bulletbelt/ncr
	max_items = 2

/obj/item/clothing/suit/armor/ncrarmor/mantle
	name = "NCR mantle vest"
	desc = "A standard issue NCR Infantry vest with a mantle on the shoulder."
	icon_state = "ncr_standard_mantle"
	item_state = "ncr_standard_mantle"

/obj/item/clothing/suit/armor/ncrarmor/reserve
	name = "reserve NCR patrol vest"
	desc = "A standard issue NCR Infantry vest."
	icon_state = "ncr_infantry_vest"
	item_state = "ncr_infantry_vest"

/obj/item/clothing/suit/armor/ncrarmor/conscript
	name = "NCR flak vest"
	desc = "A standard issue NCR Infantry vest reinforced with a thin kelvar sheet."
	icon_state = "ncr_kelvar_vest"
	item_state = "ncr_kelvar_vest"

/obj/item/clothing/suit/armor/ncrarmor/reinforced
	name = "NCR reinforced patrol vest"
	desc = "A standard issue NCR Infantry vest reinforced with a groinpad."
	icon_state = "ncr_reinforced_vest"
	item_state = "ncr_reinforced_vest"
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 3)

/obj/item/clothing/suit/armor/ncrarmor/reinforced/engineer
	name = "NCR blast-padded reinforced patrol vest"
	desc = "A standard issue NCR Engineer vest reinforced with a groinpad."

/obj/item/clothing/suit/armor/ncrarmor/mantle/reinforced
	name = "NCR reinforced mantle vest"
	desc = "A standard issue NCR Infantry vest reinforced with a groinpad and a mantle."
	icon_state = "ncr_reinforced_mantle"

/obj/item/clothing/suit/armor/ncrarmor/mantle/reinforced/trenchraider
	name = "NCR reinforced trench mantle vest"
	desc = "A standard issue NCR Infantry vest with a really long name and extra melee plating."

/obj/item/clothing/suit/armor/ncrarmor/lieutenant
	name = "NCR officer vest"
	desc = "A reinforced set of NCR mantle armour, with added padding on the groin, neck and shoulders. Intended for use by the officer class."
	icon_state = "ncr_lt_armour"
	item_state = "ncr_lt_armour"

/obj/item/clothing/suit/armor/ncrarmor/captain/ncr_officer_coat
	name = "NCR officer vest"
	desc = "A special issue NCR officer's armour with an added thick overcoat for protection from the elements."
	icon_state = "ncr_officer_coat"
	item_state = "ncr_officer_coat"
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 5)

/obj/item/clothing/suit/armor/ncrarmor/captain
	name = "NCR reinforced officer vest"
	desc = "A heavily reinforced set of NCR mantle armour, with large ceramic plating fitted to cover the torso and back, with additional plating on the shoulders and arms. Intended for use by high ranking officers."
	icon_state = "ncr_captain_armour"
	item_state = "ncr_captain_armour"
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 10) // Le captain

/obj/item/clothing/suit/armor/ncrarmor/ncr_codressjack
	name = "NCR dress jacket"
	desc = "A brown dress uniform jacket for commissioned NCRA personnel."
	icon_state = "ncr_codressjack"
	item_state = "ncr_codressjack"


//NCR Ranger
/obj/item/clothing/suit/toggle/armor/rangerrecon
	name = "ranger recon duster"
	desc = "A thicker than average duster worn by NCR recon rangers out in the field. It's not heavily armored by any means, but is easy to move around in and provides excellent protection from the harsh desert environment."
	icon_state = "duster_recon"
	item_state = "duster_recon"
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 4)

/obj/item/clothing/suit/armor/trailranger
	name = "ranger vest"
	desc = "A quaint little jacket and scarf worn by NCR trail rangers."
	icon_state = "cowboyrang"
	item_state = "cowboyrang"
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 4)

/obj/item/clothing/suit/armor/modif_r_vest
	name = "subdued ranger vest"
	desc = "A quaint little jacket and scarf worn by NCR trail rangers. This one has the leather bleached and the scarf dyed black."
	icon_state = "modif_r_vest"
	item_state = "modif_r_vest"
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 4)


/obj/item/clothing/suit/armor/rangercombat
	name = "veteran ranger combat armor"
	desc = "The NCR veteran ranger combat armor, or black armor consists of a pre-war L.A.P.D. riot suit under a duster with rodeo jeans. Considered one of the most prestigious suits of armor to earn and wear while in service of the NCR Rangers."
	icon_state = "ranger"
	item_state = "ranger"
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 8)


//Great Khan
/obj/item/clothing/suit/armor/khan_jacket
	name = "khan armored jacket"
	desc = "The symbol of the greatest pushers."
	icon_state = "khan_jacket"
	item_state = "khan_jacket"

//All of the armor below is mostly unused

/obj/item/clothing/suit/armor/centcom
	name = "\improper CentCom armor"
	desc = "A suit that protects against some damage."
	icon_state = "centcom"
	item_state = "centcom"
	w_class = WEIGHT_CLASS_BULKY
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	clothing_flags = THICKMATERIAL
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	cold_protection = CHEST | GROIN | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MAX_TEMP_PROTECT

//*shrug
/obj/item/clothing/suit/armor/tdome
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	clothing_flags = THICKMATERIAL
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS

/obj/item/clothing/suit/armor/tdome/red
	name = "thunderdome suit"
	desc = "Reddish armor."
	icon_state = "tdred"
	item_state = "tdred"

/obj/item/clothing/suit/armor/tdome/green
	name = "thunderdome suit"
	desc = "Pukish armor."	//classy.
	icon_state = "tdgreen"
	item_state = "tdgreen"


/obj/item/clothing/suit/armor/heavy/riot/knight
	name = "plate armour"
	desc = "A classic suit of plate armour, highly effective at stopping melee attacks."
	icon_state = "knight_green"
	item_state = "knight_green"

/obj/item/clothing/suit/armor/heavy/riot/knight/yellow
	icon_state = "knight_yellow"
	item_state = "knight_yellow"

/obj/item/clothing/suit/armor/heavy/riot/knight/blue
	icon_state = "knight_blue"
	item_state = "knight_blue"

/obj/item/clothing/suit/armor/heavy/riot/knight/red
	icon_state = "knight_red"
	item_state = "knight_red"

/obj/item/clothing/suit/armor/knight
	name = "preacher plate armour"
	desc = "A classic suit of plate armour, highly effective at stopping melee attacks."
	icon_state = "knight_red"
	item_state = "knight_red"

/obj/item/clothing/suit/armor/heavy/riot/knight/tabard
	name = "tabard plate armor"
	desc = "A set of plate armor with tabard for the user's high-visibility during combat."
	icon_state = "knight_tabard"
	item_state = "knight_tabard"

/obj/item/clothing/suit/armor/heavy/riot/knight/greyscale
	name = "knight armour"
	desc = "A classic suit of armour, able to be made from many different materials."
	icon_state = "knight_greyscale"
	item_state = "knight_greyscale"
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS //Can change color and add prefix

//Custom/Patreon/Donor - A lot of this likely needs putting in the graveyard
/obj/item/clothing/suit/armor/power_armor/midwest/reinforced // PATREON SUPPORTER CUSTOM GEAR, DO NOT USE.
	name = "hardened midwestern power armor" // PATREON SUPPORTER CUSTOM GEAR, DO NOT USE.
	icon_state = "midwestpa" // PATREON SUPPORTER CUSTOM GEAR, DO NOT USE.
	item_state = "midwestpa" // PATREON SUPPORTER CUSTOM GEAR, DO NOT USE.
	desc = "This set of power armor once belonged to the Midwestern branch of the Brotherhood of Steel, and now resides here. This particular one has gone through a chemical hardening process, increasing its armor capabilities." // PATREON SUPPORTER CUSTOM GEAR, DO NOT USE.

/obj/item/clothing/suit/armor/exile/cust0m
	name = "Lorica Iudicis"
	desc = "A set of well maintained though still quite clearly worn armor consisting of a metal vest, a Centurion's shoulder pad, a pair of Centurion's arm guards and an incredibly large, perhaps even over-sized fur cloak. Upon basic examination, one can see that every piece of metal bar the buckles on the leather straps and whatever scratches and blemishes are yet to be retouched is masterfully decorated with silver, in complete contrast to the blackness of the cloak. Though only upon closer examination can the intricacies of the armor set be observed. The most obvious piece is the metal vest which has clearly been engraved, mostly decorationally besides the name 'Iudex Flammae' near the top. Though the engravings provide no tactical advantage whatsoever, the sharp geometric shapes accompanied by smooth, tastefully placed curves would catch the eye of even the most skeptical engraving enjoyer. As for the shoulder pad and arm guards, they hold the same engravings, and though they are recognizable as salvage, they still look incredibly beautiful yet simultaneously sturdy. Not much of the metal seems to exist on the back though that is only due to the fact that the incredibly thick, durable and flexible bear pelt that covers it would definitely provide ample protection. The pelt itself is absolutely covered in thick, almost jet black fur. One can tell from touch that the skin underneath is about as sturdy as skin gets. The pelt hangs across the wearer's back, held up by the neck and shoulders. This armor was competently made, and it shows."
	icon_state = "exilecust0m"
	item_state = "exilecust0m"
	var/adjusted = FALSE

/obj/item/clothing/suit/armor/exile/cust0m/verb/armor_adjust()
	set name = "Adjust Armor"
	set category = null
	set src in usr

	if(!adjusted)
		adjusted = TRUE
		icon_state = "exilecust0m_d"
	else
		adjusted = FALSE
		icon_state = "exilecust0m"

	if(ishuman(usr))
		var/mob/living/carbon/human/H = usr
		H.update_inv_w_uniform()
		H.update_body()

/obj/item/clothing/suit/armor/harpercoat
	name = "outlaw coat"
	desc = "An ugly looking combat duster"
	icon_state = "harperduster"

/obj/item/clothing/suit/armor/medium/raider/reptiliatenebris
	name = "Reptilia Tenebris"
	desc = "An old military-grade pre-war combat armor under a weathered duster. It appears to be fitted with metal plates to replace the crumbling ceramic. The color of this duster has been washed out time and time again, giving it a more faded look as if time gripped it heavily. Along with that, the duster has been dyed a deep shade of grey, and the body armor a darker shade of green."
	icon_state = "reptiliatenebris"
	item_state = "reptiliatenebris"


/obj/item/clothing/suit/toggle/armor/rangercustomdark
	name = "tattered recon duster"
	desc = "A thicker than average duster worn by rangers out in the field. This one has been dyed black and appears to be a little more heavily armoured."
	icon_state = "duster_recon_custom"
	item_state = "duster_recon_custom"

/obj/item/clothing/suit/armor/legion/palacent/custom_excess
	name = "Champion of Kanab's Armor"
	desc = "The armor of the Champion and Conqueror of the city in Utah named Kanab. The armor is made up of pieces of Power Armor and pre-war Riot Gear, the shin guards are spraypainted a dark crimson and the Power Armour pauldron has a red trim. The symbol of a Pheonix is carefully engraved and painted upon the chest piece... I wonder what it means.."
	icon_state = "palacent_excess"
	item_state = "palacent_excess"

/obj/item/clothing/suit/donor/soldier
	name = "Soldier's Greatcoat"
	desc = "A resistant, tan greatcoat, typically worn by pre-War Generals."
	icon_state = "soldier"
	item_state = "soldier"

/obj/item/clothing/suit/armor/rangercombat/foxcustom
	name = "sniper riot gear"
	desc = "A customized and well-worn suit of riot gear with parts of the suit reinforced with leather armor and slain Centurion armor pieces by the wearer. A sniper's veil is wrapped around the neck."
	icon_state = "foxranger"
	item_state = "foxranger"

/obj/item/clothing/suit/armor/rangercombat/degancustom
	name = "sniper riot gear"
	desc = "A customized and well-worn suit of riot gear with parts of the suit reinforced with leather armor and slain Centurion armor pieces by the wearer. A sniper's veil is wrapped around the neck."
	icon_state = "elite_riot"
	item_state = "elite_riot"

/obj/item/clothing/suit/armor/rangercombat/rigscustom
	name = "11th armored calvary armor"
	desc = "A suit of special military grade riot control gear and a duster, worn by 11th Armored Calvary Regiment members in The Divide before the war. Yellow markings are painted on the shoulderpads and forearm guards."
	icon_state = "rigscustom_suit"
	item_state = "rigscustom_suit"

/obj/item/clothing/suit/armor/rangercombat/pricecustom
	name = "spider riot gear"
	desc = "A customised and faded suit of riot gear, reminiscient of that found near Hopeville in the Divide, with a pair of wrist mounted ammo pouches for easy access to spare munitions with a pair of stripes down the back made from a fire-proof material."
	icon_state = "price_ranger"
	item_state = "price_ranger"

/obj/item/clothing/suit/toggle/armor/cloakranger //Reskinned trail ranger gear
	name = "ranger poncho"
	desc = "A durable muslin poncho. Tough enough to bear the elements and serve as handy blanket."
	icon_state = "ranger_cloak"
	item_state = "ranger_cloak"

/obj/item/clothing/suit/armor/herbertranger //Armor wise, it's reskinned raider armor.
	name = "weathered desert ranger armor"
	desc = "A set of pre-unification desert ranger armor, made using parts of what was once USMC riot armor. It looks as if it has been worn for decades; the coat has become discoloured from years under the Mojave sun and has multiple tears and bullet holes in its leather. The armor plating itself seems to be in relatively good shape, though it could do with some maintenance."
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	icon_state = "usmc_riot_gear"
	item_state = "usmc_riot_gear"

/obj/item/clothing/suit/armor/marlowsuit //Raider armour reskin.
	name = "Marlow gang overcoat"
	desc = "A heavy raw buckskin overcoat littered with aged bullet holes and frays from regular wear-and-tear."
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	icon_state = "marlowsuit"
	item_state = "marlowsuit"
	strip_delay = 40

/obj/item/clothing/suit/armor/marlowsuit/ikesuit
	name = "gunfighter's overcoat"
	desc = "A thick double-breasted red leather overcoat worn through with scattered tears and bullet holes."
	icon_state = "ikesuit"
	item_state = "ikesuit"

/obj/item/clothing/suit/armor/marlowsuit/masonsuit
	name = "vagabond's vest"
	desc = "A padded thick red leather vest, coated in stitched pockets and other mends."
	icon_state = "masonsuit"
	item_state = "masonsuit"

//THE GRAVEYARD
//UNUSED or LEGACY - RETAINED IN CASE DESIRED FOR ADMIN SPAWN OR REIMPLEMENATION. MAY NOT BE EVERYTHING THAT'S UNUSED. TEST BEFORE USING
//IF PUT BACK INTO USE, PLEASE FILE IT BACK SOMEWHERE ABOVE

/obj/item/clothing/suit/armor/warriors
	name = "warriors armored vest"
	desc = "The symbol of the greatest gangers."
	icon_state = "warriors"
	item_state = "warriors"

/obj/item/clothing/suit/armor/atomzealot
	name = "zealot armor"
	desc = "The armor of those true to the Division."
	icon_state = "atomzealot"
	item_state = "atomzealot"

/obj/item/clothing/suit/armor/atomwitch
	name = "atomic seer robes"
	desc = "The robes worn by female seers of the Division."
	icon_state = "atomwitch"
	item_state = "atomwitch"

/obj/item/clothing/suit/armor/harbingermantle
	name = "Harbinger's Mantle"
	desc = "An eerie, silken cloth that seems to be dripping with a thick mist. It is in truth a high-tech stealth device that allows for psionic amplification. The capacitors and manipulators in it utilise quantum technology and are highly volatile."
	icon_state = "scloak"
	item_state = "scloak"

/obj/item/clothing/suit/armor/ghostechoe
	name = "tattered peace coat"
	desc = "An old coat belonging to a Desert Ranger once. It has been stripped of most useful protection, and has seen better days. A crude peace symbol has been painted on the back in white."
	icon_state = "ghostechoe"
	item_state = "ghostechoe"



//Special Biosuit





//TRIBALS


//ARMOR, AND ALL PATREON/CUSTOM/DONOR STUFF (EVEN IF SUIT AND NOT ARMOR) TO GO INTO f13armor.dm
/*FOR REFERENCE
/obj/item/clothing/suit
	icon = 'icons/obj/clothing/suits.dmi'
	name = "suit"
	block_priority = BLOCK_PRIORITY_WEAR_SUIT
	var/fire_resist = T0C+100
	allowed = null
	slot_flags = ITEM_SLOT_OCLOTHING
	body_parts_covered = CHEST|GROIN|LEGS|ARMS //I don't care if some armors only visibly covers the chest, they're going to offer protection to limbs too because game design.
	var/blood_overlay_type = "suit"
	var/togglename = null
	var/suittoggled = FALSE
	limb_integrity = 0 // disabled for most exo-suits
	mutantrace_variation = STYLE_DIGITIGRADE

/obj/item/clothing/suit/Initialize()
	. = ..()
	if(!allowed)
		allowed = GLOB.f13_coat_allowed

/obj/item/clothing/suit/worn_overlays(isinhands = FALSE, icon_file, used_state, style_flags = NONE)
	. = ..()
	if(!isinhands)
		if(damaged_clothes)
			. += mutable_appearance('icons/effects/item_damage.dmi', "damaged[blood_overlay_type]")
		if(blood_DNA)
			var/file2use = (style_flags & STYLE_ALL_TAURIC) ? 'modular_citadel/icons/mob/64x32_effects.dmi' : 'icons/effects/blood.dmi'
			. += mutable_appearance(file2use, "[blood_overlay_type]blood", color = blood_DNA_to_color())
		var/mob/living/carbon/human/M = loc
		if(ishuman(M) && M.w_uniform)
			var/obj/item/clothing/under/U = M.w_uniform
			if(istype(U) && U.attached_accessory)
				var/obj/item/clothing/accessory/A = U.attached_accessory
				if(A.above_suit)
					. += U.accessory_overlay

/obj/item/clothing/suit/update_clothes_damaged_state()
	..()
	if(ismob(loc))
		var/mob/M = loc
		M.update_inv_wear_suit()
*/









/*
Just leaving this here for quick copy-pasting, for future contributors.
	icon = 'modular_sunset/icons/obj/clothing/suits.dmi'
	mob_overlay_icon = 'modular_sunset/icons/mob/clothing/suit.dmi'
	anthro_mob_worn_overlay = 'modular_sunset/icons/mob/clothing/suit_digi.dmi'
	mutantrace_variation = STYLE_DIGITIGRADE
	!!If you don't have digi-adapted sprites use `mutantrace_variation = NONE` instead. Should snap legs sprites to planti when related clothing is worn.
	(unless suit doesn't cover legs in `body_parts_covered` var)
*/


// In this document: Light armor





/////////
// NCR //
/////////



///////////////
// WAYFARERS //
///////////////






///////////
// MISC. //
///////////

// Recipe winter coat + armor kit
/obj/item/clothing/suit/toggle/armored/winterkit
	name = "armored winter coat"
	desc = "Fur lined coat with armor kit bits added to it."
	icon_state = "winter_kit"
	item_state = "winter_kit"

/*
// Heavy
/obj/item/clothing/suit/armor/atomzealot 
	name = "zealot armor"
	desc = "Praise be to Atom."
	icon_state = "atomzealot"
	item_state = "atomzealot"
	armor = list("melee" = 15, "bullet" = 10, "laser" = 30, "energy" = 45, "bomb" = 55, "bio" = 65, "rad" = 100, "fire" = 60, "acid" = 20)

/obj/item/clothing/suit/armor/atomwitch
	name = "atomic seer robes"
	desc = "Atom be praised."
	icon_state = "atomwitch"
	item_state = "atomwitch"
	armor = list("melee" = 5, "bullet" = 10, "laser" = 30, "energy" = 45, "bomb" = 55, "bio" = 65, "rad" = 100, "fire" = 60, "acid" = 20)
*/

// In this document: Medium armor


///////////////
// WASTELAND //
///////////////


//THE GRAVEYARD
//IF PUT BACK INTO USE, PLEASE FILE IT BACK SOMEWHERE ABOVE

/*

/obj/item/clothing/suit/armor/medium/lawcoat/mayor
	name = "mayor trenchcoat"
	desc = "A symbol of the mayor's authority (or lack thereof)."
	armor = list("melee" = 40, "bullet" = 35, "laser" = 30, "energy" = 40, "bomb" = 30, "bio" = 40, "rad" = 40, "fire" = 40, "acid" = 0)

//Enclave/Remnants

/obj/item/clothing/suit/armor/medium/combat/enclave
	name = "enclave combat armor"
	desc = "A set of matte black advanced pre-war combat armor."
	icon_state = "enclave_new"
	item_state = "enclave_new"
	armor = list("melee" = 35, "bullet" = 40, "laser" = 35, "energy" = 20, "bomb" = 30, "bio" = 10, "rad" = 10, "fire" = 20, "acid" = 10)

/obj/item/clothing/suit/armor/medium/vest/enclave
	name = "armored vest"
	desc = "Efficient prewar design issued to Enclave personell."
	icon_state = "armor_enclave_peacekeeper"
	item_state = "armor_enclave_peacekeeper"
	armor = list("melee" = 35, "bullet" = 50, "laser" = 30, "energy" = 30, "bomb" = 10, "bio" = 0, "rad" = 0, "fire" = 10, "acid" = 0)

/obj/item/clothing/suit/armor/enclave/officercoat
	name = "armored coat"
	desc = "Premium prewar armor fitted into a coat for Enclave officers."
	icon_state = "armor_enclave_officer"
	item_state = "armor_enclave_officer"
	armor = list("melee" = 60, "bullet" = 45, "energy" = 40, "bomb" = 10, "bio" = 0, "rad" = 0, "fire" = 10, "acid" = 0)
*/

// In this document: Heavy armor (not powerarmor)

/* /obj/item/clothing/suit/armor/fluff/metalarmor/Initialize()
	. = ..()
	AddComponent(/datum/component/spraycan_paintable)
	START_PROCESSING(SSobj, src)

/obj/item/clothing/suit/armor/fluff/metalarmor/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..() */

/* /obj/item/clothing/suit/armor/medium/tribal/chitinarmor/old
	name = "insect chitin armor"
	desc = " set of light armor made of insect chitin. Tough and light, it provides some moderate protection from trauma while allowing the user to remain mobile and protected from the elements."
	icon = 'icons/fallout/clothing/armored_light.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_light.dmi'
	icon_state = "insect"
	item_state = "insect"
	armor = list("melee" = 40, "bullet" = 35,"laser" = 20, "energy" = 25, "bomb" = 25, "bio" = 70, "rad" = 65, "fire" = 80, "acid" = 100)
	flags_inv = HIDEJUMPSUIT
	strip_delay = 40
 */
/* /obj/item/clothing/suit/armor/generaluniform
	name = "Yuma 1st Irregular General Uniform"
	desc = "A uniform created by Kaleb alongside the laser muskets. On the breast is a patch of the Yuma 1st Irregulars, a sun over a wasteland desert, a cactus standing lonely in the middle. It denotes him as the Leader of the militia company."
	icon_state = "gen_uniform"
	item_state = "gen_uniform" */

/* /obj/item/clothing/suit/armor/light/duster
	name = "duster"
	desc = "A long brown leather overcoat.<br>A powerful accessory of fearsome bounty hunter."
	icon_state = "duster"
	item_state = "det_suit"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS */

//these are dusters
/obj/item/clothing/suit/toggle/armored/ranger_duster
	name = "ranger recon duster"
	desc = "A light bulletproof vest under a high-quality duster. Popular with Rangers."
	icon_state = "duster_recon"
	item_state = "duster_recon"
	permeability_coefficient = 0.9

