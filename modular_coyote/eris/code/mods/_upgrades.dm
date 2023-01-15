/*
	A tool upgrade is a little attachment for a tool that improves it in some way
	Tool upgrades are generally permanant

	Some upgrades have multiple bonuses. Some have drawbacks in addition to boosts
*/

/*/client/verb/debugupgrades()
	for (var/t in subtypesof(/obj/item/tool_upgrade))
		new t(usr.loc)
*/
/datum/component/item_upgrade
	dupe_mode = COMPONENT_DUPE_UNIQUE
	can_transfer = TRUE
	var/prefix = "upgraded" //Added to the tool's name

	var/removal_time = WORKTIME_FAST
	//var/removal_difficulty = FAILCHANCE_CHALLENGING
	var/destroy_on_removal = FALSE
	//The upgrade can be applied to a tool that has any of these qualities
	var/list/required_qualities = list()
	var/removable = TRUE
	var/breakable = TRUE //Some mods meant to be tamper-resistant and should be removed only in a hard way

	//The upgrade can not be applied to a tool that has any of these qualities
	var/list/negative_qualities = list()

	//If REQ_FUEL, can only be applied to tools that use fuel. If REQ_CELL, can only be applied to tools that use cell, If REQ_FUEL_OR_CELL, can be applied if it has fuel OR a cell
	var/req_fuel_cell = FALSE

	var/exclusive_type

	//Actual effects of upgrades
	var/list/tool_upgrades = list() //variable name(string) -> num

	//Weapon upgrades
	var/list/gun_loc_tag //Define(string). For checking if the gun already has something of this installed (No double trigger mods, for instance)
	var/list/req_gun_tags = list() //Define(string). Must match all to be able to install it.
	var/list/weapon_upgrades = list() //variable name(string) -> num

/datum/component/item_upgrade/RegisterWithParent()
	RegisterSignal(parent, COMSIG_ITEM_ATTACK_OBJ_NOHIT, .proc/attempt_install)
	RegisterSignal(parent, COMSIG_PARENT_EXAMINE, .proc/on_examine)
	RegisterSignal(parent, COMSIG_UPGRADE_REMOVE, .proc/uninstall)

/datum/component/item_upgrade/proc/attempt_install(datum/source, atom/movable/target, mob/living/user)
	return can_apply(target, user) && apply(target, user)

/datum/component/item_upgrade/proc/can_apply(atom/A, mob/living/user)
	//if(isrobot(A))
	//	return check_robot(A, user)
	if(isitem(A))
		var/obj/item/T = A
		//No using multiples of the same upgrade
		for (var/obj/item/I in T.item_upgrades)
			if(I.type == parent.type || (exclusive_type && istype(I.type, exclusive_type)))
				if(user)
					to_chat(user, span_warning("An upgrade of this type is already installed!"))
				return FALSE

	//if(istool(A))
	//	return check_tool(A, user)

	if(isgun(A))
		return check_gun(A, user)

	return FALSE
/*
/datum/component/item_upgrade/proc/check_robot(mob/living/silicon/robot/R, mob/living/user)
	if(!R.opened)
		if(user)
			to_chat(user, span_warning("You need to open [R]'s panel to access its tools."))
		return FALSE
	var/list/robotools = list()
	for(var/obj/item/tool/robotool in R.module.modules)
		robotools.Add(robotool)
	if(robotools.len)
		var/obj/item/tool/chosen_tool = input(user,"Which tool are you trying to modify?","Tool Modification","Cancel") in robotools + "Cancel"
		if(chosen_tool == "Cancel")
			return FALSE
		return can_apply(chosen_tool,user)
	if(user)
		to_chat(user, span_warning("[R] has no modifiable tools."))
	return FALSE
*/
/*/datum/component/item_upgrade/proc/check_tool(obj/item/tool/T, mob/living/user)
	if(!tool_upgrades.len)
		to_chat(user, span_warning("\The [parent] can not be attached to a tool."))
		return FALSE

	if(T.item_upgrades.len >= T.max_upgrades)
		if(user)
			to_chat(user, span_warning("This tool can't fit anymore modifications!"))
		return FALSE

	if(required_qualities.len)
		var/qmatch = FALSE
		for (var/q in required_qualities)
			if(T.ever_has_quality(q))
				qmatch = TRUE
				break

		if(!qmatch)
			if(user)
				to_chat(user, span_warning("This tool lacks the required qualities!"))
			return FALSE

	if(negative_qualities.len)
		for(var/i in negative_qualities)
			if(T.ever_has_quality(i))
				if(user)
					to_chat(user, span_warning("This tool can not accept the modification!"))
				return FALSE

	if((req_fuel_cell & REQ_FUEL) && !T.use_fuel_cost)
		if(user)
			to_chat(user, span_warning("This tool does not use fuel!"))
		return FALSE

	if((req_fuel_cell & REQ_CELL) && !T.use_power_cost)
		if(user)
			to_chat(user, span_warning("This tool does not use power!"))
		return FALSE

	if((req_fuel_cell & REQ_FUEL_OR_CELL) && (!T.use_power_cost && !T.use_fuel_cost))
		if(user)
			to_chat(user, span_warning("This tool does not use [T.use_power_cost?"fuel":"power"]!"))
		return FALSE

	if(tool_upgrades[UPGRADE_SANCTIFY])
		if(SANCTIFIED in T.aspects)
			if(user)
				to_chat(user, span_warning("This tool already sanctified!"))
			return FALSE

	if(tool_upgrades[UPGRADE_CELLPLUS])
		if(!(T.suitable_cell == /obj/item/cell/medium || T.suitable_cell == /obj/item/cell/small))
			if(user)
				to_chat(user, span_warning("This tool does not require a cell holding upgrade."))
			return FALSE
		if(T.cell)
			if(user)
				to_chat(user, span_warning("Remove the cell from the tool first!"))
			return FALSE

	return TRUE
*/
/datum/component/item_upgrade/proc/check_gun(obj/item/gun/G, mob/living/user)
	if(!weapon_upgrades.len)
		if(user)
			to_chat(user, span_warning("\The [parent] can not be applied to guns!"))
		return FALSE //Can't be applied to a weapon

	if(G.item_upgrades.len >= G.max_upgrades)
		if(user)
			to_chat(user, span_warning("This weapon can't fit anymore modifications!"))
		return FALSE

	for(var/obj/I in G.item_upgrades)
		var/datum/component/item_upgrade/IU = I.GetComponent(/datum/component/item_upgrade)
		if(IU && IU.gun_loc_tag == gun_loc_tag)
			if(user)
				to_chat(user, span_warning("There is already something attached to \the [G]'s [gun_loc_tag]!"))
			return FALSE

	for(var/I in req_gun_tags)
		if(!G.gun_tags.Find(I))
			if(user)
				to_chat(user, span_warning("\The [G] lacks the following property: [I]"))
			return FALSE

	if(req_fuel_cell && !istype(G, /obj/item/gun/energy))
		if(user)
			to_chat(user, span_warning("This weapon does not use power!"))
		return FALSE
	return TRUE

/datum/component/item_upgrade/proc/apply(obj/item/A, mob/living/user)
	if(user)
		user.visible_message(span_notice("[user] starts applying [parent] to [A]"), span_notice("You start applying \the [parent] to \the [A]"))
		var/obj/item/I = parent
		if(!I.use_tool(user = user, target =  A, delay = WORKTIME_FAST))
			return FALSE
		to_chat(user, span_notice("You have successfully installed \the [parent] in \the [A]"))
		user.dropItemToGround(parent)
	//If we get here, we succeeded in the applying
	var/obj/item/I = parent
	I.forceMove(A)
	A.item_upgrades.Add(I)
	RegisterSignal(A, COMSIG_UPGRADE_APPVAL, .proc/apply_values)
	RegisterSignal(A, COMSIG_UPGRADE_ADDVAL, .proc/add_values)
	A.AddComponent(/datum/component/upgrade_removal)
	A.refresh_upgrades()
	return TRUE

/datum/component/item_upgrade/proc/uninstall(datum/source, obj/item/I, mob/user, params)
	var/obj/item/P = parent
	I.item_upgrades -= P
	if(destroy_on_removal)
		UnregisterSignal(I, COMSIG_UPGRADE_ADDVAL)
		UnregisterSignal(I, COMSIG_UPGRADE_APPVAL)
		qdel(P)
		return
	P.forceMove(get_turf(I))
	UnregisterSignal(I, COMSIG_UPGRADE_ADDVAL)
	UnregisterSignal(I, COMSIG_UPGRADE_APPVAL)

/datum/component/item_upgrade/proc/apply_values(datum/source, obj/item/I)
	if(!I)
		return
	//if(istool(holder))
	//	apply_values_tool(holder)
	if(isgun(I))
		apply_values_gun(I)
	return TRUE

/datum/component/item_upgrade/proc/add_values(datum/source, obj/item/I)
	ASSERT(I)
	if(isgun(I))
		add_values_gun(I)
	return TRUE

/*/datum/component/item_upgrade/proc/apply_values_tool(obj/item/tool/T)
	if(tool_upgrades[UPGRADE_PRECISION])
		T.precision += tool_upgrades[UPGRADE_PRECISION]
	if(tool_upgrades[UPGRADE_WORKSPEED])
		T.workspeed += tool_upgrades[UPGRADE_WORKSPEED]
	if(tool_upgrades[UPGRADE_DEGRADATION_MULT])
		T.degradation *= tool_upgrades[UPGRADE_DEGRADATION_MULT]
	if(tool_upgrades[UPGRADE_FORCE_MULT])
		T.force_upgrade_mults += tool_upgrades[UPGRADE_FORCE_MULT] - 1
	if(tool_upgrades[UPGRADE_FORCE_MOD])
		T.force_upgrade_mods += tool_upgrades[UPGRADE_FORCE_MOD]
	if(tool_upgrades[UPGRADE_FUELCOST_MULT])
		T.use_fuel_cost *= tool_upgrades[UPGRADE_FUELCOST_MULT]
	if(tool_upgrades[UPGRADE_POWERCOST_MULT])
		T.use_power_cost *= tool_upgrades[UPGRADE_POWERCOST_MULT]
	if(tool_upgrades[UPGRADE_BULK])
		T.extra_bulk += tool_upgrades[UPGRADE_BULK]
	if(tool_upgrades[UPGRADE_HEALTH_THRESHOLD])
		T.health_threshold += tool_upgrades[UPGRADE_HEALTH_THRESHOLD]
	if(tool_upgrades[UPGRADE_MAXFUEL])
		T.max_fuel += tool_upgrades[UPGRADE_MAXFUEL]
	if(tool_upgrades[UPGRADE_MAXUPGRADES])
		T.max_upgrades += tool_upgrades[UPGRADE_MAXUPGRADES]
	if(tool_upgrades[UPGRADE_SHARP])
		T.sharp = tool_upgrades[UPGRADE_SHARP]
	if(tool_upgrades[UPGRADE_COLOR])
		T.color = tool_upgrades[UPGRADE_COLOR]
	if(tool_upgrades[UPGRADE_ITEMFLAGPLUS])
		T.item_flags |= tool_upgrades[UPGRADE_ITEMFLAGPLUS]
	if(tool_upgrades[UPGRADE_CELLPLUS])
		switch(T.suitable_cell)
			if(/obj/item/cell/medium)
				T.suitable_cell = /obj/item/cell/large
				prefix = "large-cell"
			if(/obj/item/cell/small)
				T.suitable_cell = /obj/item/cell/medium
	T.force = initial(T.force) * T.force_upgrade_mults + T.force_upgrade_mods
	T.switched_on_force = initial(T.switched_on_force) * T.force_upgrade_mults + T.force_upgrade_mods
	T.prefixes |= prefix
*/
/datum/component/item_upgrade/proc/apply_values_gun(obj/item/gun/G)
	if(weapon_upgrades[GUN_UPGRADE_DAMAGE_MULT])
		G.damage_multiplier *= weapon_upgrades[GUN_UPGRADE_DAMAGE_MULT]
	if(weapon_upgrades[GUN_UPGRADE_DAMAGEMOD_PLUS])
		G.damage_multiplier += weapon_upgrades[GUN_UPGRADE_DAMAGEMOD_PLUS]
	if(weapon_upgrades[GUN_UPGRADE_PEN_MULT])
		G.penetration_multiplier *= weapon_upgrades[GUN_UPGRADE_PEN_MULT]
	//if(weapon_upgrades[GUN_UPGRADE_PIERC_MULT])
	//	G.pierce_multiplier += weapon_upgrades[GUN_UPGRADE_PIERC_MULT]
	//if(weapon_upgrades[GUN_UPGRADE_RICO_MULT])
	//	G.ricochet_multiplier += weapon_upgrades[GUN_UPGRADE_RICO_MULT]
	if(weapon_upgrades[GUN_UPGRADE_PROJ_SPEED_MULT])
		G.projectile_speed_multiplier *= weapon_upgrades[GUN_UPGRADE_PROJ_SPEED_MULT]
	if(weapon_upgrades[GUN_UPGRADE_FIRE_DELAY_MULT])
		G.fire_delay *= weapon_upgrades[GUN_UPGRADE_FIRE_DELAY_MULT]
	if(weapon_upgrades[GUN_UPGRADE_MOVE_DELAY_MULT])
		G.slowdown *= weapon_upgrades[GUN_UPGRADE_MOVE_DELAY_MULT]
	if(weapon_upgrades[GUN_UPGRADE_RECOIL])
		G.recoil_dat = G.recoil_dat.modifyAllRatings(weapon_upgrades[GUN_UPGRADE_RECOIL])
	//if(weapon_upgrades[GUN_UPGRADE_MUZZLEFLASH])
	//	G.muzzle_flash *= weapon_upgrades[GUN_UPGRADE_MUZZLEFLASH]
	if(weapon_upgrades[GUN_UPGRADE_SILENCER])
		G.silenced = weapon_upgrades[GUN_UPGRADE_SILENCER]
	if(weapon_upgrades[GUN_UPGRADE_OFFSET])
		G.init_offset = max(0, G.init_offset+weapon_upgrades[GUN_UPGRADE_OFFSET])
	//if(weapon_upgrades[GUN_UPGRADE_DAMAGE_BRUTE])
	//	G.proj_damage_adjust[BRUTE] += weapon_upgrades[GUN_UPGRADE_DAMAGE_BRUTE]
	//if(weapon_upgrades[GUN_UPGRADE_DAMAGE_BURN])
	//	G.proj_damage_adjust[BURN] += weapon_upgrades[GUN_UPGRADE_DAMAGE_BURN]
	//if(weapon_upgrades[GUN_UPGRADE_DAMAGE_TOX])
	//	G.proj_damage_adjust[TOX] += weapon_upgrades[GUN_UPGRADE_DAMAGE_TOX]
	//if(weapon_upgrades[GUN_UPGRADE_DAMAGE_OXY])
	//	G.proj_damage_adjust[OXY] += weapon_upgrades[GUN_UPGRADE_DAMAGE_OXY]
	//if(weapon_upgrades[GUN_UPGRADE_DAMAGE_CLONE])
	//	G.proj_damage_adjust[CLONE] += weapon_upgrades[GUN_UPGRADE_DAMAGE_CLONE]
	//if(weapon_upgrades[GUN_UPGRADE_DAMAGE_HALLOSS])
	//	G.proj_damage_adjust[HALLOSS] += weapon_upgrades[GUN_UPGRADE_DAMAGE_HALLOSS]
	//if(weapon_upgrades[GUN_UPGRADE_DAMAGE_RADIATION])
	//	G.proj_damage_adjust[IRRADIATE] += weapon_upgrades[GUN_UPGRADE_DAMAGE_RADIATION]
	//if(weapon_upgrades[GUN_UPGRADE_DAMAGE_PSY])
	//	G.proj_damage_adjust[PSY] += weapon_upgrades[GUN_UPGRADE_DAMAGE_PSY]
	if(weapon_upgrades[GUN_UPGRADE_HONK])
		G.fire_sound = 'sound/items/bikehorn.ogg'
	if(weapon_upgrades[GUN_UPGRADE_RIGGED])
		G.rigged = TRUE
	if(weapon_upgrades[GUN_UPGRADE_FOREGRIP])
		G.braceable = 0
	if(weapon_upgrades[GUN_UPGRADE_BIPOD])
		G.braceable = 2
	if(weapon_upgrades[GUN_UPGRADE_EXPLODE])
		G.rigged = 2
	if(weapon_upgrades[GUN_UPGRADE_ZOOM])
		G.zoom_factor += weapon_upgrades[GUN_UPGRADE_ZOOM]
		G.initialize_scope()
		if(ismob(G.loc))
			var/mob/user = G.loc
			user.update_action_buttons()
	if(weapon_upgrades[GUN_UPGRADE_THERMAL])
		G.vision_flags = SEE_MOBS
	if(weapon_upgrades[GUN_UPGRADE_GILDED])
		G.gilded = TRUE

	if(weapon_upgrades[GUN_UPGRADE_BAYONET])
		G.attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
		G.sharpness = TRUE
	if(weapon_upgrades[GUN_UPGRADE_MELEEDAMAGE])
		G.force += weapon_upgrades[GUN_UPGRADE_MELEEDAMAGE]
	if(weapon_upgrades[GUN_UPGRADE_MELEEPENETRATION])
		G.armour_penetration += weapon_upgrades[GUN_UPGRADE_MELEEPENETRATION]
	if(weapon_upgrades[GUN_UPGRADE_ONEHANDPENALTY])
		G.recoil_dat = G.recoil_dat.modifyRating(1, 1, weapon_upgrades[GUN_UPGRADE_ONEHANDPENALTY])
	if(weapon_upgrades[UPGRADE_COLOR])
		G.color = weapon_upgrades[UPGRADE_COLOR]
	
	if(!isnull(weapon_upgrades[GUN_UPGRADE_FORCESAFETY]))
		G.restrict_safety = TRUE
		G.safety = weapon_upgrades[GUN_UPGRADE_FORCESAFETY]
	if(istype(G, /obj/item/gun/energy))
		var/obj/item/gun/energy/E = G
		if(weapon_upgrades[GUN_UPGRADE_CHARGECOST])
			E.charge_cost_multiplier *= weapon_upgrades[GUN_UPGRADE_CHARGECOST]

	if(istype(G, /obj/item/gun/ballistic))
		var/obj/item/gun/ballistic/P = G
		if(weapon_upgrades[GUN_UPGRADE_MAGUP])
			P.magazine?.max_ammo += weapon_upgrades[GUN_UPGRADE_MAGUP]

	for(var/datum/firemode/F in G.firemodes)
		apply_values_firemode(F)

/datum/component/item_upgrade/proc/add_values_gun(obj/item/gun/G)
	if(weapon_upgrades[GUN_UPGRADE_FULLAUTO])
		G.add_firemode(FULL_AUTO_200)

/datum/component/item_upgrade/proc/apply_values_firemode(datum/firemode/F)
	for(var/i in F.settings)
		switch(i)
			if("fire_delay")
				if(weapon_upgrades[GUN_UPGRADE_FIRE_DELAY_MULT])
					F.settings[i] *= weapon_upgrades[GUN_UPGRADE_FIRE_DELAY_MULT]
			//if("move_delay")
			//	if(weapon_upgrades[GUN_UPGRADE_MOVE_DELAY_MULT])
			//		F.settings[i] *= weapon_upgrades[GUN_UPGRADE_MOVE_DELAY_MULT]

/datum/component/item_upgrade/proc/on_examine(atom/source, mob/user, list/examine_list)
	if(tool_upgrades[UPGRADE_SANCTIFY])
		examine_list += span_notice("Does additional burn damage to mutants.")
	if (tool_upgrades[UPGRADE_PRECISION] > 0)
		examine_list += span_notice("Enhances precision by [tool_upgrades[UPGRADE_PRECISION]]")
	else if(tool_upgrades[UPGRADE_PRECISION] < 0)
		examine_list += span_warning("Reduces precision by [abs(tool_upgrades[UPGRADE_PRECISION])]")
	if(tool_upgrades[UPGRADE_WORKSPEED])
		examine_list += span_notice("Enhances workspeed by [tool_upgrades[UPGRADE_WORKSPEED]*100]%")

	if(tool_upgrades[UPGRADE_DEGRADATION_MULT])
		if(tool_upgrades[UPGRADE_DEGRADATION_MULT] < 1)
			examine_list += span_notice("Reduces tool degradation by [(1-tool_upgrades[UPGRADE_DEGRADATION_MULT])*100]%")
		else if	(tool_upgrades[UPGRADE_DEGRADATION_MULT] > 1)
			examine_list += span_warning("Increases tool degradation by [(tool_upgrades[UPGRADE_DEGRADATION_MULT]-1)*100]%")

	if(tool_upgrades[UPGRADE_FORCE_MULT] >= 1)
		examine_list += span_notice("Increases tool damage by [(tool_upgrades[UPGRADE_FORCE_MULT]-1)*100]%")
	if(tool_upgrades[UPGRADE_FORCE_MOD])
		examine_list += span_notice("Increases tool damage by [tool_upgrades[UPGRADE_FORCE_MOD]]")
	if(tool_upgrades[UPGRADE_POWERCOST_MULT] >= 1)
		examine_list += span_warning("Modifies power usage by [(tool_upgrades[UPGRADE_POWERCOST_MULT]-1)*100]%")
	if(tool_upgrades[UPGRADE_FUELCOST_MULT] >= 1)
		examine_list += span_warning("Modifies fuel usage by [(tool_upgrades[UPGRADE_FUELCOST_MULT]-1)*100]%")
	if(tool_upgrades[UPGRADE_MAXFUEL])
		examine_list += span_notice("Modifies fuel storage by [tool_upgrades[UPGRADE_MAXFUEL]] units.")
	if(tool_upgrades[UPGRADE_BULK])
		examine_list += span_warning("Increases tool size by [tool_upgrades[UPGRADE_BULK]]")
	if(tool_upgrades[UPGRADE_MAXUPGRADES])
		examine_list += span_notice("Adds [tool_upgrades[UPGRADE_MAXUPGRADES]] additional modification slots.")
	if(required_qualities.len)
		examine_list += span_warning("Requires a tool with one of the following qualities:")
		examine_list += english_list(required_qualities, and_text = " or ")

	if(weapon_upgrades.len)
		examine_list += span_notice("Can be attached to a firearm, giving the following benefits:")

		if(weapon_upgrades[GUN_UPGRADE_DAMAGE_MULT])
			var/amount = weapon_upgrades[GUN_UPGRADE_DAMAGE_MULT]-1
			if(amount > 0)
				examine_list += span_notice("Increases projectile damage by [amount*100]%")
			else
				examine_list += span_warning("Decreases projectile damage by [abs(amount*100)]%")

		if(weapon_upgrades[GUN_UPGRADE_PEN_MULT])
			var/amount = weapon_upgrades[GUN_UPGRADE_PEN_MULT]-1
			if(amount > 0)
				examine_list += span_notice("Increases projectile penetration by [amount*100]%")
			else
				examine_list += span_warning("Decreases projectile penetration by [abs(amount*100)]%")

		if(weapon_upgrades[GUN_UPGRADE_PIERC_MULT])
			var/amount = weapon_upgrades[GUN_UPGRADE_PIERC_MULT]
			if(amount > 1)
				examine_list += span_notice("Increases projectile piercing penetration by [amount] walls")
			else if(amount == 1)
				examine_list += span_notice("Increases projectile piercing penetration by [amount] wall")
			else if(amount == -1)
				examine_list += span_warning("Decreases projectile piercing penetration by [amount] wall")
			else
				examine_list += span_warning("Decreases projectile piercing penetration by [amount] walls")

		if(weapon_upgrades[GUN_UPGRADE_RICO_MULT])
			var/amount = weapon_upgrades[GUN_UPGRADE_RICO_MULT]
			if(amount > 0)
				examine_list += span_warning("Increases projectile ricochet by [amount*100]%")
			else
				examine_list += span_notice("Decreases projectile ricochet by [abs(amount*100)]%")

		if(weapon_upgrades[GUN_UPGRADE_FIRE_DELAY_MULT])
			var/amount = weapon_upgrades[GUN_UPGRADE_FIRE_DELAY_MULT]-1
			if(amount > 0)
				examine_list += span_warning("Increases fire delay by [amount*100]%")
			else
				examine_list += span_notice("Decreases fire delay by [abs(amount*100)]%")

		if(weapon_upgrades[GUN_UPGRADE_MOVE_DELAY_MULT])
			var/amount = weapon_upgrades[GUN_UPGRADE_MOVE_DELAY_MULT]-1
			if(amount > 0)
				examine_list += span_warning("Increases move delay by [amount*100]%")
			else
				examine_list += span_notice("Decreases move delay by [abs(amount*100)]%")

		if(weapon_upgrades[GUN_UPGRADE_PROJ_SPEED_MULT])
			var/amount = weapon_upgrades[GUN_UPGRADE_PROJ_SPEED_MULT]-1
			if(amount > 0)
				examine_list += span_notice("Speeds up the weapons projectile by [amount*100]%")
			else
				examine_list += span_warning("Slows down the weapons projectile by [abs(amount*100)]%")

		if(weapon_upgrades[GUN_UPGRADE_DAMAGE_BRUTE])
			examine_list += span_notice("Modifies projectile brute damage by [weapon_upgrades[GUN_UPGRADE_DAMAGE_BRUTE]] damage points")

		if(weapon_upgrades[GUN_UPGRADE_DAMAGE_BURN])
			examine_list += span_notice("Modifies projectile burn damage by [weapon_upgrades[GUN_UPGRADE_DAMAGE_BURN]] damage points")

		if(weapon_upgrades[GUN_UPGRADE_DAMAGE_TOX])
			examine_list += span_notice("Modifies projectile toxic damage by [weapon_upgrades[GUN_UPGRADE_DAMAGE_TOX]] damage points")

		if(weapon_upgrades[GUN_UPGRADE_DAMAGE_OXY])
			examine_list += span_notice("Modifies projectile oxy-loss damage by [weapon_upgrades[GUN_UPGRADE_DAMAGE_OXY]] damage points")

		if(weapon_upgrades[GUN_UPGRADE_DAMAGE_CLONE])
			examine_list += span_notice("Modifies projectile clone damage by [weapon_upgrades[GUN_UPGRADE_DAMAGE_CLONE]] damage points")

		if(weapon_upgrades[GUN_UPGRADE_DAMAGE_HALLOSS])
			examine_list += span_notice("Modifies projectile pseudo damage by [weapon_upgrades[GUN_UPGRADE_DAMAGE_HALLOSS]] damage points")

		if(weapon_upgrades[GUN_UPGRADE_DAMAGE_RADIATION])
			examine_list += span_notice("Modifies projectile radiation damage by [weapon_upgrades[GUN_UPGRADE_DAMAGE_RADIATION]] damage points")

		if(weapon_upgrades[GUN_UPGRADE_DAMAGE_PSY])
			examine_list += span_notice("Modifies projectile psy damage by [weapon_upgrades[GUN_UPGRADE_DAMAGE_PSY]] damage points")

		if(weapon_upgrades[GUN_UPGRADE_RECOIL])
			var/amount = weapon_upgrades[GUN_UPGRADE_RECOIL]-1
			if(amount > 0)
				examine_list += span_warning("Increases kickback by [amount*100]%")
			else
				examine_list += span_notice("Decreases kickback by [abs(amount*100)]%")

		if(weapon_upgrades[GUN_UPGRADE_MUZZLEFLASH])
			var/amount = weapon_upgrades[GUN_UPGRADE_MUZZLEFLASH]-1
			if(amount > 0)
				examine_list += span_warning("Increases muzzle flash by [amount*100]%")
			else
				examine_list += span_notice("Decreases muzzle flash by [abs(amount*100)]%")

		if(weapon_upgrades[GUN_UPGRADE_MAGUP])
			var/amount = weapon_upgrades[GUN_UPGRADE_MAGUP]
			if(amount > 1)
				examine_list += span_notice("Increases internal magazine size by [amount]")
			else
				examine_list += span_warning("Decreases internal magazine size by [amount]")

		if(weapon_upgrades[GUN_UPGRADE_SILENCER] == 1)
			examine_list += span_notice("Silences the weapon.")

		if(weapon_upgrades[GUN_UPGRADE_FORCESAFETY] == 0)
			examine_list += span_warning("Disables the safety toggle of the weapon.")
		else if(weapon_upgrades[GUN_UPGRADE_FORCESAFETY] == 1)
			examine_list += span_warning("Forces the safety toggle of the weapon to always be on.")
		
		if(weapon_upgrades[GUN_UPGRADE_DNALOCK] == 1)
			examine_list += span_warning("Adds a biometric scanner to the weapon.")

		if(weapon_upgrades[GUN_UPGRADE_CHARGECOST])
			var/amount = weapon_upgrades[GUN_UPGRADE_CHARGECOST]-1
			if(amount > 0)
				examine_list += span_warning("Increases cell firing cost by [amount*100]%")
			else
				examine_list += span_notice("Decreases cell firing cost by [abs(amount*100)]%")

		if(weapon_upgrades[GUN_UPGRADE_OVERCHARGE_MAX])
			var/amount = weapon_upgrades[GUN_UPGRADE_OVERCHARGE_MAX]-1
			if(amount > 0)
				examine_list += span_warning("Increases overcharge maximum by [amount*100]%")
			else
				examine_list += span_notice("Decreases overcharge maximum by [abs(amount*100)]%")

		if(weapon_upgrades[GUN_UPGRADE_OVERCHARGE_RATE])
			var/amount = weapon_upgrades[GUN_UPGRADE_OVERCHARGE_RATE]-1
			if(amount > 0)
				examine_list += span_notice("Increases overcharge rate by [amount*100]%")
			else
				examine_list += span_warning("Decreases overcharge rate by [abs(amount*100)]%")

		if(weapon_upgrades[GUN_UPGRADE_OFFSET])
			var/amount = weapon_upgrades[GUN_UPGRADE_OFFSET]-1
			if(amount > 0)
				examine_list += span_warning("Increases weapon inaccuracy by [amount*100]%")
			else
				examine_list += span_notice("Decreases weapon inaccuracy by [abs(amount*100)]%")

		if(weapon_upgrades[GUN_UPGRADE_HONK])
			examine_list += span_warning("Cheers up the firing sound of the weapon.")

		if(weapon_upgrades[GUN_UPGRADE_RIGGED])
			examine_list += span_warning("Rigs the weapon to fire back on its user.")

		if(weapon_upgrades[GUN_UPGRADE_EXPLODE])
			examine_list += span_warning("Rigs the weapon to explode.")

		if(weapon_upgrades[GUN_UPGRADE_ONEHANDPENALTY])
			var/amount = weapon_upgrades[GUN_UPGRADE_ONEHANDPENALTY]-1
			if(amount > 0)
				examine_list += span_warning("Increases one-handed recoil by [amount*100]%")
			else
				examine_list += span_notice("Decreases one-handed recoil by [abs(amount*100)]%")

		if(weapon_upgrades[GUN_UPGRADE_ZOOM])
			var/amount = weapon_upgrades[GUN_UPGRADE_ZOOM]
			if(amount > 0)
				examine_list += span_notice("Increases scope zoom by x[amount]")
			else
				examine_list += span_warning("Decreases scope zoom by x[amount]")

		examine_list += span_warning("Requires a weapon with the following properties")
		examine_list += english_list(req_gun_tags)

/datum/component/item_upgrade/UnregisterFromParent()
	UnregisterSignal(parent, COMSIG_ITEM_ATTACK_OBJ_NOHIT)
	UnregisterSignal(parent, COMSIG_PARENT_EXAMINE)
	UnregisterSignal(parent, COMSIG_UPGRADE_REMOVE)

/datum/component/item_upgrade/PostTransfer()
	return //COMPONENT_TRANSFER

/datum/component/upgrade_removal
	dupe_mode = COMPONENT_DUPE_UNIQUE

/datum/component/upgrade_removal/RegisterWithParent()
	RegisterSignal(parent, COMSIG_PARENT_ATTACKBY, .proc/attempt_uninstall)

/datum/component/upgrade_removal/UnregisterFromParent()
	UnregisterSignal(parent, COMSIG_PARENT_ATTACKBY)

/datum/component/upgrade_removal/proc/attempt_uninstall(datum/source, obj/item/C, mob/user, params)
	if(!isitem(C))
		return 0

	var/obj/item/upgrade_loc = parent

	ASSERT(istype(upgrade_loc))
	//Removing upgrades from a tool. Very difficult, but passing the check only gets you the perfect result
	//You can also get a lesser success (remove the upgrade but break it in the process) if you fail
	//Using a laser guided stabilised screwdriver is recommended. Precision mods will make this easier
	if(upgrade_loc.item_upgrades.len && C.tool_behaviour == TOOL_SCREWDRIVER)
		var/list/possibles = upgrade_loc.item_upgrades.Copy()
		possibles += "Cancel"
		var/obj/item/tool_upgrade/toremove = input("Which upgrade would you like to try to remove? The upgrade will probably be destroyed in the process","Removing Upgrades") in possibles
		if(toremove == "Cancel")
			return 1
		var/datum/component/item_upgrade/IU = toremove.GetComponent(/datum/component/item_upgrade)
		if(IU.removable == FALSE)
			to_chat(user, span_danger("\the [toremove] seems to be fused with the [upgrade_loc]"))
		else
			if(C.use_tool(user = user, target =  upgrade_loc, delay = IU.removal_time))
				//If you pass the check, then you manage to remove the upgrade intact
				if(!IU.destroy_on_removal && user)
					to_chat(user, span_notice("You successfully remove \the [toremove] while leaving it intact."))
				SEND_SIGNAL(toremove, COMSIG_UPGRADE_REMOVE, upgrade_loc, user, params)
				upgrade_loc.refresh_upgrades()
				return 1
	return 0

/obj/item/tool_upgrade
	name = "tool upgrade"
	icon = 'modular_coyote/eris/icons/tool_upgrades.dmi'
	force = 0
	w_class = WEIGHT_CLASS_SMALL
