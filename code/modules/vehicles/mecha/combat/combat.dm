/obj/vehicle/sealed/mecha/combat
	force = 30
	internals_req_access = list()
	internal_damage_threshold = 30
	armor = ARMOR_VALUE_HEAVY
	mouse_pointer = 'icons/mecha/mecha_mouse.dmi'
	destruction_sleep_duration = 40
	exit_delay = 40
	explode_on_death = TRUE
	stepsound = 'sound/mecha/neostep2.ogg'
	mecha_flags = ADDING_ACCESS_POSSIBLE | IS_ENCLOSED | HAS_LIGHTS | CANSTRAFE
	light_range = 6
	light_power = 1
	max_equip = 4
	step_energy_drain = 50

/obj/vehicle/sealed/mecha/combat/restore_equipment()
	mouse_pointer = 'icons/mecha/mecha_mouse.dmi'
	. = ..()

/obj/vehicle/sealed/mecha/combat/proc/max_ammo() //Max the ammo stored for Nuke Ops mechs, or anyone else that calls this
	for(var/obj/item/I in equipment)
		if(istype(I, /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/))
			var/obj/item/mecha_parts/mecha_equipment/weapon/ballistic/gun = I
			gun.projectiles_cache = gun.projectiles_cache_max
