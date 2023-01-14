/* 	IN THIS FILE
	*	MATERIALS
	*	AUTOLATHES
	*	FALLOUT TOOLS
	*	WORKBENCHES
	*	STRUCTURES
	*	ITEMS
*/

//////////////////////////////////////////////////
//												//
//												//
//					MATERIALS					//
//												//
//												//
//////////////////////////////////////////////////

// ------------ COAL & COKE ------------------ New base material and the sheet that can be used as fuel or ground for charcoal

/datum/material/coal
	name = "coal"
	desc = "coal"
	color = "#0a0a0a"
	alpha = 150
	categories = list(MAT_CATEGORY_RIGID = TRUE, MAT_CATEGORY_BASE_RECIPES = FALSE)
	sheet_type = /obj/item/stack/ore/coal
	value_per_unit = 0.0050

/obj/item/stack/ore/coal // turns to coke when heated in a Furnace or ORM
	name = "coal"
	desc = "Pure coal needs heat-processing to become good fuel."
	icon = 'modular_atom/icons/stackable_items.dmi'
	icon_state = "ore_coal"
	singular_name = "lump of coal"
	points = 2
	custom_materials = null
	refined_type = /obj/item/stack/sheet/coke
	merge_type = /obj/item/stack/ore/coal
	resistance_flags = FLAMMABLE

/obj/item/stack/sheet/coke // Can be used to fuel Furnaces, Campfires, Barrel Fires, Potbelly stoves, Fireplaces, or grind for charcoal
	name = "coke"
	desc = "Coke is what you get when you heat-treat coal. It's a good fuel for burning."
	singular_name = "bag of coke"
	icon = 'modular_atom/icons/stackable_items.dmi'
	icon_state = "sheet_coke"
	custom_materials = null
	throwforce = 2
	grind_results = list(/datum/reagent/medicine/charcoal = 5)
	material_type = /datum/material/coal
	merge_type = /obj/item/stack/sheet/coke
	resistance_flags = FLAMMABLE

/obj/item/stack/sheet/coke/twenty
	amount = 20

/turf/closed/mineral/coal
	mineralType = /obj/item/stack/ore/coal
	spreadChance = 5
	spread = 1
	scan_state = "rock_Coal"


/*
// ------------------------------- AMMOLATHE ------------------------------

/obj/machinery/autolathe/ammo   Various changes to procs etc for the overlays in autolathe.dm
	icon = 'modular_atom/icons/ammo_lathe.dmi'


//////////////////////////////////////////////////
//												//
//												//
//					WORKBENCHES					//
//												//
//												//
//////////////////////////////////////////////////

// ------------ METALWORKING BENCH ------------------ 

/obj/machinery/workbench/forge // should be repathed to worbench/metal
	name = "metalworking bench"
	desc = "A workbench with a drill press, a makeshift blowtorch setup, and various tools for making crude weapons and tools."
	icon = 'modular_atom/icons/workbench64x32.dmi'
	icon_state = "bench_metal"
*/


//////////////////////////////////////////////////
//												//
//												//
//					STRUCTURES					//
//												//
//												//
//////////////////////////////////////////////////

// -------------------- WOODEN SHELF ------------------ New attempt at non-broken wooden shelf thats not made of metal.

/obj/structure/rack/shelf_wood
	flags_1 = NODECONSTRUCT_1
	max_integrity = 50

/obj/structure/rack/shelf_wood/examine(mob/user)
	. = ..()
	. += "<span class='notice'>It's not made to be easily disassembled.</span>"

/* Copied to base code
Edited base code with below for destroyed
/obj/structure/rack/deconstruct(disassembled = TRUE)
	if(!(flags_1&NODECONSTRUCT_1))
		density = FALSE
		var/obj/item/rack_parts/newparts = new(loc)
		transfer_fingerprints_to(newparts)
	else
		density = FALSE
		var/obj/item/stack/sheet/mineral/wood/plank = new(loc)
		transfer_fingerprints_to(plank)
	qdel(src)


// ------------ CRATES ------------------ 

/obj/structure/closet/crate  new shading, copied sprite to base

/obj/structure/closet/crate/footchest 4 view art + sounds added crates.dm
	icon = 'modular_atom/icons/crates.dmi'
	open_sound = 'modular_atom/sound/creak.ogg'
	close_sound = 'modular_atom/sound/creak.ogg'

/obj/structure/closet/crate/wicker shade + sounds added farming_tools.dm 
	icon = 'modular_atom/icons/crates.dmi'


// -------------------- ALCHEMY RACK ------------------
	icon = 'modular_atom/icons/racks.dmi'
*/


// -------------------- BAREBONES GARDEN TOOLSHED ------------------
/obj/machinery/smartfridge/bottlerack/gardentool/barebones
	initial_contents = list(
		/obj/item/shovel = 1,
		/obj/item/cultivator/rake  = 2,
		/obj/item/reagent_containers/glass/bucket/wood = 3,
		/obj/item/storage/bag/plants = 2,
		/obj/item/shovel/spade = 1,
		/obj/item/book/manual/advice_farming = 1)



//////////////////////////////////////////////////
//												//
//												//
//					ITEMS						//
//												//
//												//
//////////////////////////////////////////////////

// -------------------- ARMOR KIT CUSTOMIZATION ------------------ Because I like slapcrafting and Id like for my shoulder kit to be craftable

/obj/item/clothing/suit/armor/light/kit/attackby(obj/item/C, mob/user, params)
	if(istype(C, /obj/item/crafting/duct_tape))
		user.visible_message("[user] begins taping on some punky bits to the the [src].", \
				span_notice("You begin taping some punkish item on the [src]."), \
				span_italic("You hear someone tape stuff together."))
		playsound(src, 'sound/f13items/craft_2.ogg', 100, TRUE)
		if(!do_after(user, 40, TRUE, src))
			return
		new /obj/item/clothing/suit/armor/light/kit/punk(drop_location())
		qdel(src)
		qdel(C)
		return
	if(istype(C, /obj/item/stack/sheet/metal))
		user.visible_message("[user] begins adding metal sheet to the the [src].", \
				span_notice("You begin attaching some metal sheet on the [src]."), \
				span_italic("You hear grunts as someone tries to bend metal with their hands."))
		playsound(src, 'sound/f13items/craft_2.ogg', 100, TRUE)
		if(!do_after(user, 40, TRUE, src))
			return
		new /obj/item/clothing/suit/armor/light/kit/plates(drop_location())
		qdel(src)
		C.use(1)
		return
	if(C.tool_behaviour == TOOL_WIRECUTTER)
		user.visible_message("[user] begins cutting new straps to wear [src] differently.", \
				span_notice("You begin cutting straps and readjusting the [src]."), \
				span_italic("You hear the snips of a wirecutter on fabric."))
		playsound(src, 'sound/weapons/slice.ogg', 50, TRUE)
		if(!do_after(user, 40, TRUE, src))
			return
		new /obj/item/clothing/suit/armor/light/kit/shoulder(drop_location())
		qdel(src)
		return
	return ..()







