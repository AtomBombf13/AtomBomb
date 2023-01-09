// CUSTOM RECIPES FOR FLUFF SKILL BOOK

//--
//Happy Sharky Jerky: 1 cutlet, 1 unit of tablesalt, 1 coyote tobacco leaf, 1 mesquite pod

//Happy Sharky Sweet Bar: 1 Chocolate Bar, Two Banana Yucca Fruit, 1 Pinion Nuts

//Happy Sharky Bittercola: 2 parts Bitter Drink, 2 Parts Nuka Cola, 1 Part Soda water, 1 part sugar
//--

/datum/crafting_recipe/food/sunset/happyshark/jerky
	name = "Happy Sharky Jerky"
	time = 40
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 1,
		/obj/item/reagent_containers/food/snacks/grown/coyotetobacco = 1,
		/obj/item/reagent_containers/food/snacks/grown/mesquite =1,
		/datum/reagent/consumable/sodiumchloride = 1
	)
	result = /obj/item/reagent_containers/food/snacks/sunset/happyshark/jerky
	subcategory = CAT_MISCFOOD
	always_available = FALSE


/datum/crafting_recipe/food/sunset/happyshark/candybar
	name = "Happy Sharky Sweet Bar"
	time = 40
	reqs = list(
		/obj/item/reagent_containers/food/snacks/chocolatebar = 1,
		/obj/item/reagent_containers/food/snacks/grown/pinyon = 1,
		/obj/item/reagent_containers/food/snacks/grown/yucca = 2
	)
	result = /obj/item/reagent_containers/food/snacks/sunset/happyshark/candybar
	subcategory = CAT_MISCFOOD
	always_available = FALSE



/datum/crafting_recipe/food/sunset/happyshark/bittercola/alt
	reqs = list(
		/datum/reagent/consumable/nuka_cola = 10,
		/datum/reagent/medicine/healing_powder = 10,
		/datum/reagent/consumable/sodawater = 5,
		/datum/reagent/consumable/sugar = 5
	)
