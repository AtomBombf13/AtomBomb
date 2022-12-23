/obj/item/ammo_box/magazine/internal/speargun
	name = "speargun internal magazine"
	ammo_type = /obj/item/ammo_casing/caseless/magspear
	caliber = list(CALIBER_SPEAR)
	max_ammo = 1

/obj/item/ammo_box/magazine/internal/minigun
	name = "gatling gun fusion core"
	ammo_type = /obj/item/ammo_casing/caseless/laser/gatling
	caliber = list(CALIBER_LASERGATLING)
	max_ammo = 5000

/obj/item/ammo_box/magazine/internal/minigunbal
	name = "minigun ammo pack (5.56mm)"
	ammo_type = /obj/item/ammo_casing/a556
	caliber = list(CALIBER_556)
	max_ammo = 2500

/obj/item/ammo_box/magazine/internal/minigunbal5mm
	name = "minigun ammo pack"
	ammo_type = /obj/item/ammo_casing/m5mm
	caliber = list(CALIBER_5MM)
	max_ammo = 480

/obj/item/ammo_box/magazine/internal/m2flamethrower
	name = "m2 flamethower fuel tank"
	ammo_type = /obj/item/ammo_casing/caseless/flamethrower
	caliber = list(CALIBER_FUEL)
	max_ammo = 12 //6 bursts, iirc its about the same ammount as the IRL M2

/obj/item/ammo_box/magazine/internal/fo4plasma
	name = "plasma canister mag (27rnd)"
	desc = "magazine for plasma canisters. if you see this, there is a bug"
	caliber = list(CALIBER_MUSKET_PLASMA)
	max_ammo = 27 //lore accurate for boosted plasma guns


// BETA STUFF // Obsolete
/obj/item/ammo_box/magazine/internal/shot/lethal/test
	ammo_type = /obj/item/ammo_casing/shotgun/buckshot/test
	max_ammo = 30
