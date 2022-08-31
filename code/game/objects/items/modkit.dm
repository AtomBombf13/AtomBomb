/obj/item/modkit
	name = "modkit"
	desc = "A small container of parts made to modify a specific item. Use the target item on this kit to convert it."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "modkit"
	w_class = WEIGHT_CLASS_NORMAL
	var/list/target_items = list()
	var/result_item = null

/obj/item/modkit/pre_attack(obj/item/I, mob/user)
	if(is_type_in_list(I, target_items))
		var/obj/item/R = new result_item(get_turf(user))
		to_chat(user, span_notice("You apply the [src] to [I], using the custom parts to turn it into [R]."))
		remove_item_from_storage(I)
		qdel(I)
		user.put_in_hands(R)
		qdel(src)
		return TRUE
	else
		return ..()

////////////////////////////////
// ! Player / Donar Modkits ! //
////////////////////////////////

//Talon Company - da bad guys
/obj/item/modkit/talon
	name = "Talon Company Body modkit"
	target_items = list(/obj/item/clothing/suit/armor/medium/combat)
	result_item = /obj/item/clothing/suit/armor/medium/combat/talon

//Mariya Sankinova - custom PA set
/obj/item/modkit/mariarmor
	name = "Modified Wid-west BoS Body modkit"
	target_items = list(/obj/item/clothing/suit/armor/power_armor/t45b,
						/obj/item/clothing/suit/armor/power_armor/t45d,
						/obj/item/clothing/suit/armor/power_armor/t51b)
	result_item = /obj/item/clothing/suit/armor/f13/power_armor/t45d/mari

//Mariya Sankinova - custom PA set
/obj/item/modkit/marihelmet
	name = "Modified Wid-west BOS Helmet modkit"
	target_items = list(/obj/item/clothing/head/helmet/f13/power_armor/t45d,
						/obj/item/clothing/head/helmet/f13/power_armor/t51b)
	result_item = /obj/item/clothing/head/helmet/f13/power_armor/t45d/mari
