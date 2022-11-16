/obj/vehicle/sealed/mecha/combat/honker
	desc = "Produced by \"Tyranny of Honk, INC\", this exosuit is designed as heavy clown-support. Used to spread the fun and joy of life. HONK!"
	name = "\improper H.O.N.K"
	icon_state = "honker"
	movedelay = 3
	allow_diagonal_movement = TRUE
	max_integrity = 200
	internal_damage_threshold = 0
	armor = list("melee" = -20, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 100, "bio" = 100, "rad" = 100, "fire" = 100, "acid" = 100)
	max_temperature = 25000
	wreckage = /obj/structure/mecha_wreckage/honker
	mecha_flags = CANSTRAFE | IS_ENCLOSED | HAS_LIGHTS
	max_equip = 5
	var/squeak = TRUE

/obj/vehicle/sealed/mecha/combat/honker/play_stepsound()
	if(squeak)
		playsound(src, "clownstep", 70, 1)
	squeak = !squeak
	
