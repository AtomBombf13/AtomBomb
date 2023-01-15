/*
		Access
				Great Khans - ACCESS_KHAN 125

				All Access for every role in every faction: ACCESS_PUBLIC 284

*/
/datum/job/khan //do NOT use this for anything, it's just to store faction datums
	department_flag = KHAN
	selection_color = "#df80af"
	faction = FACTION_KHAN
	exp_type = EXP_TYPE_KHAN
	access = list(ACCESS_KHAN, ACCESS_PUBLIC)
	minimal_access = list(ACCESS_KHAN, ACCESS_PUBLIC)
	forbids = "THE KHANATE DISCOURAGES: Dishonorable actions, weakness, abuse of power or status and sabotaging other Khans."
	enforces = "THE KHANATE ENCOURAGES: Bravery, honor, displays of strength, and brotherhood."

/datum/outfit/job/khan
	name = "Khan"
	jobtype = /datum/job/khan
	suit = /obj/item/clothing/suit/toggle/labcoat/khan_jacket
	id = /obj/item/card/id/khantattoo
	ears = /obj/item/radio/headset/headset_khans
	head = /obj/item/clothing/head/helmet/f13/khan/bandana
	shoes = /obj/item/clothing/shoes/f13/military/khan
	gloves = /obj/item/melee/unarmed/brass/spiked
	backpack =	/obj/item/storage/backpack/satchel/explorer
	satchel = 	/obj/item/storage/backpack/satchel/old
	uniform = /obj/item/clothing/under/f13/khan
	r_hand = /obj/item/book/granter/trait/selection
	r_pocket = /obj/item/flashlight/flare
	box = /obj/item/storage/survivalkit/tribal/chief
	box_two = /obj/item/storage/survivalkit/medical/raider
	backpack_contents = list(
		/obj/item/storage/bag/money/small/khan = 1
		)

/datum/outfit/job/khan/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

	if(!H.gang)
		var/datum/gang/greatkhans/GK = GLOB.greatkhans
		GLOB.all_gangs |= GK
		GK.add_member(H)
		H.gang = GK

	H.mind.teach_crafting_recipe(/datum/crafting_recipe/set_vrboard/den)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/trail_carbine)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/varmintrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/combatrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/uzi)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/smg10mm)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/gate_khanate)

/datum/outfit/job/khan/greatkhan
	jobtype = /datum/job/khan/greatkhan

/datum/job/khan/greatkhan
	title = "Great Khan"
	flag = F13GREATKHAN
	display_order = JOB_DISPLAY_ORDER_PUSHER
	faction = FACTION_KHAN
	total_positions = 8
	spawn_positions = 8
	description = "You are a Great Khan, a warrior of the Khans who has passed the Trial of Position within the arena and earned their place. While your combat skills are to be respected, remember your position as a soldier - protect the Khan Fortress and Bighorn, show loyalty, and you may find chances yet to prove your greater worth."
	supervisors = "your Tribe"
	selection_color = "#df80af"
	exp_type = EXP_TYPE_KHAN
	outfit = /datum/outfit/job/khan/greatkhan

	loadout_options = list(
		/datum/outfit/loadout/khanenforcer,
		/datum/outfit/loadout/khanskirmisher,
		/datum/outfit/loadout/khanrifler,
		/datum/outfit/loadout/khandrug
		)

//=========================================================== LOADOUT DATUMS ===========================================================

/datum/outfit/loadout/khanenforcer //Short-range Shogunner, Leagues
	name = "Enforcer"
	r_hand = /obj/item/gun/ballistic/shotgun/automatic/combat/shotgunlever
	neck = /obj/item/storage/belt/bandolier
	backpack_contents = list(
		/obj/item/ammo_box/shotgun/buck = 2,
		/obj/item/restraints/legcuffs/bola/tactical = 1,
		/obj/item/book/granter/trait/bigleagues = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2
		)

/datum/outfit/loadout/khanskirmisher //Mid-range SMG user with an autoloader and a bola
	name = "Skirmisher"
	r_hand = /obj/item/gun/ballistic/automatic/smg/mini_uzi
	neck = /obj/item/storage/belt/holster/leg
	backpack_contents = list(
		/obj/item/ammo_box/magazine/uzim9mm = 3,
		/obj/item/restraints/legcuffs/bola/tactical = 1,
		/obj/item/gun/ballistic/automatic/pistol/autoloader = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2
		)

/datum/outfit/loadout/khanrifler //Long-range Trail with an autoloader
	name = "Rifler"
	r_hand = /obj/item/gun/ballistic/rifle/repeater/trail
	neck = /obj/item/storage/belt/holster/leg
	backpack_contents = list(
		/obj/item/ammo_box/tube/m44 = 2,
		/obj/item/gun/ballistic/automatic/pistol/autoloader = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2
		)

/datum/outfit/loadout/khandrug //Pusher with 10mm Pistol
	name = "Drug Pusher"
	r_hand = /obj/item/gun/ballistic/revolver/colt6520
	neck = /obj/item/storage/belt/holster/leg
	backpack_contents = list(
		/obj/item/ammo_box/magazine/pistol10mm = 2,
		/obj/item/book/granter/trait/midsurgery = 1,
		/obj/item/book/granter/trait/chemistry = 1,
		/obj/item/storage/pill_bottle/chem_tin/buffout = 1,
		/obj/item/reagent_containers/pill/patch/jet = 4,
		/obj/item/reagent_containers/hypospray/medipen/psycho = 2,
		/obj/item/reagent_containers/pill/patch/turbo = 2
		)
