/obj/vehicle/sealed/mecha/working
	internal_damage_threshold = 40
	allow_diagonal_movement = TRUE
	mecha_flags = ADDING_ACCESS_POSSIBLE | CANSTRAFE | IS_ENCLOSED | HAS_LIGHTS
	light_range = 8
	light_power = 2

/obj/vehicle/sealed/mecha/working/Move()
	. = ..()
	if(.)
		collect_ore()

/**
/  * Handles collecting ore.
/  *
/  * Checks for a hydraulic clamp or ore box manager and if it finds an ore box inside them puts ore in the ore box.
/  */

/obj/vehicle/sealed/mecha/working/proc/collect_ore()
	if((locate(/obj/item/mecha_parts/mecha_equipment/hydraulic_clamp) in equipment))
		var/obj/structure/ore_box/ore_box = locate(/obj/structure/ore_box) in contents
		if(ore_box)
			for(var/obj/item/stack/ore/ore in range(1, src))
				if(ore.Adjacent(src) && ((get_dir(src, ore) & dir) || ore.loc == loc)) //we can reach it and it's in front of us? grab it!
					ore.forceMove(ore_box)

/obj/vehicle/sealed/mecha/working/Bump(atom/obstacle)
	if(istype(selected, /obj/item/mecha_parts/mecha_equipment/drill) && istype(obstacle, /turf/closed/mineral))
		var/obj/item/mecha_parts/mecha_equipment/drill/thedrill = selected
		for(var/mob/M in occupants)
			thedrill.action(M, obstacle)
			break
	..()

/obj/vehicle/sealed/mecha/working/moved_inside(mob/living/carbon/human/H)
	. = ..()
	if(. && !HAS_TRAIT(H, TRAIT_MECHA_MESON))
		ADD_TRAIT(H, TRAIT_MECHA_MESON, VEHICLE_TRAIT)
		H.update_sight()

/obj/vehicle/sealed/mecha/working/remove_occupant(mob/living/carbon/human/H)
	if(isliving(H) && HAS_TRAIT_FROM(H, TRAIT_MECHA_MESON, VEHICLE_TRAIT))
		REMOVE_TRAIT(H, TRAIT_MECHA_MESON, VEHICLE_TRAIT)
		H.update_sight()
	return ..()

/obj/vehicle/sealed/mecha/working/mmi_moved_inside(obj/item/mmi/M, mob/user)
	. = ..()
	if(. && !HAS_TRAIT(M, TRAIT_MECHA_MESON))
		var/mob/living/brain/B = M.brainmob
		ADD_TRAIT(B, TRAIT_MECHA_MESON, VEHICLE_TRAIT)
		B.update_sight()
