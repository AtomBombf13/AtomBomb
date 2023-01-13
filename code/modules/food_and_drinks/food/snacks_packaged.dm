/obj/item/reagent_containers/food/snacks/cannedpeaches
	name = "Canned Peaches"
	desc = "Just a nice can of ripe peaches swimming in their own juices."
	icon_state = "peachcan"
	list_reagents = list(
		/datum/reagent/consumable/peachjuice = 20,
		/datum/reagent/consumable/sugar = 8,
		/datum/reagent/consumable/nutriment = 2
	)
	filling_color = "#ffdf26"
	w_class = WEIGHT_CLASS_NORMAL
	tastes = list("peaches" = 7, "tin" = 1)
	foodtype = FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/cannedpeaches/maint
	name = "Dented Canned of Peaches"
	desc = "I have a mouth and I must eat."
	icon_state = "peachcanmaint"
	tastes = list("peaches" = 1, "tin" = 7)
