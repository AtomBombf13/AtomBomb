//IN THIS DOCUMENT: Automatic template, SMGs, Carbines, Semi-auto rifles, Assault rifles, Machineguns and Misc.
// See gun.dm for keywords and the system used for gun balance



/////////////////////
//AUTOMATIC TEMPLATE/
/////////////////////


/obj/item/gun/ballistic/automatic
	name = "automatic gun template"
	desc = "should not be here, bugreport."
	w_class = WEIGHT_CLASS_BULKY

	slowdown = GUN_SLOWDOWN_SMG_LIGHT
	force = GUN_MELEE_FORCE_PISTOL_HEAVY
	weapon_weight = GUN_ONE_HAND_ONLY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_0

	slot_flags = SLOT_BACK
	automatic = TRUE
	var/automatic_burst_overlay = TRUE
	var/auto_eject = FALSE
	var/auto_eject_sound = null
	var/alarmed = FALSE
	can_suppress = FALSE
	equipsound = 'sound/f13weapons/equipsounds/riflequip.ogg'
	init_recoil = SMG_RECOIL(1)
	init_firemodes = list(
		FULL_AUTO_400,
		FULL_AUTO_800,
		BURST_3_ROUND,
		BURST_5_ROUND
	)
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(PISTOL_LIGHT_VOLUME),
		SP_VOLUME_SILENCED(PISTOL_LIGHT_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(PISTOL_LIGHT_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(PISTOL_LIGHT_DISTANT_SOUND),
		SP_DISTANT_RANGE(PISTOL_LIGHT_RANGE_DISTANT)
	)

/obj/item/gun/ballistic/automatic/update_icon_state()
	icon_state = "[initial(icon_state)][magazine ? "-[magazine.max_ammo]" : ""][chambered ? "" : "-e"]"

/* /obj/item/gun/ballistic/automatic/attackby(obj/item/A, mob/user, params)
	. = ..()
	if(.)
		return
	if(istype(A, /obj/item/ammo_box/magazine))
		var/obj/item/ammo_box/magazine/new_mag = A
		if(istype(new_mag, mag_type))
			var/obj/item/ammo_box/magazine/oldmag = magazine
			if(user.transferItemToLoc(new_mag, src))
				magazine = new_mag
				if(oldmag)
					to_chat(user, span_notice("You perform a tactical reload on \the [src], replacing the magazine."))
					oldmag.forceMove(get_turf(src.loc))
					oldmag.update_icon()
				else
					to_chat(user, span_notice("You insert the magazine into \the [src]."))

				playsound(user, 'sound/weapons/autoguninsert.ogg', 60, 1)
				chamber_round()
				A.update_icon()
				update_icon()
				return 1
			else
				to_chat(user, span_warning("You cannot seem to get \the [src] out of your hands!")) */

/obj/item/gun/ballistic/automatic/can_shoot()
	return get_ammo()

/obj/item/gun/ballistic/automatic/proc/empty_alarm()
	if(!chambered && !get_ammo() && !alarmed)
		playsound(src.loc, 'sound/weapons/smg_empty_alarm.ogg', 40, 1)
		update_icon()
		alarmed = 1
	return

/obj/item/gun/ballistic/automatic/afterattack(atom/target, mob/living/user)
	..()
	if(auto_eject && magazine && magazine.stored_ammo && !magazine.stored_ammo.len && !chambered)
		magazine.dropped()
		user.visible_message(
			"[magazine] falls out and clatters on the floor!",
			span_notice("[magazine] falls out and clatters on the floor!")
		)
		if(auto_eject_sound)
			playsound(user, auto_eject_sound, 40, 1)
		magazine.forceMove(get_turf(src.loc))
		magazine.update_icon()
		magazine = null
		update_icon()



/* * * * *
 * SMGs  *
 * * * * */

/* * * * * * * * * * *
 * Pistols, but faster
 * More magazine space
 * One handed
 * Some can be akimboed
 * Generally poor accuracy
 * Lot of recoil
 * Long recoil cooldown
 * Common
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/smg/
	name = "SMG TEMPLATE"
	desc = "should not exist"
	icon = 'icons/fallout/objects/guns/ballistic.dmi'
	icon_prefix = "uzi"
	lefthand_file = 'icons/fallout/onmob/weapons/guns_lefthand.dmi'
	righthand_file = 'icons/fallout/onmob/weapons/guns_righthand.dmi'
	w_class = WEIGHT_CLASS_BULKY

	slowdown = GUN_SLOWDOWN_SMG_LIGHT
	force = GUN_MELEE_FORCE_PISTOL_HEAVY
	weapon_weight = GUN_ONE_HAND_ONLY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_0

/* * * * * * * * * * *
 * American 180 SMG
 * Spraycan SMG
 * .22LC
 * Huge magazine
 * Low damage
 * Two-handed
 * Common
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/smg/american180
	name = "American 180"
	desc = "An integrally suppressed submachinegun chambered in the common .22 long rifle. Top loaded drum magazine."
	icon_state = "smg22"
	item_state = "shotgun"
	w_class = WEIGHT_CLASS_BULKY
	mag_type = /obj/item/ammo_box/magazine/m22smg
	init_mag_type = /obj/item/ammo_box/magazine/m22smg

	slowdown = GUN_SLOWDOWN_SMG_HEAVY
	force = GUN_MELEE_FORCE_PISTOL_HEAVY
	weapon_weight = GUN_TWO_HAND_ONLY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_LESS_DAMAGE_T4
	init_recoil = SMG_RECOIL(0.7)
	init_firemodes = list(
		FULL_AUTO_600
	)

	automatic = TRUE
	silenced = TRUE
	actions_types = null
	fire_sound_silenced = 'sound/f13weapons/american180.ogg'
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(PISTOL_LIGHT_VOLUME),
		SP_VOLUME_SILENCED(PISTOL_LIGHT_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(PISTOL_LIGHT_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(PISTOL_LIGHT_DISTANT_SOUND),
		SP_DISTANT_RANGE(PISTOL_LIGHT_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * Rockwell .22 SMG
 * Lighter .22 SMG
 * .22
 * Faster firing
 * Less damage
 * One-handed
 * Akimbo!
 * Common
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/smg/rockwell
	name = "Rockwell SMG"
	desc = "A crude, very lightweight submachine gun. For when you really want to politely ask someone to be dead. Uses .22LR rounds."
	icon_state = "rockwell"
	item_state = "uzi"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/pistol22/extended
	init_mag_type = /obj/item/ammo_box/magazine/pistol22/extended

	slowdown = GUN_SLOWDOWN_SMG_LIGHT
	force = GUN_MELEE_FORCE_PISTOL_LIGHT
	weapon_weight = GUN_ONE_HAND_AKIMBO
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_0
	init_firemodes = list(
		FULL_AUTO_150
	)
	can_suppress = TRUE
	suppressor_state = "uzi_suppressor"
	suppressor_x_offset = 30
	suppressor_y_offset = 18
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(PISTOL_MEDIUM_VOLUME),
		SP_VOLUME_SILENCED(PISTOL_MEDIUM_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(PISTOL_MEDIUM_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(PISTOL_MEDIUM_DISTANT_SOUND),
		SP_DISTANT_RANGE(PISTOL_MEDIUM_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * Uzi 9mm SMG
 * Light 9mm SMG
 * 9mm
 * Very Fast Firing Rate
 * Less damage
 * Common
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/smg/mini_uzi
	name = "Uzi"
	desc = "A lightweight, burst-fire submachine gun, for when you really want someone dead. Uses 9mm rounds."
	icon_state = "uzi"
	item_state = "uzi"
	w_class = WEIGHT_CLASS_BULKY
	mag_type = /obj/item/ammo_box/magazine/uzim9mm
	init_mag_type = /obj/item/ammo_box/magazine/uzim9mm

	slowdown = GUN_SLOWDOWN_SMG_LIGHT
	force = GUN_MELEE_FORCE_PISTOL_LIGHT
	weapon_weight = GUN_TWO_HAND_ONLY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_LESS_DAMAGE_T2
	init_firemodes = list(
		FULL_AUTO_600,
		SEMI_AUTO_SMG
	)

	can_suppress = TRUE
	suppressor_state = "uzi_suppressor"
	suppressor_x_offset = 29
	suppressor_y_offset = 16
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(PISTOL_LIGHT_VOLUME),
		SP_VOLUME_SILENCED(PISTOL_LIGHT_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(PISTOL_LIGHT_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(PISTOL_LIGHT_DISTANT_SOUND),
		SP_DISTANT_RANGE(PISTOL_LIGHT_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * MP-5 SD SMG
 * Silent 9mm SMG
 * 9mm
 * Quiet
 * Accurate
 * Slightly more damage
 * Common
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/smg/mp5
	name = "MP-5 SD"
	desc = "An integrally suppressed submachinegun chambered in 9mm."
	icon_state = "mp5"
	item_state = "fnfal"
	w_class = WEIGHT_CLASS_BULKY
	mag_type = /obj/item/ammo_box/magazine/uzim9mm
	init_mag_type = /obj/item/ammo_box/magazine/uzim9mm
	weapon_weight = GUN_TWO_HAND_ONLY
	slowdown = GUN_SLOWDOWN_SMG_HEAVY
	force = GUN_MELEE_FORCE_PISTOL_HEAVY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_0
	gun_accuracy_zone_type = ZONE_WEIGHT_PRECISION // Accurate semiauto fire
	init_firemodes = list(
		FULL_AUTO_400,
		BURST_3_ROUND,
		SEMI_AUTO_SMG
	)

	silenced = TRUE
	fire_sound = 'sound/weapons/Gunshot_silenced.ogg'
	fire_sound_silenced = 'sound/weapons/Gunshot_silenced.ogg'
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(PISTOL_LIGHT_VOLUME),
		SP_VOLUME_SILENCED(PISTOL_LIGHT_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(PISTOL_LIGHT_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(PISTOL_LIGHT_DISTANT_SOUND),
		SP_DISTANT_RANGE(PISTOL_LIGHT_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * PPSh SMG
 * Spraycan 9mm SMG
 * 9mm
 * Huge magazine
 * Low damage
 * Two-handed
 * Common
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/smg/ppsh
	name = "Ppsh-41"
	desc = "An extremely fast firing, inaccurate submachine gun from World War 2. Low muzzle velocity. Uses 9mm rounds."
	icon_state = "pps"
	slowdown = 0.3
	w_class = WEIGHT_CLASS_BULKY
	mag_type = /obj/item/ammo_box/magazine/pps9mm
	init_mag_type = /obj/item/ammo_box/magazine/pps9mm
	weapon_weight = GUN_TWO_HAND_ONLY
	slowdown = GUN_SLOWDOWN_SMG_LIGHT
	force = GUN_MELEE_FORCE_PISTOL_LIGHT
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_LESS_DAMAGE_T3
	init_firemodes = list(
		FULL_AUTO_400
	)

	can_scope = TRUE
	scope_state = "AEP7_scope"
	scope_x_offset = 9
	scope_y_offset = 21
	gun_tags = list(GUN_SCOPE)
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(PISTOL_LIGHT_VOLUME),
		SP_VOLUME_SILENCED(PISTOL_LIGHT_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(PISTOL_LIGHT_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(PISTOL_LIGHT_DISTANT_SOUND),
		SP_DISTANT_RANGE(PISTOL_LIGHT_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * 10mm SMG
 * Baseline 10mm SMG
 * 10mm
 * Slower firing
 * Heavier recoil
 * One-handed
 * No akimbo
 * Common
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/smg/smg10mm
	name = "10mm submachine gun"
	desc = "One of the most common personal-defense weapons of the Great War, a sturdy and reliable open-bolt 10mm submachine gun."
	icon_state = "smg10mm"
	item_state = "smg10mm"
	icon_prefix = "smg10mm"
	w_class = WEIGHT_CLASS_BULKY
	mag_type = /obj/item/ammo_box/magazine/pistol10mm
	init_mag_type = /obj/item/ammo_box/magazine/pistol10mm/extended
	slowdown = GUN_SLOWDOWN_SMG_HEAVY
	force = GUN_MELEE_FORCE_PISTOL_HEAVY
	weapon_weight = GUN_ONE_HAND_ONLY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_LESS_DAMAGE_T3
	init_firemodes = list(
		FULL_AUTO_200,
		SEMI_AUTO_SMG
	)

	suppressor_state = "10mm_suppressor" //activate if sprited
	suppressor_x_offset = 30
	suppressor_y_offset = 16
	fire_sound = 'sound/f13weapons/10mm_fire_03.ogg'

/* * * * * * * * * * *
 * P90c SMG
 * Light 10mm SMG
 * 10mm
 * Huge magazine
 * Less damage
 * One-handed
 * Akimbo!
 * Common
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/smg/p90
	name = "FN P90c"
	desc = "The Fabrique Nationale P90c was just coming into use at the time of the war. The weapon's bullpup layout, and compact design, make it easy to control. The durable P90c is prized for its reliability, and high firepower in a ruggedly-compact package. Chambered in 10mm."
	icon_state = "p90"
	item_state = "m90"
	w_class = WEIGHT_CLASS_BULKY
	mag_type = /obj/item/ammo_box/magazine/smg_p90
	init_mag_type = /obj/item/ammo_box/magazine/smg_p90

	slowdown = GUN_SLOWDOWN_SMG_LIGHT
	force = GUN_MELEE_FORCE_PISTOL_LIGHT
	weapon_weight = GUN_TWO_HAND_ONLY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_LESS_DAMAGE_T2
	init_recoil = SMG_RECOIL(0.8)
	init_firemodes = list(
		FULL_AUTO_400,
		BURST_3_ROUND,
		SEMI_AUTO_SMG
	)

	can_suppress = TRUE
	suppressor_state = "pistol_suppressor"
	suppressor_x_offset = 29
	suppressor_y_offset = 16
	fire_sound = 'sound/f13weapons/10mm_fire_03.ogg'

/* * * * * * * * * * *
 * Greasegun SMG
 * Easy-handle .45ACP SMG
 * .45 ACP
 * One-handed
 * No akimbo
 * Slowish autofire
 * Common
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/smg/greasegun
	name = "m3a1 greasegun"
	desc = "This submachine gun filled National Guard arsenals after the Army replaced it with newer weapons."
	icon_state = "grease_gun"
	item_state = "smg9mm"
	w_class = WEIGHT_CLASS_BULKY
	mag_type = /obj/item/ammo_box/magazine/greasegun
	init_mag_type = /obj/item/ammo_box/magazine/greasegun

	slowdown = GUN_SLOWDOWN_SMG_LIGHT
	force = GUN_MELEE_FORCE_PISTOL_HEAVY
	weapon_weight = GUN_ONE_HAND_ONLY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_LESS_DAMAGE_T3
	init_firemodes = list(
		FULL_AUTO_200,
		SEMI_AUTO_SMG
	)

	suppressor_state = "uzi_suppressor"
	suppressor_x_offset = 26
	suppressor_y_offset = 19
	fire_sound = 'sound/f13weapons/greasegun.ogg'
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(PISTOL_MEDIUM_VOLUME),
		SP_VOLUME_SILENCED(PISTOL_MEDIUM_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(PISTOL_MEDIUM_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(PISTOL_MEDIUM_DISTANT_SOUND),
		SP_DISTANT_RANGE(PISTOL_MEDIUM_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * Thompson SMG
 * Baseline .45 SMG
 * .45ACP
 * Two-handed
 * Common
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/smg/tommygun
	name = "Thompson SMG"
	desc = "A powerful submachinegun chambered in .45 ACP, this weapon fires at a blistering rate with a heavy pistol cartridge, and can accept very high capacity magazines, to boot."
	icon_state = "tommygun"
	item_state = "shotgun"
	w_class = WEIGHT_CLASS_BULKY
	mag_type = /obj/item/ammo_box/magazine/tommygunm45
	init_mag_type = /obj/item/ammo_box/magazine/tommygunm45/stick

	slowdown = GUN_SLOWDOWN_SMG_HEAVY
	force = GUN_MELEE_FORCE_PISTOL_HEAVY
	weapon_weight = GUN_ONE_HAND_ONLY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_LESS_DAMAGE_T1
	init_recoil = SMG_RECOIL(1)
	init_firemodes = list(
		FULL_AUTO_250
	)//Definetly higher fire rate than grease

	fire_sound = 'sound/weapons/gunshot_smg.ogg'
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(PISTOL_MEDIUM_VOLUME),
		SP_VOLUME_SILENCED(PISTOL_MEDIUM_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(PISTOL_MEDIUM_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(PISTOL_MEDIUM_DISTANT_SOUND),
		SP_DISTANT_RANGE(PISTOL_MEDIUM_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * 14mm SMG
 * Heavy SMG
 * 14mm
 * Massive damage
 * Massive recoil
 * Slower shooting
 * Two-handed
 * Common
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/smg/smg14
	name = "14mm SMG"
	desc = "A heavy-duty SMG designed to tear through most forms of armor."
	icon_state = "14smg"
	item_state = "14toploader"
	w_class = WEIGHT_CLASS_BULKY
	mag_type = /obj/item/ammo_box/magazine/smg14
	init_mag_type = /obj/item/ammo_box/magazine/smg14

	slowdown = GUN_SLOWDOWN_SMG_HEAVY
	force = GUN_MELEE_FORCE_PISTOL_HEAVY
	weapon_weight = GUN_TWO_HAND_ONLY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_LESS_DAMAGE_T4
	init_recoil = SMG_RECOIL(0.8)
	init_firemodes = list(
		FULL_AUTO_200,
		BURST_3_ROUND
	)

	can_suppress = FALSE
	fire_sound = 'sound/f13weapons/magnum_fire.ogg'
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(PISTOL_HEAVY_VOLUME),
		SP_VOLUME_SILENCED(PISTOL_HEAVY_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(PISTOL_HEAVY_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(PISTOL_HEAVY_DISTANT_SOUND),
		SP_DISTANT_RANGE(PISTOL_HEAVY_RANGE_DISTANT)
	)

/* * * * * * *
 * Carbines  *
 * * * * * * */

/* * * * * * * * * * *
 * Pistols, but longer
 * Two handed
 * Generally good accuracy
 * Lower recoil
 * Slightly higher damage
 * Common
 * * * * * * * * * * */

/* * * * * * * * * * *
 * M1 Carbine
 * 10mm
 * Can take extendomags
 * Common
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/m1carbine
	name = "M1 carbine"
	desc = "The M1 Carbine was mass produced during some old war, and at some point NCR found stockpiles and rechambered them to 10mm to make up for the fact their service rifle production can't keep up with demand."
	icon_state = "m1carbine"
	item_state = "rifle"
	mag_type = /obj/item/ammo_box/magazine/pistol10mm
	init_mag_type = /obj/item/ammo_box/magazine/pistol10mm

	slowdown = GUN_SLOWDOWN_CARBINE
	force = GUN_MELEE_FORCE_RIFLE_LIGHT
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_LESS_DAMAGE_T2
	weapon_weight = GUN_ONE_HAND_ONLY
	init_recoil = CARBINE_RECOIL(0.8)
	init_firemodes = list(
		SEMI_AUTO_SMG
	)
	gun_tags = list(GUN_FA_MODDABLE, GUN_SCOPE)
	gun_accuracy_zone_type = ZONE_WEIGHT_PRECISION

	can_bayonet = TRUE
	bayonet_state = "bayonet"
	knife_x_offset = 22
	knife_y_offset = 21
	can_scope = TRUE
	scope_state = "scope_medium"
	scope_x_offset = 5
	scope_y_offset = 14
	can_suppress = TRUE
	suppressor_state = "rifle_suppressor"
	suppressor_x_offset = 26
	suppressor_y_offset = 31
	fire_sound = 'sound/f13weapons/varmint_rifle.ogg'
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(PISTOL_MEDIUM_VOLUME),
		SP_VOLUME_SILENCED(PISTOL_MEDIUM_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(PISTOL_MEDIUM_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(PISTOL_MEDIUM_DISTANT_SOUND),
		SP_DISTANT_RANGE(PISTOL_MEDIUM_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * M1A1 Carbine
 * 10mm
 * Folds up!
 * Uncommon
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/m1carbine/compact
	name = "M1A1 carbine"
	desc = "The M1A1 carbine is an improvement of the original, with this particular model having a folding stock allowing for greater mobility. Chambered in 10mm."
	icon_state = "m1a1carbine"
	var/stock = FALSE
	w_class = WEIGHT_CLASS_NORMAL

	slowdown = GUN_SLOWDOWN_CARBINE
	force = GUN_MELEE_FORCE_RIFLE_LIGHT
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_LESS_DAMAGE_T2
	weapon_weight = GUN_ONE_HAND_ONLY
	init_recoil = CARBINE_RECOIL(1.2)
	init_firemodes = list(
		SEMI_AUTO_SMG
	)

/obj/item/gun/ballistic/automatic/m1carbine/compact/AltClick(mob/user)
	if(!istype(user) || !user.canUseTopic(src, BE_CLOSE, ismonkey(user)))
		return
	toggle_stock(user)

/obj/item/gun/ballistic/automatic/m1carbine/compact/examine(mob/user)
	. = ..()
	. += "<br><span class='notice'>The stock is [stock ? "open" : "folded"].</span>"
	. += "<br><span class='notice'>Alt-click to toggle the stock.</span>"

/obj/item/gun/ballistic/automatic/m1carbine/compact/proc/toggle_stock(mob/living/user)
	stock = !stock
	if(stock)
		w_class = WEIGHT_CLASS_BULKY
		to_chat(user, "You unfold the stock.")
		recoil_dat = getRecoil(CARBINE_RECOIL(1)[1],CARBINE_RECOIL(1)[2],CARBINE_RECOIL(1)[3])
	else
		w_class = WEIGHT_CLASS_NORMAL
		to_chat(user, "You fold the stock.")
		recoil_dat = getRecoil(init_recoil[1],init_recoil[2],init_recoil[3])
	update_icon()

/obj/item/gun/ballistic/automatic/m1carbine/compact/update_icon_state()
	icon_state = "[initial(icon_state)][magazine ? "-[magazine.max_ammo]" : ""][chambered ? "" : "-e"][stock ? "" : "-f"]"

/* * * * * * * * * * *
 * Combat Rifle
 * Baseline .45 carbine
 * Common
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/combat
	name = "combat rifle"
	desc = "A .45 semi-automatic combat rifle, produced pre-war for National Guard forces."
	icon_state = "combat_rifle"
	item_state = "combatrifle"
	icon_prefix = "combatrifle"
	mag_type = /obj/item/ammo_box/magazine/greasegun
	init_mag_type = /obj/item/ammo_box/magazine/greasegun

	slowdown = GUN_SLOWDOWN_CARBINE
	force = GUN_MELEE_FORCE_RIFLE_LIGHT
	weapon_weight = GUN_TWO_HAND_ONLY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_T1
	init_recoil = CARBINE_RECOIL(1)
	init_firemodes = list(
		SEMI_AUTO_SMG
	)
	gun_tags = list(GUN_FA_MODDABLE)

	fire_sound = 'sound/f13weapons/combatrifle.ogg'
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(PISTOL_MEDIUM_VOLUME),
		SP_VOLUME_SILENCED(PISTOL_MEDIUM_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(PISTOL_MEDIUM_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(PISTOL_MEDIUM_DISTANT_SOUND),
		SP_DISTANT_RANGE(PISTOL_MEDIUM_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * Semi-auto Rifles  *
 * * * * * * * * * * */

/* * * * * * * * * * *
 * Long arms
 * Two handed
 * Generally good accuracy
 * Lower recoil
 * Common
 * * * * * * * * * * */

/* * * * * * * * * * *
 * Service Rifle
 * Baseline semi-auto rifle
 * .223 / 5.56mm
 * Common
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/service
	name = "service rifle"
	desc = "A 5.56x45 semi-automatic service rifle manufactured by the NCR and issued to all combat personnel."
	icon_state = "service_rifle"
	item_state = "servicerifle"
	icon_prefix = "servicerifle"
	mag_type = /obj/item/ammo_box/magazine/m556/rifle
	init_mag_type = /obj/item/ammo_box/magazine/m556/rifle

	slowdown = GUN_SLOWDOWN_RIFLE_LIGHT_SEMI
	force = GUN_MELEE_FORCE_RIFLE_LIGHT
	draw_time = GUN_DRAW_LONG
	weapon_weight = GUN_TWO_HAND_ONLY
	damage_multiplier = GUN_EXTRA_DAMAGE_0
	init_recoil = RIFLE_RECOIL(1)
	init_firemodes = list(
		SEMI_AUTO_PISTOL
	)

	can_bayonet = TRUE
	bayonet_state = "bayonet"
	knife_x_offset = 22
	knife_y_offset = 21
	fire_sound = 'sound/f13weapons/varmint_rifle.ogg'
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(RIFLE_LIGHT_VOLUME),
		SP_VOLUME_SILENCED(RIFLE_LIGHT_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(RIFLE_LIGHT_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(RIFLE_LIGHT_DISTANT_SOUND),
		SP_DISTANT_RANGE(RIFLE_LIGHT_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * Scout carbine
 * Scopeable semi-auto rifle
 * .223 / 5.56mm
 * Scope!
 * Common
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/service/carbine
	name = "scout carbine"
	desc = "A cut down version of the standard-issue service rifle tapped with mounting holes for a scope. Shorter barrel, lower muzzle velocity."
	icon_state = "scout_carbine"

	slowdown = GUN_SLOWDOWN_RIFLE_LIGHT_SEMI
	force = GUN_MELEE_FORCE_RIFLE_LIGHT
	weapon_weight = GUN_ONE_HAND_ONLY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_0
	weapon_weight = GUN_ONE_HAND_ONLY
	init_recoil = RIFLE_RECOIL(0.8)

	gun_tags = list(GUN_SCOPE)

	can_scope = TRUE
	scope_state = "scope_short"
	scope_x_offset = 4
	scope_y_offset = 15
	suppressor_x_offset = 26
	suppressor_y_offset = 28

/* * * * * * * * * * *
 * Marksman carbine
 * Scoped semi-auto rifle
 * .223 / 5.56mm
 * Scope!
 * Common
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/marksman
	name = "marksman carbine"
	desc = "A marksman carbine built off the AR platform chambered in 5.56x45. Seen heavy usage in pre-war conflicts. This particular model is a civilian version and is semi-auto only."
	icon_state = "marksman_rifle"
	item_state = "marksman"
	mag_type = /obj/item/ammo_box/magazine/m556/rifle
	init_mag_type = /obj/item/ammo_box/magazine/m556/rifle

	slowdown = GUN_SLOWDOWN_RIFLE_LIGHT_SEMI
	force = GUN_MELEE_FORCE_RIFLE_LIGHT
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_T4
	weapon_weight = GUN_TWO_HAND_ONLY
	init_recoil = RIFLE_RECOIL(1)
	init_firemodes = list(
		SEMI_AUTO_RIFLE
	)
	gun_tags = list(GUN_FA_MODDABLE)
	gun_accuracy_zone_type = ZONE_WEIGHT_PRECISION

	can_scope = FALSE
	zoom_factor = 1
	can_bayonet = FALSE
	bayonet_state = "rifles"
	knife_x_offset = 22
	knife_y_offset = 12
	can_suppress = TRUE
	suppressor_state = "suppressor"
	suppressor_x_offset = 31
	suppressor_y_offset = 15
	fire_sound = 'sound/f13weapons/marksman_rifle.ogg'
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(RIFLE_LIGHT_VOLUME),
		SP_VOLUME_SILENCED(RIFLE_LIGHT_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(RIFLE_LIGHT_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(RIFLE_LIGHT_DISTANT_SOUND),
		SP_DISTANT_RANGE(RIFLE_LIGHT_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * Rangemaster Rifle
 * Baseline .223/5.56 rifle
 * .223/5.56
 * Highly accurate
 * Scope!
 * Bayonet!
 * Common
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/rangemaster
	name = "colt rangemaster"
	desc = "A Colt Rangemaster semi-automatic rifle, chambered for .223 rounds. Single-shot only."
	icon = 'icons/fallout/objects/guns/ballistic.dmi'
	icon_state = "rangemaster"
	item_state = "308"
	icon_prefix = "308"
	force = 20
	mag_type = /obj/item/ammo_box/magazine/m556/rifle/small
	init_mag_type = /obj/item/ammo_box/magazine/m556/rifle/small
	disallowed_mags = list(/obj/item/ammo_box/magazine/m556/rifle/assault,/obj/item/ammo_box/magazine/m556/rifle/extended)

	slowdown = GUN_SLOWDOWN_RIFLE_MEDIUM_SEMI
	force = GUN_MELEE_FORCE_RIFLE_HEAVY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_T1 //27.5dmg
	weapon_weight = GUN_TWO_HAND_ONLY
	init_recoil = RIFLE_RECOIL(0.75)
	init_firemodes = list(
		SEMI_AUTO_RIFLE
	)
	gun_tags = list(GUN_SCOPE)
	gun_accuracy_zone_type = ZONE_WEIGHT_PRECISION

	can_scope = TRUE
	can_bayonet = TRUE
	bayonet_state = "bayonet"
	knife_x_offset = 24
	knife_y_offset = 21
	scope_state = "scope_long"
	scope_x_offset = 4
	scope_y_offset = 11
	fire_sound = 'sound/f13weapons/hunting_rifle.ogg'
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(RIFLE_MEDIUM_VOLUME),
		SP_VOLUME_SILENCED(RIFLE_MEDIUM_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(RIFLE_MEDIUM_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(RIFLE_MEDIUM_DISTANT_SOUND),
		SP_DISTANT_RANGE(RIFLE_MEDIUM_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * M1 Garand Rifle
 * Heavy semi-auto 7.62mm rifle
 * .308 / 7.62mm
 * More damage
 * Scope!
 * Bayonet!
 * Uncommon
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/m1garand
	name = "M1 Garand"
	desc = "The WWII American Classic. Still has that satisfiying ping."
	icon_state = "m1garand"
	item_state = "rifle"
	icon_prefix = "308"
	mag_type = /obj/item/ammo_box/magazine/garand308
	init_mag_type = /obj/item/ammo_box/magazine/garand308

	slowdown = GUN_SLOWDOWN_RIFLE_MEDIUM_SEMI
	force = GUN_MELEE_FORCE_RIFLE_HEAVY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_T1
	weapon_weight = GUN_TWO_HAND_ONLY
	init_recoil = RIFLE_RECOIL(1.2)
	init_firemodes = list(
		SEMI_AUTO_RIFLE
	)
	gun_accuracy_zone_type = ZONE_WEIGHT_PRECISION

	gun_tags = list(GUN_SCOPE)

	en_bloc = TRUE
	auto_eject = TRUE
	can_bayonet = TRUE
	bayonet_state = "bayonet"
	knife_x_offset = 22
	knife_y_offset = 21
	can_scope = TRUE
	scope_state = "scope_long"
	scope_x_offset = 5
	scope_y_offset = 14
	auto_eject_sound = 'sound/f13weapons/garand_ping.ogg'
	fire_sound = 'sound/f13weapons/hunting_rifle.ogg'
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(RIFLE_MEDIUM_VOLUME),
		SP_VOLUME_SILENCED(RIFLE_MEDIUM_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(RIFLE_MEDIUM_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(RIFLE_MEDIUM_DISTANT_SOUND),
		SP_DISTANT_RANGE(RIFLE_MEDIUM_RANGE_DISTANT)
	)

/obj/item/gun/ballistic/automatic/m1garand/update_icon()
	..()
	icon_state = "[initial(icon_state)]"

/obj/item/gun/ballistic/automatic/m1garand/attackby(obj/item/A, mob/user, params)
	. = ..()
	if(.)
		return

/* * * * * * * * * * *
 * Sniper Rifle
 * Sniper semi-auto 7.62mm rifle
 * .308 / 7.62mm
 * Sloooow to fire
 * Lot more damage
 * Scope!
 * Bayonet!
 * Common
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/sniper
	name = "sniper rifle"
	desc = "A DKS 501, chambered in .308 Winchester.  With a light polymer body, it's suited for long treks through the desert."
	icon_prefix = "sniperrifle"
	icon_state = "sniper_rifle"
	item_state = "sniper_rifle"
	mag_type = /obj/item/ammo_box/magazine/w308
	init_mag_type = /obj/item/ammo_box/magazine/w308

	slowdown = GUN_SLOWDOWN_RIFLE_MEDIUM_SEMI
	force = GUN_MELEE_FORCE_RIFLE_HEAVY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_T3
	weapon_weight = GUN_TWO_HAND_ONLY
	init_recoil = RIFLE_RECOIL(1)
	gun_accuracy_zone_type = ZONE_WEIGHT_PRECISION

	init_firemodes = list(
		SEMI_AUTO_SNIPER
	)

	can_bayonet = FALSE
	can_scope = FALSE
	fire_sound = 'sound/f13weapons/hunting_rifle.ogg'
	zoom_factor = 1.8
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(RIFLE_MEDIUM_VOLUME),
		SP_VOLUME_SILENCED(RIFLE_MEDIUM_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(RIFLE_MEDIUM_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(RIFLE_MEDIUM_DISTANT_SOUND),
		SP_DISTANT_RANGE(RIFLE_MEDIUM_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * Automatic Rifles  *
 * * * * * * * * * * */

/* * * * * * * * * * *
 * Long rifles, but faster
 * Two handed
 * Generally poor accuracy
 * Lot more recoil
 * Lot harder to control
 * Deadly in the right hands
 * Common
 * * * * * * * * * * */

/* * * * * * * * * * *
 * R91 assault rifle
 * Baseline 5.56mm autorifle
 * .223 / 5.56mm
 * Common
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/assault_rifle
	name = "r91 assault rifle"
	desc = "The R91 was the standard US Army assault rifle, and so saw wide-spread use after the war. Most are worn out by now."
	icon_state = "assault_rifle"
	item_state = "fnfal"
	mag_type = /obj/item/ammo_box/magazine/m556/rifle
	init_mag_type = /obj/item/ammo_box/magazine/m556/rifle

	slowdown = GUN_SLOWDOWN_RIFLE_LIGHT_AUTO
	force = GUN_MELEE_FORCE_RIFLE_HEAVY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_0 //baseline 5.56, deals 34.375 damage with 5.56
	weapon_weight = GUN_TWO_HAND_ONLY
	init_recoil = RIFLE_RECOIL(1.1)
	init_firemodes = list(
		FULL_AUTO_250,
		SEMI_AUTO_SMG
	)

	can_bayonet = FALSE
	bayonet_state = "rifles"
	knife_x_offset = 23
	knife_y_offset = 11
	can_suppress = TRUE
	suppressor_x_offset = 32
	suppressor_y_offset = 15
	suppressor_state = "ar_suppressor"
	fire_sound = 'sound/f13weapons/varmint_rifle.ogg'
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(RIFLE_LIGHT_VOLUME),
		SP_VOLUME_SILENCED(RIFLE_LIGHT_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(RIFLE_LIGHT_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(RIFLE_LIGHT_DISTANT_SOUND),
		SP_DISTANT_RANGE(RIFLE_LIGHT_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * Type 93 assault rifle
 * Chinese 5.56mm autorifle
 * Stronger and slower
 * .223 / 5.56mm
 * Uncommon
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/type93
	name = "type 93 assault rifle"
	desc = "The Type 93 Chinese assault rifle was designed and manufactured by a Chinese industrial conglomerate for the People's Liberation Army during the Resource Wars, for the purpose of equipping the Chinese infiltrators and American fifth-columnists. Chambered in 5.56x45."
	icon_state = "type93"
	item_state = "handmade_rifle"
	icon_prefix = "handmade_rifle"
	mag_type = /obj/item/ammo_box/magazine/m556/rifle
	init_mag_type = /obj/item/ammo_box/magazine/m556/rifle

	slowdown = GUN_SLOWDOWN_RIFLE_LIGHT_AUTO
	force = GUN_MELEE_FORCE_RIFLE_HEAVY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_T1 //38dmg
	weapon_weight = GUN_TWO_HAND_ONLY
	init_recoil = RIFLE_RECOIL(1.2) //kick
	init_firemodes = list(
		FULL_AUTO_200,
		BURST_3_ROUND,
		SEMI_AUTO_SMG
	)

	can_suppress = TRUE
	suppressor_state = "rifle_suppressor"
	suppressor_x_offset = 27
	suppressor_y_offset = 27
	fire_sound = 'sound/f13weapons/assaultrifle_fire.ogg'
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(RIFLE_LIGHT_VOLUME),
		SP_VOLUME_SILENCED(RIFLE_LIGHT_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(RIFLE_LIGHT_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(RIFLE_LIGHT_DISTANT_SOUND),
		SP_DISTANT_RANGE(RIFLE_LIGHT_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * Worn Type 93 assault rifle
 * Chinese 5.56mm autorifle
 * .223 / 5.56mm
 * Less damage
 * Less accuracy
 * Slower to shoot
 * Uncommon
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/type93/worn //28dmg
	name = "\improper Worn Type 93"
	desc = "This Type 93 Chinese assault rifle looks like it has been made in a garage. The bore is shot to hell, the threading is destroyed, but atleast it works."
	icon = 'icons/fallout/objects/guns/ballistic.dmi'
	icon_state = "type93"
	item_state = "handmade_rifle"

	slowdown = GUN_SLOWDOWN_RIFLE_LIGHT_AUTO
	force = GUN_MELEE_FORCE_RIFLE_HEAVY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_LESS_DAMAGE_T1
	init_recoil = RIFLE_RECOIL(1.25)
	init_firemodes = list(
		BURST_8_ROUND
	)

	can_suppress = FALSE

/* * * * * * * * * * *
 * BOZAR
 * Heavy 5.56mm autorifle
 * .223 / 5.56mm
 * More damage
 * More accurate
 * Scope!
 * Slower to shoot
 * Uncommon
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/bozar
	name = "bozar"
	desc = "The ultimate refinement of the sniper's art, the Bozar is a scoped, accurate, light machine gun that will make nice big holes in your enemy. Uses 5.56."
	icon_state = "bozar"
	item_state = "sniper"
	slot_flags = SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/m556/rifle
	init_mag_type = /obj/item/ammo_box/magazine/m556/rifle

	slowdown = GUN_SLOWDOWN_RIFLE_MEDIUM_AUTO
	force = GUN_MELEE_FORCE_RIFLE_HEAVY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_T1
	weapon_weight = GUN_TWO_HAND_ONLY
	init_recoil = RIFLE_RECOIL(0.8)
	init_firemodes = list(
		FULL_AUTO_400,
		BURST_5_ROUND,
		SEMI_AUTO_SMG
	)//LMG but alos still just a sniper rifle come on now

	zoomable = TRUE
	fire_sound = 'sound/f13weapons/bozar_fire.ogg'
	zoom_factor = 1.2
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(RIFLE_LIGHT_VOLUME),
		SP_VOLUME_SILENCED(RIFLE_LIGHT_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(RIFLE_LIGHT_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(RIFLE_LIGHT_DISTANT_SOUND),
		SP_DISTANT_RANGE(RIFLE_LIGHT_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * Assault Carbine Rifle
 * Baseline 5mm autorifle
 * 5mm
 * Uncommon
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/assault_carbine
	name = "assault carbine"
	desc = "The U.S. army carbine version of the R91, made by Colt and issued to special forces."
	icon_state = "assault_carbine"
	item_state = "assault_carbine"
	icon_prefix = "assault_carbine"
	slot_flags = 0
	mag_type = /obj/item/ammo_box/magazine/m5mm
	init_mag_type = /obj/item/ammo_box/magazine/m5mm

	slowdown = GUN_SLOWDOWN_RIFLE_LIGHT_AUTO
	force = GUN_MELEE_FORCE_RIFLE_HEAVY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_0 //generic 5mm gun, deals generic 5mm damage
	weapon_weight = GUN_TWO_HAND_ONLY
	init_recoil = CARBINE_RECOIL(0.9)
	init_firemodes = list(
		FULL_AUTO_400,
		BURST_3_ROUND
	)
	can_scope = FALSE
	scope_state = "scope_short"
	scope_x_offset = 4
	scope_y_offset = 15
	can_suppress = TRUE
	suppressor_state = "rifle_suppressor"
	suppressor_x_offset = 26
	suppressor_y_offset = 28
	can_flashlight = TRUE
	gunlight_state = "flightangle"
	flight_x_offset = 21
	flight_y_offset = 21
	fire_sound = 'sound/f13weapons/assault_carbine.ogg'
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(RIFLE_LIGHT_VOLUME),
		SP_VOLUME_SILENCED(RIFLE_LIGHT_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(RIFLE_LIGHT_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(RIFLE_LIGHT_DISTANT_SOUND),
		SP_DISTANT_RANGE(RIFLE_LIGHT_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * AK-112 Assault Rifle
 * Baseline 5mm autorifle
 * 5mm
 * Less damage
 * Accurate
 * Slower to shoot
 * Uncommon
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/assault_carbine/worn
	name = "ak112 assault carbine"
	desc = "An AK-112 5mm Assault Rifle. An old military model bearing Colt markings along its stamped-metal receiver, out of use around the time of the Great War."
	icon = 'icons/fallout/objects/guns/ballistic/ak112.dmi'
	icon_state = "ak112"
	item_state = "fnfal"

	slowdown = GUN_SLOWDOWN_RIFLE_LIGHT_AUTO
	force = GUN_MELEE_FORCE_RIFLE_HEAVY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_LESS_DAMAGE_T1 //not very strong in FO1
	weapon_weight = GUN_TWO_HAND_ONLY
	init_recoil = CARBINE_RECOIL(0.75) //had long range hidden perk in FO1/2
	init_firemodes = list(
		BURST_5_ROUND,
		SEMI_AUTO_SMG
	)
	can_scope = FALSE
	can_suppress = FALSE
	can_flashlight = FALSE

/* * * * * * * * * * *
 * Police Assault Rifle
 * Baseline 5mm autorifle
 * 5mm
 * Craftable
 * shoots slower, has more recoil, deals a smidge more damage
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/assault_carbine/policerifle
	name = "police assault rifle"
	desc = "A pre-war Rifle that has been constantly repaired and rebuilt by the Eastwood Security Force. Held together by duct tape and prayers, it somehow still shoots."
	icon = 'icons/fallout/objects/guns/ballistic.dmi'
	lefthand_file = 'icons/fallout/onmob/weapons/guns_lefthand.dmi'
	righthand_file = 'icons/fallout/onmob/weapons/guns_righthand.dmi'
	icon_state = "rifle-police"

	slowdown = GUN_SLOWDOWN_RIFLE_LIGHT_AUTO
	force = GUN_MELEE_FORCE_RIFLE_HEAVY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_T1 //27.5
	weapon_weight = GUN_TWO_HAND_ONLY
	init_recoil = RIFLE_RECOIL(1)
	init_firemodes = list(
		FULL_AUTO_200,
		SEMI_AUTO_SMG
	)
	gun_tags = list(GUN_SCOPE)
	can_scope = TRUE

/* * * * * * * * * * *
 * M14 Battle Rifle
 * Baseline 7.62 autorifle
 * .308 / 7.62
 * Uncommon
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/m14
	name = "m14 battle rifle"
	desc = "An ancient battle rifle that looks like outdated even by pre-war standards. It has 'Springfield Armory' etched on one-side. It is alarmingly heavy for a rifle."
	icon = 'icons/fallout/objects/guns/ballistic.dmi'
	slot_flags = ITEM_SLOT_BACK
	icon_state = "m14"
	item_state = "308"
	icon_prefix = "rifle"
	mag_type = /obj/item/ammo_box/magazine/m762
	init_mag_type = /obj/item/ammo_box/magazine/m762/ext

	slowdown = GUN_SLOWDOWN_RIFLE_MEDIUM_AUTO
	force = GUN_MELEE_FORCE_RIFLE_HEAVY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_LESS_DAMAGE_T1
	weapon_weight = GUN_TWO_HAND_ONLY
	init_recoil = RIFLE_RECOIL(1.3)
	init_firemodes = list(
		FULL_AUTO_200,
		SEMI_AUTO_SMG
	)
	gun_accuracy_zone_type = ZONE_WEIGHT_PRECISION
	gun_tags = list(GUN_SCOPE)
	can_scope = TRUE
	scope_state = "scope_short"
	scope_x_offset = 4
	scope_y_offset = 15
	fire_sound = 'sound/f13weapons/automaticrifle_BAR.ogg'
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(RIFLE_MEDIUM_VOLUME),
		SP_VOLUME_SILENCED(RIFLE_MEDIUM_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(RIFLE_MEDIUM_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(RIFLE_MEDIUM_DISTANT_SOUND),
		SP_DISTANT_RANGE(RIFLE_MEDIUM_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * Browning Automatic BAR Rifle
 * Baseline 7.62 autorifle
 * .308 / 7.62
 * Uncommon
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/bar
	name = "Browning automatic rifle"
	desc = "An ancient machine gun that looks like outdated even by pre-war standards. It has Colt etched on one-side and Sierra Madre on the other. It is alarmingly heavy for a rifle."
	icon = 'icons/fallout/objects/guns/ballistic/bar.dmi'
	slot_flags = ITEM_SLOT_BACK
	icon_state = "BAR"
	item_state = "BAR"
	icon_prefix = "rifle"
	mag_type = /obj/item/ammo_box/magazine/m762
	init_mag_type = /obj/item/ammo_box/magazine/m762/ext

	slowdown = GUN_SLOWDOWN_RIFLE_MEDIUM_AUTO
	force = GUN_MELEE_FORCE_RIFLE_HEAVY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_0
	weapon_weight = GUN_TWO_HAND_ONLY
	init_recoil = RIFLE_RECOIL(1.3)
	init_firemodes = list(
		FULL_AUTO_200,
		SEMI_AUTO_PISTOL
	)
	gun_accuracy_zone_type = ZONE_WEIGHT_PRECISION

	fire_sound = 'sound/f13weapons/automaticrifle_BAR.ogg'
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(RIFLE_MEDIUM_VOLUME),
		SP_VOLUME_SILENCED(RIFLE_MEDIUM_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(RIFLE_MEDIUM_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(RIFLE_MEDIUM_DISTANT_SOUND),
		SP_DISTANT_RANGE(RIFLE_MEDIUM_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * G11 Rifle
 * Fancy 4.73mm autorifle
 * 4.73mm caseless
 * Fast firing!
 * Uncommon
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/g11
	name = "G11"
	desc = "This experimental gun fires a caseless cartridge consisting of a block of propellant with a bullet buried inside. The weight and space savings allows for a very high magazine capacity. Chambered in 4.73mm."
	icon_state = "g11"
	item_state = "arg"
	mag_type = /obj/item/ammo_box/magazine/m473
	init_mag_type = /obj/item/ammo_box/magazine/m473

	slowdown = GUN_SLOWDOWN_RIFLE_LIGHT_AUTO
	force = GUN_MELEE_FORCE_RIFLE_HEAVY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_0
	weapon_weight = GUN_TWO_HAND_ONLY
	init_recoil = RIFLE_RECOIL(0.8)
	init_firemodes = list(
		BURST_5_ROUND,
		SEMI_AUTO_SMG
	)
	gun_accuracy_zone_type = ZONE_WEIGHT_PRECISION

	can_scope = FALSE
	zoom_factor = 1
	actions_types = list(/datum/action/item_action/toggle_firemode)
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(RIFLE_LIGHT_VOLUME),
		SP_VOLUME_SILENCED(RIFLE_LIGHT_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(RIFLE_LIGHT_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(RIFLE_LIGHT_DISTANT_SOUND),
		SP_DISTANT_RANGE(RIFLE_LIGHT_RANGE_DISTANT)
	)

/* * * * *
 * LMGs  *
 * * * * */

/* * * * * * * * * * *
 * Automatic rifles, but bigger
 * Two handed
 * Generally poor accuracy
 * Lot more recoil
 * Lot harder to control
 * Deadly in the right hands
 * Quick to cool down recoil
 * Rare
 * * * * * * * * * * */

/* * * * * * * * * * *
 * R84 LMG
 * Baseline 5.56mm LMG
 * .223 / 5.56mm
 * Rare
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/r84
	name = "R84 LMG"
	desc = "A light machinegun using 60 round belts fed from an ammobox, its one of the few heavy weapons designs still commonly found."
	icon_state = "R84"
	item_state = "R84"
	mag_type = /obj/item/ammo_box/magazine/lmg
	init_mag_type = /obj/item/ammo_box/magazine/lmg

	slowdown = GUN_SLOWDOWN_RIFLE_LMG
	force = GUN_MELEE_FORCE_RIFLE_HEAVY
	weapon_weight = GUN_TWO_HAND_ONLY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_0
	init_recoil = LMG_RECOIL(1)
	init_firemodes = list(
		FULL_AUTO_250
	)

	fire_sound = 'sound/f13weapons/assaultrifle_fire.ogg'
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(RIFLE_LIGHT_VOLUME),
		SP_VOLUME_SILENCED(RIFLE_LIGHT_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(RIFLE_LIGHT_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(RIFLE_LIGHT_DISTANT_SOUND),
		SP_DISTANT_RANGE(RIFLE_LIGHT_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * LSW LMG
 * Mobile 5.56mm LMG
 * .223 / 5.56mm
 * Lighter!
 * Rare
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/lsw
	name = "light support weapon"
	desc = "This squad-level support weapon has a bullpup design. The bullpup design makes it difficult to use while lying down. Because of this it was remanded to National Guard units. It, however, earned a reputation as a reliable weapon that packs a lot of punch for its size."
	icon = 'icons/obj/guns/projectile.dmi'
	lefthand_file = 'icons/fallout/onmob/weapons/guns_lefthand.dmi'
	righthand_file = 'icons/fallout/onmob/weapons/guns_righthand.dmi'
	icon_state = "lsw"
	item_state = "lsw"
	mag_type = /obj/item/ammo_box/magazine/m556/rifle
	init_mag_type = /obj/item/ammo_box/magazine/m556/rifle

	slowdown = GUN_SLOWDOWN_RIFLE_LMG * 0.8
	weapon_weight = GUN_TWO_HAND_ONLY
	force = GUN_MELEE_FORCE_RIFLE_HEAVY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_0
	init_recoil = LMG_RECOIL(1)
	init_firemodes = list(
		FULL_AUTO_300
	)

	zoom_factor = 1
	can_scope = FALSE
	fire_sound = 'sound/f13weapons/assaultrifle_fire.ogg'
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(RIFLE_LIGHT_VOLUME),
		SP_VOLUME_SILENCED(RIFLE_LIGHT_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(RIFLE_LIGHT_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(RIFLE_LIGHT_DISTANT_SOUND),
		SP_DISTANT_RANGE(RIFLE_LIGHT_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * Browning M1919 MMG
 * Big 7.62mm LMG
 * .308 / 7.62mm
 * The big gun
 * Terrible overall
 * Except that it shoots a lot of 7.62
 * Rare
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/m1919
	name = "Browning M1919"
	desc = "This ancient machine gun has been dug up and put into working order by the Legion Forgemasters. It's loud, heavy and terrifying."
	icon_state = "M38"
	item_state = "M38"
	slot_flags = 0
	slowdown = 1.25
	mag_type = /obj/item/ammo_box/magazine/mm762
	init_mag_type = /obj/item/ammo_box/magazine/mm762

	slowdown = GUN_SLOWDOWN_RIFLE_LMG * 1.5
	force = GUN_MELEE_FORCE_RIFLE_LIGHT
	draw_time = GUN_DRAW_LONG * 2
	damage_multiplier = GUN_EXTRA_DAMAGE_0
	weapon_weight = GUN_TWO_HAND_ONLY
	init_recoil = LMG_RECOIL(1.2)
	init_firemodes = list(
		FULL_AUTO_150
	)

	var/cover_open = FALSE
	var/require_twohands = FALSE
	fire_sound = 'sound/f13weapons/assaultrifle_fire.ogg'
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(RIFLE_MEDIUM_VOLUME),
		SP_VOLUME_SILENCED(RIFLE_MEDIUM_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(RIFLE_MEDIUM_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(RIFLE_MEDIUM_DISTANT_SOUND),
		SP_DISTANT_RANGE(RIFLE_MEDIUM_RANGE_DISTANT)
	)

/obj/item/gun/ballistic/automatic/m1919/update_icon()
	icon_state = "M38[cover_open ? "open" : "closed"][magazine ? CEILING(get_ammo(0)/20, 1)*20 : "-empty"]"
	item_state = "M38[cover_open ? "open" : "closed"][magazine ? "mag" : "nomag"]"

/obj/item/gun/ballistic/automatic/m1919/examine(mob/user)
	. = ..()
	if(cover_open && magazine)
		. += "<span class='notice'>It seems like you could use an <b>empty hand</b> to remove the magazine.</span>"

/obj/item/gun/ballistic/automatic/m1919/attack_self(mob/user)
	cover_open = !cover_open
	to_chat(user, span_notice("You [cover_open ? "open" : "close"] [src]'s cover."))
	if(cover_open)
		playsound(user, 'sound/weapons/sawopen.ogg', 60, 1)
	else
		playsound(user, 'sound/weapons/sawclose.ogg', 60, 1)
	update_icon()

/obj/item/gun/ballistic/automatic/m1919/afterattack(atom/target as mob|obj|turf, mob/living/user as mob|obj, flag, params) //what I tried to do here is just add a check to see if the cover is open or not and add an icon_state change because I can't figure out how c-20rs do it with overlays
	if(cover_open)
		to_chat(user, span_warning("[src]'s cover is open! Close it before firing!"))
	else
		. = ..()
		update_icon()

/obj/item/gun/ballistic/automatic/m1919/on_attack_hand(mob/user, act_intent = user.a_intent, unarmed_attack_flags)
	if(loc != user)
		..()
		return	//let them pick it up
	if(!cover_open || (cover_open && !magazine))
		..()
	else if(cover_open && magazine)
		//drop the mag
		magazine.update_icon()
		magazine.forceMove(drop_location())
		user.put_in_hands(magazine)
		magazine = null
		update_icon()
		to_chat(user, span_notice("You remove the magazine from [src]."))
		playsound(user, 'sound/weapons/magout.ogg', 60, 1)

/obj/item/gun/ballistic/automatic/m1919/attackby(obj/item/A, mob/user, params)
	if(!cover_open && istype(A, mag_type))
		to_chat(user, span_warning("[src]'s cover is closed! You can't insert a new mag."))
		return
	..()



////////
//MISC//
////////

/* * * * * * * * * * *
 * M72 Gauss Rifle
 * Biggest Baddest Superrifle
 * 2mmEC
 * Rare
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/m72
	name = "M72 gauss rifle"
	desc = "The M72 rifle is of German design. It uses an electromagnetic field to propel rounds at tremendous speed... and pierce almost any obstacle. Its range, accuracy and stopping power is almost unparalleled."
	icon_state = "m72"
	item_state = "sniper"
	slot_flags = SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/m2mm
	init_mag_type = /obj/item/ammo_box/magazine/m2mm

	slowdown = GUN_SLOWDOWN_RIFLE_GAUSS
	force = GUN_MELEE_FORCE_RIFLE_HEAVY
	weapon_weight = GUN_TWO_HAND_ONLY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_0
	init_recoil = RIFLE_RECOIL(1.2)

	init_firemodes = list(
		SEMI_AUTO_SNIPER
	)
	gun_accuracy_zone_type = ZONE_WEIGHT_PRECISION // obviously

	can_scope = FALSE
	zoom_factor = 1.2
	fire_sound = 'sound/f13weapons/gauss_rifle.ogg'
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(GAUSS_VOLUME),
		SP_VOLUME_SILENCED(GAUSS_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(GAUSS_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(GAUSS_DISTANT_SOUND),
		SP_DISTANT_RANGE(GAUSS_RANGE_DISTANT)
	)

//////////////////
//UNIQUE SECTION//
//////////////////

//This section is dedicated to unique items; be it leadership unique items OR loot spawn unique items. Each shall be specified in the gun's information.

/* * * * * * * * * * *
 * Infiltrator service rifle
 * Quiet 5.56mm autorifle
 * .223 / 5.56mm
 * Unique - Loot spawn
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/assault_rifle/infiltrator
	name = "Infiltrator"
	desc = "A customized R91 assault rifle, with an integrated suppressor, small scope, cut down stock and polymer furniture."
	icon_state = "infiltrator"
	item_state = "fnfal"

	slowdown = GUN_SLOWDOWN_RIFLE_LIGHT_AUTO
	force = GUN_MELEE_FORCE_RIFLE_HEAVY
	weapon_weight = GUN_TWO_HAND_ONLY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_0
	init_recoil = RIFLE_RECOIL(1.2)
	init_firemodes = list(
		FULL_AUTO_400,
		SEMI_AUTO_NODELAY
	)

	can_suppress = FALSE
	silenced = TRUE
	can_bayonet = FALSE
	can_scope = FALSE
	actions_types = list(/datum/action/item_action/toggle_firemode)
	fire_sound_silenced = 'sound/weapons/Gunshot_large_silenced.ogg'
	zoom_factor = 0.8
	gun_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(RIFLE_LIGHT_VOLUME),
		SP_VOLUME_SILENCED(RIFLE_LIGHT_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(RIFLE_LIGHT_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(RIFLE_LIGHT_DISTANT_SOUND),
		SP_DISTANT_RANGE(RIFLE_LIGHT_RANGE_DISTANT)
	)

/* * * * * * * * * * *
 * Old Glory Rifle
 * Heavier semi-auto 7.62mm rifle
 * .308 / 7.62mm
 * Even more damage
 * Scope!
 * Bayonet!
 * Unique - Loot spawn
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/m1garand/oldglory
	name = "Old Glory"
	desc = "This Machine kills communists!"
	icon_state = "oldglory"

	slowdown = GUN_SLOWDOWN_RIFLE_MEDIUM_SEMI
	force = GUN_MELEE_FORCE_RIFLE_HEAVY
	weapon_weight = GUN_TWO_HAND_ONLY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_T2
	init_recoil = RIFLE_RECOIL(1)

/* * * * * * * * * * *
 * Republic's Pride Rifle
 * Heavy semi-auto 7.62mm rifle
 * .308 / 7.62mm
 * More damage
 * Scope!
 * Bayonet!
 * Unique - NCR Captain (Spawn - head gun)
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/m1garand/republicspride
	name = "Republic's Pride"
	desc = "A well-tuned scoped M1C rifle crafted by master gunsmith from the Gunrunners. Chambered in 7.62x51."
	icon_state = "republics_pride"
	item_state = "scoped308"

	slowdown = GUN_SLOWDOWN_RIFLE_MEDIUM_SEMI
	force = GUN_MELEE_FORCE_RIFLE_HEAVY
	weapon_weight = GUN_TWO_HAND_ONLY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_T2
	init_recoil = RIFLE_RECOIL(1)

	zoom_factor = 1.2
	can_scope = FALSE

/* * * * * * * * * * *
 * Explorer Sniper Rifle
 * Legion Sniper semi-auto 7.62mm rifle
 * .308 / 7.62mm
 * Less damage
 * Less slowdown
 * Scope!
 * Bayonet!
 * Unique - Legion Ven (Spawn - head gun)
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/sniper/snipervenator
	name = "speculator sniper rifle"
	desc = "The customized sniper rifle, fitted with a telescopic sight for extreme accuracy and chambered for a high-ballistic performance centerfire cartridge. It is a superior version of the regular sniper rifle and is decorated with the flag of the bull and tokens of a hunt."
	lefthand_file = 'icons/fallout/onmob/weapons/guns_lefthand.dmi'
	righthand_file = 'icons/fallout/onmob/weapons/guns_righthand.dmi'
	icon = 'icons/fallout/objects/guns/ballistic.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/backslot_weapon.dmi'
	icon_state = "venator_sniper"
	item_state = "venator_sniper"

	slowdown = GUN_SLOWDOWN_RIFLE_LIGHT_SEMI
	force = GUN_MELEE_FORCE_RIFLE_HEAVY
	weapon_weight = GUN_ONE_HAND_ONLY
	draw_time = GUN_DRAW_LONG
	damage_multiplier = GUN_EXTRA_DAMAGE_0

/* * * * * * * * * * *
 * Browning M2A1 HMG
 * BIIIIG .50 cal MG
 * .50 cal
 * The big gun
 * holy shit
 * Unique - Don't ever spawn this ever or face the consequences of your very poor decisions
 * * * * * * * * * * */

/obj/item/gun/ballistic/automatic/m1919/m2a1
	name = "John 'Moses' Browning M2A1"
	desc = "This ancient heavy machine gun has been directly pulled off of some once combat vehicle and modified to be fired while being carried. It is adorned by symbols of the US Government and the Encalve."
	icon = 'icons/fallout/objects/guns/ballistic.dmi'
	icon_state = "m2a1"
	slot_flags = 0
	slowdown = 1.25
	mag_type = /obj/item/ammo_box/magazine/cal50
	init_mag_type = /obj/item/ammo_box/magazine/cal50
	init_firemodes = list(
		FULL_AUTO_300
	)
