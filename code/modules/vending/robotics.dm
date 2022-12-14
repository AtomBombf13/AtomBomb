//This one's from bay12
/obj/machinery/vending/robotics
	name = "\improper RobCo Deluxe"
	desc = "All the tools you need to create your own securitron army."
	icon_state = "robotics"
	icon_deny = "robotics-deny"
	products = list(/obj/item/clothing/suit/toggle/labcoat = 4,
					/obj/item/clothing/under/rank/rnd/roboticist = 4,
					/obj/item/stack/cable_coil = 4,
					/obj/item/assembly/flash/handheld = 4,
					/obj/item/stock_parts/cell/high = 12,
					/obj/item/assembly/prox_sensor = 3,
					/obj/item/assembly/signaler = 3,
					/obj/item/healthanalyzer = 3,
					/obj/item/scalpel = 2,
					/obj/item/circular_saw = 2,
					/obj/item/tank/internals/anesthetic = 2,
					/obj/item/clothing/mask/breath/medical = 5,
					/obj/item/screwdriver = 5,
					/obj/item/crowbar = 5)
	armor = list("melee" = 100, "bullet" = 100, "laser" = 100, "energy" = 100, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 50)
	resistance_flags = FIRE_PROOF
	default_price = PRICE_EXPENSIVE
	payment_department = ACCOUNT_SCI
	cost_multiplier_per_dept = list(ACCOUNT_SCI = 0)
