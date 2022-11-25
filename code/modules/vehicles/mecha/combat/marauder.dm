/obj/vehicle/sealed/mecha/combat/marauder
	desc = "A retrofit of the orginal 'Durand' exosuit designed for extended combat operations, the shield projector has been replaced with a smoke-screen dispenser and a sophisticated sensor suite."
	name = "\improper Marauder"
	icon_state = "marauder"
	movedelay = 5
	max_integrity = 600
	armor = list("melee" = 45, "bullet" = 55, "laser" = 30, "energy" = 30, "bomb" = 50, "bio" = 100, "rad" = 75, "fire" = 100, "acid" = 100)
	max_temperature = 60000
	resistance_flags = LAVA_PROOF | FIRE_PROOF | ACID_PROOF
	wreckage = /obj/structure/mecha_wreckage/marauder
	internal_damage_threshold = 20
	force = 50
	max_equip = 4

/obj/vehicle/sealed/mecha/combat/marauder/moved_inside(mob/living/carbon/human/H)
	. = ..()
	if(. && !HAS_TRAIT(H, TRAIT_MECHA_THERMAL || TRAIT_MECHA_NVG))
		ADD_TRAIT(H, TRAIT_MECHA_THERMAL, VEHICLE_TRAIT)
		H.update_sight()

/obj/vehicle/sealed/mecha/combat/marauder/remove_occupant(mob/living/carbon/human/H)
	if(isliving(H) && HAS_TRAIT_FROM(H, TRAIT_MECHA_THERMAL, VEHICLE_TRAIT))
		REMOVE_TRAIT(H, TRAIT_MECHA_THERMAL, VEHICLE_TRAIT)
		H.update_sight()
	return ..()

/obj/vehicle/sealed/mecha/combat/marauder/mmi_moved_inside(obj/item/mmi/M, mob/user)
	. = ..()
	if(. && !HAS_TRAIT(M, TRAIT_MECHA_THERMAL))
		var/mob/living/brain/B = M.brainmob
		ADD_TRAIT(B, TRAIT_MECHA_THERMAL, VEHICLE_TRAIT)
		B.update_sight()

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
	armor = list("melee" = 60, "bullet" = 65, "laser" = 50, "energy" = 50, "bomb" = 75, "bio" = 100, "rad" = 100, "fire" = 100, "acid" = 100)
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
	armor = list("melee" = 55, "bullet" = 60, "laser" = 35, "energy" = 30, "bomb" = 55, "bio" = 100, "rad" = 90, "fire" = 100, "acid" = 100)
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


