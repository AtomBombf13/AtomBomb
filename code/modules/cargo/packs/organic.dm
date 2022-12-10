
//Reminders-
// If you add something to this list, please group it by type and sort it alphabetically instead of just jamming it in like an animal
// cost = 700- Minimum cost, or infinite points are possible.
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////// Organic /////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/organic
	group = "Agriculture and Food"
	crate_type = /obj/structure/closet/crate/freezer

/datum/supply_pack/organic/randomized
	var/num_contained = 15

/datum/supply_pack/organic/randomized/fill(obj/structure/closet/crate/C)
	for(var/i in 1 to num_contained)
		var/item = pick(contains)
		new item(C)

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////// Meals ///////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/organic/randomized/candy
	name = "Candy Crate"
	desc = "For people that have an insatiable sweet tooth! Has ten candies to be eaten up.."
	cost = 2500
	num_contained = 10
	contains = list(/obj/item/reagent_containers/food/snacks/candy,
					/obj/item/reagent_containers/food/snacks/lollipop,
					/obj/item/reagent_containers/food/snacks/gumball,
					/obj/item/reagent_containers/food/snacks/chocolateegg,
					/obj/item/reagent_containers/food/snacks/donut,
					/obj/item/reagent_containers/food/snacks/cookie,
					/obj/item/reagent_containers/food/snacks/sugarcookie,
					/obj/item/reagent_containers/food/snacks/chococornet,
					/obj/item/reagent_containers/food/snacks/mint,
					/obj/item/reagent_containers/food/snacks/spiderlollipop,
					/obj/item/reagent_containers/food/snacks/chococoin,
					/obj/item/reagent_containers/food/snacks/fudgedice,
					/obj/item/reagent_containers/food/snacks/chocoorange,
					/obj/item/reagent_containers/food/snacks/honeybar,
					/obj/item/reagent_containers/food/snacks/tinychocolate,
					/obj/item/reagent_containers/food/snacks/spacetwinkie,
					/obj/item/reagent_containers/food/snacks/syndicake,
					/obj/item/reagent_containers/food/snacks/cheesiehonkers,
					/obj/item/reagent_containers/food/snacks/sugarcookie/spookyskull,
					/obj/item/reagent_containers/food/snacks/sugarcookie/spookycoffin,
					/obj/item/reagent_containers/food/snacks/candy_corn,
					/obj/item/reagent_containers/food/snacks/candiedapple,
					/obj/item/reagent_containers/food/snacks/chocolatebar,
					/obj/item/reagent_containers/food/snacks/candyheart,
					/obj/item/storage/fancy/heart_box,
					/obj/item/storage/fancy/donut_box)
	crate_name = "candy crate"

/datum/supply_pack/emergency/mre
	name = "MRE Packs (Emergency Rations)"
	desc = "Bacteria, radioactive contamination, bugs and worms, who wants to deal with that? Order our NT branded MRE kits today! This pack contains 5 MRE packs with a randomized menu."
	cost = 2000
	contains = list(/obj/item/storage/box/mre/menu1/safe,
					/obj/item/storage/box/mre/menu1/safe,
					/obj/item/storage/box/mre/menu2/safe,
					/obj/item/storage/box/mre/menu2/safe,
					/obj/item/storage/box/mre/menu3,
					/obj/item/storage/box/mre/menu4/safe)
	crate_name = "MRE crate (emergency rations)"

/datum/supply_pack/organic/pizza
	name = "Pizza Crate"
	desc = "Best prices on this side of the wastes. All deliveries are guaranteed to be 99% rad-free!"
	cost = 6000 // Best prices this side of the galaxy.
	contains = list(/obj/item/pizzabox/margherita,
					/obj/item/pizzabox/mushroom,
					/obj/item/pizzabox/meat,
					/obj/item/pizzabox/vegetable,
					/obj/item/pizzabox/pineapple)
	crate_name = "pizza crate"
	var/static/anomalous_box_provided = FALSE

/datum/supply_pack/organic/pizza/fill(obj/structure/closet/crate/C)
	. = ..()
	if(!anomalous_box_provided)
		for(var/obj/item/pizzabox/P in C)
			if(prob(1)) //1% chance for each box, so 4% total chance per order
				var/obj/item/pizzabox/infinite/fourfiveeight = new(C)
				fourfiveeight.boxtag = P.boxtag
				qdel(P)
				anomalous_box_provided = TRUE
				log_game("An anomalous pizza box was provided in a pizza crate at during cargo delivery")
				if(prob(50))
					addtimer(CALLBACK(src, .proc/anomalous_pizza_report), rand(300, 1800))
				else
					message_admins("An anomalous pizza box was silently created with no command report in a pizza crate delivery.")
				break

/datum/supply_pack/organic/pizza/proc/anomalous_pizza_report()
	print_command_report("[station_name()], our anomalous materials divison has reported a missing object that is highly likely to have been sent to your station during a routine cargo \
	delivery. Please search all crates and manifests provided with the delivery and return the object if is located. The object resembles a standard <b>\[DATA EXPUNGED\]</b> and is to be \
	considered <b>\[REDACTED\]</b> and returned at your leisure. Note that objects the anomaly produces are specifically attuned exactly to the individual opening the anomaly; regardless \
	of species, the individual will find the object edible and it will taste great according to their personal definitions, which vary significantly based on person and species.")

// Dots Diner reference, it is from F4 / F76. But it should work for now
// https://fallout.fandom.com/wiki/Dot%27s_Diner 
/datum/supply_pack/organic/randomized/burgersfries
	name = "Dots Burgers & Fries crate"
	desc = "For people who want quick bite and or even open up your own resturant, sponsored by Dot's Diner."
	cost = 2500
	num_contained = 10
	contains = list(/obj/item/reagent_containers/food/snacks/burger/corgi,
					/obj/item/reagent_containers/food/snacks/burger/plain,
					/obj/item/reagent_containers/food/snacks/burger/fish,
					/obj/item/reagent_containers/food/snacks/burger/tofu,
					/obj/item/reagent_containers/food/snacks/burger/bearger,
					/obj/item/reagent_containers/food/snacks/burger/brain,
					/obj/item/reagent_containers/food/snacks/burger/bigbite,
					/obj/item/reagent_containers/food/snacks/burger/fivealarm,
					/obj/item/reagent_containers/food/snacks/burger/rat,
					/obj/item/reagent_containers/food/snacks/burger/baseball,
					/obj/item/reagent_containers/food/snacks/burger/baconburger,
					/obj/item/reagent_containers/food/snacks/burger/soylent,
					/obj/item/reagent_containers/food/snacks/burger/crab,
					/obj/item/reagent_containers/food/snacks/burger/chicken,
					/obj/item/reagent_containers/food/snacks/burger/cheese,
					/obj/item/reagent_containers/food/snacks/fries,
					/obj/item/reagent_containers/food/snacks/tatortot,
					/obj/item/reagent_containers/food/snacks/cheesyfries,
					/obj/item/reagent_containers/food/snacks/chilicheesefries)
	crate_name = "burgers & fries crate"

// Petró-Chico reference, it is referenced in F:NV. But someone could of ran with the name and had an diner or something among those lines, using it as a name.
// https://fallout.fandom.com/wiki/Petr%C3%B3-Chico 
/datum/supply_pack/organic/randomized/mexican
	name = "Petró-Chicos food crate"
	desc = "For people who want a quick bite of mexican food or to open up your own resturant, sponsored by Petró-Chico."
	cost = 2500
	num_contained = 10
	contains = list(/obj/item/reagent_containers/food/snacks/burrito,
					/obj/item/reagent_containers/food/snacks/cheesyburrito,
					/obj/item/reagent_containers/food/snacks/carneburrito,
					/obj/item/reagent_containers/food/snacks/fuegoburrito,
					/obj/item/reagent_containers/food/snacks/nachos,
					/obj/item/reagent_containers/food/snacks/cheesynachos,
					/obj/item/reagent_containers/food/snacks/cubannachos,
					/obj/item/reagent_containers/food/snacks/taco,
					/obj/item/reagent_containers/food/snacks/taco/plain,
					/obj/item/reagent_containers/food/snacks/chipsandsalsa,
					/obj/item/reagent_containers/food/snacks/enchiladas)
	crate_name = "Mexican food crate"

// No Reference for this one.
/datum/supply_pack/organic/randomized/seafood
	name = "Seafood crate"
	desc = "For people who want a quick bite of seafood or to open up your own resturant."
	cost = 2500
	num_contained = 10
	contains = list(/obj/item/reagent_containers/food/snacks/fishmeat/salmon/cooked,
					/obj/item/reagent_containers/food/snacks/fishmeat/crawdad/cooked,
					/obj/item/reagent_containers/food/snacks/fishmeat/shrimp/cooked,
					/obj/item/reagent_containers/food/snacks/fishing/lobster_deluxe,
					/obj/item/reagent_containers/food/snacks/fishing/lobster_roll,
					/obj/item/reagent_containers/food/snacks/fishfingers,
					/obj/item/reagent_containers/food/snacks/fishandchips,
					/obj/item/reagent_containers/food/snacks/fishfry,
					/obj/item/reagent_containers/food/snacks/fishtaco,
					/obj/item/reagent_containers/food/snacks/sushi_rice,
					/obj/item/reagent_containers/food/snacks/tuna,
					/obj/item/reagent_containers/food/snacks/sushie_basic,
					/obj/item/reagent_containers/food/snacks/sushie_adv,
					/obj/item/reagent_containers/food/snacks/sushie_pro,
					/obj/item/reagent_containers/food/snacks/tobiko,
					/obj/item/reagent_containers/food/snacks/riceball,
					/obj/item/reagent_containers/food/snacks/sashimi,
					/obj/item/reagent_containers/food/snacks/fishing_sushi/sake_sushi,
					/obj/item/reagent_containers/food/snacks/fishing_sushi/sake_cookedsalmon,
					/obj/item/reagent_containers/food/snacks/fishing_sushi/ebi_sushi,
					/obj/item/reagent_containers/food/snacks/fishing_sushi/ikura_sushi,
					/obj/item/reagent_containers/food/snacks/fishing_sushi/maguro_sushi,
					/obj/item/reagent_containers/food/snacks/fishing_sushi/masago_sushi,
					/obj/item/reagent_containers/food/snacks/vegetariansushiroll,
					/obj/item/reagent_containers/food/snacks/vegetariansushislice,
					/obj/item/reagent_containers/food/snacks/spicyfiletsushiroll,
					/obj/item/reagent_containers/food/snacks/spicyfiletsushislice,
					/obj/item/reagent_containers/food/snacks/springroll,
					/obj/item/reagent_containers/food/snacks/customizable/sushi)

//////////////////////////////////////////////////////////////////////////////
//////////////////////////// Raw Ingredients /////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/organic/food
	name = "Food Crate"
	desc = "Get things cooking with this crate full of useful ingredients! Contains a two dozen eggs, three bananas, and two bags of flour and rice, two cartons of milk, soymilk, as well as salt and pepper shakers, an enzyme and sugar bottle, and three slabs of monkeymeat."
	cost = 1000
	contains = list(/obj/item/reagent_containers/food/condiment/flour,
					/obj/item/reagent_containers/food/condiment/flour,
					/obj/item/reagent_containers/food/condiment/rice,
					/obj/item/reagent_containers/food/condiment/rice,
					/obj/item/reagent_containers/food/condiment/milk,
					/obj/item/reagent_containers/food/condiment/milk,
					/obj/item/reagent_containers/food/condiment/soymilk,
					/obj/item/reagent_containers/food/condiment/saltshaker,
					/obj/item/reagent_containers/food/condiment/peppermill,
					/obj/item/storage/fancy/egg_box,
					/obj/item/storage/fancy/egg_box,
					/obj/item/reagent_containers/food/condiment/enzyme,
					/obj/item/reagent_containers/food/condiment/sugar,
					/obj/item/reagent_containers/food/snacks/meat/slab/monkey,
					/obj/item/reagent_containers/food/snacks/meat/slab/monkey,
					/obj/item/reagent_containers/food/snacks/meat/slab/monkey,
					/obj/item/reagent_containers/food/snacks/grown/banana,
					/obj/item/reagent_containers/food/snacks/grown/banana,
					/obj/item/reagent_containers/food/snacks/grown/banana)
	crate_name = "food crate"
/*
/datum/supply_pack/organic/randomized/fruits
	name = "Fruit Crate"
	desc = "Rich in vitamins and possibly sugar. Contains 15 assorted fruits."
	cost = 1500
	contains = list(/obj/item/reagent_containers/food/snacks/grown/citrus/lime,
					/obj/item/reagent_containers/food/snacks/grown/citrus/orange,
					/obj/item/reagent_containers/food/snacks/grown/banana,
					/obj/item/reagent_containers/food/snacks/grown/watermelon,
					/obj/item/reagent_containers/food/snacks/grown/apple,
					/obj/item/reagent_containers/food/snacks/grown/berries,
					/obj/item/reagent_containers/food/snacks/grown/citrus/lemon,
					/obj/item/reagent_containers/food/snacks/grown/pineapple,
					/obj/item/reagent_containers/food/snacks/grown/cherries,
					/obj/item/reagent_containers/food/snacks/grown/grapes,
					/obj/item/reagent_containers/food/snacks/grown/grapes/green,
					/obj/item/reagent_containers/food/snacks/grown/eggplant,
					/obj/item/reagent_containers/food/snacks/grown/peach,
					/obj/item/reagent_containers/food/snacks/grown/strawberry)
	crate_name = "fruit crate"

/datum/supply_pack/organic/randomized
	name = "Meat Crate (Exotic)"
	desc = "The best cuts in the whole galaxy. Contains 15 assorted exotic meats."
	cost = 2000
	contains = list(/obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/slime,
					/obj/item/reagent_containers/food/snacks/meat/slab/killertomato,
					/obj/item/reagent_containers/food/snacks/meat/slab/bear,
					/obj/item/reagent_containers/food/snacks/meat/slab/xeno,
					/obj/item/reagent_containers/food/snacks/meat/slab/spider,
					/obj/item/reagent_containers/food/snacks/spidereggs,
					/obj/item/reagent_containers/food/snacks/meat/rawcrab,
					/obj/item/reagent_containers/food/snacks/spiderleg,
					/obj/item/reagent_containers/food/snacks/fishmeat/carp,
					/obj/item/reagent_containers/food/snacks/meat/slab/human)
	crate_name = "exotic meat crate"

/datum/supply_pack/organic/monkeydripmeat
	name = "Meat Crate (Fresh)"
	desc = "Need some meat? With this do-it-yourself kit you'll be swimming in it! Contains a monkey cube, an IV drip, and some cryoxadone!"
	cost = 2150
	contraband = TRUE
	contains = list(/obj/item/reagent_containers/food/snacks/cube/monkey,
					/obj/item/restraints/handcuffs/cable,
					/obj/machinery/iv_drip,
					/obj/item/reagent_containers/glass/beaker/cryoxadone,
					/obj/item/reagent_containers/glass/beaker/cryoxadone)
	crate_name = "monkey meat crate"

/datum/supply_pack/organic/fakemeat
	name = "Meat Crate 'Synthetic'"
	desc = "Run outta meat already? Keep the lizards content with this freezer filled with cruelty-free chemically compounded meat! Contains 12 slabs of meat product, and 4 slabs of *carp*."
	cost = 1200 // Buying 3 food crates nets you 9 meat for 900 points, plus like, 6 bags of rice, flour, and egg boxes. This is 12 for 500, but you -only- get meat and carp.
	contains = list(/obj/item/reagent_containers/food/snacks/meat/slab/meatproduct,
					/obj/item/reagent_containers/food/snacks/meat/slab/meatproduct,
					/obj/item/reagent_containers/food/snacks/meat/slab/meatproduct,
					/obj/item/reagent_containers/food/snacks/meat/slab/meatproduct,
					/obj/item/reagent_containers/food/snacks/meat/slab/meatproduct,
					/obj/item/reagent_containers/food/snacks/meat/slab/meatproduct,
					/obj/item/reagent_containers/food/snacks/meat/slab/meatproduct,
					/obj/item/reagent_containers/food/snacks/meat/slab/meatproduct,
					/obj/item/reagent_containers/food/snacks/meat/slab/meatproduct,
					/obj/item/reagent_containers/food/snacks/meat/slab/meatproduct,
					/obj/item/reagent_containers/food/snacks/meat/slab/meatproduct,
					/obj/item/reagent_containers/food/snacks/meat/slab/meatproduct,
					/obj/item/reagent_containers/food/snacks/fishmeat/carp/imitation,
					/obj/item/reagent_containers/food/snacks/fishmeat/carp/imitation,
					/obj/item/reagent_containers/food/snacks/fishmeat/carp/imitation,
					/obj/item/reagent_containers/food/snacks/fishmeat/carp/imitation)
	crate_name = "meaty crate"
	crate_type = /obj/structure/closet/crate/freezer

/datum/supply_pack/organic/mixedboxes
	name = "Mixed Ingredient Boxes"
	desc = "Get overwhelmed with inspiration by ordering these boxes of surprise ingredients! Get four boxes filled with an assortment of products!"
	cost = 2300
	contains = list(/obj/item/storage/box/ingredients/wildcard,
					/obj/item/storage/box/ingredients/wildcard,
					/obj/item/storage/box/ingredients/wildcard,
					/obj/item/storage/box/ingredients/wildcard)
	crate_name = "wildcard food crate"
	crate_type = /obj/structure/closet/crate/freezer
*/
/datum/supply_pack/organic/randomized/vegetables
	name = "Vegetable Crate"
	desc = "Grown in vats. Contains 15 assorted vegetables."
	cost = 1300
	contains = list(/obj/item/reagent_containers/food/snacks/grown/chili,
					/obj/item/reagent_containers/food/snacks/grown/corn,
					/obj/item/reagent_containers/food/snacks/grown/tomato,
					/obj/item/reagent_containers/food/snacks/grown/potato,
					/obj/item/reagent_containers/food/snacks/grown/carrot,
					/obj/item/reagent_containers/food/snacks/grown/mushroom/chanterelle,
					/obj/item/reagent_containers/food/snacks/grown/onion,
					/obj/item/reagent_containers/food/snacks/grown/pumpkin)
	crate_name = "veggie crate"

//////////////////////////////////////////////////////////////////////////////
//////////////////////////// Hydroponics /////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/organic/hydroponics/beekeeping_suits
	name = "Beekeeper Suit Crate"
	desc = "Bee business booming? Better be benevolent and boost botany by bestowing bi-Beekeeper-suits! Contains two beekeeper suits and matching headwear."
	cost = 1300
	contains = list(/obj/item/clothing/head/beekeeper_head,
					/obj/item/clothing/suit/beekeeper_suit,
					/obj/item/clothing/head/beekeeper_head,
					/obj/item/clothing/suit/beekeeper_suit)
	crate_name = "beekeeper suits"
	crate_type = /obj/structure/closet/crate/hydroponics

/datum/supply_pack/organic/hydroponics/beekeeping_fullkit
	name = "Beekeeping Starter Crate"
	desc = "BEES BEES BEES. Contains three honey frames, a beekeeper suit & helmet, flyswatter, bee house, and, of course, a pure-bred Nanotrasen-Standardized Queen Bee!"
	cost = 1800
	contains = list(/obj/structure/beebox/unwrenched,
					/obj/item/honey_frame,
					/obj/item/honey_frame,
					/obj/item/honey_frame,
					/obj/item/queen_bee/bought,
					/obj/item/clothing/head/beekeeper_head,
					/obj/item/clothing/suit/beekeeper_suit,
					/obj/item/melee/flyswatter)
	crate_name = "beekeeping starter crate"
	crate_type = /obj/structure/closet/crate/hydroponics

/datum/supply_pack/organic/hydroponics/hydrotank
	name = "Hydroponics Backpack Crate"
	desc = "Bring on the flood with this high-capacity backpack crate. Contains 500 units of life-giving H2O. Requires hydroponics access to open."
	cost = 1200
	access = list(ACCESS_HYDROPONICS, ACCESS_BOS)
	contains = list(/obj/item/watertank)
	crate_name = "hydroponics backpack crate"
	crate_type = /obj/structure/closet/crate/secure
/*
/datum/supply_pack/organic/hydroponics/maintgarden
	name = "Maintenance Garden Crate"
	desc = "Set up your own tiny paradise with do-it-yourself botany kit. Contains sandstone for dirt plots, pest spray, ammonia, a portable seed generator, basic botanical tools, and some seeds to start off with."
	cost = 2700
	contains = list(/obj/item/storage/bag/plants/portaseeder,
					/obj/item/reagent_containers/spray/pestspray,
					/obj/item/stack/sheet/mineral/sandstone/twelve,
					/obj/item/reagent_containers/glass/bucket,
					/obj/item/reagent_containers/glass/bottle/ammonia,
					/obj/item/reagent_containers/glass/bottle/ammonia,
					/obj/item/hatchet,
					/obj/item/cultivator,
					/obj/item/plant_analyzer,
					/obj/item/clothing/gloves/botanic_leather,
					/obj/item/flashlight,
					/obj/item/seeds/carrot,
					/obj/item/seeds/carrot,
					/obj/item/seeds/tower,
					/obj/item/seeds/tower,
					/obj/item/seeds/watermelon,
					/obj/item/seeds/watermelon,
					/obj/item/seeds/grass,
					/obj/item/seeds/grass)
	crate_name = "maint garden crate"
	crate_type = /obj/structure/closet/crate/hydroponics
*/
/datum/supply_pack/organic/seeds
	name = "Seeds Crate"
	desc = "Big things have small beginnings. Contains fourteen different seeds."
	cost = 1250
	contains = list(/obj/item/seeds/chili,
					/obj/item/seeds/berry,
					/obj/item/seeds/corn,
					/obj/item/seeds/eggplant,
					/obj/item/seeds/tomato,
					/obj/item/seeds/soya,
					/obj/item/seeds/wheat,
					/obj/item/seeds/wheat/rice,
					/obj/item/seeds/carrot,
					/obj/item/seeds/sunflower,
					/obj/item/seeds/chanterelle,
					/obj/item/seeds/potato,
					/obj/item/seeds/sugarcane,
					/obj/item/seeds/ambrosia)
	crate_name = "seeds crate"
	crate_type = /obj/structure/closet/crate/hydroponics

/datum/supply_pack/organic/exoticseeds
	name = "Seeds Crate (Exotic)"
	desc = "Any entrepreneuring botanist's dream. Contains twelve different seeds, including two mystery seeds!"
	cost = 1500
	contains = list(/obj/item/seeds/nettle,
					/obj/item/seeds/plump,
					/obj/item/seeds/liberty,
					/obj/item/seeds/amanita,
					/obj/item/seeds/reishi,
					/obj/item/seeds/banana,
					/obj/item/seeds/eggplant/eggy,
					/obj/item/seeds/poppy/lily/trumpet,
					/obj/item/seeds/random,
					/obj/item/seeds/random)
	crate_name = "exotic seeds crate"
	crate_type = /obj/structure/closet/crate/hydroponics

/datum/supply_pack/organic/wastelandseeds
	name = "Seeds Crate (Wasteland)"
	desc = "A choice selection of the most medicinal herb seeds the wastes have to offer."
	cost = 1500
	contains = list(/obj/item/seeds/poppy/broc,
					/obj/item/seeds/poppy/broc,
					/obj/item/seeds/buffalogourd,
					/obj/item/seeds/coyotetobacco,
					/obj/item/seeds/mutfruit,
					/obj/item/seeds/xander,
					/obj/item/seeds/xander,
					/obj/item/seeds/datura,
					/obj/item/seeds/horsenettle)
	crate_name = "wasteland seeds crate"
	crate_type = /obj/structure/closet/crate/hydroponics

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////// Livestock ///////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/organic/animal_feed
	name = "Animal Feed Crate"
	desc = "Feed for livestock, like cows and hens. Contains fifty Wheat bundles and fifty Oat bundles."
	cost = 1500
	contains = list(/obj/item/reagent_containers/food/snacks/grown/wheat,
					/obj/item/reagent_containers/food/snacks/grown/oat)
	crate_name = "animal feed crate"
	crate_type = /obj/structure/closet/crate/freezer

/datum/supply_pack/organic/animal_feed/generate()
	. = ..()
	for(var/i in 1 to 49)
		new /obj/item/reagent_containers/food/snacks/grown/wheat(.)


/datum/supply_pack/organic/parrot
	name = "Bird Crate"
	desc = "Contains five expert telecommunication birds."
	cost = 500000
	contains = list(/mob/living/simple_animal/parrot)
	crate_name = "parrot crate"

/datum/supply_pack/organic/parrot/generate()
	. = ..()
	for(var/i in 1 to 4)
		new /mob/living/simple_animal/parrot(.)
	if(prob(1))
		new /mob/living/simple_animal/parrot/clock_hawk(.)

/datum/supply_pack/organic/butterfly
	name = "Butterflies Crate"
	desc = "Not a very dangerous insect, but they do give off a better image than, say, flies or cockroaches."//is that a motherfucking worm reference
	contraband = TRUE
	cost = 5000
	contains = list(/mob/living/simple_animal/butterfly)
	crate_name = "entomology samples crate"

/datum/supply_pack/organic/butterfly/generate()
	. = ..()
	for(var/i in 1 to 49)
		new /mob/living/simple_animal/butterfly(.)

/datum/supply_pack/organic/cat
	name = "Cat Crate"
	desc = "The cat goes meow! Comes with a collar and a nice cat toy! Cheeseburger not included."//i can't believe im making this reference
	cost = 5000 //Cats are worth as much as corgis.
	contains = list(/mob/living/simple_animal/pet/cat,
					/obj/item/clothing/neck/petcollar,
					/obj/item/toy/cattoy)
	crate_name = "cat crate"

/datum/supply_pack/organic/cat/generate()
	. = ..()
	if(prob(50))
		var/mob/living/simple_animal/pet/cat/C = locate() in .
		qdel(C)
		new /mob/living/simple_animal/pet/cat/Proc(.)

/datum/supply_pack/organic/chick
	name = "Chicken Crate"
	desc = "The chicken goes bwaak!"
	cost = 2000
	contains = list(/mob/living/simple_animal/chick)
	crate_name = "chicken crate"

/* /datum/supply_pack/organic/crab
	name = "Crab Rocket"
	desc = "CRAAAAAAB ROCKET. CRAB ROCKET. CRAB ROCKET. CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB ROCKET. CRAFT. ROCKET. BUY. CRAFT ROCKET. CRAB ROOOCKET. CRAB ROOOOCKET. CRAB CRAB CRAB CRAB CRAB CRAB CRAB CRAB ROOOOOOOOOOOOOOOOOOOOOOCK EEEEEEEEEEEEEEEEEEEEEEEEE EEEETTTTTTTTTTTTAAAAAAAAA AAAHHHHHHHHHHHHH. CRAB ROCKET. CRAAAB ROCKEEEEEEEEEGGGGHHHHTT CRAB CRAB CRAABROCKET CRAB ROCKEEEET."//fun fact: i actually spent like 10 minutes and transcribed the entire video.
	cost = 5000
	contains = list(/mob/living/simple_animal/crab)
	crate_name = "look sir free crabs"
	DropPodOnly = TRUE 
/datum/supply_pack/organic/crab/generate()
	. = ..()
	for(var/i in 1 to 49)
		new /mob/living/simple_animal/crab(.) */

/datum/supply_pack/organic/corgi
	name = "Corgi Crate"
	desc = "Considered the optimal dog breed by thousands of research scientists, this Corgi is but one dog from the millions of Ian's noble bloodline. Comes with a cute collar!"
	cost = 5000
	contains = list(/mob/living/simple_animal/pet/dog/corgi,
					/obj/item/clothing/neck/petcollar)
	crate_name = "corgi crate"

/datum/supply_pack/organic/corgi/generate()
	. = ..()
	if(prob(50))
		var/mob/living/simple_animal/pet/dog/corgi/D = locate() in .
		if(D.gender == FEMALE)
			qdel(D)
			new /mob/living/simple_animal/pet/dog/corgi/Lisa(.)

/datum/supply_pack/organic/corgis/exotic
	name = "Exotic Corgi Crate"
	desc = "Corgis fit for a king, these corgis come in a unique color to signify their superiority. Comes with a cute collar!"
	cost = 5500
	contains = list(/mob/living/simple_animal/pet/dog/corgi/exoticcorgi,
					/obj/item/clothing/neck/petcollar)
	crate_name = "exotic corgi crate"

/datum/supply_pack/organic/cow
	name = "Cow Crate"
	desc = "The cow goes moo!"
	cost = 3000
	contains = list(/mob/living/simple_animal/cow)
	crate_name = "cow crate"

/datum/supply_pack/organic/fox
	name = "Fox Crate"
	desc = "The fox goes...? Comes with a collar!"//what does the fox say
	cost = 5000
	contains = list(/mob/living/simple_animal/pet/fox,
					/obj/item/clothing/neck/petcollar)
	crate_name = "fox crate"

/datum/supply_pack/organic/goat
	name = "Goat Crate"
	desc = "The goat goes baa! Warranty void if used as a replacement for Pete."
	cost = 2500
	contains = list(/mob/living/simple_animal/hostile/retaliate/goat)
	crate_name = "goat crate"

/datum/supply_pack/organic/goose
	name = "Goose Crate"
	desc = "Angry and violent birds. Evil, evil creatures."
	cost = 2500
	contains = list(/mob/living/simple_animal/hostile/retaliate/goose)
	crate_name = "goose crate"

/datum/supply_pack/organic/pug
	name = "Pug Crate"
	desc = "Like a normal dog, but... squished. Comes with a nice collar!"
	cost = 5000
	contains = list(/mob/living/simple_animal/pet/dog/pug,
					/obj/item/clothing/neck/petcollar)
	crate_name = "pug crate"

/datum/supply_pack/organic/snake
	name = "Snake Crate"
	desc = "Tired of these MOTHER FUCKING snakes on this MOTHER FUCKING space station? Then this isn't the crate for you. Contains three poisonous snakes."
	cost = 3000
	contains = list(/mob/living/simple_animal/hostile/retaliate/poison/snake,
					/mob/living/simple_animal/hostile/retaliate/poison/snake,
					/mob/living/simple_animal/hostile/retaliate/poison/snake)
	crate_name = "snake crate"

/datum/supply_pack/organic/mouse
	name = "Mouse Crate"
	desc = "Good for snakes and lizards of all ages. Contains ~12 feeder mice."
	cost = 2000
	contains = list(/mob/living/simple_animal/mouse,)
	crate_name = "mouse crate"

/datum/supply_pack/organic/mouse/generate()
	. = ..()
	for(var/i in 1 to 11)
		new /mob/living/simple_animal/mouse(.)

/* /datum/supply_pack/organic/secbat
	name = "Security Bat Crate"
	desc = "Contains five security bats, perfect to Bat-up any security officer."
	cost = 2500
	contains = list(/mob/living/simple_animal/hostile/retaliate/bat/secbat,
					/mob/living/simple_animal/hostile/retaliate/bat/secbat,
					/mob/living/simple_animal/hostile/retaliate/bat/secbat,
					/mob/living/simple_animal/hostile/retaliate/bat/secbat,
					/mob/living/simple_animal/hostile/retaliate/bat/secbat)
	crate_name = "security bat crate" */

//////////////////////////////////////////////////////////////////////////////
/////////////////////////////////// Misc /////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/organic/party
	name = "Party Equipment"
	desc = "Celebrate both life and death in the wastes! Contains seven colored glowsticks, four beers, two ales, a drinking shaker, and a bottle of patron & goldschlager!"
	cost = 2000
	contains = list(/obj/item/storage/box/drinkingglasses,
					/obj/item/reagent_containers/food/drinks/shaker,
					/obj/item/reagent_containers/food/drinks/bottle/patron,
					/obj/item/reagent_containers/food/drinks/bottle/goldschlager,
					/obj/item/reagent_containers/food/drinks/ale,
					/obj/item/reagent_containers/food/drinks/ale,
					/obj/item/reagent_containers/food/drinks/beer,
					/obj/item/reagent_containers/food/drinks/beer,
					/obj/item/reagent_containers/food/drinks/beer,
					/obj/item/reagent_containers/food/drinks/beer,
					/obj/item/flashlight/glowstick,
					/obj/item/flashlight/glowstick/red,
					/obj/item/flashlight/glowstick/blue,
					/obj/item/flashlight/glowstick/cyan,
					/obj/item/flashlight/glowstick/orange,
					/obj/item/flashlight/glowstick/yellow,
					/obj/item/flashlight/glowstick/pink)
	crate_name = "party equipment crate"

/datum/supply_pack/organic/vday
	name = "Surplus Valentine Crate"
	desc = "Turns out we got warehouses of this love-y dove-y crap. We're sending out small bargain buddle of Valentine gear. This crate has two boxes of chocolate, three poppy flowers, five candy hearts, and three cards."
	cost = 3000
	contraband = TRUE
	contains = list(/obj/item/storage/fancy/heart_box,
					/obj/item/storage/fancy/heart_box,
					/obj/item/reagent_containers/food/snacks/grown/poppy,
					/obj/item/reagent_containers/food/snacks/grown/poppy,
					/obj/item/reagent_containers/food/snacks/grown/poppy,
					/obj/item/reagent_containers/food/snacks/candyheart,
					/obj/item/reagent_containers/food/snacks/candyheart,
					/obj/item/reagent_containers/food/snacks/candyheart,
					/obj/item/reagent_containers/food/snacks/candyheart,
					/obj/item/reagent_containers/food/snacks/candyheart,
					/obj/item/valentine,
					/obj/item/valentine,
					/obj/item/valentine)
	crate_name = "valentine crate"
	crate_type = /obj/structure/closet/crate/secure
