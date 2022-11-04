///toy memes///

/obj/item/ammo_box/magazine/toy/x9
	name = "foam force X9 magazine"
	icon = 'modular_citadel/icons/obj/guns/cit_guns.dmi'
	icon_state = "toy9magazine"
	max_ammo = 30
	multiple_sprites = 2
	custom_materials = list(/datum/material/iron = 200)

/obj/item/gun/ballistic/automatic/x9/toy
	name = "\improper Foam Force X9"
	desc = "An old but reliable assault rifle made for combat against unknown enemies. Appears to be hastily converted. Ages 8 and up."
	icon = 'modular_citadel/icons/obj/guns/cit_guns.dmi'
	icon_state = "toy9"
	can_suppress = 0
	obj_flags = 0
	mag_type = /obj/item/ammo_box/magazine/toy/x9
	casing_ejector = 0
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = GUN_TWO_HAND_ONLY

///toy memes///

/obj/item/ammo_box/magazine/toy/x9
	name = "foam force X9 magazine"
	icon = 'modular_citadel/icons/obj/guns/cit_guns.dmi'
	icon_state = "toy9magazine"
	max_ammo = 30
	multiple_sprites = 2
	custom_materials = list(/datum/material/iron = 200)

/obj/item/gun/ballistic/automatic/x9/toy
	name = "\improper Foam Force X9"
	desc = "An old but reliable assault rifle made for combat against unknown enemies. Appears to be hastily converted. Ages 8 and up."
	icon = 'modular_citadel/icons/obj/guns/cit_guns.dmi'
	icon_state = "toy9"
	can_suppress = 0
	obj_flags = 0
	mag_type = /obj/item/ammo_box/magazine/toy/x9
	casing_ejector = 0
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = GUN_TWO_HAND_ONLY

///projectiles///

/obj/item/projectile/bullet/cflechetteap	//shreds armor
	name = "flechette (armor piercing)"
	damage = 8
	armour_penetration = 0.95

/obj/item/projectile/bullet/cflechettes		//shreds flesh and forces bleeding
	name = "flechette (serrated)"
	damage = 15
	dismemberment = 10
	armour_penetration = -2

/obj/item/projectile/bullet/cflechettes/on_hit(atom/target, blocked = FALSE)
	if((blocked != 100) && iscarbon(target))
		var/mob/living/carbon/C = target
		C.bleed(10)
	return ..()

///ammo casings (CASELESS AMMO CASINGS WOOOOOOOO)///

/obj/item/ammo_casing/caseless/flechetteap
	name = "flechette (armor piercing)"
	desc = "A flechette made with a tungsten alloy."
	projectile_type = /obj/item/projectile/bullet/cflechetteap
	caliber = "flechette"
	throwforce = 1
	throw_speed = 3

/obj/item/ammo_casing/caseless/flechettes
	name = "flechette (serrated)"
	desc = "A serrated flechette made of a special alloy intended to deform drastically upon penetration of human flesh."
	projectile_type = /obj/item/projectile/bullet/cflechettes
	caliber = "flechette"
	throwforce = 2
	throw_speed = 3
	embedding = list("embedded_pain_multiplier" = 0, "embed_chance" = 40, "embedded_fall_chance" = 10)

///magazine///

/obj/item/ammo_box/magazine/flechette
	name = "flechette magazine (armor piercing)"
	icon = 'modular_citadel/icons/obj/guns/cit_guns.dmi'
	icon_state = "flechettemag"
	ammo_type = /obj/item/ammo_casing/caseless/flechetteap
	caliber = "flechette"
	max_ammo = 40
	multiple_sprites = 2

/obj/item/ammo_box/magazine/flechette/s
	name = "flechette magazine (serrated)"
	ammo_type = /obj/item/ammo_casing/caseless/flechettes

///unique variant///

/obj/item/projectile/bullet/cflechetteshredder
	name = "flechette (shredder)"
	damage = 5
	dismemberment = 40

/obj/item/ammo_casing/caseless/flechetteshredder
	name = "flechette (shredder)"
	desc = "A serrated flechette made of a special alloy that forms a monofilament edge."
	projectile_type = /obj/item/projectile/bullet/cflechettes

/obj/item/ammo_box/magazine/flechette/shredder
	name = "flechette magazine (shredder)"
	icon_state = "shreddermag"
	ammo_type = /obj/item/ammo_casing/caseless/flechetteshredder
