/obj/vehicle/sealed/mecha/working/ripley
	desc = "Autonomous Power Loader Unit MK-I. Designed primarily around heavy lifting, the Ripley can be outfitted with utility equipment to fill a number of roles."
	name = "\improper APLU MK-I \"Ripley\""
	icon_state = "ripley"
	silicon_icon_state = "ripley-empty"
	movedelay = 2 //Move speed, lower is faster.
	/// How fast the mech is in low pressure
	max_temperature = 20000
	max_integrity = 250
	lights_power = 7
	armor = list("melee" = 45, "bullet" = 40, "laser" = 30, "energy" = 30, "bomb" = 50)
	max_equip = 4
	wreckage = /obj/structure/mecha_wreckage/ripley
	enclosed = FALSE //Normal ripley has an open cockpit design
	enter_delay = 10 //can enter in a quarter of the time of other mechs
	exit_delay = 10
	/// List of all things in Ripley's Cargo Compartment
	var/list/cargo = new
	/// How much things Ripley can carry in their Cargo Compartment
	var/cargo_capacity = 15

/obj/vehicle/sealed/mecha/working/ripley/check_for_internal_damage(list/possible_int_damage, ignore_threshold = FALSE)
	if (!enclosed)
		possible_int_damage -= (MECHA_INT_TEMP_CONTROL + MECHA_INT_TANK_BREACH) //if we don't even have an air tank, these two doesn't make a ton of sense.
	. = ..()

/obj/vehicle/sealed/mecha/working/ripley/generate_actions()
	initialize_passenger_action_type(/datum/action/vehicle/sealed/mecha/mech_eject)
	if(enclosed)
		initialize_controller_action_type(/datum/action/vehicle/sealed/mecha/mech_toggle_internals, VEHICLE_CONTROL_SETTINGS)
	initialize_controller_action_type(/datum/action/vehicle/sealed/mecha/mech_cycle_equip, VEHICLE_CONTROL_EQUIPMENT)
	initialize_controller_action_type(/datum/action/vehicle/sealed/mecha/mech_toggle_lights, VEHICLE_CONTROL_SETTINGS)
	initialize_controller_action_type(/datum/action/vehicle/sealed/mecha/mech_view_stats, VEHICLE_CONTROL_SETTINGS)
	initialize_controller_action_type(/datum/action/vehicle/sealed/mecha/strafe, VEHICLE_CONTROL_DRIVE)
	if(max_occupants > 1)
		initialize_passenger_action_type(/datum/action/vehicle/sealed/mecha/swap_seat)

/obj/vehicle/sealed/mecha/working/ripley/Destroy()
	for(var/atom/movable/A in cargo)
		A.forceMove(drop_location())
		step_rand(A)
	cargo.Cut()
	return ..()

/obj/vehicle/sealed/mecha/working/ripley/mkii
	desc = "Autonomous Power Loader Unit MK-II. This prototype Ripley is refitted with a pressurized cabin, trading its prior speed for atmospheric protection and armor."
	name = "\improper APLU MK-II \"Ripley\""
	icon_state = "ripleymkii"
	movedelay = 3
	max_temperature = 30000
	max_integrity = 350
	armor = list("melee" = 45, "bullet" = 40, "laser" = 30, "energy" = 30, "bomb" = 60, "rad" = 100)
	wreckage = /obj/structure/mecha_wreckage/ripley/mkii
	enclosed = TRUE
	enter_delay = 40
	silicon_icon_state = null

/obj/vehicle/sealed/mecha/working/ripley/mkii/clarke
	desc = "A pre-War design by Vault-Tec to protect workers in hazardous post-War conditions. This model has had its internal ore box replaced with a generic storage module."
	name = "\improper Clarke"
	icon_state = "clarke"
	max_temperature = 65000
	max_integrity = 300
	movedelay = 1.75
	allow_diagonal_movement = FALSE
	resistance_flags = LAVA_PROOF | FIRE_PROOF | ACID_PROOF
	lights_power = 7
	step_energy_drain = 30 //slightly higher energy drain since you movin those wheels FAST
	armor = list("melee" = 35, "bullet" = 15, "laser" = 20, "energy" = 20, "bomb" = 60, "rad" = 100)
	max_equip = 4
	wreckage = /obj/structure/mecha_wreckage/clarke
	cargo_capacity = 10

/obj/vehicle/sealed/mecha/working/clarke/moved_inside(mob/living/carbon/human/H)
	. = ..()
	if(.)
		var/datum/atom_hud/hud = GLOB.huds[DATA_HUD_DIAGNOSTIC_ADVANCED]
		hud.add_hud_to(H)

/obj/vehicle/sealed/mecha/working/clarke/container_resist()
	if(isliving(occupants))
		var/mob/living/L = occupants
		var/datum/atom_hud/hud = GLOB.huds[DATA_HUD_DIAGNOSTIC_ADVANCED]
		hud.remove_hud_from(L)
	return ..()

/obj/vehicle/sealed/mecha/working/clarke/mmi_moved_inside(obj/item/mmi/M, mob/user)
	. = ..()
	if(.)
		var/datum/atom_hud/hud = GLOB.huds[DATA_HUD_DIAGNOSTIC_ADVANCED]
		var/mob/living/brain/B = M.brainmob
		hud.add_hud_to(B)

/obj/vehicle/sealed/mecha/working/ripley/firefighter
	desc = "Autonomous Power Loader Unit MK-II-F. This model is refitted with additional thermal protection."
	name = "\improper APLU \"Firefighter\""
	icon_state = "firefighter"
	movedelay = 3
	max_temperature = 65000
	max_integrity = 400
	resistance_flags = LAVA_PROOF | FIRE_PROOF | ACID_PROOF
	max_equip = 5 // More armor, less tools
	enclosed = TRUE
	enter_delay = 40

/obj/vehicle/sealed/mecha/working/ripley/deathripley
	desc = "OH SHIT IT'S THE DEATHSQUAD WE'RE ALL GONNA DIE"
	name = "\improper DEATH-RIPLEY"
	icon_state = "deathripley"
	max_temperature = 100000
	max_integrity = 500
	resistance_flags = LAVA_PROOF | FIRE_PROOF | ACID_PROOF
	armor = list("melee" = 50, "bullet" = 50, "laser" = 40, "energy" = 50, "bomb" = 75, "rad" = 100)
	movedelay = 3
	lights_power = 7
	wreckage = /obj/structure/mecha_wreckage/ripley/deathripley
	step_energy_drain = 0
	enclosed = TRUE
	enter_delay = 20
	silicon_icon_state = null

/obj/vehicle/sealed/mecha/working/ripley/deathripley/Initialize()
	. = ..()
	var/obj/item/mecha_parts/mecha_equipment/ME = new /obj/item/mecha_parts/mecha_equipment/hydraulic_clamp/kill
	ME.attach(src)

/obj/vehicle/sealed/mecha/working/ripley/deathripley/real
	desc = "OH SHIT IT'S THE DEATHSQUAD WE'RE ALL GONNA DIE. FOR REAL"

/obj/vehicle/sealed/mecha/working/ripley/deathripley/real/Initialize()
	. = ..()
	for(var/obj/item/mecha_parts/mecha_equipment/E in equipment)
		E.detach()
		qdel(E)
	LAZYCLEARLIST(equipment)
	var/obj/item/mecha_parts/mecha_equipment/ME = new /obj/item/mecha_parts/mecha_equipment/hydraulic_clamp/kill/real
	ME.attach(src)

/obj/vehicle/sealed/mecha/working/ripley/mining
	desc = "An old, dusty mining Ripley."
	name = "\improper APLU \"Miner\""
	obj_integrity = 75 //Low starting health

/obj/vehicle/sealed/mecha/working/ripley/mining/Initialize()
	. = ..()
	if(cell)
		cell.charge = FLOOR(cell.charge * 0.25, 1) //Starts at very low charge
	if(prob(70)) //Maybe add a drill
		if(prob(15)) //Possible diamond drill... Feeling lucky?
			var/obj/item/mecha_parts/mecha_equipment/drill/diamonddrill/D = new
			D.attach(src)
		else
			var/obj/item/mecha_parts/mecha_equipment/drill/D = new
			D.attach(src)

	else //Add plasma cutter if no drill
		var/obj/item/mecha_parts/mecha_equipment/weapon/energy/plasma/P = new
		P.attach(src)

	//Add ore box to cargo
	cargo.Add(new /obj/structure/ore_box(src))

	//Attach hydraulic clamp
	var/obj/item/mecha_parts/mecha_equipment/hydraulic_clamp/HC = new
	HC.attach(src)
	for(var/obj/item/mecha_parts/mecha_tracking/B in trackers)//Deletes the beacon so it can't be found easily
		qdel(B)

	var/obj/item/mecha_parts/mecha_equipment/mining_scanner/scanner = new
	scanner.attach(src)

/obj/vehicle/sealed/mecha/working/ripley/Exit(atom/movable/O)
	if(O in cargo)
		return 0
	return ..()

/obj/vehicle/sealed/mecha/working/ripley/Topic(href, href_list)
	..()
	if(href_list["drop_from_cargo"])
		var/obj/O = locate(href_list["drop_from_cargo"]) in cargo
		if(O)
			to_chat(occupants, "[icon2html(src, occupants)]<span class='notice'>You unload [O].</span>")
			O.forceMove(drop_location())
			cargo -= O
			log_message("Unloaded [O]. Cargo compartment capacity: [cargo_capacity - src.cargo.len]", LOG_MECHA)
	return


/obj/vehicle/sealed/mecha/working/ripley/contents_explosion(severity, target, origin)
	for(var/X in cargo)
		var/obj/O = X
		if(prob(30/severity))
			cargo -= O
			O.forceMove(drop_location())
	. = ..()

/obj/vehicle/sealed/mecha/working/ripley/get_stats_part()
	var/output = ..()
	output += "<b>Cargo Compartment Contents:</b><div style=\"margin-left: 15px;\">"
	if(cargo.len)
		for(var/obj/O in cargo)
			output += "<a href='?src=[REF(src)];drop_from_cargo=[REF(O)]'>Unload</a> : [O]<br>"
	else
		output += "Nothing"
	output += "</div>"
	return output

/obj/vehicle/sealed/mecha/working/ripley/relay_container_resist(mob/living/user, obj/O)
	to_chat(user, "<span class='notice'>You lean on the back of [O] and start pushing so it falls out of [src].</span>")
	if(do_after(user, 300, target = O))
		if(!user || user.stat != CONSCIOUS || user.loc != src || O.loc != src )
			return
		to_chat(user, "<span class='notice'>You successfully pushed [O] out of [src]!</span>")
		O.forceMove(drop_location())
		cargo -= O
	else
		if(user.loc == src) //so we don't get the message if we resisted multiple times and succeeded.
			to_chat(user, "<span class='warning'>You fail to push [O] out of [src]!</span>")
