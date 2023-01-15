/////////
//ARMOR//
/////////

/datum/crafting_recipe/armorkit
	name = "Armor Kit"
	result = /obj/item/clothing/suit/armor/light/kit
	reqs = list(/obj/item/stack/sheet/leather = 3,
				/obj/item/weaponcrafting/string = 1,
				/obj/item/stack/crafting/metalparts = 1)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/combat_jacket
	name = "Combat Jacket"
	result = /obj/item/clothing/suit/armor/light/leather/leather_jacketmk2
	reqs = list(/obj/item/clothing/suit/armor/light/leather/leather_jacket = 1,
				/obj/item/stack/sheet/animalhide/brahmin = 1,
				/obj/item/stack/sheet/animalhide/gecko = 1,
				/obj/item/stack/sheet/leather = 1)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/combat_coat
	name = "Combat Coat"
	result = /obj/item/clothing/suit/armor/light/leather/leathercoat
	reqs = list(/obj/item/clothing/suit/armor/light/leather/leather_jacketmk2 = 1,
				/obj/item/stack/sheet/animalhide/deathclaw  = 1)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/armor_plate_deathclaw
	name = "Armor Plate from Deathclaw Skin"
	result = /obj/item/stack/crafting/armor_plate
	reqs = list(/obj/item/stack/sheet/animalhide/deathclaw  = 1,
				/obj/item/stack/crafting/goodparts = 1,
				/obj/item/stack/crafting/metalparts = 2)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/armor_plate_plastit
	name = "Armor Plate from Plasteel"
	result = /obj/item/stack/crafting/armor_plate
	reqs = list(/obj/item/stack/sheet/plasteel = 2,
				/obj/item/stack/crafting/goodparts = 1,
				/obj/item/stack/crafting/metalparts = 2)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/leatherarmor
	name = "Leather Armor"
	result = /obj/item/clothing/suit/armor/light/leather
	reqs = list(/obj/item/stack/sheet/leather = 3,
				/obj/item/weaponcrafting/string = 2)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/leatherarmor2
	name = "Gecko Hide Armor"
	result = /obj/item/clothing/suit/armor/light/leather/leathermk2
	reqs = list(/obj/item/clothing/suit/armor/light/leather = 1,
				/obj/item/stack/sheet/animalhide/gecko = 3
	)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/leather_jacket
	name = "Leather Jacket"
	result = /obj/item/clothing/suit/armor/light/leather/leather_jacket
	reqs = list(/obj/item/stack/sheet/animalhide/brahmin = 2,
				/obj/item/weaponcrafting/string = 1)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/metalarmor
	name = "Metal Armor"
	result = /obj/item/clothing/suit/armor/heavy/metal
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/weaponcrafting/string = 5,
				/obj/item/stack/crafting/metalparts = 5)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/metalarmor/polish
	name = "Polished Metal Armor"
	result = /obj/item/clothing/suit/armor/heavy/metal/polished
	reqs = list(/obj/item/clothing/suit/armor/heavy/metal = 1)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/metalarmormk2
	name = "Metal Armor, reinforced"
	result = /obj/item/clothing/suit/armor/heavy/metal/reinforced
	reqs = list(/obj/item/clothing/suit/armor/heavy/metal = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/crafting/metalparts = 3)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/steelbib
	name = "Steel Breastplate"
	result = /obj/item/clothing/suit/armor/medium/vest/breastplate
	reqs = list(/obj/item/stack/sheet/leather = 2,
				/obj/item/weaponcrafting/string = 1,
				/obj/item/stack/crafting/goodparts = 1,
				/obj/item/stack/crafting/metalparts = 5)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/steelbib/heavy
	name = "Reinforved Steel Breastplate"
	result = /obj/item/clothing/suit/armor/medium/vest/breastplate/reinforced
	reqs = list(/obj/item/clothing/suit/armor/medium/vest/breastplate = 1,
				/obj/item/stack/crafting/goodparts = 1,
				/obj/item/stack/sheet/prewar = 5)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/metalmask
	name = "Metal Mask"
	result = /obj/item/clothing/head/helmet/f13/metalmask
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/weaponcrafting/string = 1,
				/obj/item/stack/crafting/metalparts = 2)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/metalmaskmk2
	name = "Metal Mask, reinforced"
	result = /obj/item/clothing/head/helmet/f13/metalmask/mk2
	reqs = list(/obj/item/clothing/head/helmet/f13/metalmask = 1,
				/obj/item/stack/crafting/goodparts = 2)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/ncrsalvagedarmorconversion
	name = "Salvaged NCR Power Armor"
	result = /obj/item/clothing/suit/armor/heavy/salvaged_pa/t45b/ncr
	reqs = list(/obj/item/clothing/suit/armor/heavy/salvaged_pa/t45b = 1,
				/obj/item/toy/crayon/spraycan)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/ncrsalvagedhelmetconversion
	name = "NCR salvaged T-45b helmet"
	result = /obj/item/clothing/head/helmet/f13/heavy/salvaged_pa/t45b/ncr
	reqs = list(/obj/item/clothing/head/helmet/f13/heavy/salvaged_pa/t45b = 1,
				/obj/item/toy/crayon/spraycan)
	time = 20
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/boscombatarmor
	name = "knight armor"
	result = /obj/item/clothing/suit/armor/medium/combat/brotherhood
	blacklist = list(/obj/item/clothing/suit/armor/medium/combat/mk2)
	reqs = list(/obj/item/clothing/suit/armor/medium/combat = 1,
				/obj/item/toy/crayon/spraycan)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/boscombathelmet
	name = "knight helmet"
	result = /obj/item/clothing/head/helmet/f13/combat/brotherhood
	blacklist = list(/obj/item/clothing/head/helmet/f13/combat/mk2)
	reqs = list(/obj/item/clothing/head/helmet/f13/combat = 1,
				/obj/item/toy/crayon/spraycan)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/boscombatarmormk2
	name = "reinforced knight armor"
	result = /obj/item/clothing/suit/armor/medium/combat/brotherhood/initiate/mk2
	blacklist = list(/obj/item/clothing/suit/armor/medium/combat)
	reqs = list(/obj/item/clothing/suit/armor/medium/combat/mk2 = 1,
				/obj/item/toy/crayon/spraycan)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/boscombathelmetmk2
	name = "reinforced knight helmet"
	result = /obj/item/clothing/head/helmet/f13/combat/brotherhood/initiate/mk2
	blacklist = list(/obj/item/clothing/head/helmet/f13/combat)
	reqs = list(/obj/item/clothing/head/helmet/f13/combat/mk2 = 1,
				/obj/item/toy/crayon/spraycan)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/durathread_vest
	name = "Makeshift Durathread Armour"
	result = /obj/item/clothing/suit/armor/light/leather/durathread
	reqs = list(/obj/item/stack/sheet/durathread = 6,
				/obj/item/stack/sheet/leather = 3)
	time = 50
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

///////////
//HELMETS//
///////////

/datum/crafting_recipe/bighorn
	name = "Bighorner Helmet"
	result = /obj/item/clothing/head/helmet/f13/fiend_reinforced
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/sheet/cloth = 6)
	tools = list(TOOL_METAL_BENCH)
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/metalhelmet
	name = "Scrap Helmet"
	result = /obj/item/clothing/head/helmet/knight/f13/metal/reinforced
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_METAL_BENCH)
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/armyhelmet
	name = "Steel Helmet"
	result = /obj/item/clothing/head/helmet/armyhelmet
	reqs = list(/obj/item/stack/sheet/leather = 2,
				/obj/item/weaponcrafting/string = 1,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/armyhelmetheavy
	name = "Heavy Steel Helmet"
	result = /obj/item/clothing/head/helmet/armyhelmet/heavy
	reqs = list(/obj/item/clothing/head/helmet/armyhelmet,
				/obj/item/stack/crafting/goodparts = 1,
				/obj/item/stack/sheet/prewar = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/swag
	name = "Flame Metal Helmet"
	result = /obj/item/clothing/head/helmet/knight/f13/rider
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_METAL_BENCH)
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/pot
	name = "Cooking Pot Helmet"
	result = /obj/item/clothing/head/f13/pot
	reqs = list(/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 20
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/salvageweld
	name = "Salvaged Welding Mask"
	result = /obj/item/clothing/head/welding/f13/fire
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 4,
				/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_METAL_BENCH)
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/glad
	name = "Gladiator Helmet"
	result = /obj/item/clothing/head/helmet/gladiator
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_METAL_BENCH)
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/salvecomb
	name = "Combat Helmet (waster)"
	result = /obj/item/clothing/head/helmet/f13/raidercombathelmet
	time = 600
	reqs = list(/obj/item/stack/sheet/metal = 30,
				/obj/item/stack/sheet/cloth = 5)
	tools = list(TOOL_METAL_BENCH)
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/durathread_helmet
	name = "Makeshift Durathread Helmet"
	result = /obj/item/clothing/head/helmet/durathread
	reqs = list(/obj/item/stack/sheet/durathread = 4,
				/obj/item/stack/sheet/leather = 2)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/riderw
	name = "Rider Helmet, Reinforced"
	result = /obj/item/clothing/head/f13/riderw
	reqs = list(/obj/item/clothing/head/helmet/knight/f13/rider = 1,
				/obj/item/stack/crafting/goodparts = 2)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR


// ------------------- ARMOR MADE FROM BLACKSMITH PARTS -------------------------
//Greaves

/datum/crafting_recipe/plateboot
	name = "Plate Boots"
	result = /obj/item/clothing/shoes/f13/military/plated
	time = 100
	reqs = list(/obj/item/smithing/armor_piece = 1,
				/obj/item/stack/sheet/leather = 3)
	tools = list(TOOL_WORKBENCH)
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

//Gauntlets

/datum/crafting_recipe/plateglove
	name = "Plate Gloves"
	result = /obj/item/clothing/gloves/legion/plated
	time = 100
	reqs = list(/obj/item/smithing/armor_piece = 1,
				/obj/item/stack/sheet/leather = 2)
	tools = list(TOOL_WORKBENCH)
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

// Combat Armor
/datum/crafting_recipe/combat_helmet
	name = "combat helmet"
	result = /obj/item/clothing/head/helmet/f13/combat
	reqs = list(/obj/item/stack/sheet/mineral/titanium = 2,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/sheet/durathread = 1,
				/obj/item/stack/sheet/leather = 1)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/combat_armor
	name = "combat armor"
	result = /obj/item/clothing/suit/armor/medium/combat
	reqs = list(/obj/item/stack/sheet/mineral/titanium = 5,
				/obj/item/stack/crafting/metalparts = 2,
				/obj/item/stack/sheet/durathread = 1,
				/obj/item/stack/sheet/leather = 3)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

//NCR
/datum/crafting_recipe/ncrcombathelmet
	name = "NCR combat helmet"
	result = /obj/item/clothing/head/helmet/f13/combat/ncr
	blacklist = list(/obj/item/clothing/head/helmet/f13/combat/mk2)
	reqs = list(/obj/item/clothing/head/helmet/f13/combat = 1,
				/obj/item/toy/crayon/spraycan)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/ncrcombatarmor
	name = "NCR combat armor"
	result = /obj/item/clothing/suit/armor/medium/combat/ncr
	blacklist = list(/obj/item/clothing/suit/armor/medium/combat/mk2)
	reqs = list(/obj/item/clothing/suit/armor/medium/combat = 1,
				/obj/item/toy/crayon/spraycan)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/ncrcombathelmetmk2
	name = "reinforced NCR combat helmet"
	result = /obj/item/clothing/head/helmet/f13/combat/mk2/ncr
	blacklist = list(/obj/item/clothing/head/helmet/f13/combat)
	reqs = list(/obj/item/clothing/head/helmet/f13/combat/mk2 = 1,
				/obj/item/toy/crayon/spraycan)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/ncrcombatarmormk2
	name = "reinforced NCR combat armor"
	result = /obj/item/clothing/suit/armor/medium/combat/mk2/ncr
	blacklist = list(/obj/item/clothing/suit/armor/medium/combat)
	reqs = list(/obj/item/clothing/suit/armor/medium/combat/mk2 = 1,
				/obj/item/toy/crayon/spraycan)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

//Legion
/datum/crafting_recipe/legioncombathelmet
	name = "legion combat helmet"
	result = /obj/item/clothing/head/helmet/f13/combat/legion
	reqs = list(/obj/item/clothing/head/helmet/f13/combat = 1,
				/obj/item/toy/crayon/spraycan)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/legioncombatarmor
	name = "legion combat armor"
	result = /obj/item/clothing/suit/armor/medium/combat/legion
	reqs = list(/obj/item/clothing/suit/armor/medium/combat = 1,
				/obj/item/toy/crayon/spraycan)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/legioncombathelmetmk2
	name = "reinforced legion combat helmet"
	result = /obj/item/clothing/head/helmet/f13/combat/mk2/legion
	blacklist = list(/obj/item/clothing/head/helmet/f13/combat)
	reqs = list(/obj/item/clothing/head/helmet/f13/combat/mk2 = 1,
				/obj/item/toy/crayon/spraycan)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/legioncombatarmormk2
	name = "reinforced legion combat armor"
	result = /obj/item/clothing/suit/armor/medium/combat/mk2/legion
	blacklist = list(/obj/item/clothing/suit/armor/medium/combat)
	reqs = list(/obj/item/clothing/suit/armor/medium/combat/mk2 = 1,
				/obj/item/toy/crayon/spraycan)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

//Brotherhood of Steel
/datum/crafting_recipe/boscombathelmet
	name = "knight helmet"
	result = /obj/item/clothing/head/helmet/f13/combat/brotherhood
	reqs = list(/obj/item/clothing/head/helmet/f13/combat = 1,
				/obj/item/toy/crayon/spraycan)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/boscombatarmor
	name = "knight armor"
	result = /obj/item/clothing/suit/armor/medium/combat/brotherhood
	reqs = list(/obj/item/clothing/suit/armor/medium/combat = 1,
				/obj/item/toy/crayon/spraycan)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/boscombathelmetmk2
	name = "reinforced knight helmet"
	result = /obj/item/clothing/head/helmet/f13/combat/brotherhood/senior
	blacklist = list(/obj/item/clothing/head/helmet/f13/combat)
	reqs = list(/obj/item/clothing/head/helmet/f13/combat/mk2 = 1,
				/obj/item/toy/crayon/spraycan)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/boscombatarmormk2
	name = "reinforced knight armor"
	result = /obj/item/clothing/suit/armor/medium/combat/brotherhood/senior
	blacklist = list(/obj/item/clothing/suit/armor/medium/combat)
	reqs = list(/obj/item/clothing/suit/armor/medium/combat/mk2 = 1,
				/obj/item/toy/crayon/spraycan)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

//Enclave
/datum/crafting_recipe/enclavecombathelmet
	name = "remnant helmet"
	result = /obj/item/clothing/head/helmet/f13/combat/enclave
	reqs = list(/obj/item/clothing/head/helmet/f13/combat = 1,
				/obj/item/toy/crayon/spraycan)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/enclavecombatarmor
	name = "remnant armor"
	result = /obj/item/clothing/suit/armor/medium/combat/enclave
	reqs = list(/obj/item/clothing/suit/armor/medium/combat = 1,
				/obj/item/toy/crayon/spraycan)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/enclavecombathelmetmk2
	name = "reinforced remnant helmet"
	result = /obj/item/clothing/head/helmet/f13/combat/mk2/enclave
	blacklist = list(/obj/item/clothing/head/helmet/f13/combat)
	reqs = list(/obj/item/clothing/head/helmet/f13/combat/mk2 = 1,
				/obj/item/toy/crayon/spraycan)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/enclavecombatarmormk2
	name = "reinforced remnant armor"
	result = /obj/item/clothing/suit/armor/medium/combat/mk2/enclave
	blacklist = list(/obj/item/clothing/suit/armor/medium/combat)
	reqs = list(/obj/item/clothing/suit/armor/medium/combat/mk2 = 1,
				/obj/item/toy/crayon/spraycan)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

//Raider
/datum/crafting_recipe/raidercombathelmet
	name = "raider combat helmet"
	result = /obj/item/clothing/head/helmet/f13/combat/enclave
	reqs = list(/obj/item/clothing/head/helmet/f13/combat = 1,
				/obj/item/toy/crayon/spraycan)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/raidercombatarmor
	name = "raider combat armor"
	result = /obj/item/clothing/suit/armor/medium/combat/raider
	reqs = list(/obj/item/clothing/suit/armor/medium/combat = 1,
				/obj/item/toy/crayon/spraycan)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/raidercombathelmetmk2
	name = "reinforced raider combat helmet"
	result = /obj/item/clothing/head/helmet/f13/combat/mk2/enclave
	blacklist = list(/obj/item/clothing/head/helmet/f13/combat)
	reqs = list(/obj/item/clothing/head/helmet/f13/combat/mk2 = 1,
				/obj/item/toy/crayon/spraycan)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

/datum/crafting_recipe/raidercombatarmormk2
	name = "reinforced raider combat armor"
	result = /obj/item/clothing/suit/armor/medium/combat/mk2/raider
	blacklist = list(/obj/item/clothing/suit/armor/medium/combat)
	reqs = list(/obj/item/clothing/suit/armor/medium/combat/mk2 = 1,
				/obj/item/toy/crayon/spraycan)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR
	always_available = FALSE

//Unpaint
/datum/crafting_recipe/combat_helmet_unpaint
	name = "unpaint faction combat helmet"
	result = /obj/item/clothing/head/helmet/f13/combat
	reqs = list(/obj/item/clothing/head/helmet/f13/combat = 1)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/combat_armor_unpaint
	name = "unpaint faction combat armor"
	result = /obj/item/clothing/suit/armor/medium/combat
	reqs = list(/obj/item/clothing/suit/armor/medium/combat = 1)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/combat_helmet_mk2_unpaint
	name = "unpaint reinforced faction combat helmet"
	result = /obj/item/clothing/head/helmet/f13/combat/mk2
	blacklist = list(/obj/item/clothing/head/helmet/f13/combat)
	reqs = list(/obj/item/clothing/head/helmet/f13/combat/mk2 = 1)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

/datum/crafting_recipe/combat_armor_mk2_unpaint
	name = "unpaint reinforced faction combat armor"
	result = /obj/item/clothing/suit/armor/medium/combat/mk2
	blacklist = list(/obj/item/clothing/suit/armor/medium/combat)
	reqs = list(/obj/item/clothing/suit/armor/medium/combat/mk2 = 1)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_ARMOR

//CLOTHING//


/datum/crafting_recipe/tailor/breathmask
	name = "Breath mask"
	result = /obj/item/clothing/mask/breath
	reqs = list(/obj/item/stack/sheet/cloth = 5,
				/obj/item/stack/sheet/plastic = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/tailor/ncruniform
	name = "NCR Uniform"
	result = /obj/item/clothing/under/f13/ncr
	reqs = list(/obj/item/stack/sheet/cloth = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND
	always_available = FALSE
/datum/crafting_recipe/tailor/legionuniform
	name = "Legion Uniform"
	result = /obj/item/clothing/under/f13/legskirt
	reqs = list(/obj/item/stack/sheet/cloth = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND
	always_available = FALSE

/datum/crafting_recipe/settler
	name = "Settler outfit"
	result = /obj/item/clothing/under/f13/settler
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/cloth = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/merchant
	name = "Merchant outfit"
	result = /obj/item/clothing/under/f13/merchant
	reqs = list(/obj/item/stack/sheet/hay = 2,
				/obj/item/stack/sheet/cloth = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/mercenary
	name = "Mercenary outfit"
	result = /obj/item/clothing/under/f13/merca
	reqs = list(/obj/item/stack/sheet/hay = 2,
				/obj/item/stack/sheet/cloth = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/poncho
	name = "Poncho"
	result = /obj/item/clothing/neck/mantle/poncho
	reqs = list(/obj/item/stack/sheet/cloth = 3,
				/obj/item/stack/sheet/hay = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/sombrero
	name = "Sombrero"
	result = /obj/item/clothing/head/sombrero
	reqs = list(/obj/item/stack/sheet/hay = 4)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/rag
	name = "Slave rags"
	result = /obj/item/clothing/under/f13/rag
	reqs = list(/obj/item/stack/sheet/cloth = 2)
	time = 5
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

//General clothing

/datum/crafting_recipe/jeans
	name = "Denim Disasterpiece"
	result = /obj/item/clothing/under/pants/youngfolksjeans
	reqs = list(/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/warboy
	name = "War Boy pants"
	result = /obj/item/clothing/under/pants/f13/warboy
	reqs = list(/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/khaki
	name = "Khaki slacks"
	result = /obj/item/clothing/under/pants/khaki
	reqs = list(/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/cowboyg
	name = "Grey Prospector outfit"
	result = /obj/item/clothing/under/f13/cowboyg
	reqs = list(/obj/item/stack/sheet/cloth = 4)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/cowboyb
	name = "Brown Prospector outfit"
	result = /obj/item/clothing/under/f13/cowboyb
	reqs = list(/obj/item/stack/sheet/cloth = 4)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/cowboyt
	name = "Tan Prospector outfit"
	result = /obj/item/clothing/under/f13/cowboyt
	reqs = list(/obj/item/stack/sheet/cloth = 4)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/westender
	name = "Bartender outfit"
	result = /obj/item/clothing/under/f13/westender
	reqs = list(/obj/item/stack/sheet/cloth = 4)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/westendervest
	name = "Bartender vest"
	result = /obj/item/clothing/suit/armor/outfit/vest/bartender
	reqs = list(/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/sleazeball
	name = "Loanshark outfit"
	result = /obj/item/clothing/under/f13/sleazeball
	reqs = list(/obj/item/stack/sheet/cloth = 4)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/greendress
	name = "Green dress"
	result = /obj/item/clothing/under/f13/greendress
	reqs = list(/obj/item/stack/sheet/cloth = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/bluedress
	name = "Blue dress"
	result = /obj/item/clothing/under/f13/bluedress
	reqs = list(/obj/item/stack/sheet/cloth = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/pinkdress
	name = "Pink dress"
	result = /obj/item/clothing/under/f13/pinkdress
	reqs = list(/obj/item/stack/sheet/cloth = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/relaxedwear
	name = "Sweatervest"
	result = /obj/item/clothing/under/f13/relaxedwear
	reqs = list(/obj/item/stack/sheet/cloth = 4)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/roving
	name = "Roving Trader Outfit"
	result = /obj/item/clothing/under/f13/roving
	reqs = list(/obj/item/stack/sheet/cloth = 4)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/bennys
	name = "Fancy Suit"
	result = /obj/item/clothing/under/f13/bennys
	reqs = list(/obj/item/stack/sheet/cloth = 4)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/mercadv
	name = "Merc Adventurer outfit"
	result = /obj/item/clothing/under/f13/mercadv
	reqs = list(/obj/item/stack/sheet/cloth = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/fmercadv
	name = "Female Merc Adventurer outfit"
	result = /obj/item/clothing/under/f13/female/mercadv
	reqs = list(/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/brahmin
	name = "Brahmin-skin outfit (male)"
	result = /obj/item/clothing/under/f13/brahminm
	reqs = list(/obj/item/stack/sheet/animalhide/brahmin = 1)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/fbrahmin
	name = "Brahmin-skin outfit (female)"
	result = /obj/item/clothing/under/f13/female/brahmin
	reqs = list(/obj/item/stack/sheet/animalhide/brahmin = 1)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/flapper
	name = "Flapper Dress"
	result = /obj/item/clothing/under/f13/female/flapper
	reqs = list(/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/overalls_farmer
	name = "Farmer Overalls"
	result = /obj/item/clothing/suit/armor/outfit/overalls/farmer
	reqs = list(/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/overalls_maid
	name = "Sexy Maid Overalls"
	result = /obj/item/clothing/suit/armor/outfit/overalls/sexymaid
	reqs = list(/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/datum/crafting_recipe/overalls_blacksmith
	name = "Smithing Overalls"
	result = /obj/item/clothing/suit/armor/outfit/overalls/blacksmith
	reqs = list(/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES

/////////////////////
//HATS, SCARVES ETC//
/////////////////////

/datum/crafting_recipe/facewrap
	name = "Headwrap"
	result = /obj/item/clothing/mask/facewrap
	reqs = list(/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/ncr_facewrap
	name = "Facewrap"
	result = /obj/item/clothing/mask/facewrap
	reqs = list(/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_WASTELAND

/datum/crafting_recipe/headscarf
	name = "Headscarf"
	result = /obj/item/clothing/head/f13/headscarf
	reqs = list(/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_WORKBENCH)
	time = 5
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/scarf
	name = "White scarf"
	result = /obj/item/clothing/neck/scarf
	reqs = list(/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_WORKBENCH)
	time = 5
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/scarfb
	name = "Black scarf"
	result = /obj/item/clothing/neck/scarf/black
	reqs = list(/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_WORKBENCH)
	time = 5
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/scarfr
	name = "Red scarf"
	result = /obj/item/clothing/neck/scarf/red
	reqs = list(/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_WORKBENCH)
	time = 5
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/scarfblu
	name = "Blue scarf"
	result = /obj/item/clothing/neck/scarf/darkblue
	reqs = list(/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_WORKBENCH)
	time = 5
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/scarfg
	name = "Green scarf"
	result = /obj/item/clothing/neck/scarf/green
	reqs = list(/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_WORKBENCH)
	time = 5
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/scarfy
	name = "Yellow scarf"
	result = /obj/item/clothing/neck/scarf/yellow
	reqs = list(/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_WORKBENCH)
	time = 5
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/scarfpurp
	name = "Purple scarf"
	result = /obj/item/clothing/neck/scarf/purple
	reqs = list(/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_WORKBENCH)
	time = 5
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/scarfpink
	name = "Pink scarf"
	result = /obj/item/clothing/neck/scarf/pink
	reqs = list(/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_WORKBENCH)
	time = 5
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/scarfstripedred
	name = "Striped red scarf"
	result = /obj/item/clothing/neck/stripedredscarf
	reqs = list(/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_WORKBENCH)
	time = 5
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/scarfstripedblue
	name = "Striped blue scarf"
	result = /obj/item/clothing/neck/stripedbluescarf
	reqs = list(/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_WORKBENCH)
	time = 5
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/stripedgreenscarf
	name = "Striped green scarf"
	result = /obj/item/clothing/neck/stripedgreenscarf
	reqs = list(/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_WORKBENCH)
	time = 5
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/chestpatch
	name = "Chest patch / insignia"
	result = /obj/item/clothing/accessory/patch
	reqs = list(/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/armpatch
	name = "Arm patch / insignia"
	result = /obj/item/clothing/accessory/patch/arm
	reqs = list(/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/rainbowbunchcrown
	name = "Rainbow Flower Crown"
	result = /obj/item/clothing/head/rainbowbunchcrown/
	time = 20
	reqs = list(/obj/item/reagent_containers/food/snacks/grown/rainbow_flower = 5,
				/obj/item/stack/cable_coil = 3)
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/sunflowercrown
	name = "Sunflower Crown"
	result = /obj/item/clothing/head/sunflowercrown/
	time = 20
	reqs = list(/obj/item/grown/sunflower = 5,
				/obj/item/stack/cable_coil = 3)
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/poppycrown
	name = "Poppy Crown"
	result = /obj/item/clothing/head/poppycrown/
	time = 20
	reqs = list(/obj/item/reagent_containers/food/snacks/grown/poppy = 5,
				/obj/item/stack/cable_coil = 3)
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/lilycrown
	name = "Lily Crown"
	result = /obj/item/clothing/head/lilycrown/
	time = 20
	reqs = list(/obj/item/reagent_containers/food/snacks/grown/poppy/lily = 3,
				/obj/item/stack/cable_coil = 3)
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/*
/datum/crafting_recipe/durathread_vest
	name = "Makeshift Vest"
	result = /obj/item/clothing/suit/armor/light/leather/durathread
	reqs = list( /obj/item/stack/sheet/durathread = 5,
				/obj/item/stack/sheet/leather = 4)
	time = 50
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
/datum/crafting_recipe/durathread_helmet
	name = "Makeshift Helmet"
	result = /obj/item/clothing/head/helmet/durathread
	reqs = list( /obj/item/stack/sheet/durathread = 4,
				/obj/item/stack/sheet/leather = 5)
	time = 40
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
/datum/crafting_recipe/fannypack
	name = "Fannypack"
	result = /obj/item/storage/belt/fannypack
	reqs = list(/obj/item/stack/sheet/cloth = 2,
				/obj/item/stack/sheet/leather = 1)
	time = 20
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
//f13 additions
/datum/crafting_recipe/metalarmor
	name = "metal armor"
	result = /obj/item/clothing/suit/armor/bmetalarmor
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	time = 120
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
/datum/crafting_recipe/Imetalarmor
	name = "improved metal armor"
	result = /obj/item/clothing/suit/armor/ibmetalarmor
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/stack/sheet/metal = 4,
				/obj/item/stack/sheet/plasteel = 2)
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	time = 120
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
/datum/crafting_recipe/IImetalarmor
	name = "upgrading metal armor"
	result = /obj/item/clothing/suit/armor/ibmetalarmor
	reqs = list(/obj/item/clothing/suit/armor/bmetalarmor = 1,
				/obj/item/stack/cable_coil = 1,
				/obj/item/stack/sheet/plasteel = 2)
	tools = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	time = 120
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
//Tribal armors
/datum/crafting_recipe/tribalgeckoarmor
	name = "Gecko Armor"
	result = /obj/item/clothing/suit/armor/light/tribal
	reqs = list(/obj/item/stack/sheet/animalhide/gecko = 2,
				/obj/item/stack/sheet/cloth = 2,
				/obj/item/stack/sheet/hay = 3)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
*/

/*
/datum/crafting_recipe/supaflyhelm_reinforced
	name = "reinforced supafly helmet"
	result = /obj/item/clothing/head/helmet/f13/raider/r/supafly
	reqs = list(/obj/item/clothing/head/helmet/f13/raider/supafly = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
/datum/crafting_recipe/supafly_reinforced
	name = "reinforced supafly armor"
	result = /obj/item/clothing/suit/armor/medium/raider/r/supafly
	reqs = list(/obj/item/clothing/suit/armor/light/raider/supafly = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
/datum/crafting_recipe/yankeehelm_reinforced
	name = "reinforced yankee helmet"
	result = /obj/item/clothing/head/helmet/f13/raider/r/yankee/
	reqs = list(/obj/item/clothing/head/helmet/f13/raider/yankee = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
/datum/crafting_recipe/yankee_reinforced
	name = "reinforced yankee armor"
	result = /obj/item/clothing/suit/armor/medium/raider/r/yankee
	reqs = list(/obj/item/clothing/suit/armor/medium/raider/yankee = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
/datum/crafting_recipe/blasterhelm_reinforced
	name = "reinforced blaster helmet"
	result = /obj/item/clothing/head/helmet/f13/raider/r/blastmaster
	reqs = list(/obj/item/clothing/head/helmet/f13/raider/blastmaster = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
/datum/crafting_recipe/blaster_reinforced
	name = "reinforced blaster armor"
	result = /obj/item/clothing/suit/armor/medium/raider/r/blastmaster
	reqs = list(/obj/item/clothing/suit/armor/medium/raider/blastmaster = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
/datum/crafting_recipe/sadisthelm_reinforced
	name = "reinforced sadist helmet"
	result = /obj/item/clothing/head/helmet/f13/raider/r/arclight
	reqs = list(/obj/item/clothing/head/helmet/f13/raider/arclight = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
/datum/crafting_recipe/sadist_reinforced
	name = "reinforced sadist armor"
	result = /obj/item/clothing/suit/armor/medium/raider/r/sadist
	reqs = list(/obj/item/clothing/suit/armor/light/raider/sadist = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
/datum/crafting_recipe/fiendshelm_reinforced
	name = "reinforced fiend helmet"
	result = /obj/item/clothing/head/helmet/f13/fiend_reinforced
	reqs = list(/obj/item/clothing/head/helmet/f13/fiend = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
/datum/crafting_recipe/badlands_reinforced
	name = "reinforced badlands armor"
	result = /obj/item/clothing/suit/armor/medium/raider/r/badlands
	reqs = list(/obj/item/clothing/suit/armor/medium/raider/badlands = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
/datum/crafting_recipe/painspikehelm_reinforced
	name = "reinforced painspike helmet"
	result = /obj/item/clothing/head/helmet/f13/raider/r/psychotic
	reqs = list(/obj/item/clothing/head/helmet/f13/raider/psychotic = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
/datum/crafting_recipe/painspike_reinforced
	name = "reinforced painspike armor"
	result = /obj/item/clothing/suit/armor/medium/raider/r/painspike
	reqs = list(/obj/item/clothing/suit/armor/light/raider/painspike = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
/datum/crafting_recipe/iconoclast_reinforced
	name = "reinforced iconoclast armor"
	result = /obj/item/clothing/suit/armor/medium/raider/r/iconoclast
	reqs = list(/obj/item/clothing/suit/armor/medium/raider/iconoclast = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
/datum/crafting_recipe/ncrexile_reinforced
	name = "reinforced NCR deserter armor"
	result = /obj/item/clothing/suit/armor/exile/r/ncr
	reqs = list(/obj/item/clothing/suit/armor/exile/ncrexile = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
/datum/crafting_recipe/legion_reinforced
	name = "reinforced punished Legion armor"
	result = /obj/item/clothing/suit/armor/exile/r/legion
	reqs = list(/obj/item/clothing/suit/armor/exile/legexile = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
/datum/crafting_recipe/bos_reinforced
	name = "reinforced BoS exile armor"
	result = /obj/item/clothing/suit/armor/exile/r/bos
	reqs = list(/obj/item/clothing/suit/armor/medium/combat/brotherhood/exile = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_GENCLOTHES
*/
