//////////////////////
// PISTOL MAGAZINES //
//////////////////////

//.22
/obj/item/ammo_box/magazine/pistol22
	name = "pistol magazine (.22lr)"
	icon_state = "pistol22"
	ammo_type = /obj/item/ammo_casing/a22
	caliber = list(CALIBER_22LR)
	max_ammo = 16
	multiple_sprites = 2
	custom_materials = list(/datum/material/iron = MATS_SMALL_PISTOL_MAGAZINE)
	w_class = WEIGHT_CLASS_TINY

/obj/item/ammo_box/magazine/pistol22/empty
	start_empty = TRUE

//.22 extended
/obj/item/ammo_box/magazine/pistol22/extended
	name = "carbine magazine (.22lr)"
	icon_state = "22carbine"
	ammo_type = /obj/item/ammo_casing/a22
	caliber = list(CALIBER_22LR)
	max_ammo = 32
	multiple_sprites = 2
	custom_materials = list(/datum/material/iron = MATS_MEDIUM_PISTOL_MAGAZINE)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/ammo_box/magazine/pistol22/extended/empty
	start_empty = TRUE

//9mm
/obj/item/ammo_box/magazine/zipgun
	name = "Zip gun clip (9mm)"
	icon_state = "zip"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = list(CALIBER_9MM)
	max_ammo = 5
	multiple_sprites = 2
	can_change_caliber = TRUE
	custom_materials = list(/datum/material/iron = MATS_PISTOL_SPEEDLOADER)
	w_class = WEIGHT_CLASS_TINY

/obj/item/ammo_box/magazine/zipgun/Initialize()
	. = ..()
	valid_new_calibers = GLOB.zipgun_valid_calibers

//9mm
/obj/item/ammo_box/magazine/pistol9mm
	name = "9mm pistol magazine (9mm)"
	icon_state = "9mmp"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = list(CALIBER_9MM)
	max_ammo = 10
	multiple_sprites = 2
	custom_materials = list(/datum/material/iron = MATS_SMALL_PISTOL_MAGAZINE)
	w_class = WEIGHT_CLASS_TINY

/obj/item/ammo_box/magazine/pistol9mm/empty
	start_empty = TRUE

//9mm doublestack
/obj/item/ammo_box/magazine/pistol9mm/doublestack
	name = "doublestack pistol magazine (9mm)"
	icon_state = "m9mmds"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = list(CALIBER_9MM)
	max_ammo = 15
	multiple_sprites = 2
	custom_materials = list(/datum/material/iron = MATS_MEDIUM_PISTOL_MAGAZINE)

/obj/item/ammo_box/magazine/pistol9mm/doublestack/empty
	start_empty = TRUE

//10mm magazine
/obj/item/ammo_box/magazine/pistol10mm
	name = "10mm pistol magazine"
	desc = "A small magazine (10mm)."
	icon_state = "m10mm"
	caliber = list(CALIBER_10MM)
	custom_materials = list(/datum/material/iron = MATS_MEDIUM_PISTOL_MAGAZINE)
	ammo_type = /obj/item/ammo_casing/c10mm
	max_ammo = 12
	multiple_sprites = 2
	w_class = WEIGHT_CLASS_TINY

/obj/item/ammo_box/magazine/pistol10mm/empty
	start_empty = TRUE

//10mm extended
/obj/item/ammo_box/magazine/pistol10mm/extended
	name = "10mm extended magazine (10mm)"
	desc = "A extended magazine with 24 rounds."
	icon_state = "smg10mm"
	max_ammo = 24
	custom_materials = list(/datum/material/iron = MATS_SMG)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/ammo_box/magazine/pistol10mm/extended/empty
	start_empty = TRUE

//.45
/obj/item/ammo_box/magazine/pistol45
	name = "handgun magazine (.45)"
	icon_state = "45"
	ammo_type = /obj/item/ammo_casing/c45
	caliber = list(CALIBER_45ACP)
	max_ammo = 8
	multiple_sprites = 1
	custom_materials = list(/datum/material/iron = MATS_MEDIUM_PISTOL_MAGAZINE)

/obj/item/ammo_box/magazine/pistol45/empty
	start_empty = TRUE

/obj/item/ammo_box/magazine/pistol45/update_icon()
	..()
	icon_state = "[initial(icon_state)]-[round(ammo_count(),4)]"

//.45 socom
/obj/item/ammo_box/magazine/pistol45/socom
	name = "socom magazine (.45)"
	icon_state = "45socom"
	ammo_type = /obj/item/ammo_casing/c45
	max_ammo = 12
	multiple_sprites = 2
	custom_materials = list(/datum/material/iron = MATS_MEDIUM_PISTOL_MAGAZINE)
	w_class = WEIGHT_CLASS_TINY

/obj/item/ammo_box/magazine/pistol45/socom/empty
	start_empty = TRUE

/obj/item/ammo_box/magazine/pistol45/socom/update_icon()
	..()
	icon_state = "[initial(icon_state)]-[stored_ammo.len ? "[max_ammo]" : "0"]" // I hate this system

//.44 Magnum
/obj/item/ammo_box/magazine/pistol44
	name = "handgun magazine (.44 magnum)"
	icon_state = "50ae"
	ammo_type = /obj/item/ammo_casing/m44
	caliber = list(CALIBER_44)
	max_ammo = 8
	multiple_sprites = 2
	custom_materials = list(/datum/material/iron = MATS_HEAVY_PISTOL_MAGAZINE)
	w_class = WEIGHT_CLASS_TINY

/obj/item/ammo_box/magazine/pistol44/empty
	start_empty = TRUE

/obj/item/ammo_box/magazine/pistol44/update_icon()
	..()
	icon_state = "[initial(icon_state)]-[round(ammo_count(),4)]"

/obj/item/ammo_box/magazine/pistol44/automag
	name = "automag magazine (.44 magnum)"
	icon_state = "magnum"
	ammo_type = /obj/item/ammo_casing/m44
	max_ammo = 7
	multiple_sprites = 2

/obj/item/ammo_box/magazine/pistol44/automag/empty
	start_empty = TRUE

/obj/item/ammo_box/magazine/pistol44/automag/update_icon()
	..()
	icon_state = "[initial(icon_state)]-[stored_ammo.len ? "[max_ammo]" : "0"]"

//14mm
/obj/item/ammo_box/magazine/pistol14mm
	name = "handgun magazine (14mm)"
	icon_state = "50ae"
	ammo_type = /obj/item/ammo_casing/p14mm
	caliber = list(CALIBER_14MM)
	max_ammo = 7
	multiple_sprites = 2
	custom_materials = list(/datum/material/iron = MATS_HEAVY_PISTOL_MAGAZINE)
	w_class = WEIGHT_CLASS_TINY

/obj/item/ammo_box/magazine/pistol14mm/empty
	start_empty = TRUE

/obj/item/ammo_box/magazine/pistol14mm/update_icon()
	..()
	icon_state = "[initial(icon_state)]-[round(ammo_count(),4)]"
