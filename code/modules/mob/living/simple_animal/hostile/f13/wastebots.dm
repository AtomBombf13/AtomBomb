/*IN THIS FILE:
-Handy
-Gutsy
-Protectrons
-Robobrains
-Assaultrons
*/

/mob/living/simple_animal/hostile/handy
	name = "mr. handy"
	desc = "A crazed pre-war household assistant robot, armed with a cutting saw."
	icon = 'icons/fallout/mobs/robots/wasterobots.dmi'
	icon_state = "handy"
	icon_living = "handy"
	icon_dead = "robot_dead"
	gender = NEUTER
	mob_biotypes = MOB_ROBOTIC|MOB_INORGANIC
	move_resist = MOVE_FORCE_OVERPOWERING // Can't be pulled
	health = 130 //7 shots of 9mm
	maxHealth = 104
	healable = FALSE
	stat_attack = CONSCIOUS
	auto_fire_delay = MOB_AUTOFIRE_DELAY_SLOWER
	melee_damage_lower = 14
	melee_damage_upper = 28
	robust_searching = TRUE
	attack_verb_simple = "saws"
	faction = list("wastebot")
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 0
	speak_emote = list("states")
	gold_core_spawnable = HOSTILE_SPAWN
	del_on_death = TRUE
	deathmessage = "blows apart!"
	taunt_chance = 30
	blood_volume = 0

	emote_taunt_sound = list('sound/f13npc/handy/taunt1.ogg', 'sound/f13npc/handy/taunt2.ogg')
	emote_taunt = list("raises a saw")

	aggrosound = list('sound/f13npc/handy/aggro1.ogg', 'sound/f13npc/handy/aggro2.ogg')
	idlesound = list('sound/f13npc/handy/idle1.wav', 'sound/f13npc/handy/idle2.ogg', 'sound/f13npc/handy/idle3.ogg')

	death_sound = 'sound/f13npc/handy/robo_death.ogg'
	attack_sound = 'sound/f13npc/handy/attack.wav'

	damage_coeff = list(BRUTE = 1, BURN = 1, TOX = 0, CLONE = 0, STAMINA = 0, OXY = 0)
	loot = list(/obj/effect/decal/cleanable/robot_debris, /obj/item/stack/crafting/electronicparts/three)

/mob/living/simple_animal/hostile/handy/Initialize()
	. = ..()
	add_overlay("eyes-[initial(icon_state)]")

/mob/living/simple_animal/hostile/handy/nsb //NSB + Raider Bunker specific
	name = "mr.handy"
	aggro_vision_range = 15
	faction = list("raider")
	obj_damage = 300

/mob/living/simple_animal/hostile/handy/gutsy
	name = "mr. gutsy"
	desc = "A pre-war combat robot based off the Mr. Handy design, armed with plasma weaponry and a deadly close-range flamer."
	icon_state = "gutsy"
	icon_living = "gutsy"
	icon_dead = "robot_dead"
	health = 140
	maxHealth = 140
	melee_damage_lower = 20
	melee_damage_upper = 72
	stat_attack = 1
	attack_sound = 'sound/items/welder.ogg'
	attack_verb_simple = "shoots a burst of flame at"
	projectilesound = 'sound/weapons/laser.ogg'
	projectiletype = /obj/item/projectile/f13plasma/scatter
	extra_projectiles = 1
	ranged = TRUE
	retreat_distance = 4
	minimum_distance = 4
	check_friendly_fire = TRUE
	loot = list(/obj/effect/decal/cleanable/robot_debris, /obj/item/stack/crafting/electronicparts/three, /obj/item/stock_parts/cell/ammo/mfc)

	emote_taunt_sound = list('sound/f13npc/gutsy/taunt1.ogg', 'sound/f13npc/gutsy/taunt2.ogg', 'sound/f13npc/gutsy/taunt3.ogg', 'sound/f13npc/gutsy/taunt4.ogg')
	emote_taunt = list("raises a flamer")

	aggrosound = list('sound/f13npc/gutsy/aggro1.ogg', 'sound/f13npc/gutsy/aggro2.ogg', 'sound/f13npc/gutsy/aggro3.ogg', 'sound/f13npc/gutsy/aggro4.ogg', 'sound/f13npc/gutsy/aggro5.ogg', 'sound/f13npc/gutsy/aggro6.ogg')
	idlesound = list('sound/f13npc/gutsy/idle1.ogg', 'sound/f13npc/gutsy/idle2.ogg', 'sound/f13npc/gutsy/idle3.ogg')
	projectile_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(PLASMA_VOLUME),
		SP_VOLUME_SILENCED(PLASMA_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(PLASMA_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(PLASMA_DISTANT_SOUND),
		SP_DISTANT_RANGE(PLASMA_RANGE_DISTANT)
	)

/mob/living/simple_animal/hostile/handy/gutsy/nsb //NSB + Raider Bunker specific
	name = "mr. gutsy"
	aggro_vision_range = 15
	faction = list("raider")
	obj_damage = 300

/mob/living/simple_animal/hostile/handy/liberator
	name = "liberator mk.0"
	desc = "A small pre-War drone airdropped by the People's Liberation Army all over the United States in the last days of the war. This is a prototype model."
	icon = 'icons/fallout/mobs/robots/weirdrobots.dmi'
	icon_state = "liberator"
	icon_living = "liberator"
	icon_dead = "liberator_d"
	icon_gib = "liberator_g"
	health = 30 //2 with a pistol, 1 with a magnum
	maxHealth = 30
	speed = -1 //speedy buggers
	melee_damage_lower = 1 //they either hit your shin or your neck
	melee_damage_upper = 20
	attack_verb_simple = "slashes"
	projectilesound = 'sound/weapons/laser.ogg'
	faction = list("china", "wastebots") //they will not shoot remnants
	projectiletype = /obj/item/projectile/beam/laser/pistol/wattz/hitscan
	extra_projectiles = 0 //hitscans shouldnt be spammed at a player
	ranged = TRUE
	retreat_distance = 2
	minimum_distance = 2
	check_friendly_fire = TRUE
	loot = list(/obj/effect/decal/cleanable/robot_debris, /obj/item/stack/crafting/electronicparts/three, /obj/item/stock_parts/cell/ammo/ecp)
	emote_taunt_sound = ('sound/f13npc/liberator/liberator_taunt1.ogg')
	emote_taunt = list("levels its laser")
	aggrosound = list('sound/f13npc/liberator/liberator_aggro1.ogg', 'sound/f13npc/liberator/liberator_aggro2.ogg')
	idlesound = null
	death_sound = null
	attack_sound = null
	projectile_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(LASER_VOLUME),
		SP_VOLUME_SILENCED(LASER_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(LASER_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(LASER_DISTANT_SOUND),
		SP_DISTANT_RANGE(LASER_RANGE_DISTANT)
	)

/mob/living/simple_animal/hostile/handy/liberator/yellow
	name = "liberator mk.1"
	desc = "A small pre-War drone airdropped by the People's Liberation Army all over the United States in the last days of the war. This is an early limited-production model."
	melee_damage_lower = 2 //still random
	melee_damage_upper = 30
	health = 51 //3 with a pistol, 2 with a magnum
	maxHealth = 51
	extra_projectiles = 1 //just a bit of spam
	icon_state = "liberator_y"
	icon_living = "liberator_y"
	icon_dead = "liberator_y_d"

//if anyone can give liberators a pounce ability, that would be neat

/mob/living/simple_animal/hostile/handy/robobrain
	name = "robobrain"
	desc = "A next-gen cybor developed by General Atomic International"
	icon = 'icons/fallout/mobs/robots/wasterobots.dmi'
	icon_state = "robobrain"
	icon_living = "robobrain"
	icon_dead = "robobrain_d"
	health = 144
	maxHealth = 144
	melee_damage_lower = 20
	melee_damage_upper = 45
	attack_verb_simple = "slaps"
	projectilesound = 'sound/weapons/laser.ogg'
	projectiletype = /obj/item/projectile/beam/laser
	extra_projectiles = 1
	ranged = TRUE
	retreat_distance = 2
	minimum_distance = 2
	check_friendly_fire = TRUE
	loot = list(/obj/effect/decal/cleanable/robot_debris, /obj/item/stack/crafting/electronicparts/three, /obj/item/stock_parts/cell/ammo/mfc)
	emote_taunt_sound = null
	emote_taunt = list("levels its laser")
	aggrosound = null
	idlesound = null
	death_sound = null
	attack_sound = null
	projectile_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(LASER_VOLUME),
		SP_VOLUME_SILENCED(LASER_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(LASER_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(LASER_DISTANT_SOUND),
		SP_DISTANT_RANGE(LASER_RANGE_DISTANT)
	)

/mob/living/simple_animal/hostile/handy/robobrain/AttackingTarget()
	. = ..()

/mob/living/simple_animal/hostile/handy/robobrain/nsb //NSB + Raider Bunker specific
	name = "robobrain"
	aggro_vision_range = 15
	faction = list("raider")
	obj_damage = 300
	health = 300
	maxHealth = 300

/mob/living/simple_animal/hostile/handy/protectron
	name = "protectron"
	desc = "A pre-war security robot armed with deadly lasers."
	icon = 'icons/fallout/mobs/robots/protectrons.dmi'
	icon_state = "protectron"
	icon_living = "protectron"
	icon_dead = "protectron_dead"
	health = 104
	maxHealth = 104
	speed = 3 // these things are supposed to be super slow???
	melee_damage_lower = 5 //severely reduced melee damage here because its silly to have a ranged mob also be a cqc master
	melee_damage_upper = 10
	extra_projectiles = 1 //30 damage if all projectiles hit
	stat_attack = CONSCIOUS
	ranged = TRUE
	retreat_distance = 2
	minimum_distance = 2
	attack_verb_simple = "slaps"
	attack_sound = 'sound/weapons/punch1.ogg'
	projectilesound = 'sound/weapons/laser.ogg'
	projectiletype = /obj/item/projectile/beam/laser/pistol/ultraweak
	faction = list("wastebot")
	check_friendly_fire = TRUE
	loot = list(
		/obj/effect/decal/cleanable/robot_debris,
		/obj/item/stack/crafting/electronicparts/five
		)
	attack_phrase = list(
		"Howdy pardner!",
		"Engaging hostile target!",
		"Warning! Overdue for maintence.",
		"Please assume the position.",
		"Protect and serve.",
		"Antisocial behavior detected.",
		"Criminal behavior willbe punished.",
		"Please step into the open and identify yourself, law abiding citizens have nothing to fear.",
		"Do not be alarmed. Order will be restored soon.",
		"A lawful use of deadly force is in progress, citizens are advised to clear the area.",
		"Put down your weapons and submit to authority. Continued resistence is unlawful."
		)
	emote_taunt_sound = list(
		'sound/f13npc/protectron/taunt1.ogg',
		'sound/f13npc/protectron/taunt2.ogg',
		'sound/f13npc/protectron/taunt3.ogg'
		)
	emote_taunt = list(
		"raises its arm laser",
		"gets ready to rumble",
		"assumes the position",
		"whirls up its servos",
		"takes aim",
		"holds its ground"
		)
	aggrosound = list(
		'sound/f13npc/protectron/aggro1.ogg',
		'sound/f13npc/protectron/aggro2.ogg',
		'sound/f13npc/protectron/aggro3.ogg',
		'sound/f13npc/protectron/aggro4.ogg'
		)
	idlesound = list(
		'sound/f13npc/protectron/idle1.ogg',
		'sound/f13npc/protectron/idle2.ogg',
		'sound/f13npc/protectron/idle3.ogg',
		'sound/f13npc/protectron/idle4.ogg',
		)
	projectile_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(LASER_VOLUME),
		SP_VOLUME_SILENCED(LASER_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(LASER_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(LASER_DISTANT_SOUND),
		SP_DISTANT_RANGE(LASER_RANGE_DISTANT)
	)

/mob/living/simple_animal/hostile/handy/protectron/nsb //NSB + Raider Bunker specific
	name = "protectron"
	aggro_vision_range = 15
	faction = list("raider")
	obj_damage = 300

/mob/living/simple_animal/pet/dog/protectron //Not an actual dog
	name = "Trading Protectron"
	desc = "A standard RobCo RX2 V1.16.4 \"Trade-o-Vend\", loaded with Trade protocols.<br>Looks like it was kept operational for an indefinite period of time. Its body is covered in cracks and dents of various sizes.<br>As it has been repaired countless times, it's amazing the machine is still functioning at all."
	icon = 'icons/fallout/mobs/robots/protectrons.dmi'
	icon_state = "protectron_trade"
	icon_living = "protectron_trade"
	icon_dead = "protectron_trade_dead"
	maxHealth = 200
	health = 200
	speak_chance = 5
	mob_biotypes = MOB_ROBOTIC|MOB_INORGANIC
	faction = list("neutral", "silicon", "dog", "hostile", "pirate", "wastebot", "wolf", "plants", "turret", "enclave", "ghoul", "cazador", "supermutant", "gecko", "slime", "radscorpion", "skeleton", "carp", "bs", "bighorner")
	speak = list("Howdy partner! How about you spend some of them there hard earned caps on some of this fine merchandise.", "Welcome back partner! Hoo-wee it's a good day to buy some personal protection!", "Stop, this is a robbery! At these prices you are robbing me.", "Legion? NCR? Raider? Hell we don't care, as long as you got the caps.", "What a fine day partner. A fine day indeed.", "Reminds me of what my grandpappy used to say, make a snap decision now and never question it. You look like you could use some product there partner.", "Lotta critters out there want to chew you up partner, you could use a little hand with that now couldn't you?")
	speak_emote = list()
	emote_hear = list()
	emote_see = list()
	response_help_simple  = "shakes its manipulator"
	response_disarm_simple = "pushes"
	response_harm_simple   = "punches"
	attack_sound = 'sound/voice/liveagain.ogg'
	butcher_results = list(/obj/effect/gibspawner/robot = 1)
	blood_volume = 0

/mob/living/simple_animal/pet/dog/protectron/eastwood //Not an actual dog
	name = "Eastwood Trading Protectron"
	desc = "A standard RobCo RX2 V1.16.4 \"Trade-o-Vend\", loaded with Trade protocols.<br>Looks like it was kept operational for an indefinite period of time. Its body is covered in cracks and dents of various sizes.<br>As it has been repaired countless times, it's amazing the machine is still functioning at all."
	icon = 'icons/fallout/mobs/robots/protectrons.dmi'
	icon_state = "protectron_trade"
	icon_living = "protectron_trade"
	icon_dead = "protectron_trade_dead"
	maxHealth = 200
	health = 200
	speak_chance = 5
	mob_biotypes = MOB_ROBOTIC|MOB_INORGANIC
	faction = list("neutral", "silicon", "dog", "hostile", "pirate", "wastebot", "wolf", "plants", "turret", "enclave", "ghoul", "cazador", "supermutant", "gecko", "slime", "radscorpion", "skeleton", "carp", "bs", "bighorner")
	speak = list("Howdy partner! How about you spend some of them there hard earned caps on at the Eastwood store!", "Welcome back partner! Come over to the Eastwood Store!", "Stop, this is a robbery! At these prices you are robbing me.", "Legion? NCR? Raider? Hell we don't care, as long as you got the caps.", "What a fine day partner. A fine day indeed.", "Reminds me of what my grandpappy used to say, make a snap decision now and never question it. You look like you could use some product there partner.", "Lotta critters out there want to chew you up partner, you could use a little hand with that now couldn't you? Only at the Eastwood Store!")
	speak_emote = list()
	emote_hear = list()
	emote_see = list()
	response_help_simple  = "shakes its manipulator"
	response_disarm_simple = "pushes"
	response_harm_simple  = "punches"
	attack_sound = 'sound/voice/liveagain.ogg'
	butcher_results = list(/obj/effect/gibspawner/robot = 1)
	blood_volume = 0

/mob/living/simple_animal/hostile/handy/assaultron
	name = "assaultron"
	desc = "A deadly close combat robot developed by RobCo in a vaguely feminine, yet ominous chassis."
	icon_state = "assaultron"
	icon_living = "assaultron"
	gender = FEMALE //Pffffffffffffffffffffff
	icon_dead = "gib7"
	health = 160
	mob_biotypes = MOB_ROBOTIC|MOB_INORGANIC
	maxHealth = 160
	stat_attack = 1
	speed = 0
	melee_damage_lower = 25
	melee_damage_upper = 60
	environment_smash = 2 //can smash walls
	attack_verb_simple = "grinds their claws on"
	faction = list("wastebot")
	loot = list(/obj/effect/decal/cleanable/robot_debris, /obj/item/stack/crafting/electronicparts/three, /obj/item/stock_parts/cell/ammo/mfc)

	emote_taunt_sound = FALSE
	emote_taunt = FALSE

	aggrosound = FALSE
	idlesound = FALSE

/mob/living/simple_animal/hostile/handy/assaultron/nsb //NSB + Raider Bunker specific.
	name = "assaultron"
	aggro_vision_range = 15
	faction = list("raider")
	obj_damage = 300

//Junkers
/mob/living/simple_animal/hostile/handy/gutsy/flamer
	name = "Mr. Burnsy"
	desc = "A modified mr. gutsy, equipped with a more precise flamer, ditching it's plasma weaponry."
	color = "#B85C00"
	projectilesound = 'sound/magic/fireball.ogg'
	projectiletype = /obj/item/projectile/bullet/incendiary/shotgun
	extra_projectiles = 1

/mob/living/simple_animal/hostile/handy/assaultron/laser
	name = "red eye assaultron"
	desc = "A modified assaultron. It's eye has been outfitted with a deadly laser."
	color = "#B85C00"
	ranged = TRUE
	retreat_distance = null
	minimum_distance = 1
	projectilesound = 'sound/weapons/laser.ogg'
	projectiletype = /obj/item/projectile/beam/laser/lasgun
	projectile_sound_properties = list(
		SP_VARY(FALSE),
		SP_VOLUME(LASER_VOLUME),
		SP_VOLUME_SILENCED(LASER_VOLUME * SILENCED_VOLUME_MULTIPLIER),
		SP_NORMAL_RANGE(LASER_RANGE),
		SP_NORMAL_RANGE_SILENCED(SILENCED_GUN_RANGE),
		SP_IGNORE_WALLS(TRUE),
		SP_DISTANT_SOUND(LASER_DISTANT_SOUND),
		SP_DISTANT_RANGE(LASER_RANGE_DISTANT)
	)

