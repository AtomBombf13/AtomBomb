/*
Legion Design notes:
"Standard issue", AVOID identical kits and guns. Legion got spotty logistics and the hodgepodge aesthetic suits them, don't ruin it.
Sunglasses	For vets mainly, most lower ranks should have sandstorm goggles.
Money		Cent & Treasurer - "small" money bag (the biggest)
			Decanus - Officer money bag
			Rest - Enlisted money bag
Sidearm		None.
Melee		Officers only - Spatha
			Vets/Officers - Gladius
			Rest - Lawnmower machete the most common
Weapons		Lever shotgun, Grease gun, Repeater carbines, Revolvers, simple guns all good, very restrictive on long barrel automatics, generally limited ammo, always good melee option.
			Avoid Police shotguns, 5,56 semis, Desert Eagle, Survival knives etc, be creative and work within the limitations to avoid powercreep and things getting bland and same.
Access
			Legion General Access - ACCESS_LEGION 123
			Legion Slave Access - ACCESS_LEGION1 261
			Legion Military Access -ACCESS_LEGION2 262
			Legion Decanii Access - ACCESS_LEGION3 263
			Legion Leadership Acess - ACCESS_LEGION4 264

			All Access for every role in every faction: ACCESS_PUBLIC 284
*/


			//////////////////////////////
			//							//
//----------// 		GENERAL TEMPLATES	//-----------------------
			//							//
			//////////////////////////////

/datum/job/CaesarsLegion
	department_flag = LEGION
	selection_color = "#fdb8b8"
	faction = FACTION_LEGION

	forbids = "The Legion forbids: Using drugs such as stimpacks and alcohol. Ghouls joining. Women fighting (self defense and suicide allowed). Slaves carrying weapons. Using robots and advanced machines. Killing Legion members in secret, only if according to law and in public is it acceptable."
	enforces = "The Legion demands: Obeying orders of superiors. A lore-accurate name. Wearing the uniform, unless acting as a NON-COMBAT infiltrator. Expect death as punishment for failing to obey."
	objectivesList = list("Focus on the tribals, win them over or intimidate them.", "Focus on Town of Eastwood, display dominance.", "Send out patrols and establish checkpoints to curb use of digusting drugs and degenerate behaviour.", "Flagstaff requests more worker: acquire slaves, train them if possible, send them east for breaking if not.", "Make sure no other faction gains dominance over Town of Eastwood, if they remain neutral it can be used to the Legions advantage.")

	exp_type = EXP_TYPE_LEGION

	access = list(ACCESS_LEGION)
	minimal_access = list(ACCESS_LEGION)

/datum/outfit/job/CaesarsLegion
	ears = /obj/item/radio/headset/headset_legion
	satchel = /obj/item/storage/backpack/marching_satchel
	box = /obj/item/storage/survivalkit/legion_rations
	box_two = null

/datum/outfit/job/CaesarsLegion/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	var/list/recipes = list(
		/datum/crafting_recipe/rip/crossexecution,
		/datum/crafting_recipe/legiongate,
		/datum/crafting_recipe/legioncombathelmet,
		/datum/crafting_recipe/legioncombatarmor,
		/datum/crafting_recipe/legioncombathelmetmk2,
		/datum/crafting_recipe/legioncombatarmormk2,
		/datum/crafting_recipe/legionshield,
		/datum/crafting_recipe/lever_action,
		/datum/crafting_recipe/grease_gun,
		/datum/crafting_recipe/huntingshotgun,
		/datum/crafting_recipe/tailor/legionuniform,
		/datum/crafting_recipe/tribalwar/xbow,
		/datum/crafting_recipe/tribalwar/cheaparrow,
		/datum/crafting_recipe/bitterdrink,
		/datum/crafting_recipe/bitterdrink5,
		/datum/crafting_recipe/healpoultice,
		/datum/crafting_recipe/healpoultice5
	)
	for(var/datum/crafting_recipe/recipe as() in recipes)
		H.mind.teach_crafting_recipe(recipe)

/datum/outfit/job/CaesarsLegion/Legionnaire
	belt = /obj/item/storage/belt/military/legion
	backpack = /obj/item/storage/backpack/marching_satchel
	glasses = /obj/item/clothing/glasses/f13/goggles_sandstorm
	uniform = /obj/item/clothing/under/f13/legskirt
	shoes = /obj/item/clothing/shoes/f13/military/legion
	gloves = /obj/item/clothing/gloves/legion
	r_pocket = /obj/item/storage/survivalkit/medical/legion
	l_pocket = /obj/item/flashlight/lantern

/datum/outfit/job/CaesarsLegion/Legionnaire/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	if(H.gender == FEMALE)
		H.gender = MALE
		H.real_name = random_unique_name(MALE)
		H.name = H.real_name
		if(H.wear_id)
			var/obj/item/card/id/dogtag/L = H.wear_id
			L.registered_name = H.name
			L.update_label()

/datum/outfit/job/CaesarsLegion/Legionnaire/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_TRIBAL, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_FEARLESS, src) //no phobias for legion!
	ADD_TRAIT(H, TRAIT_BERSERKER, src)




//......................//////////////////////////////////................................................
						//								//
						// 		LEGION OFFICERS			//
						//								//
						//////////////////////////////////

// ----------------- CENTURION ---------------------

/datum/job/CaesarsLegion/Legionnaire/f13centurion
	title = "Legion Centurion"
	flag = F13CENTURION
	head_announce = list("Security")
	total_positions = 1
	spawn_positions = 1
	description = "You are the camp commander and strongest soldier. Use your officers, the Decanii, to delegate tasks, make sure you lead and give orders. Take no disrespect, you are the dominus. If you prove a fool or weak, expect to be dispatched by a stronger subordinate."
	supervisors = "the Legate"
	selection_color = "#ff8f8f"
	req_admin_notify = 1
	display_order = JOB_DISPLAY_ORDER_CENTURION
	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13centurion
	exp_requirements = 750

	access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION3, ACCESS_LEGION_COMMAND, ACCESS_LEGION2, ACCESS_CHANGE_IDS, ACCESS_LEGION1, ACCESS_LEGION4)
	minimal_access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION3, ACCESS_LEGION_COMMAND, ACCESS_LEGION2, ACCESS_CHANGE_IDS, ACCESS_LEGION1, ACCESS_LEGION4)

	loadout_options = list(
		/datum/outfit/loadout/palacent,		// BAR, Goliath, 10mm pistol
		/datum/outfit/loadout/rangerhunter,	// Hunting revolver, Sniper, Spatha
		/datum/outfit/loadout/centurion,	// City-Killer shotgun, 14mm pistol
		)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13centurion/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	ADD_TRAIT(H, TRAIT_IRONFIST, src)
	ADD_TRAIT(H, TRAIT_BIG_LEAGUES, src)
	ADD_TRAIT(H, TRAIT_FAST_PUMP, src)
	if(H.mind)
		var/obj/effect/proc_holder/spell/terrifying_presence/S = new /obj/effect/proc_holder/spell/terrifying_presence
		H.mind.AddSpell(S)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13centurion
	name = "Legion Centurion"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13centurion
	id = /obj/item/card/id/dogtag/legion/centurion
	mask = /obj/item/clothing/mask/bandana/legion/centurion
	ears = /obj/item/radio/headset/headset_legion/cent
	gloves = /obj/item/clothing/gloves/legion/plated
	glasses = /obj/item/clothing/glasses/night/polarizing
	shoes = /obj/item/clothing/shoes/f13/military/plated
	r_pocket = /obj/item/storage/survivalkit/medical/legion/advanced
	backpack_contents = list(
		/obj/item/restraints/handcuffs = 1,
		/obj/item/restraints/legcuffs/bola = 1,
		/obj/item/storage/bag/money/small/legion = 1,
		/obj/item/warpaint_bowl = 1,
		/obj/item/ammo_box/loader/a357 = 1,
		/obj/item/gun/ballistic/revolver/colt357 = 1,
		/obj/item/binoculars = 1
		)

/datum/outfit/loadout/palacent
	name = "Paladin-Slayer Centurion"
	suit = /obj/item/clothing/suit/armor/heavy/legion/palacent
	head = /obj/item/clothing/head/helmet/f13/legion/palacent
	suit_store = /obj/item/gun/ballistic/automatic/bar
	backpack_contents = list(
		/obj/item/storage/belt/holster = 1,
		/obj/item/ammo_box/magazine/m762 = 3,
		/obj/item/melee/unarmed/powerfist/goliath = 1,
		/obj/item/gun/ballistic/automatic/pistol/n99/crusader = 1,
		/obj/item/ammo_box/magazine/pistol10mm = 2
		)

/datum/outfit/loadout/rangerhunter
	name = "Ranger-Hunter Centurion"
	suit = /obj/item/clothing/suit/armor/medium/legion/rangercent
	head = /obj/item/clothing/head/helmet/f13/legion/rangercent
	suit_store = /obj/item/gun/ballistic/automatic/sniper
	backpack_contents = list(
		/obj/item/storage/belt/holster/rugged/revolver_hunting = 1,
		/obj/item/ammo_box/magazine/w308 = 2,
		/obj/item/ammo_box/loader/c4570 = 3,
		/obj/item/melee/onehanded/machete/spatha = 1
		)

/datum/outfit/loadout/centurion
	name = "Warlord Centurion"
	suit = /obj/item/clothing/suit/armor/medium/legion/centurion
	head = /obj/item/clothing/head/helmet/f13/legion/centurion
	suit_store = /obj/item/gun/ballistic/automatic/shotgun/citykiller
	backpack_contents = list(
		/obj/item/storage/belt/holster = 1,
		/obj/item/gun/ballistic/automatic/pistol/pistol14 = 1,
		/obj/item/ammo_box/magazine/pistol14mm = 2,
		/obj/item/ammo_box/magazine/city12g = 3
		)



// ----------------- VETERAN DECANUS ---------------------

/datum/job/CaesarsLegion/Legionnaire/f13decanvet
	title = "Legion Veteran Decanus"
	flag = F13DECANVET
	total_positions = 1
	spawn_positions = 1
	description = "You answer directly to the Centurion, his second in command. Lead the camp, ensure its defended, keep track of the Explorers and use your veterans to their full potential."
	supervisors = "the Centurion"
	display_order = JOB_DISPLAY_ORDER_DECANVET
	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13decanvet
	exp_requirements = 450

	access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION3, ACCESS_LEGION_COMMAND, ACCESS_LEGION2, ACCESS_CHANGE_IDS, ACCESS_LEGION1)
	minimal_access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION3, ACCESS_LEGION_COMMAND, ACCESS_LEGION2, ACCESS_CHANGE_IDS, ACCESS_LEGION1)

	loadout_options = list(
		/datum/outfit/loadout/decvetbull,	// Supersledge, 10mm SMG, Smokebomb
		/datum/outfit/loadout/decvetwolf,	// Thermic lance, .45 revoler, Extra Bitter
		/datum/outfit/loadout/decvetsnake, // Brush gun, Ripper, Extra Bitters
		/datum/outfit/loadout/decvetbrave // Trench shotgun, .44 revolver, Ballistic fist
		)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13decanvet/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_BIG_LEAGUES, src)
	ADD_TRAIT(H, TRAIT_IRONFIST, src)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	ADD_TRAIT(H, TRAIT_FAST_PUMP, src)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13decanvet
	name = "Legion Veteran Decanus"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13decanvet
	id = /obj/item/card/id/dogtag/legion/veteran
	head = /obj/item/clothing/head/helmet/f13/legion/vet/decan
	suit = /obj/item/clothing/suit/armor/medium/legion/vet
	mask = /obj/item/clothing/mask/bandana/legion
	gloves = /obj/item/clothing/gloves/legion/plated
	ears = /obj/item/radio/headset/headset_legion/cent
	glasses = /obj/item/clothing/glasses/f13/sunglasses/big
	shoes = /obj/item/clothing/shoes/f13/military/plated
	r_pocket = /obj/item/storage/survivalkit/medical/legion/advanced

	backpack_contents = list(
		/obj/item/ammo_box/loader/a357 = 1,
		/obj/item/gun/ballistic/revolver/colt357 = 1,
		/obj/item/restraints/handcuffs = 1,
		/obj/item/storage/bag/money/small/legofficers = 1,
		/obj/item/binoculars = 1
		)

/datum/outfit/loadout/decvetbull
	name = "Mark of The Bull"
	suit_store = /obj/item/twohanded/sledgehammer/supersledge
	neck = /obj/item/storage/belt/sabre/single
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/smg/smg10mm = 1,
		/obj/item/ammo_box/magazine/pistol10mm/extended = 2,
		/obj/item/grenade/smokebomb = 1
		)

/datum/outfit/loadout/decvetwolf
	name = "Mark of the Wolf"
	suit_store = /obj/item/twohanded/thermic_lance
	neck = /obj/item/storage/belt/sabre/single
	backpack_contents = list(
		/obj/item/melee/onehanded/machete/spatha = 1,
		/obj/item/gun/ballistic/revolver/revolver45 = 1,
		/obj/item/reagent_containers/pill/bitterdrink = 2
		)

/datum/outfit/loadout/decvetsnake
	name = "Mark of the Snake"
	suit_store = /obj/item/gun/ballistic/rifle/repeater/brush
	neck = /obj/item/storage/belt/holster
	backpack_contents = list(
		/obj/item/melee/powered/ripper = 1,
		/obj/item/ammo_box/tube/c4570 = 3,
		/obj/item/gun_upgrade/scope/watchman = 1,
		/obj/item/reagent_containers/pill/bitterdrink = 2
		)

/datum/outfit/loadout/decvetbrave
	name = "Mark of the Brave"
	suit_store = /obj/item/gun/ballistic/shotgun/trench
	neck = /obj/item/storage/belt/holster
	backpack_contents = list(
		/obj/item/gun/ballistic/revolver/ballisticfist = 1,
		/obj/item/ammo_box/shotgun/buck = 2,
		/obj/item/gun/ballistic/revolver/m29 = 1,
		)



// ----------------- PRIME DECANUS ---------------------

/datum/job/CaesarsLegion/Legionnaire/f13decan
	title = "Legion Prime Decanus"
	flag = F13DECAN
	total_positions = 1
	spawn_positions = 1
	description = "A experienced officer, often commanding the camp. Give orders, lead patrols."
	supervisors = "the Veteran Decanus and the Centurion"
	display_order = JOB_DISPLAY_ORDER_DECAN
	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13decan
	access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION3, ACCESS_LEGION_COMMAND, ACCESS_LEGION2)
	minimal_access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION3, ACCESS_LEGION_COMMAND, ACCESS_LEGION2)
	exp_requirements = 360

	loadout_options = list(	//ALL: Gladius, Smokebomb
		/datum/outfit/loadout/decprimfront,	// Lever action, .44 revolver, Legion lance, Throwing knives
		/datum/outfit/loadout/decprimrear,	// Legion shield, Ballistic fist
		/datum/outfit/loadout/decprimboom // Grenade rifle, .44 revolver, Frag grenades, Coffepot bomb
		)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/CaesarsLegion,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/CaesarsLegion,
		),
		)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13decan/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_BIG_LEAGUES, src)
	ADD_TRAIT(H, TRAIT_IRONFIST, src)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13decan
	name = "Prime Decanus"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13decan
	id = /obj/item/card/id/dogtag/legion/prime
	suit = /obj/item/clothing/suit/armor/light/legion/prime
	head = /obj/item/clothing/head/helmet/f13/legion/prime/decan
	mask = /obj/item/clothing/mask/bandana/legion
	neck = /obj/item/storage/belt/holster
	shoes = /obj/item/clothing/shoes/f13/military/plated
	r_pocket = /obj/item/storage/survivalkit/medical/legion/advanced
	backpack_contents = list(
		/obj/item/melee/onehanded/machete/gladius = 1,
		/obj/item/storage/bag/money/small/legofficers = 1,
		/obj/item/grenade/smokebomb = 1,
		/obj/item/binoculars = 1,
		/obj/item/reagent_containers/pill/bitterdrink = 1
		)

/datum/outfit/loadout/decprimfront
	name = "Aspiring Prime Decanus"
	suit_store = /obj/item/twohanded/spear/lance
	backpack_contents = list(
		/obj/item/ammo_box/shotgun/buck = 2,
		/obj/item/gun/ballistic/revolver/m29 = 1,
		/obj/item/ammo_box/loader/m44 = 3,
		/obj/item/restraints/legcuffs/bola = 1,
		/obj/item/melee/onehanded/knife/throwing = 2,
		/obj/item/gun/ballistic/shotgun/automatic/combat/shotgunlever = 1
		)

/datum/outfit/loadout/decprimrear
	name = "Battleborn Prime Decanus"
	backpack_contents = list(
		/obj/item/shield/riot/legion = 1,
		/obj/item/gun/ballistic/revolver/ballisticfist = 1,
		/obj/item/ammo_box/shotgun/buck = 2,
		/obj/item/restraints/legcuffs/bola = 1
		)

/datum/outfit/loadout/decprimboom
	name = "Loud Prime Decanus"
	suit_store = /obj/item/gun/ballistic/revolver/grenadelauncher
	backpack_contents = list(
		/obj/item/ammo_box/a40mm = 2,
		/obj/item/gun/ballistic/revolver/m29 = 1,
		/obj/item/ammo_box/loader/m44 = 3,
		/obj/item/grenade/f13/frag = 2,
		/obj/item/grenade/homemade/coffeepotbomb = 1
		)



// ----------------- RECRUIT DECANUS ---------------------

/datum/job/CaesarsLegion/Legionnaire/f13decanrec
	title = "Legion Recruit Decanus"
	flag = F13DECANREC
	total_positions = 1
	spawn_positions = 1
	description = "The junior officer, you must train the recruits and test them, and if a suicide charge is needed, lead them to a glorious death."
	supervisors = "the Prime/Veteran Decanus and the Centurion"
	display_order = JOB_DISPLAY_ORDER_DECANREC
	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13decanrec
	access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION3, ACCESS_LEGION_COMMAND, ACCESS_LEGION2)
	minimal_access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION3, ACCESS_LEGION_COMMAND, ACCESS_LEGION2)
	exp_requirements = 300

	loadout_options = list(
		/datum/outfit/loadout/recdeclegion,	// Uzi, Bumper sword, Smokebomb
		/datum/outfit/loadout/recdectribal	// M1 Garand, Throwing spears, Reinforced machete, Bottlecap mine
		)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/CaesarsLegion,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/CaesarsLegion,
		),
		)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13decanrec/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_BIG_LEAGUES, src)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13decanrec
	name = "Legion Recruit Decanus"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13decanrec
	id = /obj/item/card/id/dogtag/legion
	suit = /obj/item/clothing/suit/armor/light/legion/recruit //That's not how legion ranks work Recruit = Recruit not Prime
	head = /obj/item/clothing/head/helmet/f13/legion/recruit/decan
	mask = /obj/item/clothing/mask/bandana/legion/recruit
	r_pocket = /obj/item/storage/survivalkit/medical/legion/advanced
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/healpoultice = 1,
		/obj/item/restraints/handcuffs = 1,
		/obj/item/storage/bag/money/small/legofficers = 1
		)

/datum/outfit/loadout/recdeclegion
	name = "Frontier Decanus"
	suit_store = /obj/item/twohanded/fireaxe/bmprsword
	neck = /obj/item/storage/belt/sabre/single
	backpack_contents = list(
		/obj/item/grenade/smokebomb = 1,
		/obj/item/restraints/legcuffs/bola = 1,
		/obj/item/gun/ballistic/automatic/smg/mini_uzi = 1,
		/obj/item/ammo_box/magazine/uzim9mm = 3
		)

/datum/outfit/loadout/recdectribal
	name = "Blackliner Decanus"
	suit_store = /obj/item/gun/ballistic/automatic/m1garand
	neck = /obj/item/storage/belt/holster
	backpack_contents = list(
		/obj/item/ammo_box/magazine/garand308 = 2,
		/obj/item/melee/onehanded/machete/forgedmachete = 1,
		/obj/item/storage/backpack/spearquiver = 1,
		/obj/item/bottlecap_mine = 1,
		/obj/item/warpaint_bowl = 1
		)




//......................//////////////////////////////////................................................
						//								//
						// 			SPECIALISTS			//
						//								//
						//////////////////////////////////

// ----------------- VEXILLARIUS ---------------------

/datum/job/CaesarsLegion/Legionnaire/f13vexillarius
	title = "Legion Vexillarius"
	flag = F13VEXILLARIUS
	total_positions = 2
	spawn_positions = 2
	description = "You are a Veteran of proven bravery. When not fighting, relay orders from the commander and act as a bodyguard."
	supervisors = "the Veteran Decanus and Centurion"
	display_order = JOB_DISPLAY_ORDER_VEXILLARIUS
	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13vexillarius
	access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION2, ACCESS_LEGION_COMMAND)
	minimal_access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION2, ACCESS_LEGION_COMMAND)
	exp_requirements = 360

	loadout_options = list(
		/datum/outfit/loadout/vexbear,	//	Classic FO13 Vex with his Ripper and Tiger claws
		/datum/outfit/loadout/vexfox,	//	Classic New Vegas Vex with his 14mm SMG and Spartha
		/datum/outfit/loadout/vexnight //  Classic and Iconic long range vex with a Trail carbine
		)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/CaesarsLegion,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/CaesarsLegion,
		),
		)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13vexillarius/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_BIG_LEAGUES, src)
	ADD_TRAIT(H, TRAIT_IRONFIST, src)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	ADD_TRAIT(H, TRAIT_FAST_PUMP, src)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13vexillarius
	name = "Vexillarius"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13vexillarius
	id = /obj/item/card/id/dogtag/legion/veteran
	suit = /obj/item/clothing/suit/armor/medium/legion/vexil
	shoes = /obj/item/clothing/shoes/f13/military/plated
	mask = /obj/item/clothing/mask/bandana/legion
	glasses = /obj/item/clothing/glasses/f13/sunglasses/big
	gloves = /obj/item/clothing/gloves/legion/plated
	r_pocket = /obj/item/storage/survivalkit/medical/legion/advanced
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/healpoultice = 1,
		/obj/item/restraints/handcuffs = 1,
		/obj/item/megaphone/cornu = 1,
		/obj/item/storage/bag/money/small/legenlisted = 1,
		/obj/item/warpaint_bowl = 1
		)

/datum/outfit/loadout/vexbear
	name = "Mountain Bear"
	head = /obj/item/clothing/head/helmet/f13/legion/vet/combvexil
	neck = /obj/item/storage/belt/sabre/single
	backpack_contents = list(
		/obj/item/melee/unarmed/tigerclaw = 1,
		/obj/item/melee/powered/ripper = 1,
		/obj/item/book/granter/martial/berserker = 1
		)

/datum/outfit/loadout/vexfox
	name = "Desert Fox"
	head = /obj/item/clothing/head/helmet/f13/legion/vet/vexil
	suit_store = /obj/item/gun/ballistic/automatic/smg/smg14
	neck = /obj/item/storage/belt/holster
	backpack_contents = list(
		/obj/item/ammo_box/magazine/smg14 = 2,
		/obj/item/melee/onehanded/machete/spatha = 1
		)

/datum/outfit/loadout/vexnight
	name = "Night Stalker"
	head = /obj/item/clothing/head/helmet/f13/legion/vet/nightvexil
	suit_store = /obj/item/gun/ballistic/rifle/repeater/trail
	neck = /obj/item/storage/belt/holster
	backpack_contents = list(
		/obj/item/ammo_box/tube/m44 = 2,
		/obj/item/melee/onehanded/machete/gladius = 1
		)



// ----------------- EXPLORER ---------------------

/datum/job/CaesarsLegion/Legionnaire/f13explorer
	title = "Legion Explorer"
	flag = F13EXPLORER
	total_positions = 3
	spawn_positions = 3
	description = "Scout the area, secure key points, but do not ignore orders or wordlessly die some place. A good explorer helps his unit by taking initiative and helping the commander without needing micro-managment."
	supervisors = "the Decani and the Centurion. Note that you aren't underling of assassins and neither are you equal to veterans."
	display_order = JOB_DISPLAY_ORDER_EXPLORER
	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13explorer
	exp_requirements = 150

	loadout_options = list(	// ALL: .45 Revolver, Machete
		/datum/outfit/loadout/expambusher,	// Lever-action shotgun, Bottlecap mine, MP5
		/datum/outfit/loadout/expsniper	// Commando Carbine, Smokebomb, C4
		)

	access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION2)
	minimal_access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION2)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/CaesarsLegion,
			),
		/datum/matchmaking_pref/rival = list(
			/datum/job/CaesarsLegion,
			),
		)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13explorer/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	. = ..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_BIG_LEAGUES, src)
	ADD_TRAIT(H, TRAIT_SILENT_STEP, src)
	ADD_TRAIT(H, TRAIT_FAST_PUMP, src)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13explorer
	name = "Legion Explorer"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13explorer
	id = /obj/item/card/id/dogtag/legion/prime
	suit = /obj/item/clothing/suit/armor/light/legion/explorer
	head = /obj/item/clothing/head/helmet/f13/legion/explorer
	neck = /obj/item/storage/belt/holster/rugged/revolver_45
	l_pocket = /obj/item/flashlight
	box_two = /obj/item/storage/survivalkit/medical/legion
	backpack_contents = list(
		/obj/item/binoculars = 1,
		/obj/item/ammo_box/loader/acp45 = 1,
		/obj/item/reagent_containers/pill/patch/healingpowder = 1,
		/obj/item/storage/bag/money/small/legenlisted = 1,
		/obj/item/melee/onehanded/machete = 1,
		/obj/item/restraints/handcuffs = 1
		)

/datum/outfit/loadout/expambusher
	name = "Ambusher"
	suit_store = /obj/item/gun/ballistic/automatic/smg/mp5
	backpack_contents = list(
		/obj/item/ammo_box/magazine/uzim9mm = 2,
		/obj/item/gun/ballistic/shotgun/automatic/combat/shotgunlever = 1,
		/obj/item/bottlecap_mine = 1,
		/obj/item/grenade/smokebomb = 1,
		/obj/item/restraints/legcuffs/bola/tactical = 1
		)

/datum/outfit/loadout/expsniper
	name = "Sniper"
	suit_store = /obj/item/gun/ballistic/rifle/mag/commando
	backpack_contents = list(
		/obj/item/ammo_box/magazine/pistol45/socom = 3,
		/obj/item/grenade/smokebomb = 1,
		/obj/item/gun_upgrade/scope/watchman = 1,
		/obj/item/grenade/plastic/c4 = 1
		)



// ----------------- ORATOR ---------------------

/datum/job/CaesarsLegion/Legionnaire/f13orator
	title = "Legion Orator"
	flag = F13ORATOR
	supervisors = "Centurion"
	total_positions = 1
	spawn_positions = 1
	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13orator
	display_order = JOB_DISPLAY_ORDER_ORATOR
	access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION3, ACCESS_LEGION_COMMAND, ACCESS_LEGION2, ACCESS_CHANGE_IDS, ACCESS_LEGION1, ACCESS_LEGION4)
	minimal_access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION3, ACCESS_LEGION_COMMAND, ACCESS_LEGION2, ACCESS_CHANGE_IDS, ACCESS_LEGION1, ACCESS_LEGION4)
	exp_requirements = 750


/datum/outfit/job/CaesarsLegion/Legionnaire/f13orator	// .357 Revolver, Spatha
	name = "Orator"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13orator
	neck = /obj/item/clothing/neck/mantle/legion
	shoes = /obj/item/clothing/shoes/f13/military/plated
	suit = /obj/item/clothing/suit/armor/medium/legion/orator
	id = /obj/item/card/id/dogtag/legion/orator
	glasses = /obj/item/clothing/glasses/f13/sunglasses/big
	gloves = null
	backpack = /obj/item/storage/backpack/marching_satchel
	suit_store = /obj/item/gun/ballistic/revolver/colt357
	belt = /obj/item/melee/onehanded/machete/spatha
	backpack_contents = list(
		/obj/item/storage/bag/money/small/legofficers = 1,
		/obj/item/binoculars = 1,
		/obj/item/ammo_box/loader/a357 = 2,
		/obj/item/reagent_containers/pill/bitterdrink = 2
		)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13orator/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	ADD_TRAIT(H, TRAIT_BIG_LEAGUES, src)
	ADD_TRAIT(H, TRAIT_FAST_PUMP, src)




//......................//////////////////////////////////................................................
						//								//
						// 		LEGION WARRIORS			//
						//								//
						//////////////////////////////////

// ----------------- VETERAN --------------------- //

/datum/job/CaesarsLegion/Legionnaire/vetlegionnaire
	title = "Veteran Legionnaire"
	flag = F13VETLEGIONARY
	total_positions = 3
	spawn_positions = 3
	description = "A hardened warrior, obeying the orders from the Decanus and Centurion is second nature, as is fighting the profligates. If no officers are present, make sure the younger warriors act like proper Legionaires."
	supervisors = "the Decani and Centurion"
	display_order = JOB_DISPLAY_ORDER_VETLEGIONARY
	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/vetlegionnaire
	exp_requirements = 300

	loadout_options = list(	//ALL: Gladius
		/datum/outfit/loadout/vetaxe,	// AXE AND FISTS AND NOTHING FUCKING ELSE
		/datum/outfit/loadout/vetsmg, 		// 10mm SMG, .357 Revolver
		/datum/outfit/loadout/vetberserker,	// Lever shotgun, Bola, Legion Lance
		/datum/outfit/loadout/vetrifle		// Trail gun, .357 Revolver, Throwing knives
		)
	
	access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION2)
	minimal_access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION2)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/CaesarsLegion,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/CaesarsLegion,
		),
		)

/datum/outfit/job/CaesarsLegion/Legionnaire/vetlegionnaire/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_BIG_LEAGUES, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_IRONFIST, src)
	ADD_TRAIT(H, TRAIT_FAST_PUMP, src)

/datum/outfit/job/CaesarsLegion/Legionnaire/vetlegionnaire
	name = "Veteran Legionnaire"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/vetlegionnaire
	id = /obj/item/card/id/dogtag/legion/veteran
	mask = /obj/item/clothing/mask/bandana/legion
	head = /obj/item/clothing/head/helmet/f13/legion/vet
	suit = /obj/item/clothing/suit/armor/medium/legion/vet
	shoes = /obj/item/clothing/shoes/f13/military/plated
	gloves = /obj/item/clothing/gloves/legion/plated
	r_pocket = /obj/item/storage/survivalkit/medical/legion/advanced
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/healpoultice = 1,
		/obj/item/storage/bag/money/small/legenlisted = 1,
		/obj/item/restraints/handcuffs = 1,
		/obj/item/melee/onehanded/machete/gladius = 1,
		/obj/item/reagent_containers/pill/bitterdrink = 1,
		)

/datum/outfit/loadout/vetaxe
	name = "Enforcer"
	suit_store = /obj/item/twohanded/legionaxe
	neck = /obj/item/storage/belt/sabre/single
	backpack_contents = list(
		/obj/item/melee/unarmed/tigerclaw = 1,
		/obj/item/restraints/legcuffs/bola = 1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 2
		)

/datum/outfit/loadout/vetsmg
	name = "Flanker"
	suit_store = /obj/item/gun/ballistic/automatic/smg/smg10mm
	neck = /obj/item/storage/belt/holster
	backpack_contents = list(
		/obj/item/twohanded/spear/lance = 1,
		/obj/item/ammo_box/magazine/pistol10mm/extended = 2,
		/obj/item/gun/ballistic/revolver/colt357 = 1,
		/obj/item/ammo_box/loader/a357 = 1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 2
		)

/datum/outfit/loadout/vetberserker
	name = "Berserker"
	suit_store = /obj/item/gun/ballistic/shotgun/automatic/combat/shotgunlever
	neck = /obj/item/storage/belt/bandolier
	backpack_contents = list(
		/obj/item/ammo_box/shotgun/slug = 1,
		/obj/item/ammo_box/shotgun/buck = 2,
		/obj/item/twohanded/spear/lance = 1,
		/obj/item/melee/onehanded/knife/bayonet = 1,
		/obj/item/restraints/legcuffs/bola = 2
		)

/datum/outfit/loadout/vetrifle
	name = "Sharpshooter"
	suit_store = /obj/item/gun/ballistic/rifle/repeater/trail
	neck = /obj/item/storage/belt/holster
	backpack_contents = list(
		/obj/item/ammo_box/tube/m44/ = 3,
		/obj/item/gun/ballistic/revolver/colt357 = 1,
		/obj/item/ammo_box/loader/a357 = 1,
		/obj/item/melee/onehanded/knife/throwing = 2,
		/obj/item/reagent_containers/pill/bitterdrink = 1,
		/obj/item/restraints/legcuffs/beartrap = 1
		)



// ----------------- PRIME --------------------- //

/datum/job/CaesarsLegion/Legionnaire/f13legionary
	title = "Prime Legionnaire"
	flag = F13LEGIONARY
	total_positions = 4
	spawn_positions = 4
	description = "A front line soldier who has shown ability to obey and fought in some battles. The Legions muscle, the young men who will build the future with their own blood and sacrifice, for Caesar."
	supervisors = "the Decani and Centurion"
	display_order = JOB_DISPLAY_ORDER_LEGIONARY
	exp_requirements = 60
	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13legionary

	loadout_options = list(	//ALL: Forged Machete
		/datum/outfit/loadout/primelancer,	// .357 revolver, Buckler, Bola
		/datum/outfit/loadout/primerifle,	// Cowboy repeater, Firebomb
		/datum/outfit/loadout/primebrave	// Hunting shotgun, Throwing spears
		)
	access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION2)
	minimal_access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION2)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/CaesarsLegion,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/CaesarsLegion,
		),
		)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13legionary/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_BIG_LEAGUES, src)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13legionary
	name = "Prime Legionnaire"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13legionary
	id = /obj/item/card/id/dogtag/legion/prime
	mask = /obj/item/clothing/mask/bandana/legion
	head = /obj/item/clothing/head/helmet/f13/legion/prime
	suit = /obj/item/clothing/suit/armor/light/legion/prime
	backpack_contents = list(
		/obj/item/restraints/handcuffs = 1,
		/obj/item/storage/bag/money/small/legenlisted = 1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 2,
		/obj/item/melee/onehanded/machete = 1
		)

/datum/outfit/loadout/primelancer
	name = "Guardian"
	r_hand = /obj/item/shield/riot/legion
	backpack_contents = list(
		/obj/item/storage/belt/holster/rugged/revolver_357 = 1,
		/obj/item/ammo_box/loader/a357 = 3,
		/obj/item/restraints/legcuffs/bola = 2,
		)

/datum/outfit/loadout/primerifle
	name = "Gunner"
	suit_store = /obj/item/gun/ballistic/rifle/repeater/cowboy
	backpack_contents = list(
		/obj/item/ammo_box/tube/a357 = 2,
		/obj/item/grenade/homemade/firebomb = 2,
		)

/datum/outfit/loadout/primebrave
	name = "Skirmish"
	suit_store = /obj/item/gun/ballistic/shotgun/hunting
	backpack_contents = list(
		/obj/item/ammo_box/shotgun/buck = 1,
		/obj/item/melee/onehanded/knife/bayonet = 1,
		/obj/item/storage/backpack/spearquiver = 1,
		)



// ----------------- RECRUIT --------------------- //

/datum/job/CaesarsLegion/Legionnaire/f13recleg
	title = "Recruit Legionnaire"
	flag = F13RECRUITLEG
	total_positions = 5
	spawn_positions = 5
	description = "You have recently come of age or been inducted into Caesar's Legion. You have absolutely no training, and are expected to follow every whim of the Decanii and your Centurion. Respect the soldiers of higher rank."
	supervisors = "the Decani and Centurion"
	display_order = JOB_DISPLAY_ORDER_RECRUITLEG
	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13recleg

	access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION2)
	minimal_access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION2)

	loadout_options = list(	//ALL: Machete
		/datum/outfit/loadout/recruittribal,	// Gladius, Bola, Trekking
		/datum/outfit/loadout/recruitlegion	// Winchester Widowmaker, 2 x prefilled Molotovs, Machete
		)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/CaesarsLegion,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/CaesarsLegion,
		),
		)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13recleg/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	. = ..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_BIG_LEAGUES, src)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13recleg
	name = "Recruit Legionnaire"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13recleg
	id = /obj/item/card/id/dogtag/legion
	suit = /obj/item/clothing/suit/armor/light/legion/recruit
	head = /obj/item/clothing/head/helmet/f13/legion/recruit
	mask = /obj/item/clothing/mask/bandana/legion/recruit
	backpack_contents = list(
		/obj/item/storage/bag/money/small/legenlisted = 1,
		/obj/item/reagent_containers/pill/patch/healingpowder = 1
		)

/datum/outfit/loadout/recruittribal
	name = "Tribal Recruit"
	suit_store = /obj/item/melee/onehanded/machete/gladius
	r_hand = /obj/item/shield/riot/buckler
	backpack_contents = list(
		/obj/item/restraints/legcuffs/bola = 1,
		/obj/item/book/granter/trait/trekking = 1,
		/obj/item/warpaint_bowl = 1
		)

/datum/outfit/loadout/recruitlegion
	name = "Born in the East"
	suit_store = /obj/item/gun/ballistic/revolver/widowmaker
	backpack_contents = list(
		/obj/item/ammo_box/shotgun/buck = 3,
		/obj/item/reagent_containers/food/drinks/bottle/molotov/filled = 2,
		/obj/item/melee/onehanded/machete = 1,
		)




//......................//////////////////////////////////................................................
						//								//
						// 			SUPPORT ROLES		//
						//								//
						//////////////////////////////////

// ----------------- CAMP FOLLOWER --------------------- //

/datum/job/CaesarsLegion/f13campfollower	// The main visual distinction between loadout/roles are their aprons, hats, shoes.
	title = "Camp Follower"
	flag = F13CAMPFOLLOWER
	total_positions = 4
	spawn_positions = 4
	description = "A camp follower ranges in definition and purposes. Some may be not enslaved men who are simply not fit for service, termorarily or perminantly, or women who serve a purpose above stock to the Legion. Duties may vary from medical specialities, weapon crafting or other skilled-labor tasks."
	supervisors = "Officers first, then warriors."
	display_order = JOB_DISPLAY_ORDER_CAMPFOLLOWER
	outfit = /datum/outfit/job/CaesarsLegion/f13campfollower

	access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION1, ACCESS_LEGION2)
	minimal_access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION1, ACCESS_LEGION2)

	loadout_options = list(
		/datum/outfit/loadout/servant,		// food -> medical -> clean
		/datum/outfit/loadout/worker,		// farm -> mine -> clean
		/datum/outfit/loadout/treasurer,	// jack of all trades
		/datum/outfit/loadout/blacksmith,	// blacksmithing
		/datum/outfit/loadout/medicus		// medical -> farm
		)

/datum/outfit/job/CaesarsLegion/f13campfollower
	name = "Camp Follower"
	id = /obj/item/card/id/dogtag/legion/follower
	ears = /obj/item/radio/headset/headset_legion
	uniform	= /obj/item/clothing/under/f13/legauxilia
	backpack = /obj/item/storage/backpack/satchel/leather
	l_pocket = /obj/item/flashlight/lantern
	box_two = /obj/item/storage/survivalkit/medical/legion
	shoes = null
	backpack_contents = list(
		/obj/item/clothing/glasses/welding = 1,
		/obj/item/storage/bag/money/small/legenlisted = 1,
		/obj/item/stack/sheet/cloth/ten = 1,
		/obj/item/stack/sheet/leather/ten = 1
		)

/datum/outfit/loadout/servant
	name = "Servant"
	head = /obj/item/clothing/head/f13/servant
	shoes = /obj/item/clothing/shoes/sandal
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/healingpowder = 3,
		/obj/item/smelling_salts = 1,
		/obj/item/book/granter/trait/lowsurgery = 1,
		/obj/item/reagent_containers/food/condiment/flour = 2,
		/obj/item/reagent_containers/pill/consumable/hydra = 1,
		/obj/item/soap/homemade = 1,
		/obj/item/melee/onehanded/straight_razor = 1
		)

/datum/outfit/loadout/worker
	name = "Worker"
	suit = /obj/item/clothing/suit/armor/outfit/slavelabor
	uniform = /obj/item/clothing/under/f13/legslave
	shoes =	/obj/item/clothing/shoes/f13/rag
	r_hand = /obj/item/flashlight/flare/torch
	backpack_contents = list(
		/obj/item/storage/bag/plants = 1,
		/obj/item/reagent_containers/food/snacks/grown/ambrosia/deus = 1,
		/obj/item/cultivator = 1,
		/obj/item/broom = 1,
		/obj/item/shovel/spade = 1
		)

/datum/outfit/loadout/treasurer
	name = "Treasurer"
	head = /obj/item/clothing/head/f13/servant/auxilia
	neck = /obj/item/clothing/neck/mantle/legion/treasurer
	shoes = /obj/item/clothing/shoes/sandals_leather
	backpack_contents = list(
		/obj/item/clothing/under/f13/legauxiliaf = 1,
		/obj/item/folder/red = 1,
		/obj/item/paper/natural = 2,
		/obj/item/pen/fountain = 1,
		/obj/item/storage/bag/money/small/legenlisted = 1,
		/obj/item/blacksmith/ingot/gold = 1,
		)

/datum/outfit/loadout/blacksmith
	name = "Blacksmith"
	shoes = /obj/item/clothing/shoes/f13/military/plated
	mask = /obj/item/clothing/mask/bandana/legion/dark
	backpack_contents = list(
		/obj/item/clothing/under/f13/legskirt = 1,
		/obj/item/storage/belt/utility/waster/blacksmith = 1,
		/obj/item/clothing/neck/apron/labor/blacksmith_legion = 1,
		/obj/item/clothing/gloves/blacksmith_mittens = 1,
		/obj/item/blacksmith/ingot/iron = 2,
		/obj/item/stack/sheet/mineral/wood/twenty = 1,
		/obj/item/twohanded/chainsaw = 1
		)

/datum/outfit/loadout/medicus
	name = "Medicus"
	head = /obj/item/clothing/head/f13/servant/auxilia
	shoes = /obj/item/clothing/shoes/f13/military/legion
	backpack_contents = list(
		/obj/item/clothing/under/f13/legauxiliaf = 1,
		/obj/item/defibrillator/primitive = 1,
		/obj/item/clothing/neck/apron/medicus_legion = 1,
		/obj/item/clothing/gloves/f13/crudemedical = 1,
		/obj/item/storage/belt/medical/primitive = 1,
		/obj/item/book/granter/trait/midsurgery = 1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 2,
		/obj/item/healthanalyzer = 1
		)

/datum/outfit/job/CaesarsLegion/f13campfollower/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	. = ..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_TRIBAL, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_MARS_TEACH, src)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/hydra)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/blacksmith/smithed_armor_legion)



//......................//////////////////////////////////................................................
						//								//
						// 			ADMIN ROLES			//
						//								//
						//////////////////////////////////

// ----------------- LEGATE --------------------- //

/datum/job/CaesarsLegion/Legionnaire/f13legate
	title = "Legate"
	flag = F13LEGATE
	head_announce = list("Security")
	supervisors = "Caesar"
	selection_color = "#ff8f8f"
	req_admin_notify = 1
	total_positions = 0
	spawn_positions = 0
	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13legate
	access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION3, ACCESS_LEGION_COMMAND, ACCESS_LEGION2, ACCESS_CHANGE_IDS, ACCESS_LEGION1, ACCESS_LEGION4)
	minimal_access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION3, ACCESS_LEGION_COMMAND, ACCESS_LEGION2, ACCESS_CHANGE_IDS, ACCESS_LEGION1, ACCESS_LEGION4)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13legate/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	ADD_TRAIT(H, TRAIT_IRONFIST, src)
	ADD_TRAIT(H, TRAIT_BIG_LEAGUES, src)
	if(H.mind)
		var/obj/effect/proc_holder/spell/terrifying_presence/S = new /obj/effect/proc_holder/spell/terrifying_presence
		H.mind.AddSpell(S)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13legate	// 14mm Pistol, Goliath
	name = "Legate"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13legate
	shoes =	/obj/item/clothing/shoes/f13/military/legate
	suit = /obj/item/clothing/suit/armor/heavy/legion/legate
	head = /obj/item/clothing/head/helmet/f13/legion/legate
	gloves = /obj/item/clothing/gloves/legion/legate
	glasses = /obj/item/clothing/glasses/f13/sunglasses/big
	suit_store = /obj/item/gun/ballistic/automatic/pistol/pistol14
	r_pocket = /obj/item/storage/bag/money/small/legion
	l_pocket = /obj/item/flashlight/lantern
	r_hand = /obj/item/melee/unarmed/powerfist/goliath
	l_hand = /obj/item/tank/internals/oxygen
	backpack = null
	satchel = null
	ears = /obj/item/radio/headset/headset_legion/cent
	box = /obj/item/storage/box/legate

/obj/item/storage/box/legate
	name = "legate belongings"
	icon_state = "secbox"
	illustration = "flashbang"

/obj/item/storage/box/legate/PopulateContents()
	. = ..()
	new /obj/item/reagent_containers/pill/patch/healpoultice(src)
	new /obj/item/reagent_containers/pill/patch/healpoultice(src)
	new /obj/item/ammo_box/magazine/pistol14mm(src)
	new /obj/item/ammo_box/magazine/pistol14mm(src)
	new /obj/item/ammo_box/magazine/pistol14mm(src)




//......................//////////////////////////////////................................................
						//								//
						// 		GRAVEYARD - UNUSED		//
						//								//
//......................//////////////////////////////////................................................


// Legion Off-Duty - The difference between off-duty and camp follower is that off-duty is NOT expected to do a job.

/datum/job/CaesarsLegion/Legionnaire/f13immune
	title = "Legion Off-Duty"
	flag = F13IMMUNE
	total_positions = 4
	spawn_positions = 4
	description = "A Legionary granted time of recovery for their victories or injuries, is not expected to do any real work."
	supervisors = "the Centurion"
	display_order = JOB_DISPLAY_ORDER_IMMUNE
	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13immune
	exp_requirements = 150

	access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION2)
	minimal_access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION2)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13immune
	name = "Legion Off-Duty"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13immune
	id = /obj/item/card/id/dogtag/legion/offduty
	mask = /obj/item/clothing/mask/bandana/legion/dark
	uniform = /obj/item/clothing/under/f13/legskirt
	belt = null
	gloves = null
	glasses = null
	shoes = /obj/item/clothing/shoes/f13/military/leather
	l_pocket = /obj/item/flashlight/lantern
	suit_store = /obj/item/melee/onehanded/machete
	backpack_contents = list(
		/obj/item/storage/bag/money/small/legenlisted = 1,
		)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13immune/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_MARS_TEACH, src)

// LEGION SLAVES - Servant cook, and assist with medical, low surgery. Worker farm and mine.
// Both get Mars teachings to help out when normal work is done.

/datum/job/CaesarsLegion/slave
	title = "Legion Slave"
	flag = F13LEGIONSLAVE
	total_positions = 0
	spawn_positions = 0
	description = "A slave that survives the breaking camps is given a Legion appropriate name (latin-tribal inspired) and bull tattoo. Be obedient, respectful, stay inside the camp. Work the farm, mine, make food, clean and help injured men. Do NOT escape on your own, up to you how to handle it if forcibly freed by outside forces."
	supervisors = "Officers and Camp Exactor first, then warriors."
	display_order = JOB_DISPLAY_ORDER_LEGIONSLAVE
	exp_requirements = 0
	outfit = /datum/outfit/job/CaesarsLegion/slave

	loadout_options = list(
		/datum/outfit/loadout/slaveservant,
		/datum/outfit/loadout/slaveworker
		)
	
	access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION1)
	minimal_access = list(ACCESS_PUBLIC, ACCESS_LEGION, ACCESS_LEGION1)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/CaesarsLegion/slave,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/CaesarsLegion/slave,
		),
	)

/datum/outfit/job/CaesarsLegion/slave/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_SURGERY_LOW, src)
	ADD_TRAIT(H, TRAIT_MARS_TEACH, src)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/tailor/legionuniform)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/warpaint)
	if(H.gender == MALE)
		H.gender = FEMALE
		H.real_name = random_unique_name(FEMALE)
		H.name = H.real_name
		if(H.wear_id)
			var/obj/item/card/id/dogtag/L = H.wear_id
			L.registered_name = H.name
			L.update_label()


/datum/outfit/job/CaesarsLegion/slave
	name = "Legion Slave"
	jobtype = /datum/outfit/job/CaesarsLegion/slave
	id = /obj/item/card/id/legion_slave
	uniform = /obj/item/clothing/under/f13/legslavef
	neck = /obj/item/electropack/shockcollar
	shoes =	/obj/item/clothing/shoes/sandals_leather
	l_pocket = /obj/item/radio

/datum/outfit/loadout/slaveservant
	name = "Servant"
	head = /obj/item/clothing/head/f13/servant
	uniform	= /obj/item/clothing/under/f13/campfollowermale
	gloves = /obj/item/clothing/gloves/f13/crudemedical
	r_pocket = /obj/item/flashlight/lantern
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/healingpowder = 2,
		/obj/item/reagent_containers/pill/patch/healpoultice = 2,
		/obj/item/smelling_salts = 1,
		/obj/item/book/granter/trait/lowsurgery = 1,
		/obj/item/reagent_containers/food/condiment/flour = 2,
		/obj/item/storage/box/bowls = 1,
		/obj/item/reagent_containers/glass/beaker/large = 1,
		/obj/item/soap/homemade = 1,
		/obj/item/lighter = 1
		)

/datum/outfit/loadout/slaveworker
	name = "Worker"
	suit = /obj/item/clothing/suit/armor/outfit/slavelabor
	uniform = /obj/item/clothing/under/f13/legslave
	shoes =	/obj/item/clothing/shoes/f13/rag
	r_hand = /obj/item/flashlight/flare/torch
	backpack_contents = list(
		/obj/item/storage/bag/plants = 1,
		/obj/item/reagent_containers/food/snacks/grown/ambrosia/deus = 1,
		/obj/item/cultivator = 1,
		/obj/item/soap/homemade = 1,
		/obj/item/shovel/spade = 1
		)

// Legion Citizen
// Really only used for ID console
/datum/job/ncr/f13legioncitizen
	title = "Legion Citizen"
	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13legioncitizen

/datum/outfit/job/CaesarsLegion/Legionnaire/f13legioncitizen
	name = "Legion Citizen (Role)"
	uniform = /obj/item/clothing/under/f13/doctor
	shoes = /obj/item/clothing/shoes/f13/fancy
	suit = /obj/item/clothing/suit/curator
	head = /obj/item/clothing/head/scarecrow_hat
	gloves = /obj/item/clothing/gloves/color/black
	glasses = /obj/item/clothing/glasses/welding
	id = /obj/item/card/id/dogtag/town/legion
	l_hand = /obj/item/shield/riot/buckler
	backpack_contents = list(
		/obj/item/melee/onehanded/machete/spatha = 1
		)
