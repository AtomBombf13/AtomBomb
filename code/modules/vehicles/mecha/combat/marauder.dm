/obj/vehicle/sealed/mecha/combat/marauder
	desc = "A retrofit of the orginal 'Durand' exosuit designed for extended combat operations, the shield projector has been replaced with a smoke-screen dispenser and a sophisticated sensor suite."
	name = "\improper Marauder"
	icon_state = "marauder"
	movedelay = 5
	max_integrity = 600
	armor = list("melee" = 50, "bullet" = 50, "laser" = 30, "energy" = 30, "bomb" = 50, "rad" = 75)
	max_temperature = 60000
	resistance_flags = LAVA_PROOF | FIRE_PROOF | ACID_PROOF
	wreckage = /obj/structure/mecha_wreckage/marauder
	internal_damage_threshold = 20
	force = 50
	max_equip = 3

/obj/vehicle/sealed/mecha/combat/marauder/generate_actions()
	. = ..()
	initialize_passenger_action_type(/datum/action/vehicle/sealed/mecha/mech_smoke)
	initialize_passenger_action_type(/datum/action/vehicle/sealed/mecha/mech_zoom)

/obj/vehicle/sealed/mecha/combat/marauder/loaded/Initialize()
	. = ..()
	var/obj/item/mecha_parts/mecha_equipment/ME = new /obj/item/mecha_parts/mecha_equipment/thrusters/ion(src)
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/weapon/energy/pulse(src)
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/missile_rack(src)
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/tesla_energy_relay(src)
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/armor/antiproj_armor_booster(src)
	ME.attach(src)
	max_ammo()

/obj/vehicle/sealed/mecha/combat/marauder/seraph
	desc = "Heavy-duty, command-type exosuit. This is a custom model, utilized only by high-ranking military personnel."
	name = "\improper Seraph"
	icon_state = "seraph"
	movedelay = 3
	max_integrity = 700
	armor = list("melee" = 60, "bullet" = 60, "laser" = 50, "energy" = 50, "bomb" = 75, "rad" = 100)
	wreckage = /obj/structure/mecha_wreckage/seraph
	internal_damage_threshold = 20
	force = 60
	max_equip = 6

/obj/vehicle/sealed/mecha/combat/marauder/seraph/Initialize()
	. = ..()
	var/obj/item/mecha_parts/mecha_equipment/ME = new /obj/item/mecha_parts/mecha_equipment/thrusters/ion(src)
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/weapon/energy/pulse(src)
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/missile_rack(src)
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/teleporter(src)
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/tesla_energy_relay(src)
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/armor/antiproj_armor_booster(src)
	ME.attach(src)
	max_ammo()

/obj/vehicle/sealed/mecha/combat/marauder/mauler
	desc = "Heavy-duty, combat exosuit, developed off of the existing Marauder model."
	name = "\improper Mauler"
	icon_state = "mauler"
	max_integrity = 650
	armor = list("melee" = 55, "bullet" = 55, "laser" = 30, "energy" = 30, "bomb" = 50, "rad" = 75)
	wreckage = /obj/structure/mecha_wreckage/mauler
	max_equip = 6
	destruction_sleep_duration = 20

/obj/vehicle/sealed/mecha/combat/marauder/mauler/Initialize()
	. = ..()
	var/obj/item/mecha_parts/mecha_equipment/ME = new /obj/item/mecha_parts/mecha_equipment/thrusters/ion(src)
	ME.attach(src)

/obj/vehicle/sealed/mecha/combat/marauder/mauler/loaded/Initialize()
	. = ..()
	var/obj/item/mecha_parts/mecha_equipment/ME = new /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/lmg(src)
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/scattershot(src)
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/missile_rack(src)
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/tesla_energy_relay(src)
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/armor/antiproj_armor_booster(src)
	ME.attach(src)
	max_ammo()


