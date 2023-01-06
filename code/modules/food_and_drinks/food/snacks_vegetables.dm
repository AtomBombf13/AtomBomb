/obj/item/reagent_containers/food/snacks/eggplantparm
	name = "eggplant parmigiana"
	desc = "The only good recipe for eggplant."
	icon_state = "eggplantparm"
	bonus_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/nutriment/vitamin = 3
	)
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/vitamin = 2
	)
	filling_color = "#BA55D3"
	tastes = list("eggplant" = 3, "cheese" = 1)
	foodtype = VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/yakiimo
	name = "yaki imo"
	desc = "Made with roasted sweet potatoes!"
	icon_state = "yakiimo"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 5,
		/datum/reagent/consumable/nutriment/vitamin = 4
	)
	filling_color = "#8B1105"
	tastes = list("sweet potato" = 1)
	foodtype = GRAIN | VEGETABLES | SUGAR

/obj/item/reagent_containers/food/snacks/roastparsnip
	name = "roast parsnip"
	desc = "Sweet and crunchy."
	icon_state = "roastparsnip"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 4
	)
	filling_color = "#FF5500"
	tastes = list("parsnip" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/loadedbakedpotato
	name = "loaded baked potato"
	desc = "Totally baked."
	icon_state = "loadedbakedpotato"
	bonus_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/nutriment/vitamin = 2
	)
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 6
	)
	filling_color = "#D2B48C"
	tastes = list("potato" = 1)
	foodtype = VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/fries
	name = "fries"
	desc = "AKA: French Fries, Freedom Fries, etc."
	icon_state = "fries"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 4
	)
	filling_color = "#FFD700"
	tastes = list("fries" = 3, "salt" = 1)
	foodtype = VEGETABLES | GRAIN | FRIED
	dunkable = TRUE

/obj/item/reagent_containers/food/snacks/tatortot
	name = "tator tot"
	desc = "A large fried potato nugget."
	icon_state = "tatortot"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 4
	)
	filling_color = "FFD700"
	tastes = list("potato" = 3, "valids" = 1)
	foodtype = FRIED | VEGETABLES
	dunkable = TRUE

/obj/item/reagent_containers/food/snacks/carrotfries
	name = "carrot fries"
	desc = "Tasty fries from fresh Carrots."
	icon_state = "carrotfries"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/medicine/oculine = 3,
		/datum/reagent/consumable/nutriment/vitamin = 2
		)
	filling_color = "#FFA500"
	tastes = list("carrots" = 3, "salt" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/cheesyfries
	name = "cheesy fries"
	desc = "Fries. Covered in cheese. Duh."
	icon_state = "cheesyfries"
	bonus_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/nutriment/vitamin = 2
	)
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 6
	)
	filling_color = "#FFD700"
	tastes = list("fries" = 3, "cheese" = 1)
	foodtype = VEGETABLES | GRAIN

/obj/item/reagent_containers/food/snacks/chilicheesefries
	name = "chili cheese fries"
	desc = "Fries smothered in cheese -and- chilli."
	icon_state = "chilicheesefries"
	bonus_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/nutriment/vitamin = 2
	)
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 7,
		/datum/reagent/consumable/nutriment/vitamin = 1
	)
	filling_color = "#FFD700"
	tastes = list("fries" = 3, "cheese" = 1)
	foodtype = VEGETABLES | GRAIN

/obj/item/reagent_containers/food/snacks/mashedpotato
	name = "mashed potatoes"
	desc = "A diced and smashed potato, served with sour cream."
	icon_state = "mashedpotato"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 2,
		/datum/reagent/consumable/sodiumchloride = 1
	)
	bonus_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/nutriment/vitamin = 1
	)
	filling_color = "#FFD700"
	tastes = list("butter" = 1, "sour cream" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/butteredpotato
	name = "buttered potatoes"
	desc = "Mashed potatoes served with an ample serving of butter, and sour cream."
	icon_state = "buttermash"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 7,
		/datum/reagent/consumable/nutriment/vitamin = 2,
		/datum/reagent/consumable/sodiumchloride = 2
	)
	bonus_reagents = list(/datum/reagent/consumable/nutriment/vitamin = 1)
	filling_color = "#FFD700"
	tastes = list("potatoes" = 1, "sour cream" = 1, "butter" = 1)
	foodtype = GRAIN | DAIRY
