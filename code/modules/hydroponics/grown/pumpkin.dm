// Pumpkin
/obj/item/seeds/pumpkin
	name = "pack of pumpkin seeds"
	desc = "These seeds grow into pumpkin vines.<br><b>they appear to be edible once cooked!</b>"
	icon_state = "seed-pumpkin"
	species = "pumpkin"
	plantname = "Pumpkin Vines"
	product = /obj/item/reagent_containers/food/snacks/grown/pumpkin
	lifespan = 50
	endurance = 40
	growthstages = 3
	growing_icon = 'icons/obj/hydroponics/growing_fruits.dmi'
	icon_grow = "pumpkin-grow"
	icon_dead = "pumpkin-dead"
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	mutatelist = list(/obj/item/seeds/pumpkin/blumpkin)
	reagents_add = list(
		/datum/reagent/consumable/nutriment/vitamin = 0.04,
		/datum/reagent/consumable/nutriment = 0.2
		)

/obj/item/seeds/pumpkin/microwave_act(obj/machinery/microwave/MW) //The act allows it to be cooked over a bonfire grille too.
	..()
	new /obj/item/reagent_containers/food/snacks/roastseeds(drop_location())
	qdel(src)

/obj/item/reagent_containers/food/snacks/roastseeds
	name = "roasted pumpkin seeds"
	desc = "Cooked to perfection crispy pumpkin seeds, a golden brown autumntime treat."
	icon_state = "roasted_seeds"
	list_reagents = list(
		/datum/reagent/consumable/cooking_oil = 1,
		/datum/reagent/consumable/nutriment = 1.5,
		/datum/reagent/consumable/nutriment/vitamin = 1.5
		)
	bitesize = 2
	w_class = WEIGHT_CLASS_TINY
	tastes = list("crunchy" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/grown/pumpkin
	seed = /obj/item/seeds/pumpkin
	name = "pumpkin"
	desc = "It's large and scary."
	icon_state = "pumpkin"
	filling_color = "#FFA500"
	bitesize_mod = 2
	foodtype = FRUIT
	juice_results = list(/datum/reagent/consumable/pumpkinjuice = 0)
	wine_power = 20

/obj/item/reagent_containers/food/snacks/grown/pumpkin/attackby(obj/item/W as obj, mob/user as mob, params)
	if(W.get_sharpness())
		user.show_message(span_notice("You carve a face into [src]!"), MSG_VISUAL)
		new /obj/item/clothing/head/hardhat/pumpkinhead(user.loc)
		qdel(src)
		return
	else
		return ..()

// Blumpkin
/obj/item/seeds/pumpkin/blumpkin
	name = "pack of blumpkin seeds"
	desc = "These seeds grow into blumpkin vines."
	icon_state = "seed-blumpkin"
	species = "blumpkin"
	plantname = "Blumpkin Vines"
	product = /obj/item/reagent_containers/food/snacks/grown/blumpkin
	mutatelist = list()
	reagents_add = list(
		/datum/reagent/ammonia = 0.2,
		/datum/reagent/chlorine = 0.1,
		/datum/reagent/consumable/nutriment = 0.2
		)
	rarity = 20

/obj/item/reagent_containers/food/snacks/grown/blumpkin
	seed = /obj/item/seeds/pumpkin/blumpkin
	name = "blumpkin"
	desc = "The pumpkin's toxic sibling."
	icon_state = "blumpkin"
	filling_color = "#87CEFA"
	bitesize_mod = 2
	foodtype = FRUIT
	juice_results = list(/datum/reagent/consumable/blumpkinjuice = 0)
	wine_power = 50

/obj/item/reagent_containers/food/snacks/grown/blumpkin/attackby(obj/item/W as obj, mob/user as mob, params)
	if(W.get_sharpness())
		user.show_message(span_notice("You carve a face into [src]!"), MSG_VISUAL)
		new /obj/item/clothing/head/hardhat/pumpkinhead/blumpkin(user.loc)
		qdel(src)
		return
	else
		return ..()

