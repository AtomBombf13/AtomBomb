/obj/vehicle/sealed/mecha/medical/medigax
	desc = "A pre-War medical exosuit based on the Gygax platform. It features a robust suspension to safetly transport patients over rough terrain. The exterior plating is advertised as able to withstand minor impacts and is anti-microbial to boot."
	name = "\improper Medical Gygax"
	icon_state = "medigax"
	allow_diagonal_movement = TRUE
	movedelay = 2.5
	max_integrity = 350
	armor = list("melee" = 25, "bullet" = 25, "laser" = 30, "energy" = 20, "bomb" = 15, "bio" = 100, "rad" = 75, "fire" = 100, "acid" = 100)
	max_temperature = 25000
	wreckage = /obj/structure/mecha_wreckage/odysseus
	internal_damage_threshold = 25
	step_energy_drain = 6
	infra_luminosity = 6
