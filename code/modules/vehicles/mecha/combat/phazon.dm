/obj/vehicle/sealed/mecha/combat/phazon
	desc = "This is a Phazon exosuit. The pinnacle of scientific research and pride of Nanotrasen, it uses cutting edge bluespace technology and expensive materials."
	name = "\improper Phazon"
	icon_state = "phazon"
	movedelay = 2
	allow_diagonal_movement = TRUE
	step_energy_drain = 3
	max_integrity = 300
	armor = list("melee" = 35, "bullet" = 35, "laser" = 35, "energy" = 35, "bomb" = 35, "rad" = 100)
	max_temperature = 25000
	wreckage = /obj/structure/mecha_wreckage/phazon
	internal_damage_threshold = 15
	force = 15
	phase_state = "phazon-phase"

/obj/vehicle/sealed/mecha/combat/phazon/generate_actions()
	. = ..()
	initialize_passenger_action_type(/datum/action/vehicle/sealed/mecha/mech_toggle_phasing)
	initialize_passenger_action_type(/datum/action/vehicle/sealed/mecha/mech_switch_damtype)
