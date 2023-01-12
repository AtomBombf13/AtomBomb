/obj/machinery/vending/games
	name = "\improper Cat's Paw"
	desc = "Cat's Paw was a pre-War publisher of adult magazines and other entertainment items in the United States."
	product_ads = "Escape the real world for a bit!;Fuel your gambling addiction!;Ruin your friendships!;Paranoid people!;Totally not illegal!;Fun times forever!"
	icon_state = "games"
	products = list(/obj/item/toy/cards/deck = 5,
					/obj/item/storage/box/dice = 10,
					/obj/item/toy/cards/deck/cas = 3,
					/obj/item/toy/cards/deck/cas/black = 3,
					/obj/item/toy/cards/deck/unum = 3)
	contraband = list(/obj/item/dice/fudge = 9)
//	premium = list(/obj/item/melee/skateboard/pro = 3,
//					/obj/item/melee/skateboard/hoverboard = 1)
	refill_canister = /obj/item/vending_refill/games
	default_price = PRICE_CHEAP
	extra_price = PRICE_ALMOST_EXPENSIVE
	payment_department = ACCOUNT_SRV
	cost_multiplier_per_dept = list(ACCOUNT_SRV = 0)

/obj/item/vending_refill/games
	machine_name = "\improper Cat's Paw"
	icon_state = "refill_games"
