/*
 * ARMOR DEFINES
 */

//Armor calculation quick reference: apply threshold first then apply armor
//so 100 damage vs combat armor = 67.5 NOT 65
//threshold beats small numbers (ie. machine guns) armor beats big numbers (rifles)


/* Zero armor values
 * * * * * * * * * * * */
#define ARMOR_VALUE_ZERO list(\
		"melee" = 0, \
		"bullet" = 0, \
		"laser" = 0, \
		"energy" = 0, \
		"bomb" = 0, \
		"bio" = 0, \
		"rad" = 0, \
		"fire" = 0, \
		"acid" = 0, \
		"wound" = 0, \
		"damage_threshold" = 0)
/* Generic item armor
 * Usually isnt actual armor
 * Has some good fire resist, but thats about it
 * * * * * * * * * * * */
#define ARMOR_VALUE_GENERIC_ITEM list(\
		"melee" = 0, \
		"bullet" = 0, \
		"laser" = 0, \
		"energy" = 0, \
		"bomb" = 0, \
		"bio" = 10, \
		"rad" = 10, \
		"fire" = 50, \
		"acid" = 50, \
		"wound" = 0, \
		"damage_threshold" = 0)

/* Light armor values
 * High mobility
 * Mild environmental resistances
 * Low defense
 * Low DT
 *
 * +20 effective HP
 * * * * * * * * * * * */
#define ARMOR_VALUE_LIGHT list(\
		"melee" = 20, \
		"bullet" = 20, \
		"laser" = 20, \
		"energy" = 0, \
		"bomb" = 5, \
		"bio" = 10, \
		"rad" = 10, \
		"fire" = 10, \
		"acid" = 10, \
		"wound" = 15, \
		"damage_threshold" = 1)

/* Medium armor values
 * Decent mobility
 * Decent environmental resistances
 * Decent defense
 * Decent DT
 *
 * +35 effective HP
 * * * * * * * * * * * */
#define ARMOR_VALUE_MEDIUM list(\
		"melee" = 35, \
		"bullet" = 35, \
		"laser" = 35, \
		"energy" = 5, \
		"bomb" = 10, \
		"bio" = 25, \
		"rad" = 25, \
		"fire" = 25, \
		"acid" = 25, \
		"wound" = 25, \
		"damage_threshold" = 3)

/* Heavy armor values
 * Low mobility
 * Decent environmental resistances
 * High defense
 * Lot of DT
 *
 * +45 effective HP
 * * * * * * * * * * * */
#define ARMOR_VALUE_HEAVY list(\
		"melee" = 45, \
		"bullet" = 45, \
		"laser" = 45, \
		"energy" = 0, \
		"bomb" = 25, \
		"bio" = 25, \
		"rad" = 25, \
		"fire" = 35, \
		"acid" = 35, \
		"wound" = 35, \
		"damage_threshold" = 5)

//////////////////////////////////////////////////

#define ARMOR_VALUE_CLOTHES list(\
		"melee" = 0, \
		"bullet" = 0, \
		"laser" = 0, \
		"energy" = 0, \
		"bomb" = 0, \
		"bio" = 0, \
		"rad" = 0, \
		"fire" = 0, \
		"acid" = 0, \
		"wound" = 0, \
		"damage_threshold" = 0)

#define ARMOR_VALUE_TRIBAL list(\
		"melee" = 15, \
		"bullet" = 0, \
		"laser" = 0, \
		"energy" = 0, \
		"bomb" = 0, \
		"bio" = 0, \
		"rad" = 0, \
		"fire" = 20, \
		"acid" = 20, \
		"wound" = 10, \
		"damage_threshold" = 0)

#define ARMOR_VALUE_KIT list(\
		"melee" = 5, \
		"bullet" = 10, \
		"laser" = 5, \
		"energy" = 10, \
		"bomb" = 0, \
		"bio" = 0, \
		"rad" = 0, \
		"fire" = 20, \
		"acid" = 20, \
		"wound" = 5, \
		"damage_threshold" = 0)

#define ARMOR_VALUE_LEATHER_JACKET list(\
		"melee" = 10, \
		"bullet" = 10, \
		"laser" = 0, \
		"energy" = 0, \
		"bomb" = 0, \
		"bio" = 0, \
		"rad" = 15, \
		"fire" = 20, \
		"acid" = 20, \
		"wound" = 5, \
		"damage_threshold" = 2)

#define ARMOR_VALUE_REINFORCED_LEATHER_JACKET list(\
		"melee" = 15, \
		"bullet" = 15, \
		"laser" = 5, \
		"energy" = 5, \
		"bomb" = 5, \
		"bio" = 0, \
		"rad" = 15, \
		"fire" = 20, \
		"acid" = 20, \
		"wound" = 5, \
		"damage_threshold" = 4)

#define ARMOR_VALUE_LEATHER_ARMOR list(\
		"melee" = 15, \
		"bullet" = 10, \
		"laser" = 5, \
		"energy" = 5, \
		"bomb" = 5, \
		"bio" = 0, \
		"rad" = 15, \
		"fire" = 20, \
		"acid" = 20, \
		"wound" = 10, \
		"damage_threshold" = 4)

#define ARMOR_VALUE_REINFORCED_LEATHER_ARMOR list(\
		"melee" = 20, \
		"bullet" = 15, \
		"laser" = 10, \
		"energy" = 5, \
		"bomb" = 5, \
		"bio" = 0, \
		"rad" = 15, \
		"fire" = 20, \
		"acid" = 20, \
		"wound" = 15, \
		"damage_threshold" = 6)

#define ARMOR_VALUE_BALLISTIC_ARMOR list(\
		"melee" = 10, \
		"bullet" = 35, \
		"laser" = 5, \
		"energy" = 5, \
		"bomb" = 5, \
		"bio" = 0, \
		"rad" = 15, \
		"fire" = 20, \
		"acid" = 20, \
		"wound" = 15, \
		"damage_threshold" = 5)

#define ARMOR_VALUE_BULLETPROOF_ARMOR list(\
		"melee" = 5, \
		"bullet" = 45, \
		"laser" = 5, \
		"energy" = 5, \
		"bomb" = 5, \
		"bio" = 0, \
		"rad" = 15, \
		"fire" = 20, \
		"acid" = 20, \
		"wound" = 15, \
		"damage_threshold" = 5)

#define ARMOR_VALUE_METAL_ARMOR list(\
		"melee" = 30, \
		"bullet" = 20, \
		"laser" = 30, \
		"energy" = 10, \
		"bomb" = 25, \
		"bio" = 0, \
		"rad" = 15, \
		"fire" = 20, \
		"acid" = 20, \
		"wound" = 15, \
		"damage_threshold" = 7)

#define ARMOR_VALUE_REINFORCED_METAL_ARMOR list(\
		"melee" = 40, \
		"bullet" = 20, \
		"laser" = 40, \
		"energy" = 15, \
		"bomb" = 25, \
		"bio" = 0, \
		"rad" = 15, \
		"fire" = 20, \
		"acid" = 20, \
		"wound" = 15, \
		"damage_threshold" = 8)

#define ARMOR_VALUE_DUSTER_ARMOR list(\
		"melee" = 20, \
		"bullet" = 20, \
		"laser" = 10, \
		"energy" = 5, \
		"bomb" = 15, \
		"bio" = 0, \
		"rad" = 15, \
		"fire" = 20, \
		"acid" = 20, \
		"wound" = 15, \
		"damage_threshold" = 5)

#define ARMOR_VALUE_RAIDER_ARMOR list(\
		"melee" = 20, \
		"bullet" = 10, \
		"laser" = 5, \
		"energy" = 5, \
		"bomb" = 10, \
		"bio" = 0, \
		"rad" = 15, \
		"fire" = 20, \
		"acid" = 20, \
		"wound" = 10, \
		"damage_threshold" = 5)

#define ARMOR_VALUE_COMBAT_ARMOR list(\
		"melee" = 25, \
		"bullet" = 25, \
		"laser" = 25, \
		"energy" = 15, \
		"bomb" = 25, \
		"bio" = 0, \
		"rad" = 15, \
		"fire" = 20, \
		"acid" = 20, \
		"wound" = 20, \
		"damage_threshold" = 8)

#define ARMOR_VALUE_REINFORCED_COMBAT_ARMOR list(\
		"melee" = 30, \
		"bullet" = 30, \
		"laser" = 30, \
		"energy" = 20, \
		"bomb" = 30, \
		"bio" = 0, \
		"rad" = 15, \
		"fire" = 25, \
		"acid" = 25, \
		"wound" = 20, \
		"damage_threshold" = 10)

#define ARMOR_VALUE_RIOT_ARMOR list(\
		"melee" = 50, \
		"bullet" = 40, \
		"laser" = 25, \
		"energy" = 20, \
		"bomb" = 50, \
		"bio" = 0, \
		"rad" = 15, \
		"fire" = 25, \
		"acid" = 25, \
		"wound" = 30, \
		"damage_threshold" = 10)

#define ARMOR_VALUE_SALVAGE list(\
		"melee" = 45, \
		"bullet" = 45, \
		"laser" = 45, \
		"energy" = 25, \
		"bomb" = 40, \
		"bio" = 80, \
		"rad" = 50, \
		"fire" = 80, \
		"acid" = 80, \
		"wound" = 40, \
		"damage_threshold" = 16)

#define ARMOR_VALUE_PA list(\
		"melee" = 50, \
		"bullet" = 50, \
		"laser" = 50, \
		"energy" = 25, \
		"bomb" = 40, \
		"bio" = 100, \
		"rad" = 50, \
		"fire" = 70, \
		"acid" = 95, \
		"wound" = 50, \
		"damage_threshold" = 18)
		
/*
#define ARMOR_VALUE_APA list(\
		"melee" = 55, \
		"bullet" = 55, \
		"laser" = 55, \
		"energy" = 30, \
		"bomb" = 40, \
		"bio" = 100, \
		"rad" = 55, \
		"fire" = 70, \
		"acid" = 95, \
		"wound" = 55, \
		"damage_threshold" = 20)
*/

/* Armor Subclass multipliers
 * Modifies base armor slots by these values
 * Environmental and wound armors are multiplied by these values
 * Linearmor armors are added / subtracted to the base values
 * Multiple ones can be applied!
 * Also note, armor multipliers scale with the tier of armor they're applied to!!!
 * * * * * * * * * * * */

/* Environmental armor
 * Multiplies bio, rad, fire, and acid protection
 * T1 - Heavy clothes like jackets and dusters
 * T2 - Hybrid environmental / armor things
 * T3 - Dedicated hazardous environmental suits
 * * * * * * * * * * * */
#define ARMOR_MODIFIER_UP_ENV_T1 list(\
		"bio" = 1.5, \
		"rad" = 1.5, \
		"fire" = 1.5, \
		"acid" = 2)

#define ARMOR_MODIFIER_UP_ENV_T2 list(\
		"bio" = 2, \
		"rad" = 2, \
		"fire" = 2, \
		"acid" = 2)

#define ARMOR_MODIFIER_UP_ENV_T3 list(\
		"bio" = 5, \
		"rad" = 5, \
		"fire" = 3, \
		"acid" = 5)

#define ARMOR_MODIFIER_DOWN_ENV_T1 list(\
		"bio" = 0.5, \
		"rad" = 0.5, \
		"fire" = 0.5, \
		"acid" = 0.5)

#define ARMOR_MODIFIER_DOWN_ENV_T2 list(\
		"bio" = 0.35, \
		"rad" = 0.35, \
		"fire" = 0.35, \
		"acid" = 0.35)

///Actually increases the base damage
#define ARMOR_MODIFIER_DOWN_ENV_T3 list(\
		"bio" = -2, \
		"rad" = -2, \
		"fire" = -2, \
		"acid" = -2)


#define ARMOR_MODIFIER_UP_FIRE_T1 list(\
		"fire" = 1.5)

#define ARMOR_MODIFIER_UP_FIRE_T2 list(\
		"fire" = 2)

#define ARMOR_MODIFIER_UP_FIRE_T3 list(\
		"fire" = 5)

#define ARMOR_MODIFIER_DOWN_FIRE_T1 list(\
		"fire" = 0.5)

#define ARMOR_MODIFIER_DOWN_FIRE_T2 list(\
		"fire" = -1)

#define ARMOR_MODIFIER_DOWN_FIRE_T3 list(\
		"fire" = -2)

#define ARMOR_MODIFIER_UP_BOMB_T1 list(\
		"bomb" = 1.5)

#define ARMOR_MODIFIER_UP_BOMB_T2 list(\
		"bomb" = 3)

#define ARMOR_MODIFIER_UP_BOMB_T3 list(\
		"bomb" = 5)

#define ARMOR_MODIFIER_DOWN_BOMB_T1 list(\
		"bomb" = 0.5)

#define ARMOR_MODIFIER_DOWN_BOMB_T2 list(\
		"bomb" = 0.1)

#define ARMOR_MODIFIER_DOWN_BOMB_T3 list(\
		"bomb" = -2)


/* Bullet armor
 * Adds on bullet protection
 * T1 - A layer of basic protection
 * T2 - Ballistic inserts and such
 * T3 - Dedicated heavy bullet plates
 * * * * * * * * * * * */
#define ARMOR_MODIFIER_UP_BULLET_T1 list(\
		"bullet" = 10)

#define ARMOR_MODIFIER_UP_BULLET_T2 list(\
		"bullet" = 25)

#define ARMOR_MODIFIER_UP_BULLET_T3 list(\
		"bullet" = 50)

#define ARMOR_MODIFIER_DOWN_BULLET_T1 list(\
		"bullet" = -10)

#define ARMOR_MODIFIER_DOWN_BULLET_T2 list(\
		"bullet" = -25)

#define ARMOR_MODIFIER_DOWN_BULLET_T3 list(\
		"bullet" = -50)

#define ARMOR_MODIFIER_DOWN_BULLET_T4 list(\
		"bullet" = -200)

/* Melee armor
 * Adds on melee protection
 * T1 - Thicker, padded clothing
 * T2 - Hard metal bits with incomplete coverage
 * T3 - Dedicated heavy plating
 * * * * * * * * * * * */
#define ARMOR_MODIFIER_UP_MELEE_T1 list(\
		"melee" = 10)

#define ARMOR_MODIFIER_UP_MELEE_T2 list(\
		"melee" = 25)

#define ARMOR_MODIFIER_UP_MELEE_T3 list(\
		"melee" = 50)

#define ARMOR_MODIFIER_DOWN_MELEE_T1 list(\
		"melee" = -10)

#define ARMOR_MODIFIER_DOWN_MELEE_T2 list(\
		"melee" = -25)

#define ARMOR_MODIFIER_DOWN_MELEE_T3 list(\
		"melee" = -50)

/* Laser armor
 * Adds on laser protection
 * T1 - Thicker, heat resistant clothing
 * T2 - Shiny surface, but not quite polished
 * T3 - Dedicated polished mirror finish
 * * * * * * * * * * * */
#define ARMOR_MODIFIER_UP_LASER_T1 list(\
		"laser" = 10)

#define ARMOR_MODIFIER_UP_LASER_T2 list(\
		"laser" = 25)

#define ARMOR_MODIFIER_UP_LASER_T3 list(\
		"laser" = 50)

#define ARMOR_MODIFIER_DOWN_LASER_T1 list(\
		"laser" = -10)

#define ARMOR_MODIFIER_DOWN_LASER_T2 list(\
		"laser" = -25)

#define ARMOR_MODIFIER_DOWN_LASER_T3 list(\
		"laser" = -50)

#define ARMOR_MODIFIER_DOWN_LASER_T4 list(\
		"laser" = -200)

/* DT tokens
 * Adds on damage threshold
 * T1 - Small plated inserts, or heavy leather
 * T2 - Sturdy plated inserts, or deathclaw plating
 * T3 - Dedicated armor reinforcements
 * * * * * * * * * * * */
#define ARMOR_MODIFIER_UP_DT_T1 list(\
		"damage_threshold" = 1)

#define ARMOR_MODIFIER_UP_DT_T2 list(\
		"damage_threshold" = 2)

#define ARMOR_MODIFIER_UP_DT_T3 list(\
		"damage_threshold" = 3)

#define ARMOR_MODIFIER_DOWN_DT_T1 list(\
		"damage_threshold" = -1)

#define ARMOR_MODIFIER_DOWN_DT_T2 list(\
		"damage_threshold" = -2)

#define ARMOR_MODIFIER_DOWN_DT_T3 list(\
		"damage_threshold" = -3)

#define ARMOR_MODIFIER_DOWN_DT_T4 list(\
		"damage_threshold" = -20)

/// Should the modifier MULTiply or ADD the value?
GLOBAL_LIST_INIT(armor_token_operation_legend, list(
		"melee" = "ADD",
		"bullet" = "ADD",
		"laser" = "ADD",
		"linemelee" = "ADD",
		"linebullet" = "ADD",
		"linelaser" = "ADD",
		"energy" = "MULT",
		"bomb" = "MULT",
		"bio" = "MULT",
		"rad" = "MULT",
		"fire" = "MULT",
		"acid" = "MULT",
		"wound" = "MULT",
		"magic" = "MULT",
		"damage_threshold" = "ADD"))


/* Armor slowdowns
 * * * * * * * * * * * */

/*
 * Global multiplier for armor slowdown
 * Change this, changes them all
*/
#define ARMOR_SLOWDOWN_GLOBAL_MULT 1

/*
 * No slowdown
 * Yup
*/
#define ARMOR_SLOWDOWN_NONE 0

/*
 * Light Armor
 * Basically clothes, but more
*/
#define ARMOR_SLOWDOWN_LIGHT 0

/*
 * Medium Armor
 * Substantial armor
*/
#define ARMOR_SLOWDOWN_MEDIUM 0.25

/*
 * Heavy Armor
 * Bulky suits of heavy armor
*/
#define ARMOR_SLOWDOWN_HEAVY 0.75

/*
 * Salvaged Power Armor
 * Basically wearing a car
*/
#define ARMOR_SLOWDOWN_SALVAGE 1

/*
 * Power Armor
 * Basically driving a car
*/
#define ARMOR_SLOWDOWN_PA 0.75

/* Armor slowdown modifiers
 * Multipliers to armor slowdown
 * * * * * * * * * * * */

/*
 * Less armor slowdown, yay!
 * T1 - Slightly lighter materials, less clothes
 * T2 - Lightened materials, streamlined or something
 * T3 - Motorized or super ergonomic design
*/
#define ARMOR_SLOWDOWN_LESS_T1 0.9
#define ARMOR_SLOWDOWN_LESS_T2 0.8
#define ARMOR_SLOWDOWN_LESS_T3 0.7

/*
 * More armor slowdown, ack!
 * T1 - Heavier clothing or padding
 * T2 - Substantial extra plating
 * T3 - Huge slabs of metal
*/
#define ARMOR_SLOWDOWN_MORE_T1 1.1
#define ARMOR_SLOWDOWN_MORE_T2 1.25
#define ARMOR_SLOWDOWN_MORE_T3 1.35

/// Extra tag saying what armor tier this armor is, for description purposes
#define ARMOR_CLOTHING_DESC "This is just a set of clothes, light and breezy, totally unencumbering. Also totally unprotected."

/// Extra tag saying what armor tier this armor is, for description purposes
#define ARMOR_CLOTHING_LIGHT "This is a set of light armor, virtually weightless on your frame, and about as protective as you'd expect."

/// Extra tag saying what armor tier this armor is, for description purposes
#define ARMOR_CLOTHING_MEDIUM "This is a set of medium armor, trading a degree of mobility for increased protection."

/// Extra tag saying what armor tier this armor is, for description purposes
#define ARMOR_CLOTHING_HEAVY "This is a set of heavy armor, heavy, bulky, and built to take a beating."

/// Extra tag saying what armor tier this armor is, for description purposes
#define ARMOR_CLOTHING_SALVAGE "This is a set of salvaged power armor, nigh impenetrable, but weighs about as much as a small car."

/// Extra tag saying what armor tier this armor is, for description purposes
#define ARMOR_CLOTHING_PA "This is a suit of power armor, able to withstand a tank shell and still finish a marathon."

/// Armor caps!
#define ARMOR_CAP_BOMB 100
#define ARMOR_CAP_BIO 90
#define ARMOR_CAP_RAD 90
#define ARMOR_CAP_FIRE 90
#define ARMOR_CAP_ACID 90
#define ARMOR_CAP_MAGIC 100
#define ARMOR_CAP_WOUND 100
#define ARMOR_CAP_DT 40
#define ARMOR_CAP_DR 95

/// Armor stiffness - How much recoil we get while running and gunning!
#define LIGHT_STIFFNESS 1
#define MEDIUM_STIFFNESS 1.5
#define HEAVY_STIFFNESS 2

/// Damages DT is effective with
GLOBAL_LIST_INIT(damage_threshold_valid_types, list("brute", "fire"))
