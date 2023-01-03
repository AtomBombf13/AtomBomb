//Bluespace crystals, used in telescience and when crushed it will blink you to a random turf.
/obj/item/stack/ore/bluespace_crystal
	name = "ultracite ore"
	desc = "A radioactive glass-like ore, it houses an incredibly potent source of energy."
	icon = 'icons/obj/telescience.dmi'
	icon_state = "bluespace_crystal"
	singular_name = "ultracite ore"
	w_class = WEIGHT_CLASS_TINY
	custom_materials = list(/datum/material/bluespace=MINERAL_MATERIAL_AMOUNT)
	points = 50
	var/blink_range = 8 // The teleport range when crushed/thrown at someone.
	refined_type = /obj/item/stack/sheet/bluespace_crystal
	grind_results = list(/datum/reagent/bluespace = 20)
	merge_type = /obj/item/stack/ore/bluespace_crystal

/obj/item/stack/ore/bluespace_crystal/refined
	name = "refined ultracite"
	points = 0
	refined_type = null
	merge_type = /obj/item/stack/ore/bluespace_crystal/refined

/obj/item/stack/ore/bluespace_crystal/Initialize()
	. = ..()
	pixel_x = rand(-5, 5)
	pixel_y = rand(-5, 5)

/obj/item/stack/ore/bluespace_crystal/get_part_rating()
	return 1

/obj/item/stack/ore/bluespace_crystal/proc/blink_mob(mob/living/L)
	do_teleport(L, get_turf(L), blink_range, asoundin = 'sound/effects/phasein.ogg', channel = TELEPORT_CHANNEL_BLUESPACE)

//Artificial bluespace crystal, doesn't give you much research.
/obj/item/stack/ore/bluespace_crystal/artificial
	name = "artificial ultracite"
	desc = "An artificially made ultracite, it looks delicate."
	custom_materials = list(/datum/material/bluespace=MINERAL_MATERIAL_AMOUNT*0.5)
	blink_range = 4 // Not as good as the organic stuff!
	points = 0 //nice try
	refined_type = null
	grind_results = list(/datum/reagent/bluespace = 10, /datum/reagent/silicon = 20)
	merge_type = /obj/item/stack/ore/bluespace_crystal/artificial

//Polycrystals, aka stacks
/obj/item/stack/sheet/bluespace_crystal
	name = "stable ultracite"
	icon = 'icons/obj/telescience.dmi'
	icon_state = "polycrystal"
	item_state = "sheet-polycrystal"
	singular_name = "stable ultracite"
	desc = "A stable polycrystal, made of fused-together quantum mesh. You could probably break one off."
	custom_materials = list(/datum/material/bluespace=MINERAL_MATERIAL_AMOUNT)
	attack_verb = list("futured", "scienced", "crystalized", "empowered", "energized")
	novariants = TRUE
	grind_results = list(/datum/reagent/bluespace = 20)
	point_value = 30
	var/crystal_type = /obj/item/stack/ore/bluespace_crystal/refined
	merge_type = /obj/item/stack/sheet/bluespace_crystal

/obj/item/stack/sheet/bluespace_crystal/attack_self(mob/user)// to prevent the construction menu from ever happening
	to_chat(user, span_warning("You cannot crush the ultracite in-hand, try breaking one off."))

/obj/item/stack/sheet/bluespace_crystal/on_attack_hand(mob/user, act_intent = user.a_intent, unarmed_attack_flags)
	if(user.get_inactive_held_item() == src)
		if(zero_amount())
			return
		var/BC = new crystal_type(src)
		user.put_in_hands(BC)
		use(1)
		if(!amount)
			to_chat(user, span_notice("You break the final piece of ultracite off."))
		else
			to_chat(user, span_notice("You break off a piece of ultracite."))
	else
		..()
