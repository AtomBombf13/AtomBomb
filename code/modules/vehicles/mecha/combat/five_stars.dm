/obj/vehicle/sealed/mecha/combat/five_stars
	desc = "A state of the art tank deployed by the Spinward Stellar Coalition National Guard."
	name = "\improper Tank"
//	icon = 'icons/mecha/mecha_96x96.dmi'
	icon_state = "five_stars"
	armor = list("melee" = 100, "bullet" = 65, "laser" = 65, "energy" = 60, "bomb" = 75, "bio" = 100, "rad" = 50, "fire" = 100, "acid" = 100)
	movedelay = 4
	max_integrity = 800
	pixel_x = -32
	pixel_y = -32

/obj/vehicle/sealed/mecha/combat/five_stars/Initialize()
	. = ..()
	var/obj/item/mecha_parts/mecha_equipment/ME = new /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/missile_rack/spacecops(src)
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/lmg(src)
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/tesla_energy_relay(src)
	ME.attach(src)
	max_ammo()
