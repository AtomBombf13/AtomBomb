/obj/item/reagent_containers/food/snacks/candy_corn
	name = "candy corn"
	desc = "It's a handful of candy corn."
	icon_state = "candy_corn"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/sugar = 2
	)
	filling_color = "#FF8C00"
	tastes = list("candy corn" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/chocolatebar
	name = "chocolate bar"
	desc = "Such, sweet, fattening food."
	icon_state = "chocolatebar"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/sugar = 2,
		/datum/reagent/consumable/coco = 2
	)
	filling_color = "#A0522D"
	tastes = list("chocolate" = 1)
	foodtype = JUNKFOOD | SUGAR
	dunkable = TRUE

/obj/item/reagent_containers/food/snacks/mint
	name = "mint"
	desc = "It is only wafer thin."
	icon_state = "mint"
	bitesize = 1
	list_reagents = list(
		/datum/reagent/toxin/minttoxin = 2
	)
	filling_color = "#800000"
	foodtype = TOXIC | SUGAR

/obj/item/reagent_containers/food/snacks/chococoin
	name = "chocolate coin"
	desc = "A completely edible festive coin."
	icon_state = "chococoin"
	bonus_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/sugar = 1
	)
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, 
	/datum/reagent/consumable/coco = 1)
	filling_color = "#A0522D"
	tastes = list("chocolate" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/fudgedice
	name = "fudge dice"
	desc = "A little cube of chocolate that tends to have a less intense taste if you eat too many at once."
	icon_state = "chocodice"
	bonus_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/sugar = 1
	)
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/coco = 1
	)
	filling_color = "#A0522D"
	tastes = list("fudge" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/chocoorange
	name = "chocolate orange"
	desc = "A festive chocolate orange."
	icon_state = "chocoorange"
	bonus_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/sugar = 1
	)
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/sugar = 1
	)
	filling_color = "#A0522D"
	tastes = list("chocolate" = 3, "oranges" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/tinychocolate
	name = "chocolate"
	desc = "A tiny and sweet chocolate. Has a 'strawberry' filling!"
	icon_state = "tiny_chocolate"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/sugar = 1,
		/datum/reagent/consumable/coco = 1
	)
	filling_color = "#A0522D"
	tastes = list("chocolate" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/bonbon
	name = "bon bon"
	desc = "A tiny and sweet chocolate."
	icon_state = "tiny_chocolate"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/sugar = 1,
		/datum/reagent/consumable/coco = 1
	)
	tastes = list("chocolate" = 1)
	foodtype = JUNKFOOD | SUGAR
	w_class = WEIGHT_CLASS_TINY

/obj/item/reagent_containers/food/snacks/bonbon/caramel_truffle
	name = "caramel truffle"
	desc = "A bite-sized chocolate truffle with a chewy caramel filling."
	icon_state = "caramel_truffle"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 3
	)
	tastes = list("chocolate" = 1, "chewy caramel" = 1)

/obj/item/reagent_containers/food/snacks/bonbon/chocolate_truffle
	name = "chocolate truffle"
	desc = "A bite-sized chocolate truffle with a rich chocolate mousse filling."
	icon_state = "chocolate_truffle"
	bonus_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 3
	)

/obj/item/reagent_containers/food/snacks/bonbon/peanut_truffle
	name = "peanut truffle"
	desc = "A bite-sized chocolate truffle with crunchy peanuts mixed in."
	icon_state = "peanut_truffle"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 3
	)
	tastes = list("chocolate" = 1, "peanuts" = 1)
	foodtype = DAIRY | SUGAR | JUNKFOOD

/obj/item/reagent_containers/food/snacks/bonbon/peanut_butter_cup
	name = "peanut butter cup"
	desc = "An ultra-sweet chocolate treat with a savory peanut butter filling."
	icon_state = "peanut_butter_cup"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 3
	)
	tastes = list("chocolate" = 1, "peanut butter" = 1)
	foodtype = DAIRY | SUGAR | JUNKFOOD

/obj/item/reagent_containers/food/snacks/lollipop
	name = "lollipop"
	desc = "A delicious lollipop. Makes for a great Valentine's present."
	icon = 'icons/obj/lollipop.dmi'
	icon_state = "lollipop_stick"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/nutriment/vitamin = 1,
		/datum/reagent/iron = 10,
		/datum/reagent/consumable/sugar = 5,
		/datum/reagent/medicine/omnizine = 2
	)//Honk
	var/mutable_appearance/head
	var/headcolor = rgb(0, 0, 0)
	tastes = list("candy" = 1)
	foodtype = JUNKFOOD | SUGAR | ANTITOXIC

/obj/item/reagent_containers/food/snacks/lollipop/Initialize()
	. = ..()
	head = mutable_appearance('icons/obj/lollipop.dmi', "lollipop_head")
	change_head_color(rgb(rand(0, 255), rand(0, 255), rand(0, 255)))

/obj/item/reagent_containers/food/snacks/lollipop/proc/change_head_color(C)
	headcolor = C
	cut_overlay(head)
	head.color = C
	add_overlay(head)

/obj/item/reagent_containers/food/snacks/lollipop/throw_impact(atom/hit_atom, datum/thrownthing/throwingdatum)
	..(hit_atom)
	throw_speed = 1
	throwforce = 0

/obj/item/reagent_containers/food/snacks/lollipop/cyborg
	var/spamchecking = TRUE

/obj/item/reagent_containers/food/snacks/lollipop/cyborg/Initialize()
	. = ..()
	addtimer(CALLBACK(src, .proc/spamcheck), 1200)

/obj/item/reagent_containers/food/snacks/lollipop/cyborg/equipped(mob/living/user, slot)
	. = ..(user, slot)
	spamchecking = FALSE

/obj/item/reagent_containers/food/snacks/lollipop/cyborg/proc/spamcheck()
	if(spamchecking)
		qdel(src)

/obj/item/reagent_containers/food/snacks/gumball
	name = "gumball"
	desc = "A colorful, sugary gumball."
	icon = 'icons/obj/lollipop.dmi'
	icon_state = "gumball"
	list_reagents = list(
		/datum/reagent/consumable/sugar = 5,
		/datum/reagent/medicine/bicaridine = 2,
		/datum/reagent/medicine/kelotane = 2
		)	//Kek
	tastes = list("candy")
	foodtype = JUNKFOOD

/obj/item/reagent_containers/food/snacks/gumball/Initialize()
	. = ..()
	color = rgb(rand(0, 255), rand(0, 255), rand(0, 255))

/obj/item/reagent_containers/food/snacks/gumball/cyborg
	var/spamchecking = TRUE

/obj/item/reagent_containers/food/snacks/gumball/cyborg/Initialize()
	. = ..()
	addtimer(CALLBACK(src, .proc/spamcheck), 1200)

/obj/item/reagent_containers/food/snacks/gumball/cyborg/equipped(mob/living/user, slot)
	. = ..(user, slot)
	spamchecking = FALSE

/obj/item/reagent_containers/food/snacks/gumball/cyborg/proc/spamcheck()
	if(spamchecking)
		qdel(src)

/obj/item/reagent_containers/food/snacks/spiderlollipop
	name = "spider lollipop"
	desc = "Still gross, but at least it has a mountain of sugar on it."
	icon_state = "spiderlollipop"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/toxin = 1,
		/datum/reagent/iron = 10,
		/datum/reagent/consumable/sugar = 5,
		/datum/reagent/medicine/omnizine = 2
	) //lollipop, but vitamins = toxins
	filling_color = "#00800"
	tastes = list("cobwebs" = 1, "sugar" = 2)
	foodtype = JUNKFOOD | SUGAR | ANTITOXIC

/obj/item/reagent_containers/food/snacks/candiedapple
	name = "candied apple"
	desc = "An apple coated in sugary sweetness."
	icon_state = "candiedapple"
	bitesize = 3
	bonus_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/sugar = 3
	)
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/sugar = 2
	)
	filling_color = "#FF4500"
	tastes = list("apple" = 2, "sweetness" = 2)
	foodtype = JUNKFOOD | FRUIT | SUGAR
