// ----------------------- FURNACE -------------------------------

/obj/structure/blacksmith/furnace
	name = "furnace"
	desc = "A furnace with fume protection and good ventilation for stoking the fire. Used for heating metal ingots."
	icon = 'modular_atom/blacksmith/icons/furnace32x64.dmi'
	icon_state = "furnace"
	density = TRUE
	anchored = TRUE
	max_integrity = 700
	var/debug = FALSE //debugging only
	var/working = TRUE
	var/fueluse = 1
	light_system = MOVABLE_LIGHT
	light_range = 2
	light_power = GLOW_BRIGHT
	light_color = LIGHT_COLOR_FIRE
	light_on = FALSE
	var/datum/looping_sound/furnace/soundloop

/obj/structure/blacksmith/furnace/Initialize()
	. = ..()
	create_reagents(250, TRANSPARENT)
	START_PROCESSING(SSobj, src)
	soundloop = new(src, TRUE)

/obj/structure/blacksmith/furnace/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/structure/blacksmith/furnace/process()
	if(debug)
		reagents.add_reagent(/datum/reagent/fuel, 1)
		return TRUE
	if(reagents.remove_reagent(/datum/reagent/fuel, fueluse))
		working = TRUE
		soundloop.start()
		set_light_on(TRUE)
		if(icon_state == "furnace")
			icon_state = "furnace_stoked"

	else
		working = FALSE
		soundloop.stop()
		set_light_on(FALSE)
		icon_state = "furnace"

/obj/structure/blacksmith/furnace/attackby(obj/item/I, mob/user)
	if(istype(I, /obj/item/blacksmith/ingot))
		var/obj/item/blacksmith/ingot/workpiece = I
		if(working)
			to_chat(user, "You heat the [workpiece] in the [src].")
			workpiece.workability = "shapeable"
			workpiece.icon_state = "hot_ingot"
			workpiece.set_light_on(TRUE)
			I.on_attack_hand(user)
		else
			to_chat(user, "The furnace isn't working!.")
	if(istype(I, /obj/item/stack/ore))
		var/obj/item/stack/ore/G = I
		if(working)
			playsound(src, 'modular_atom/blacksmith/sound/steam_short.ogg',80, 1)
			if(do_after(user, 30, target = src))
				G.furnace_smelt()
		else
			to_chat(user, "The furnace isn't working!.")
	else
		. = ..()

/obj/structure/blacksmith/furnace/attackby(obj/item/W, mob/user, params)
	if(W.reagents)
		W.reagents.trans_to(src, 250)
	var/obj/item/stack/sheet/coke/C = W
	if(istype(C))
		src.reagents.add_reagent(/datum/reagent/fuel, 5)
		C.use(1)
		to_chat(user, "You add some lumps of coke to the furnace.")
	else
		return ..()

/obj/structure/blacksmith/furnace/plunger_act(obj/item/plunger/P, mob/living/user, reinforced)
	to_chat(user, "<span class='notice'>You start furiously plunging [name].")
	if(do_after(user, 30, target = src))
		to_chat(user, "<span class='notice'>You finish plunging the [name].")
		reagents.reaction(get_turf(src), TOUCH) //splash on the floor
		reagents.clear_reagents()

/datum/looping_sound/furnace
	mid_sounds = list('modular_atom/blacksmith/sound/furnace1.ogg'=1)
	mid_length = 70
	volume = 80

/obj/item/stack/ore/proc/furnace_smelt()
	if(isnull(refined_type))
		return
	else
		new refined_type(drop_location(),amount)
		qdel(src)


// ----------------------- SANDSTONE FURNACE -------------------------------

/obj/structure/blacksmith/furnace/sandstone // can be built from sandstone, less economical but same effect
	name = "sandstone furnace"
	desc = "A simply made furnace, not as fuel-efficient as more advanced ones. Used for heating metal ingots."
	icon_state = "furnace_sandstone"
	fueluse = 2

/obj/structure/blacksmith/furnace/sandstone/process()
	if(debug)
		reagents.add_reagent(/datum/reagent/fuel, 1)
		return TRUE
	if(reagents.remove_reagent(/datum/reagent/fuel, fueluse))
		working = TRUE
		soundloop.start()
		set_light_on(TRUE)
		if(icon_state == "furnace_sandstone")
			icon_state = "furnace_sandstone_stoked"

	else
		working = FALSE
		soundloop.stop()
		set_light_on(FALSE)
		icon_state = "furnace_sandstone"
