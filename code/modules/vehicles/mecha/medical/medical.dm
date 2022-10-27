/obj/vehicle/sealed/mecha/medical
	internal_damage_threshold = 35
	allow_diagonal_movement = TRUE
	mecha_flags = ADDING_ACCESS_POSSIBLE | CANSTRAFE | IS_ENCLOSED | HAS_LIGHTS
	light_range = 8
	light_power = 2
	enter_delay = 20
	exit_delay = 10

/obj/vehicle/sealed/mecha/medical/moved_inside(mob/living/carbon/human/H)
	. = ..()
	if(.)
		var/datum/atom_hud/hud = GLOB.huds[DATA_HUD_MEDICAL_ADVANCED]
		hud.add_hud_to(H)

/obj/vehicle/sealed/mecha/medical/remove_occupant(mob/M)
	if(isliving(M))
		var/mob/living/L = M
		var/datum/atom_hud/hud = GLOB.huds[DATA_HUD_MEDICAL_ADVANCED]
		hud.remove_hud_from(L)
	return ..()

/obj/vehicle/sealed/mecha/medical/mmi_moved_inside(obj/item/mmi/M, mob/user)
	. = ..()
	if(.)
		var/datum/atom_hud/hud = GLOB.huds[DATA_HUD_MEDICAL_ADVANCED]
		var/mob/living/brain/B = M.brainmob
		hud.add_hud_to(B)
