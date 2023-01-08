GLOBAL_LIST_EMPTY(anvil_recipes)

//Defines are in smithing_defines.dm
/datum/smithing
	var/name = "Blank smithing"
	
	var/id = null
	var/construct_steps = null
	var/result = null

/datum/smithing/hammer
	name = "Hammer Recipe"
	id = RECIPE_HAMMER
	construct_steps = "bpp"
	result = /obj/item/smithing/hammerhead

/datum/smithing/shovel
	name = "Shovel Recipe"
	id = RECIPE_HAMMER
	construct_steps = "buu"
	result = /obj/item/smithing/shovelhead

/datum/smithing/pickaxe
	name = "Pickaxe Recipe"
	id = RECIPE_PICKAXE
	construct_steps = "bff"
	result = /obj/item/smithing/pickaxehead

/datum/smithing/prospect_pick
	name = "Prospect pick Recipe"
	id = RECIPE_HAMMER
	construct_steps = "bfs"
	result = /obj/item/smithing/prospectingpickhead

/datum/smithing/kitchen_knife
	name = "Kitchen Knife Recipe"
	id = RECIPE_KITCHENKNIFE
	construct_steps = "bsd"
	result = /obj/item/smithing/knifeblade

/datum/smithing/crowbar
	name = "Crowbar Recipe"
	id = RECIPE_CROWBAR
	construct_steps = "bbb"
	result = /obj/item/smithing/crowbar

/datum/smithing/unitool
	name = "Unitool Recipe"
	id = RECIPE_UNITOOL
	construct_steps = "bbu"
	result = /obj/item/smithing/unitool

/datum/smithing/scrap_saw
	name = "Scrap saw Recipe"
	id = RECIPE_SCRAPSAW
	construct_steps = "ffsu"
	result = /obj/item/smithing/scrapsaw

/datum/smithing/ring
	name = "Ring Recipe"
	id = RECIPE_RING
	construct_steps = "sss"
	result = /obj/item/smithing/special/jewelry/ring

/datum/smithing/ball_and_chain
	name = "Ball and Chain Recipe"
	id = RECIPE_BALLANDCHAIN
	construct_steps = "pbu"
	result = /obj/item/smithing/ballandchain

/datum/smithing/armor_piece
	name = "Armor Piece Recipe"
	id = RECIPE_ARMOR_PIECE
	construct_steps = "pup"
	result = /obj/item/smithing/armor_piece

/datum/smithing/bowie
	name = "Bowie Recipe"
	id = RECIPE_BOWIE
	construct_steps = "dfs"
	result = /obj/item/smithing/bowieblade

/datum/smithing/dagger
	name = "Dagger Recipe"
	id = RECIPE_DAGGER
	construct_steps = "dds"
	result = /obj/item/smithing/daggerblade

/datum/smithing/machete
	name = "Machete Recipe"
	id = RECIPE_MACHETE
	construct_steps = "fdf"
	result = /obj/item/smithing/macheteblade

/datum/smithing/machete_reforg
	name = "Reforged Machete Recipe"
	id = RECIPE_MACHREFORG
	construct_steps = "fuf"
	result = /obj/item/smithing/macheterblade

/datum/smithing/sword
	name = "Sword Recipe"
	id = RECIPE_SWORD
	construct_steps = "ffdf"
	result = /obj/item/smithing/swordblade

/datum/smithing/sabre
	name = "Sabre Recipe"
	id = RECIPE_SABRE
	construct_steps = "ffdd"
	result = /obj/item/smithing/sabreblade

/datum/smithing/longsword
	name = "Longsword Recipe"
	id = RECIPE_LONGSWORD
	construct_steps = "fffdd"
	result = /obj/item/smithing/longswordblade

/datum/smithing/katana
	name = "Katana Recipe"
	id = RECIPE_KATANA
	construct_steps = "fffff"
	result = /obj/item/smithing/katanablade

/datum/smithing/waki
	name = "Waki Recipe"
	id = RECIPE_WAKI
	construct_steps = "fffs"
	result = /obj/item/smithing/wakiblade

/datum/smithing/mace
	name = "Mace Recipe"
	id = RECIPE_MACE
	construct_steps = "upu"
	result = /obj/item/smithing/macehead

/datum/smithing/scrap
	name = "Scrap Recipe"
	id = RECIPE_SCRAP
	construct_steps = "udpp"
	result = /obj/item/smithing/scrapblade

/datum/smithing/axe
	name = "Axe Recipe"
	id = RECIPE_AXE
	construct_steps = "udsp"
	result = /obj/item/smithing/axehead

/datum/smithing/crusher
	name = "Crusher Recipe"
	id = RECIPE_CRUSHER
	construct_steps = "uupp"
	result = /obj/item/smithing/crusherhead

/datum/smithing/spear
	name = "Spear Recipe"
	id = RECIPE_SPEAR
	construct_steps = "dddf"
	result = /obj/item/smithing/spearhead

/datum/smithing/trident
	name = "Trident Recipe"
	id = RECIPE_TRIDENT
	construct_steps = "ddbf"
	result = /obj/item/smithing/tridenthead

/datum/smithing/javelin
	name = "Javelin Recipe"
	id = RECIPE_JAVELIN
	construct_steps = "sdu"
	result = /obj/item/smithing/javelinhead

/datum/smithing/throwing
	name = "Throwing Knife Recipe"
	id = RECIPE_THROWING
	construct_steps = "sdd"
	result = /obj/item/smithing/throwingknife

/datum/smithing/bola
	name = "Bola Recipe"
	id = RECIPE_BOLA
	construct_steps = "suu"
	result = /obj/item/smithing/bola

/datum/smithing/gladius
	name = "Gladius Recipe"
	id = RECIPE_GLADIUS
	construct_steps = "fbf"
	result = /obj/item/smithing/gladiusblade

/datum/smithing/lance
	name = "Lance Recipe"
	id = RECIPE_LANCE
	construct_steps = "dbdf"
	result = /obj/item/smithing/lancehead

/datum/smithing/spatha
	name = "Spatha Recipe"
	id = RECIPE_SPATHA
	construct_steps = "ffbf"
	result = /obj/item/smithing/spathablade

/datum/smithing/waraxe
	name = "Waraxe Recipe"
	id = RECIPE_WARAXE
	construct_steps = "udup"
	result = /obj/item/smithing/waraxehead
