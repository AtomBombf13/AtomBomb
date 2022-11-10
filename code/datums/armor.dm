#define ARMORID "armor-[melee]-[bullet]-[laser]-[energy]-[bomb]-[bio]-[rad]-[fire]-[acid]-[magic]-[wound]-[damage_threshold]"

/proc/getArmor(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0, fire = 0, acid = 0, magic = 0, wound = 0, damage_threshold = 0)
	. = locate(ARMORID)
	if (!.)
		. = new /datum/armor(melee, bullet, laser, energy, bomb, bio, rad, fire, acid, magic, wound, damage_threshold)

/datum/armor
	datum_flags = DF_USE_TAG
	var/melee
	var/bullet
	var/laser
	var/energy
	var/bomb
	var/bio
	var/rad
	var/fire
	var/acid
	var/magic
	var/wound
	var/damage_threshold

/datum/armor/New(melee = 0, bullet = 0, laser = 0,  energy = 0, bomb = 0, bio = 0, rad = 0, fire = 0, acid = 0, magic = 0, wound = 0, damage_threshold = 0)
	src.melee = melee
	src.bullet = bullet
	src.laser = laser
	src.energy = energy
	src.bomb = clamp(bomb, 0, ARMOR_CAP_BOMB)
	src.bio = clamp(bio, 0, ARMOR_CAP_BIO)
	src.rad = clamp(rad, 0, ARMOR_CAP_RAD)
	src.fire = clamp(fire, 0, ARMOR_CAP_FIRE)
	src.acid = clamp(acid, 0, ARMOR_CAP_ACID)
	src.magic = clamp(magic, 0, ARMOR_CAP_MAGIC)
	src.wound = clamp(wound, 0, ARMOR_CAP_WOUND)
	src.damage_threshold = clamp(damage_threshold, 0, ARMOR_CAP_DT)
	tag = ARMORID

/datum/armor/proc/modifyRating(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0, fire = 0, acid = 0, magic = 0, wound = 0, damage_threshold = 0)
	return getArmor(src.melee+melee, src.bullet+bullet, src.laser+laser, src.energy+energy, src.bomb+bomb, src.bio+bio, src.rad+rad, src.fire+fire, src.acid+acid, src.magic+magic, src.wound+wound, src.damage_threshold+damage_threshold)

/datum/armor/proc/modifyAllRatings(modifier = 0)
	return getArmor(melee, bullet, laser, energy+modifier, bomb+modifier, bio+modifier, rad+modifier, fire+modifier, acid+modifier, magic+modifier, wound+modifier, damage_threshold+modifier)

/datum/armor/proc/setRating(melee, bullet, laser, energy, bomb, bio, rad, fire, acid, magic, wound, damage_threshold)
	return getArmor((isnull(melee) ? src.melee : melee),\
					(isnull(bullet) ? src.bullet : bullet),\
					(isnull(laser) ? src.laser : laser),\
					(isnull(energy) ? src.energy : energy),\
					(isnull(bomb) ? src.bomb : bomb),\
					(isnull(bio) ? src.bio : bio),\
					(isnull(rad) ? src.rad : rad),\
					(isnull(fire) ? src.fire : fire),\
					(isnull(acid) ? src.acid : acid),\
					(isnull(magic) ? src.magic : magic),\
					(isnull(wound) ? src.wound : wound),\
					(isnull(damage_threshold) ? src.damage_threshold : damage_threshold))

/datum/armor/proc/getRating(rating)
	return vars[rating]

/datum/armor/proc/getList()
	return list("melee" = melee, "bullet" = bullet, "laser" = laser, "energy" = energy, "bomb" = bomb, "bio" = bio, "rad" = rad, "fire" = fire, "acid" = acid, "magic" = magic, "wound" = wound, "damage_threshold" = damage_threshold)

/datum/armor/proc/attachArmor(datum/armor/AA)
	return getArmor(melee+AA.melee, bullet+AA.bullet, laser+AA.laser, energy+AA.energy, bomb+AA.bomb, bio+AA.bio, rad+AA.rad, fire+AA.fire, acid+AA.acid, magic+AA.magic, wound+AA.wound, damage_threshold+AA.damage_threshold)

/datum/armor/proc/detachArmor(datum/armor/AA)
	return getArmor(melee+AA.melee, bullet+AA.bullet, laser+AA.laser, energy-AA.energy, bomb-AA.bomb, bio-AA.bio, rad-AA.rad, fire-AA.fire, acid-AA.acid, magic-AA.magic, wound-AA.wound, damage_threshold-AA.damage_threshold)

/datum/armor/vv_edit_var(var_name, var_value)
	if (var_name == NAMEOF(src, tag))
		return FALSE
	. = ..()
	tag = ARMORID // update tag in case armor values were edited

#undef ARMORID
