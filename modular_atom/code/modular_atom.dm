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

//////////////////////////////////////////////////
//												//
//												//
//					AUTOLATHES					//
//												//
//												//
//////////////////////////////////////////////////

// ------------------------------- MANUAL AUTOLATHE ------------------------------

/obj/machinery/autolathe/manual
	name = "manual lathe"
	desc = "Produce simple items with manually cranked tools."
	icon = 'modular_atom/icons/autolathe_primitive.dmi'
	icon_state = "autolathe"
	use_power = NO_POWER_USE
	circuit = /obj/item/circuitboard/machine/autolathe/manual
	tooadvanced = FALSE
	categories = list(
					"Tools",
					"Construction",
					"Equipment",
					"Medical",
					"Misc",
					"Dinnerware",
					)
	base_print_speed = 30
	allowed_materials = list(
		/datum/material/iron,
		/datum/material/glass,
		/datum/material/titanium,
		/datum/material/bone,
		/datum/material/lead
		)
	stored_research = /datum/techweb/specialized/autounlocking/autolathe/manual


/obj/item/circuitboard/machine/autolathe/manual // not reinventing machine building entirely even if its dorky
	name = "manual lathe kit"

/datum/techweb/specialized/autounlocking/autolathe/manual
	design_autounlock_buildtypes = AUTOLATHE_PRIMITIVE
	allowed_buildtypes = AUTOLATHE_PRIMITIVE


// ------------------------------- MANUAL AUTOLATHE DESIGNS ------------------------------

/datum/design/hemostat_primitive
	name = "Hemostat (primitive)"
	id = "hemostat_primitive"
	materials = list(/datum/material/iron = ONE_SHEET*2, /datum/material/bone = HALF_SHEET)
	build_path = /obj/item/hemostat/tribal
	category = list("initial", "Medical")
	build_type = AUTOLATHE_PRIMITIVE

/datum/design/cautery_primitive
	name = "Cautery (primitive)"
	id = "cautery_primitive"
	materials = list(/datum/material/iron = ONE_SHEET*2, /datum/material/glass = HALF_SHEET)
	build_path = /obj/item/cautery/primitive
	category = list("initial", "Medical")
	build_type = AUTOLATHE_PRIMITIVE

/datum/design/razor
	name = "Straight razor"
	id = "straigth_razor"
	materials = list(/datum/material/iron = ONE_SHEET*2, /datum/material/bone = HALF_SHEET)
	build_path = /obj/item/melee/onehanded/straight_razor
	category = list("initial", "Medical")
	build_type = AUTOLATHE_PRIMITIVE

/datum/design/retractor_primitive
	name = "Retractor (primitive)"
	id = "retractor_primitive"
	materials = list(/datum/material/iron = ONE_SHEET*2, /datum/material/bone = HALF_SHEET)
	build_path = /obj/item/retractor/tribal
	category = list("initial", "Medical")
	build_type = AUTOLATHE_PRIMITIVE

/datum/design/bonesetter_primitive
	name = "Bonesetter (primitive)"
	id = "bonesetter_primitive"
	materials = list(/datum/material/iron = ONE_SHEET*2, /datum/material/bone = HALF_SHEET)
	build_path = /obj/item/bonesetter
	category = list("initial", "Medical")
	build_type = AUTOLATHE_PRIMITIVE

/datum/design/handsaw
	name = "Hand saw"
	id = "handsaw"
	materials = list(/datum/material/iron =  ONE_SHEET*3)
	build_path = /obj/item/circular_saw/primitive
	category = list("initial", "Medical")
	build_type = AUTOLATHE_PRIMITIVE

/datum/design/lantern
	name = "Lantern"
	id = "lantern"
	materials = list(/datum/material/lead = QUARTER_SHEET, /datum/material/glass = ONE_SHEET)
	build_path = /obj/item/flashlight/lantern
	category = list("initial","Equipment")
	build_type = AUTOLATHE_PRIMITIVE

/datum/design/binoculars
	name = "Binoculars"
	id = "binoculars"
	materials = list(/datum/material/lead = ONE_SHEET*2, /datum/material/glass =  ONE_SHEET*10) // leaded glass
	build_path = /obj/item/binoculars
	category = list("initial","Equipment")
	build_type = AUTOLATHE_PRIMITIVE

/datum/design/weldingtool_basic
	name = "Welding tool"
	id = "weldingtool_basic"
	materials = list(/datum/material/iron = ONE_SHEET, /datum/material/glass = QUARTER_SHEET)
	build_path = /obj/item/weldingtool/basic
	category = list("initial","Tools")
	build_type = AUTOLATHE_PRIMITIVE

/datum/design/screwdriver_basic
	name = "Screwdriver"
	id = "screwdriver_basic"
	materials = list(/datum/material/iron = QUARTER_SHEET)
	build_path = /obj/item/screwdriver/basic
	category = list("initial","Tools")
	build_type = AUTOLATHE_PRIMITIVE

/datum/design/wirecutters_basic
	name = "Wirecutters"
	id = "wirecutters_basic"
	materials = list(/datum/material/iron = QUARTER_SHEET)
	build_path = /obj/item/wirecutters/basic
	category = list("initial","Tools")
	build_type = AUTOLATHE_PRIMITIVE

/datum/design/wrench_basic
	name = "Wrench"
	id = "wrench_basic"
	materials = list(/datum/material/iron = HALF_SHEET)
	build_path = /obj/item/wrench/basic
	category = list("initial","Tools")
	build_type = AUTOLATHE_PRIMITIVE

/datum/design/crowbar_basic
	name = "Crowbar"
	id = "crowbar_basic"
	materials = list(/datum/material/iron = HALF_SHEET)
	build_path = /obj/item/crowbar/basic
	category = list("initial","Tools")
	build_type = AUTOLATHE_PRIMITIVE

/datum/design/metal_parts
	name = "Metal parts"
	id = "metalparts"
	materials = list(/datum/material/iron = ONE_SHEET*5)
	build_path = /obj/item/stack/crafting/metalparts
	category = list("initial","Construction")
	build_type = AUTOLATHE_PRIMITIVE
	maxstack = 50

/datum/design/hq_parts
	name = "High quality parts"
	id = "hqparts"
	materials = list(/datum/material/titanium = ONE_SHEET*5)
	build_path = /obj/item/stack/crafting/goodparts
	category = list("initial","Construction")
	build_type = AUTOLATHE_PRIMITIVE
	maxstack = 50

/datum/design/titaniumsheet
	name = "Titanium sheet"
	id = "titanium_sheet"
	build_type = AUTOLATHE_PRIMITIVE
	materials = list(/datum/material/titanium = ONE_SHEET)
	build_path = /obj/item/stack/sheet/metal
	category = list("initial","Construction")
	maxstack = 50

/datum/design/leadsheet
	name = "Lead sheet"
	id = "lead"
	build_type = AUTOLATHE | AUTOLATHE_PRIMITIVE
	materials = list(/datum/material/lead = ONE_SHEET)
	build_path = /obj/item/stack/sheet/lead
	category = list("initial","Construction")
	maxstack = 50

/datum/design/chain
	name = "Length of chain"
	id = "chain"
	materials = list(/datum/material/iron = ONE_SHEET)
	build_path = /obj/item/blacksmith/chain
	category = list("initial","Construction")
	build_type = AUTOLATHE_PRIMITIVE

/datum/design/lunchbox
	name = "Lunchbox"
	id = "lunchbox"
	build_type = AUTOLATHE_PRIMITIVE
	materials = list(/datum/material/iron = ONE_SHEET)
	build_path = /obj/item/crafting/lunchbox
	category = list("initial", "Misc")

/datum/design/beartrap
	name = "Beartrap"
	id = "beartrap"
	build_type = AUTOLATHE_PRIMITIVE
	materials = list(/datum/material/titanium = ONE_SHEET)
	build_path = /obj/item/restraints/legcuffs/beartrap
	category = list("initial", "Misc")

/datum/design/coffeepot
	name = "Coffeepot"
	id = "coffeepot"
	build_type = AUTOLATHE_PRIMITIVE
	materials = list(/datum/material/iron = ONE_SHEET)
	build_path = /obj/item/crafting/coffee_pot
	category = list("initial", "Misc")

// Also the following recipes has [] | AUTOLATHE_PRIMITIVE } added to build_type: /datum/design/lead, /datum/design/titanium, /datum/design/rods, /datum/design/metal, /datum/design/glass, /datum/design/rglass
// /datum/design/handlabeler, /datum/design/kitchen_knife, /datum/design/fork, /datum/design/beaker, /datum/design/large_beaker, /datum/design/bonesetter
// /datum/design/handcuffs, /datum/design/syringe, /datum/design/igniter, /datum/design/spraycan, /datum/design/extinguisher, /datum/design/welding_helmet, /datum/design/cable_coil
// /datum/design/toolbox, /datum/design/spraybottle, /datum/design/bucket, /datum/design/timer, /datum/design/tray, /datum/design/bowl, /datum/design/drinking_glass, /datum/design/shot_glass
// /datum/design/shaker, /datum/design/earmuffs
// #define AUTOLATHE_PRIMITIVE	(1<<13)	// ADD to defines machines.dm


// ------------------------------- MILITARY AUTOLATHE ------------------------------

/obj/machinery/autolathe/military
	name = "military autolathe"
	desc = "Ancient technology, still works."
	icon = 'modular_atom/icons/autolathe_military.dmi'
	circuit = /obj/item/circuitboard/machine/autolathe/military

/obj/item/circuitboard/machine/autolathe/military
	name = "army lathe circuit board"


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

// ------------------------------- ABRAXO SPRAYBOTTLE ------------------------------
// Abraxo spray is now made by adding Abraxo to a spray bottle, not taking a pinch of glass and snap your fingers.
// Abraxo my beloved. Slap it on spray bottle, clean away.

/obj/item/reagent_containers/spray/empty/attackby(obj/item/C, mob/user, params)
	if(istype(C, /obj/item/crafting/abraxo))
		user.visible_message("[user] begins filling the[src] with Abraxo solution.", \
				span_notice("You begin filling he [src] with Abraxo. Smells nice."), \
				span_italic("You hear faint bubbling sounds."))
		playsound(get_turf(src), 'modular_atom/sound/abraxo.ogg', 100, TRUE)
		if(!do_after(user, 40, TRUE, src))
			return
		new /obj/item/reagent_containers/spray/cleaner(drop_location())
		qdel(src)
		qdel(C)
		return
	return ..()

/obj/item/reagent_containers/spray/empty
	desc = "A spray bottle, with an unscrewable top. Meant to be filled with Abraxo for superior cleanliness."
	icon = 'modular_atom/icons/cleaning.dmi'

/*	
// ------------------------------- MATCHBOX FIX ------------------------------

/obj/item/storage/box/matches/attackby(obj/item/match/W as obj, mob/user as mob, params)
	if(istype(W, /obj/item/match))
		if(prob(50))
			playsound(src, 'sound/f13items/matchstick_hit.ogg', 80, TRUE)
			return
		else
			W.matchignite()
			playsound(src, 'sound/f13items/matchstick_lit.ogg', 80, TRUE)
*/


// ------------ CRAFING STACKABLE ICON UPDATERS ------------------
/obj/item/stack/crafting/update_icon_state()
	var/amount = get_amount()
	if(amount <= 5)
		icon_state = initial(icon_state)
	else if(amount <= 25)
		icon_state = "[initial(icon_state)]_2"
	else
		icon_state = "[initial(icon_state)]_3"

// Adapted for the specific bullet remnant stacking
/obj/item/stack/crafting/powder/update_icon_state()
	var/amount = get_amount()
	if(amount <= 80)
		icon_state = initial(icon_state)
	else if(amount <= 160)
		icon_state = "[initial(icon_state)]_2"
	else
		icon_state = "[initial(icon_state)]_3"


// -------------------- CRAFTING RECIPES ------------------

/datum/crafting_recipe/broom
	name = "Broom"
	result = /obj/item/broom
	time = 50
	reqs = list(/obj/item/stack/sheet/hay = 2,
				/obj/item/stack/sheet/mineral/wood = 4)
	category = CAT_CRAFTING
	subcategory = CAT_TOOL

/datum/crafting_recipe/mop
	name = "Mop"
	result = /obj/item/mop
	time = 50
	reqs = list(/obj/item/stack/sheet/cloth = 2,
				/obj/item/stack/sheet/mineral/wood = 4)
	category = CAT_CRAFTING
	subcategory = CAT_TOOL

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







