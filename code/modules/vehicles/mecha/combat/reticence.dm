/obj/vehicle/sealed/mecha/combat/reticence
	desc = "A silent, fast, and nigh-invisible miming exosuit. Popular among mimes and mime assassins."
	name = "\improper reticence"
	icon_state = "reticence"
	movedelay = 2
	allow_diagonal_movement = TRUE
	max_integrity = 100
	armor = list("melee" = 15, "bullet" = 25, "laser" = 25, "energy" = 25, "bomb" = 15, "bio" = 100, "rad" = 50, "fire" = 100, "acid" = 100)
	max_temperature = 15000
	wreckage = /obj/structure/mecha_wreckage/reticence
	mecha_flags =  CANSTRAFE | IS_ENCLOSED | HAS_LIGHTS
	internal_damage_threshold = 25
	max_equip = 2
	step_energy_drain = 3
	color = "#87878715"
	stepsound = null
	turnsound = null

/obj/vehicle/sealed/mecha/combat/reticence/loaded/Initialize()
	. = ..()
	var/obj/item/mecha_parts/mecha_equipment/ME = new /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/silenced
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/rcd //HAHA IT MAKES WALLS GET IT
	ME.attach(src)
