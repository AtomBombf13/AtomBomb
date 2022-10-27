/obj/vehicle/sealed/mecha/combat/gygax
	desc = "A lightweight, security exosuit. Popular among private and corporate security."
	name = "\improper Gygax"
	icon_state = "gygax"
	movedelay = 3
	max_integrity = 350
	armor = list("melee" = 30, "bullet" = 25, "laser" = 30, "energy" = 30, "bomb" = 20)
	max_temperature = 25000
	leg_overload_coeff = 300
	overload_step_energy_drain_min = 300
	wreckage = /obj/structure/mecha_wreckage/gygax
	internal_damage_threshold = 25
	normal_step_energy_drain = 3

/obj/vehicle/sealed/mecha/combat/gygax/dark
	desc = "A lightweight exosuit, painted in a dark scheme. This model appears to have some modifications."
	name = "\improper Dark Gygax"
	icon_state = "darkgygax"
	max_integrity = 300
	armor = list("melee" = 40, "bullet" = 40, "laser" = 50, "energy" = 50, "bomb" = 30, "rad" = 75)
	max_temperature = 35000
	leg_overload_coeff = 70
	force = 35
	wreckage = /obj/structure/mecha_wreckage/gygax/dark
	max_equip = 5
	destruction_sleep_duration = 20

/obj/vehicle/sealed/mecha/combat/gygax/dark/loaded/Initialize()
	. = ..()
	var/obj/item/mecha_parts/mecha_equipment/ME = new /obj/item/mecha_parts/mecha_equipment/thrusters/ion(src)
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/scattershot
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/armor/anticcw_armor_booster
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/armor/antiproj_armor_booster
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/tesla_energy_relay
	ME.attach(src)
	max_ammo()

/obj/vehicle/sealed/mecha/combat/gygax/dark/add_cell(obj/item/stock_parts/cell/C=null)
	if(C)
		C.forceMove(src)
		cell = C
		return
	cell = new /obj/item/stock_parts/cell/bluespace(src)


/obj/vehicle/sealed/mecha/combat/gygax/generate_actions()
	. = ..()
	initialize_passenger_action_type(/datum/action/vehicle/sealed/mecha/mech_overload_mode)
