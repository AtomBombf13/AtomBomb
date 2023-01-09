// see code/module/crafting/table.dm


///////////////////////Sushi Components///////////////////////////

/datum/crafting_recipe/food/sushi_rice
	name = "Sushi Rice"
	reqs = list(
		/datum/reagent/water  = 40,
		/datum/reagent/consumable/rice = 10
	)
	result = /obj/item/reagent_containers/food/snacks/sushi_rice
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sea_weed
	name = "Sea Weed Sheet"
	reqs = list(
		/datum/reagent/water = 30,
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/reagent_containers/food/snacks/grown/herbs = 1,
	)
	result = /obj/item/reagent_containers/food/snacks/sea_weed
	subcategory = CAT_MISCFOOD

//////////////////////////Sushi/////////////////////////////////

/datum/crafting_recipe/food/sashimi
	name = "Sashimi"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/reagent_containers/food/snacks/spidereggs = 1,
		/obj/item/reagent_containers/food/snacks/fishmeat/carp = 1
	)
	result = /obj/item/reagent_containers/food/snacks/sashimi
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/riceball
	name = "Onigiri"
	reqs = list(
		/datum/reagent/consumable/soysauce = 1,
		/obj/item/reagent_containers/food/snacks/sea_weed = 1,
		/obj/item/reagent_containers/food/snacks/sushi_rice = 1
	)
	result = /obj/item/reagent_containers/food/snacks/riceball
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sushie_egg
	name = "Tobiko"
	reqs = list(
		/datum/reagent/consumable/soysauce = 6,
		/obj/item/reagent_containers/food/snacks/spidereggs = 1,
		/obj/item/reagent_containers/food/snacks/sea_weed = 2,
	)
	result = /obj/item/reagent_containers/food/snacks/tobiko
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sushie_basic
	name = "Funa Hosomaki"
	reqs = list(
		/datum/reagent/consumable/soysauce = 3,
		/obj/item/reagent_containers/food/snacks/sushi_rice = 1,
		/obj/item/reagent_containers/food/snacks/fishmeat/carp = 2,
		/obj/item/reagent_containers/food/snacks/sea_weed = 3,
	)
	result = /obj/item/reagent_containers/food/snacks/sushie_basic
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sushie_adv
	name = "Funa Nigiri"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/reagent_containers/food/snacks/sushi_rice = 1,
		/obj/item/reagent_containers/food/snacks/fishmeat/carp = 1
	)
	result = /obj/item/reagent_containers/food/snacks/sushie_adv
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sushie_pro
	name = "Well made Funa Nigiri"
	reqs = list(
		/datum/reagent/consumable/soysauce = 10,
		/obj/item/reagent_containers/food/snacks/sushi_rice = 2,
		/obj/item/reagent_containers/food/snacks/fishmeat/carp = 5,
		/obj/item/reagent_containers/food/snacks/sea_weed = 1
	)
	result = /obj/item/reagent_containers/food/snacks/sushie_pro
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sushi_sake
	name = "Sake Sushi (Salmon)"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/reagent_containers/food/snacks/sushi_rice = 2,
		/obj/item/reagent_containers/food/snacks/fishmeat/salmon = 2,
		/obj/item/reagent_containers/food/snacks/sea_weed = 1
	)
	result = /obj/item/reagent_containers/food/snacks/fishing_sushi/sake_sushi
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sushi_cookedsalmon
	name = "Cooked Salmon Sushi"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/reagent_containers/food/snacks/sushi_rice = 2,
		/obj/item/reagent_containers/food/snacks/fishmeat/salmon/cooked = 2,
		/obj/item/reagent_containers/food/snacks/sea_weed = 1
	)
	result = /obj/item/reagent_containers/food/snacks/fishing_sushi/sake_cookedsalmon
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sushi_ebi
	name = "Ebi Sushi (Cooked Shrimp)"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/reagent_containers/food/snacks/sushi_rice = 2,
		/obj/item/reagent_containers/food/snacks/fishmeat/shrimp/cooked = 2,
		/obj/item/reagent_containers/food/snacks/sea_weed = 1
	)
	result = /obj/item/reagent_containers/food/snacks/fishing_sushi/ebi_sushi
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sushi_ikura
	name = "Ikura Sushi (Salmon Roe)"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/reagent_containers/food/snacks/sushi_rice = 2,
		/obj/item/fishyegg/salmon = 2,
		/obj/item/reagent_containers/food/snacks/sea_weed = 1
	)
	result = /obj/item/reagent_containers/food/snacks/fishing_sushi/ikura_sushi
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sushi_maguro
	name = "Maguro Sushi (Tuna)"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/reagent_containers/food/snacks/sushi_rice = 2,
		/obj/item/reagent_containers/food/snacks/tuna = 1,
		/obj/item/reagent_containers/food/snacks/sea_weed = 1
	)
	result = /obj/item/reagent_containers/food/snacks/fishing_sushi/maguro_sushi
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sushi_masago
	name = "Masago Sushi (Any Roe)"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/reagent_containers/food/snacks/sushi_rice = 2,
		/obj/item/fishyegg = 2,
		/obj/item/reagent_containers/food/snacks/sea_weed = 1
	)
	result = /obj/item/reagent_containers/food/snacks/fishing_sushi/masago_sushi
	subcategory = CAT_MISCFOOD

//////////////////////////////////////////////FISH///////////////////////////////////////////

/datum/crafting_recipe/food/tuna_can
	name = "Can of Tuna"
	reqs = list(
		/datum/reagent/consumable/sodiumchloride = 15,
		/datum/reagent/consumable/cooking_oil = 5,
		/obj/item/reagent_containers/food/snacks/fishmeat/carp = 1,
	)
	result = /obj/item/reagent_containers/food/snacks/tuna
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/crab_rangoon
	name = "Crab Rangoon"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/doughslice = 1,
		/datum/reagent/consumable/cream = 5,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 1,
		/obj/item/reagent_containers/food/snacks/meat/crab = 1
	)
	result = /obj/item/reagent_containers/food/snacks/crab_rangoon
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/cubancarp
	name = "Cuban carp"
	reqs = list(
		/datum/reagent/consumable/flour = 5,
		/obj/item/reagent_containers/food/snacks/grown/chili = 1,
		/obj/item/reagent_containers/food/snacks/fishmeat/carp = 1
	)
	result = /obj/item/reagent_containers/food/snacks/cubancarp
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/fishfingers
	name = "Fish fingers"
	reqs = list(
		/datum/reagent/consumable/flour = 5,
		/obj/item/reagent_containers/food/snacks/bun = 1,
		/obj/item/reagent_containers/food/snacks/fishmeat/carp = 1
	)
	result = /obj/item/reagent_containers/food/snacks/fishfingers
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/fishandchips
	name = "Fish and chips"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/fries = 1,
		/obj/item/reagent_containers/food/snacks/fishmeat/carp = 1
	)
	result = /obj/item/reagent_containers/food/snacks/fishandchips
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/fishfry
	name = "Fish fry"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/grown/corn = 1,
		/obj/item/reagent_containers/food/snacks/grown/peas =1,
		/obj/item/reagent_containers/food/snacks/fishmeat/carp = 1
	)
	result = /obj/item/reagent_containers/food/snacks/fishfry
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/lobsterroll
	name = "Lobster Roll"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/bun = 1,
		/obj/item/reagent_containers/food/snacks/fishmeat/crawdad = 1
	)
	result = /obj/item/reagent_containers/food/snacks/fishing/lobster_roll
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/lobsterdeluxe
	name = "Lobster Deluxe"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/fishmeat/crawdad/cooked = 1,
		/obj/item/reagent_containers/food/snacks/grown/citrus/lemon =1,
		/obj/item/reagent_containers/food/snacks/grown/cabbage = 1
	)
	result = /obj/item/reagent_containers/food/snacks/fishing/lobster_deluxe
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/fishtaco
	name = "Fish taco"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/tortilla = 1,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 1,
		/obj/item/reagent_containers/food/snacks/fishmeat/carp = 1,
		/obj/item/reagent_containers/food/snacks/grown/cabbage = 1
	)
	result = /obj/item/reagent_containers/food/snacks/fishtaco
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/vegetariansushiroll
	name = "Vegetarian sushi roll"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/sea_weed = 1,
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/grown/carrot = 1,
		/obj/item/reagent_containers/food/snacks/grown/potato = 1
	)
	result = /obj/item/reagent_containers/food/snacks/vegetariansushiroll
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/spicyfiletroll
	name = "Spicy filet sushi roll"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/sea_weed = 1,
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/fishmeat/carp = 1,
		/obj/item/reagent_containers/food/snacks/grown/chili = 1,
		/obj/item/reagent_containers/food/snacks/grown/onion = 1
	)
	result = /obj/item/reagent_containers/food/snacks/spicyfiletsushiroll
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/springroll
	name = "Spring roll"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/grown/carrot = 1,
		/obj/item/reagent_containers/food/snacks/grown/cucumber = 1,
		/obj/item/reagent_containers/food/snacks/grown/chili = 1,
		/datum/reagent/consumable/rice = 10,
		/datum/reagent/water = 10,
	)
	result = /obj/item/reagent_containers/food/snacks/springroll
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/meat_poke
	name ="Meat poke"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/sea_weed = 1,
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 3,
		/obj/item/reagent_containers/food/snacks/grown/cabbage = 1,
		/obj/item/reagent_containers/food/snacks/tofu = 1,
		/datum/reagent/consumable/soysauce = 1
	)
	result = /obj/item/reagent_containers/food/snacks/meat_poke
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/fish_poke
	name ="Fish poke"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/sea_weed = 1,
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 1,
		/obj/item/reagent_containers/food/snacks/grown/cabbage = 1,
		/obj/item/reagent_containers/food/snacks/tofu = 1,
		/datum/reagent/consumable/soysauce = 1
	)
	result = /obj/item/reagent_containers/food/snacks/fish_poke
	subcategory = CAT_MISCFOOD
