/obj/structure/closet/secure_closet/bar
	name = "booze storage"
	req_access = list(ACCESS_TOWN_BAR)
	icon_state = "cabinet"
	resistance_flags = FLAMMABLE
	max_integrity = 70
	material_drop = /obj/item/stack/sheet/mineral/wood
	cutting_tool = /obj/item/screwdriver

/obj/structure/closet/secure_closet/bar/PopulateContents()
	..()
	for(var/i in 1 to 10)
		new /obj/item/reagent_containers/food/drinks/beer( src )
