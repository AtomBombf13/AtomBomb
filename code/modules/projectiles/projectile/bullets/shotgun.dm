/* buckshot pellet
 * DAMAGE: 11
 * STAMIN: 1
 * RECOIL: 2
 * WOUNDS: 0
 * WNAKED: 0
 */
/obj/item/projectile/bullet/pellet/shotgun_buckshot
	name = "buckshot pellet"
	damage = BULLET_DAMAGE_SHOTGUN_PELLET * BULLET_SURPLUS_MULT
	stamina = BULLET_STAMINA_SHOTGUN_PELLET * BULLET_SURPLUS_MULT
	spread = BULLET_SPREAD_SURPLUS
	recoil = BULLET_RECOIL_SHOTGUN_SLUG

	wound_bonus = BULLET_WOUND_SHOTGUN_PELLET * BULLET_SURPLUS_MULT
	bare_wound_bonus = BULLET_WOUND_SHOTGUN_PELLET * BULLET_NAKED_WOUND_MULT
	wound_falloff_tile = BULLET_WOUND_FALLOFF_SHOTGUN_PELLET

	pixels_per_second = BULLET_SPEED_SHOTGUN_PELLET
	damage_falloff = BULLET_FALLOFF_DEFAULT_SHOTGUN_PELLET
	zone_accuracy_type = ZONE_WEIGHT_SHOTGUN

/* magnum buckshot pellet
 * DAMAGE: 11
 * STAMIN: 1
 * RECOIL: 2
 * WOUNDS: 0
 * WNAKED: 0
 */
/obj/item/projectile/bullet/pellet/shotgun_magnum
	name = "magnum buckshot pellet"
	damage = BULLET_DAMAGE_SHOTGUN_MAGNUM * BULLET_SURPLUS_MULT
	stamina = BULLET_STAMINA_SHOTGUN_PELLET * BULLET_SURPLUS_MULT
	spread = BULLET_SPREAD_SURPLUS
	recoil = BULLET_RECOIL_SHOTGUN_SLUG

	wound_bonus = BULLET_WOUND_SHOTGUN_PELLET * BULLET_SURPLUS_MULT
	bare_wound_bonus = BULLET_WOUND_SHOTGUN_PELLET * BULLET_NAKED_WOUND_MULT
	wound_falloff_tile = BULLET_WOUND_FALLOFF_SHOTGUN_PELLET

	pixels_per_second = BULLET_SPEED_SHOTGUN_PELLET
	damage_falloff = BULLET_FALLOFF_DEFAULT_SHOTGUN_PELLET
	zone_accuracy_type = ZONE_WEIGHT_SHOTGUN

/* rubber pellet
 * DAMAGE: 1
 * STAMIN: 11
 * RECOIL: 2
 * WOUNDS: 0
 * WNAKED: 0
 */
/obj/item/projectile/bullet/pellet/shotgun_rubbershot
	name = "rubbershot pellet"
	damage = BULLET_DAMAGE_SHOTGUN_PELLET * BULLET_SURPLUS_MULT * RUBBERY_DAMAGE_MULT
	stamina = RUBBERY_STAMINA_SHOTGUN_PELLET * BULLET_SURPLUS_MULT
	spread = BULLET_SPREAD_SURPLUS
	recoil = BULLET_RECOIL_SHOTGUN_SLUG

	wound_bonus = RUBBERY_WOUND_SHOTGUN_PELLET * BULLET_SURPLUS_MULT
	bare_wound_bonus = RUBBERY_WOUND_SHOTGUN_PELLET * BULLET_NAKED_WOUND_MULT
	wound_falloff_tile = BULLET_WOUND_FALLOFF_SHOTGUN_PELLET

	pixels_per_second = BULLET_SPEED_SHOTGUN_PELLET
	sharpness = SHARP_NONE
	embedding = null
	damage_falloff = BULLET_FALLOFF_DEFAULT_SHOTGUN_PELLET
	zone_accuracy_type = ZONE_WEIGHT_PRECISION

/* handload pellet
 * DAMAGE: 8
 * STAMIN: 1
 * RECOIL: 2
 * WOUNDS: 0
 * WNAKED: 0
 */
/obj/item/projectile/bullet/pellet/shotgun_improvised
	damage = BULLET_DAMAGE_SHOTGUN_PELLET * BULLET_HANDLOAD_MULT
	stamina = BULLET_STAMINA_SHOTGUN_PELLET * BULLET_HANDLOAD_MULT
	spread = BULLET_SPREAD_HANDLOAD
	recoil = BULLET_RECOIL_SHOTGUN_SLUG

	wound_bonus = BULLET_WOUND_SHOTGUN_PELLET * BULLET_HANDLOAD_MULT
	bare_wound_bonus = BULLET_WOUND_SHOTGUN_PELLET * BULLET_NAKED_WOUND_MULT
	wound_falloff_tile = BULLET_WOUND_FALLOFF_SHOTGUN_PELLET

	pixels_per_second = BULLET_SPEED_SHOTGUN_PELLET
	damage_falloff = BULLET_FALLOFF_DEFAULT_SHOTGUN_PELLET
	zone_accuracy_type = ZONE_WEIGHT_SHOTGUN

/obj/item/projectile/bullet/pellet/shotgun_improvised/Initialize()
	. = ..()
	range = rand(4, 8)

/obj/item/projectile/bullet/pellet/shotgun_improvised/on_range()
	do_sparks(1, TRUE, get_turf(src))
	..()

/obj/item/projectile/bullet/pellet/shotgun_improvised/on_hit(atom/target, blocked = FALSE)
	if(prob(50))
		do_sparks(1, FALSE, get_turf(target))
	..()

/* 12g slug
 * DAMAGE: 50
 * STAMIN: 10
 * RECOIL: 2
 * WOUNDS: 40
 * WNAKED: 30
 */
/obj/item/projectile/bullet/shotgun_slug
	name = "12g shotgun slug"
	damage = BULLET_DAMAGE_SHOTGUN_SLUG * BULLET_SURPLUS_MULT
	stamina = BULLET_STAMINA_SHOTGUN_SLUG * BULLET_SURPLUS_MULT
	spread = BULLET_SPREAD_SURPLUS
	recoil = BULLET_RECOIL_SHOTGUN_SLUG

	wound_bonus = BULLET_WOUND_SHOTGUN_SLUG * BULLET_SURPLUS_MULT
	bare_wound_bonus = BULLET_WOUND_SHOTGUN_SLUG * BULLET_NAKED_WOUND_MULT
	wound_falloff_tile = BULLET_WOUND_FALLOFF_SHOTGUN_SLUG

	pixels_per_second = BULLET_SPEED_SHOTGUN_SLUG
	damage_falloff = BULLET_FALLOFF_DEFAULT_SHOTGUN_SLUG
	zone_accuracy_type = ZONE_WEIGHT_SEMI_AUTO

/* 12g slug
 * DAMAGE: 50
 * STAMIN: 10
 * RECOIL: 2
 * WOUNDS: 80
 * WNAKED: 30
 */
/obj/item/projectile/bullet/shotgun_slug/executioner
	name = "executioner slug" // admin only, can dismember limbs
	damage = BULLET_DAMAGE_SHOTGUN_SLUG * BULLET_SURPLUS_MULT
	stamina = BULLET_STAMINA_SHOTGUN_SLUG * BULLET_SURPLUS_MULT
	spread = BULLET_SPREAD_SURPLUS
	recoil = BULLET_RECOIL_SHOTGUN_SLUG

	wound_bonus = 80
	bare_wound_bonus = BULLET_WOUND_SHOTGUN_SLUG * BULLET_NAKED_WOUND_MULT
	wound_falloff_tile = BULLET_WOUND_FALLOFF_SHOTGUN_SLUG

	pixels_per_second = BULLET_SPEED_SHOTGUN_SLUG
	sharpness = SHARP_EDGED
	damage_falloff = BULLET_FALLOFF_DEFAULT_SHOTGUN_SLUG
	zone_accuracy_type = ZONE_WEIGHT_SEMI_AUTO

/* 12g slug
 * DAMAGE: 50
 * STAMIN: 10
 * RECOIL: 2
 * WOUNDS: 80
 * WNAKED: 30
 */
/obj/item/projectile/bullet/shotgun_slug/pulverizer
	name = "pulverizer slug" // admin only, can crush bones
	damage = BULLET_DAMAGE_SHOTGUN_SLUG * BULLET_SURPLUS_MULT
	stamina = BULLET_STAMINA_SHOTGUN_SLUG * BULLET_SURPLUS_MULT
	spread = BULLET_SPREAD_SURPLUS
	recoil = BULLET_RECOIL_SHOTGUN_SLUG

	wound_bonus = 80
	bare_wound_bonus = BULLET_WOUND_SHOTGUN_SLUG * BULLET_NAKED_WOUND_MULT
	wound_falloff_tile = BULLET_WOUND_FALLOFF_SHOTGUN_SLUG

	pixels_per_second = BULLET_SPEED_SHOTGUN_SLUG
	sharpness = SHARP_NONE
	damage_falloff = BULLET_FALLOFF_DEFAULT_SHOTGUN_SLUG
	zone_accuracy_type = ZONE_WEIGHT_SEMI_AUTO

/* 12g beanbag
 * DAMAGE: 5
 * STAMIN: 100
 * RECOIL: 2
 * WOUNDS: 40
 * WNAKED: 30
 */
/obj/item/projectile/bullet/shotgun_beanbag
	name = "beanbag slug"
	damage = BULLET_DAMAGE_SHOTGUN_SLUG * BULLET_SURPLUS_MULT * RUBBERY_DAMAGE_MULT
	stamina = RUBBERY_STAMINA_SHOTGUN_SLUG * BULLET_SURPLUS_MULT
	spread = BULLET_SPREAD_SURPLUS
	recoil = BULLET_RECOIL_SHOTGUN_SLUG

	wound_bonus = RUBBERY_WOUND_SHOTGUN_SLUG * BULLET_SURPLUS_MULT
	bare_wound_bonus = RUBBERY_WOUND_SHOTGUN_SLUG * BULLET_NAKED_WOUND_MULT
	wound_falloff_tile = BULLET_WOUND_FALLOFF_SHOTGUN_SLUG

	pixels_per_second = BULLET_SPEED_SHOTGUN_SLUG
	sharpness = SHARP_NONE
	damage_falloff = BULLET_FALLOFF_DEFAULT_SHOTGUN_SLUG
	zone_accuracy_type = ZONE_WEIGHT_PRECISION

/* 12g slug fire
 * DAMAGE: 25
 * STAMIN: 50
 * RECOIL: 2
 * WOUNDS: 40
 * WNAKED: 0
 */
/obj/item/projectile/bullet/incendiary/shotgun
	name = "incendiary slug"
	damage = BULLET_DAMAGE_SHOTGUN_SLUG * BULLET_SURPLUS_MULT * BULLET_DAMAGE_FIRE
	stamina = RUBBERY_STAMINA_SHOTGUN_SLUG * BULLET_SURPLUS_MULT * BULLET_STAMINA_FIRE
	spread = BULLET_SPREAD_SURPLUS
	recoil = BULLET_RECOIL_SHOTGUN_SLUG

	wound_bonus = RUBBERY_WOUND_SHOTGUN_SLUG * BULLET_SURPLUS_MULT * BULLET_WOUND_FIRE
	bare_wound_bonus = RUBBERY_WOUND_SHOTGUN_SLUG * BULLET_NAKED_WOUND_MULT * BULLET_NAKED_WOUND_FIRE
	wound_falloff_tile = BULLET_WOUND_FALLOFF_SHOTGUN_SLUG

	pixels_per_second = BULLET_SPEED_SHOTGUN_SLUG
	sharpness = SHARP_NONE
	damage_falloff = BULLET_FALLOFF_DEFAULT_SHOTGUN_SLUG
	zone_accuracy_type = ZONE_WEIGHT_SEMI_AUTO

/* 12g pellet fire
 * DAMAGE: 5
 * STAMIN: 5
 * RECOIL: 2
 * WOUNDS: 0
 * WNAKED: 0
 */
/obj/item/projectile/bullet/incendiary/shotgun/dragonsbreath
	name = "dragonsbreath pellet"
	damage = BULLET_DAMAGE_SHOTGUN_PELLET * BULLET_SURPLUS_MULT * BULLET_DAMAGE_FIRE
	stamina = RUBBERY_STAMINA_SHOTGUN_PELLET * BULLET_SURPLUS_MULT * BULLET_STAMINA_FIRE
	spread = BULLET_SPREAD_SURPLUS
	damage_type = BURN
	recoil = BULLET_RECOIL_SHOTGUN_SLUG

	wound_bonus = RUBBERY_WOUND_SHOTGUN_PELLET * BULLET_SURPLUS_MULT * BULLET_WOUND_FIRE
	bare_wound_bonus = RUBBERY_WOUND_SHOTGUN_PELLET * BULLET_NAKED_WOUND_MULT * BULLET_NAKED_WOUND_FIRE
	wound_falloff_tile = BULLET_WOUND_FALLOFF_SHOTGUN_PELLET

	pixels_per_second = BULLET_SPEED_SHOTGUN_PELLET
	sharpness = SHARP_NONE
	damage_falloff = BULLET_FALLOFF_DEFAULT_SHOTGUN_PELLET
	zone_accuracy_type = ZONE_WEIGHT_SHOTGUN

/* 12g pellet fire
 * DAMAGE: 5
 * STAMIN: 5
 * RECOIL: 2
 * WOUNDS: 0
 * WNAKED: 0
 */
/obj/item/projectile/incendiary/flamethrower
	name = "FIREEEEEEEEEE!!!!!"
	icon = 'icons/effects/fire.dmi'
	icon_state = "3"
	light_range = LIGHT_RANGE_FIRE
	light_color = LIGHT_COLOR_FIRE
	damage = BULLET_DAMAGE_SHOTGUN_PELLET * BULLET_SURPLUS_MULT * BULLET_DAMAGE_FIRE
	stamina = RUBBERY_STAMINA_SHOTGUN_PELLET * BULLET_SURPLUS_MULT * BULLET_STAMINA_FIRE
	spread = BULLET_SPREAD_SURPLUS
	damage_type = BURN
	recoil = BULLET_RECOIL_SHOTGUN_SLUG

	wound_bonus = RUBBERY_WOUND_SHOTGUN_PELLET * BULLET_SURPLUS_MULT * BULLET_WOUND_FIRE
	bare_wound_bonus = RUBBERY_WOUND_SHOTGUN_PELLET * BULLET_NAKED_WOUND_MULT * BULLET_NAKED_WOUND_FIRE
	wound_falloff_tile = BULLET_WOUND_FALLOFF_SHOTGUN_PELLET

	pixels_per_second = BULLET_SPEED_SHOTGUN_PELLET
	sharpness = SHARP_NONE
	damage_falloff = BULLET_FALLOFF_DEFAULT_SHOTGUN_PELLET
	zone_accuracy_type = ZONE_WEIGHT_SHOTGUN

/obj/item/projectile/incendiary/flamethrower/on_hit(atom/target)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.adjust_fire_stacks(3)
		M.IgniteMob()

/* 12g slug stun
 * DAMAGE: 5
 * STAMIN: 100
 * RECOIL: 2
 * WOUNDS: 40
 * WNAKED: 30
 */
/obj/item/projectile/bullet/shotgun_stunslug
	name = "stunslug"
	damage = BULLET_DAMAGE_SHOTGUN_SLUG * BULLET_SURPLUS_MULT * RUBBERY_DAMAGE_MULT
	stamina = RUBBERY_STAMINA_SHOTGUN_SLUG * BULLET_SURPLUS_MULT
	spread = BULLET_SPREAD_SURPLUS
	recoil = BULLET_RECOIL_SHOTGUN_SLUG

	wound_bonus = RUBBERY_WOUND_SHOTGUN_SLUG * BULLET_SURPLUS_MULT
	bare_wound_bonus = RUBBERY_WOUND_SHOTGUN_SLUG * BULLET_NAKED_WOUND_MULT
	wound_falloff_tile = BULLET_WOUND_FALLOFF_SHOTGUN_SLUG

	pixels_per_second = BULLET_SPEED_SHOTGUN_SLUG
	sharpness = SHARP_NONE
	zone_accuracy_type = ZONE_WEIGHT_PRECISION
	damage_falloff = BULLET_FALLOFF_DEFAULT_SHOTGUN_SLUG

	stutter = 5
	jitter = 20
	range = 7
	icon_state = "spark"
	color = "#FFFF00"
	var/tase_duration = 50

/obj/item/projectile/bullet/shotgun_stunslug/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(!ismob(target) || blocked >= 100) //Fully blocked by mob or collided with dense object - burst into sparks!
		do_sparks(1, TRUE, src)
	if(iscarbon(target))
		var/mob/living/carbon/C = target
		SEND_SIGNAL(C, COMSIG_ADD_MOOD_EVENT, "tased", /datum/mood_event/tased)
		SEND_SIGNAL(C, COMSIG_LIVING_MINOR_SHOCK)
		C.IgniteMob()
		if(C.dna && C.dna.check_mutation(HULK))
			C.say(pick(";RAAAAAAAARGH!", ";HNNNNNNNNNGGGGGGH!", ";GWAAAAAAAARRRHHH!", "NNNNNNNNGGGGGGGGHH!", ";AAAAAAARRRGH!" ), forced = "hulk")
		else if(tase_duration && (C.status_flags & CANKNOCKDOWN) && !HAS_TRAIT(C, TRAIT_STUNIMMUNE) && !HAS_TRAIT(C, TRAIT_TASED_RESISTANCE))
			C.electrocute_act(15, src, 1, SHOCK_NOSTUN)
			C.apply_status_effect(STATUS_EFFECT_TASED_WEAK, tase_duration)

#define BULLET_METEORSLUG_DAMAGE_MULT 0.8
#define BULLET_METEORSLUG_STAMINA_MULT 1.5
#define BULLET_METEORSLUG_WOUND_MULT 1
#define BULLET_METEORSLUG_NAKED_WOUND_MULT 1
#define BULLET_METEORSLUG_SPEED_MULT 0.8

/* 12g slug meteor
 * DAMAGE: 40
 * STAMIN: 15
 * RECOIL: 2
 * WOUNDS: 40
 * WNAKED: 30
 */
/obj/item/projectile/bullet/shotgun_meteorslug
	name = "meteorslug"
	icon = 'icons/obj/meteor.dmi'
	icon_state = "dust"
	damage = BULLET_DAMAGE_SHOTGUN_SLUG * BULLET_SURPLUS_MULT * BULLET_METEORSLUG_DAMAGE_MULT
	stamina = BULLET_STAMINA_SHOTGUN_SLUG * BULLET_SURPLUS_MULT * BULLET_METEORSLUG_STAMINA_MULT
	spread = BULLET_SPREAD_SURPLUS
	recoil = BULLET_RECOIL_SHOTGUN_SLUG

	wound_bonus = BULLET_WOUND_SHOTGUN_SLUG * BULLET_SURPLUS_MULT * BULLET_METEORSLUG_WOUND_MULT
	bare_wound_bonus = BULLET_WOUND_SHOTGUN_SLUG * BULLET_NAKED_WOUND_MULT * BULLET_METEORSLUG_NAKED_WOUND_MULT
	wound_falloff_tile = BULLET_WOUND_FALLOFF_SHOTGUN_SLUG

	pixels_per_second = BULLET_SPEED_SHOTGUN_SLUG * BULLET_METEORSLUG_SPEED_MULT
	sharpness = SHARP_NONE
	knockdown = 80
	hitsound = 'sound/effects/meteorimpact.ogg'
	damage_falloff = BULLET_FALLOFF_DEFAULT_SHOTGUN_SLUG
	zone_accuracy_type = ZONE_WEIGHT_SEMI_AUTO

/obj/item/projectile/bullet/shotgun_meteorslug/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(ismovable(target))
		var/atom/movable/M = target
		var/atom/throw_target = get_edge_target_turf(M, get_dir(src, get_step_away(M, src)))
		M.safe_throw_at(throw_target, 3, 2)

/obj/item/projectile/bullet/shotgun_meteorslug/Initialize()
	. = ..()
	SpinAnimation()

#undef BULLET_METEORSLUG_DAMAGE_MULT
#undef BULLET_METEORSLUG_STAMINA_MULT
#undef BULLET_METEORSLUG_WOUND_MULT
#undef BULLET_METEORSLUG_NAKED_WOUND_MULT
#undef BULLET_METEORSLUG_SPEED_MULT

/* 12g slug explode
 * DAMAGE: 25
 * STAMIN: 5
 * RECOIL: 2
 * WOUNDS: 80
 * WNAKED: 60
 */
/obj/item/projectile/bullet/shotgun_frag12
	name ="frag12 slug"
	damage = BULLET_DAMAGE_SHOTGUN_SLUG * BULLET_SURPLUS_MULT * BULLET_DAMAGE_EXPLOSIVE
	stamina = BULLET_STAMINA_SHOTGUN_SLUG * BULLET_SURPLUS_MULT * BULLET_STAMINA_EXPLOSIVE
	spread = BULLET_SPREAD_SURPLUS
	recoil = BULLET_RECOIL_SHOTGUN_SLUG

	wound_bonus = BULLET_WOUND_SHOTGUN_SLUG * BULLET_SURPLUS_MULT * BULLET_WOUND_EXPLOSIVE
	bare_wound_bonus = BULLET_WOUND_SHOTGUN_SLUG * BULLET_NAKED_WOUND_MULT * BULLET_NAKED_WOUND_EXPLOSIVE
	wound_falloff_tile = BULLET_WOUND_FALLOFF_SHOTGUN_SLUG

	pixels_per_second = BULLET_SPEED_SHOTGUN_SLUG
	knockdown = 50
	damage_falloff = BULLET_FALLOFF_DEFAULT_SHOTGUN_SLUG
	zone_accuracy_type = ZONE_WEIGHT_SEMI_AUTO

/obj/item/projectile/bullet/shotgun_frag12/on_hit(atom/target, blocked = FALSE)
	..()
	explosion(target, -1, 0, 1)
	return BULLET_ACT_HIT

// Mech Scattershots

/obj/item/projectile/bullet/scattershot
	damage = 16
	armour_penetration = BULLET_PENETRATION_HEAVY
	damage_threshold_penetration = BULLET_DT_PENETRATION_RIFLE
	icon_state = "mech_autocannon"
	light_range = 1.5
	light_power = 0.3
	light_color = "#FF7F01"

/obj/item/projectile/bullet/seed
	damage = 6
	stamina = 1

/obj/item/projectile/bullet/pellet/shotgun_incapacitate
	name = "incapacitating pellet"
	damage = 1
	stamina = 6

/obj/item/projectile/bullet/pellet/magnum_buckshot
	name = "magnum buckshot pellet"
	damage = 15
	armour_penetration = 0.15
	wound_bonus = 10
	bare_wound_bonus = 10

// BETA STUFF // Obsolete
/obj/item/projectile/bullet/pellet/shotgun_buckshot/test
	name = "buckshot pellet"
	damage = 0
