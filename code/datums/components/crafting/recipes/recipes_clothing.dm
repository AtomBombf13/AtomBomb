/////////
//BELTS//
/////////
/datum/crafting_recipe/belt
	name = "Leather Belt"
	result = /obj/item/storage/belt/military/waster
	reqs = list(/obj/item/stack/sheet/metal = 3,
				/obj/item/stack/crafting/metalparts = 2,
				/obj/item/stack/sheet/cloth = 2,
				/obj/item/stack/sheet/leather = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_BELTS

/datum/crafting_recipe/fanny
	name = "Fannypack"
	result = /obj/item/storage/belt/fannypack
	reqs = list(/obj/item/stack/sheet/metal = 3,
				/obj/item/stack/crafting/metalparts = 2,
				/obj/item/stack/sheet/cloth = 2,
				/obj/item/stack/sheet/leather = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_BELTS

/datum/crafting_recipe/bandolier
	name = "Bandolier"
	result = /obj/item/storage/belt/bandolier
	reqs = list(/obj/item/stack/sheet/metal = 3,
				/obj/item/stack/crafting/metalparts = 2,
				/obj/item/stack/sheet/cloth = 2,
				/obj/item/stack/sheet/leather = 4)
	tools = list(TOOL_WORKBENCH)
	time = 40
	category = CAT_CLOTHING
	subcategory = CAT_BELTS

/datum/crafting_recipe/webbing
	name = "Webbing"
	result = /obj/item/storage/belt/webbing/leather
	reqs = list(/obj/item/stack/sheet/leather = 3,
				/obj/item/stack/crafting/metalparts = 2,
				/obj/item/stack/sheet/metal = 2,
				/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_BELTS

/datum/crafting_recipe/chestrig
	name = "Chest Rig"
	result = /obj/item/storage/belt/webbing
	tools = list(TOOL_AWORKBENCH)
	reqs = list(/obj/item/stack/sheet/plastic = 8,
				/obj/item/stack/crafting/metalparts = 4,
				/obj/item/stack/sheet/cloth = 4,
				/obj/item/stack/sheet/leather = 6)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_BELTS

/datum/crafting_recipe/shoulderholster
	name = "Shoulder Holster"
	result = /obj/item/storage/belt/holster
	reqs = list(/obj/item/stack/sheet/leather = 2,
				/obj/item/stack/crafting/metalparts = 2,
				/obj/item/stack/sheet/cloth = 2,
				/obj/item/stack/sheet/metal = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_BELTS

/datum/crafting_recipe/legholster
	name = "Leg Holster"
	result = /obj/item/storage/belt/holster/leg
	reqs = list(/obj/item/stack/sheet/leather = 2,
				/obj/item/stack/crafting/metalparts = 2,
				/obj/item/stack/sheet/cloth = 2,
				/obj/item/stack/sheet/metal = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_BELTS

/datum/crafting_recipe/bulkysheath
	name = "Bulky Sheath"
	result = /obj/item/storage/belt/sabre/single
	reqs = list(/obj/item/stack/sheet/leather = 2,
				/obj/item/stack/crafting/metalparts = 2,
				/obj/item/stack/sheet/cloth = 2,
				/obj/item/stack/sheet/metal = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_BELTS

/* * * * * *
 * APRONS  *
 * * * * * */

/datum/crafting_recipe/bar_apron
	name = "Bartender's Apron"
	result = /obj/item/clothing/neck/apron/bartender
	reqs = list(/obj/item/stack/sheet/cloth = 8,
				/obj/item/stack/sheet/leather = 3,
				/obj/item/stack/crafting/metalparts = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/medical_apron
	name = "Nurse's Apron"
	result = /obj/item/clothing/neck/apron/medical
	reqs = list(/obj/item/stack/sheet/cloth = 8,
				/obj/item/stack/sheet/leather = 3,
				/obj/item/stack/crafting/metalparts = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/surgical_apron
	name = "Surgeon's Apron"
	result = /obj/item/clothing/neck/apron/medical/surgical
	reqs = list(/obj/item/stack/sheet/cloth = 8,
				/obj/item/stack/sheet/leather = 3,
				/obj/item/stack/crafting/metalparts = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/chef_apron
	name = "Chef's Apron"
	result = /obj/item/clothing/neck/apron/chef
	reqs = list(/obj/item/stack/sheet/cloth = 8,
				/obj/item/stack/sheet/leather = 3,
				/obj/item/stack/crafting/metalparts = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/labor_apron
	name = "Labor Apron"
	result = /obj/item/clothing/neck/apron/labor
	reqs = list(/obj/item/stack/sheet/cloth = 8,
				/obj/item/stack/sheet/leather = 3,
				/obj/item/stack/crafting/metalparts = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/forge_apron
	name = "Smith's Apron"
	result = /obj/item/clothing/neck/apron/labor/forge
	reqs = list(/obj/item/stack/sheet/cloth = 8,
				/obj/item/stack/sheet/leather = 3,
				/obj/item/stack/crafting/metalparts = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/datum/crafting_recipe/housewife_apron
	name = "Housewife Apron"
	result = /obj/item/clothing/neck/apron/housewife
	reqs = list(/obj/item/stack/sheet/cloth = 8,
				/obj/item/stack/sheet/leather = 3,
				/obj/item/stack/crafting/metalparts = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING

/////////
//SHOES//
/////////

/datum/crafting_recipe/laceup
	name = "Laceup shoes"
	result = /obj/item/clothing/shoes/laceup
	reqs = list(/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_SHOES

/datum/crafting_recipe/sneakers
	name = "Sneakers"
	result = /obj/item/clothing/shoes/sneakers/black
	reqs = list(/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_SHOES

/datum/crafting_recipe/footcloths
	name = "Footcloths"
	result = /obj/item/clothing/shoes/f13/rag
	reqs = list(/obj/item/stack/sheet/cloth = 1)
	tools = list(TOOL_WORKBENCH)
	time = 5
	category = CAT_CLOTHING
	subcategory = CAT_SHOES

/datum/crafting_recipe/cowboy
	name = "Cowboy boots"
	result = /obj/item/clothing/shoes/f13/cowboy
	reqs = list(/obj/item/stack/sheet/leather = 1)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_SHOES

/datum/crafting_recipe/explorer
	name = "Work boots"
	result = /obj/item/clothing/shoes/f13/explorer
	reqs = list(/obj/item/stack/sheet/leather = 1)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_SHOES

/datum/crafting_recipe/fancy
	name = "Leather shoes, black"
	result = /obj/item/clothing/shoes/f13/fancy
	reqs = list(/obj/item/stack/sheet/leather = 1)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_SHOES

/datum/crafting_recipe/brownie
	name = "Leather shoes, brown"
	result = /obj/item/clothing/shoes/f13/brownie
	reqs = list(/obj/item/stack/sheet/leather = 1)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_SHOES

/datum/crafting_recipe/tan
	name = "Leather shoes, tan"
	result = /obj/item/clothing/shoes/f13/tan
	reqs = list(/obj/item/stack/sheet/leather = 1)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_SHOES

/datum/crafting_recipe/papermask	//Citadel item
	name = "Paper Mask"
	result = /obj/item/clothing/mask/paper
	reqs = list(/obj/item/paper = 20)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_MISCCLOTHING	//F13 category

