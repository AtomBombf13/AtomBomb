// .45 

/obj/item/ammo_casing/c45
	name = ".45 FMJ bullet casing"
	desc = "A .45 FMJ bullet casing."
	caliber = CALIBER_45ACP
	projectile_type = /obj/item/projectile/bullet/c45
	custom_materials = list(
		/datum/material/iron = MATS_PISTOL_MEDIUM_CASING + MATS_PISTOL_MEDIUM_BULLET,
		/datum/material/blackpowder = MATS_PISTOL_MEDIUM_POWDER)


/obj/item/ammo_casing/c45/improvised
	name = "shoddy .45 bullet casing"
	desc = "A handmade .45 bullet casing."
	caliber = CALIBER_45ACP
	projectile_type = /obj/item/projectile/bullet/c45
	custom_materials = list(
		/datum/material/iron = MATS_PISTOL_MEDIUM_CASING + MATS_PISTOL_MEDIUM_BULLET,
		/datum/material/blackpowder = MATS_PISTOL_MEDIUM_POWDER * MATS_AMMO_POWDER_HANDLOAD_MULT)

/obj/item/ammo_casing/c45/incendiary
	name = ".45 incendiary bullet casing"
	desc = "A .45 incendiary bullet casing."
	projectile_type = /obj/item/projectile/bullet/c45/incendiary

/obj/item/ammo_casing/c45/rubber
	name = ".45 rubber bullet casing"
	desc = "A .45 rubber bullet casing."
	projectile_type = /obj/item/projectile/bullet/c45/rubber
	custom_materials = list(
		/datum/material/iron = MATS_PISTOL_MEDIUM_CASING + MATS_PISTOL_MEDIUM_BULLET,
		/datum/material/blackpowder = MATS_PISTOL_MEDIUM_POWDER * MATS_AMMO_POWDER_HANDLOAD_MULT)

