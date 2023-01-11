
/obj/item/reagent_containers/food/snacks/tortilla
	name = "tortilla"
	desc = "The base for all your burritos."
	icon = 'icons/obj/food/food_ingredients.dmi'
	icon_state = "tortilla"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 1
	)
	filling_color = "#FFEFD5"
	tastes = list("tortilla" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/burrito
	name = "burrito"
	desc = "Tortilla wrapped goodness."
	icon_state = "burrito"
	bonus_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/vitamin = 2
	)
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/vitamin = 1
	)
	filling_color = "#FFEFD5"
	tastes = list("torilla" = 2, "meat" = 3)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/cheesyburrito
	name = "cheesy burrito"
	desc = "It's a burrito filled with cheese."
	icon_state = "cheesyburrito"
	bonus_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/nutriment/vitamin = 2
	)
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/vitamin = 2
	)
	filling_color = "#FFD800"
	tastes = list("torilla" = 2, "meat" = 3, "cheese" = 1)
	foodtype = GRAIN | MEAT | DAIRY

/obj/item/reagent_containers/food/snacks/carneburrito
	name = "carne asada burrito"
	desc = "The best burrito for meat lovers."
	icon_state = "carneburrito"
	bonus_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/vitamin = 1
	)
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 5,
		/datum/reagent/consumable/nutriment/vitamin = 1
	)
	filling_color = "#A0522D"
	tastes = list("torilla" = 2, "meat" = 4)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/fuegoburrito
	name = "fuego plasma burrito"
	desc = "A super spicy burrito."
	icon_state = "fuegoburrito"
	bonus_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/vitamin = 3
	)
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/capsaicin = 5,
		/datum/reagent/consumable/nutriment/vitamin = 3
	)
	filling_color = "#FF2000"
	tastes = list("torilla" = 2, "meat" = 3, "hot peppers" = 1)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/nachos
	name = "nachos"
	desc = "These could really use some cheese."
	icon_state = "nachos"
	bonus_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/nutriment/vitamin = 1
	)
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 6, 
		/datum/reagent/consumable/nutriment/vitamin = 2
	)
	filling_color = "#F4A460"
	tastes = list("nachos" = 1)
	foodtype = VEGETABLES | FRIED

/obj/item/reagent_containers/food/snacks/cheesynachos
	name = "cheesy nachos"
	desc = "The delicious combination of nachos and melting cheese."
	icon_state = "cheesynachos"
	bonus_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/nutriment/vitamin = 2
	)
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/vitamin = 3
	)
	filling_color = "#FFD700"
	tastes = list("nachos" = 2, "cheese" = 1)
	foodtype = VEGETABLES | FRIED | DAIRY

/obj/item/reagent_containers/food/snacks/cubannachos
	name = "Cuban nachos"
	desc = "That's some dangerously spicy nachos."
	icon_state = "cubannachos"
	bonus_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/vitamin = 3
	)
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 7,
		/datum/reagent/consumable/capsaicin = 8,
		/datum/reagent/consumable/nutriment/vitamin = 4
	)
	filling_color = "#DC143C"
	tastes = list("nachos" = 2, "hot pepper" = 1)
	foodtype = VEGETABLES | FRIED | DAIRY

/obj/item/reagent_containers/food/snacks/taco
	name = "taco"
	desc = "A traditional taco with meat, cheese, and lettuce."
	icon_state = "taco"
	bonus_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 2
	)
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/vitamin = 2
	)
	filling_color = "F0D830"
	tastes = list("taco" = 4, "meat" = 2, "cheese" = 2, "lettuce" = 1)
	foodtype = MEAT | DAIRY | GRAIN | VEGETABLES

/obj/item/reagent_containers/food/snacks/taco/plain
	desc = "A traditional taco with meat and cheese, minus the rabbit food."
	icon_state = "taco_plain"
	bonus_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/vitamin = 2
	)
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 1
	)
	tastes = list("taco" = 4, "meat" = 2, "cheese" = 2)
	foodtype = MEAT | DAIRY | GRAIN

/obj/item/reagent_containers/food/snacks/chipsandsalsa
	name = "chips and salsa"
	desc = "Some tortilla chips with a cup of zesty salsa. Highly addictive!"
	icon_state = "chipsandsalsa"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/capsaicin = 2,
		/datum/reagent/consumable/nutriment/vitamin = 4
	)
	tastes = list("peppers" = 1, "salsa" = 3, "tortilla chips" = 1, "onion" = 1)
	foodtype = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/reagent_containers/food/snacks/enchiladas
	name = "enchiladas"
	desc = "Viva La Mexico!"
	icon_state = "enchiladas"
	bonus_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/nutriment/vitamin = 2
	)
	bitesize = 4
	filling_color = "#FFA07A"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 8, 
		/datum/reagent/consumable/capsaicin = 6
	)
	tastes = list("hot peppers" = 1, "meat" = 3, "cheese" = 1, "sour cream" = 1)
	foodtype = MEAT
