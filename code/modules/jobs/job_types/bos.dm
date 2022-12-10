/datum/job/bos //do NOT use this for anything, it's just to store faction datums.
	department_flag = BOS
	selection_color = "#95a5a6"
	faction = FACTION_BROTHERHOOD
	exp_type = EXP_TYPE_BROTHERHOOD

	access = list(ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS)
	minimal_access = list(ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS)
	forbids = "The Brotherhood of Steel Forbids: Unethical human experimentation. Violence beyond what is needed to accomplish Brotherhood goals, and cruel torture or experiments on the minds or bodies of prisoners."
	enforces = "The Brotherhood of Steel Expects: Obeying the Chain That - Binds your direct superior. Collection and safeguarding of technology from the wasteland. Experimentation and research."

	objectivesList = list(
		"Leadership recommends the following goal for this week: Establish an outpost at the radio tower",
		"Leadership recommends the following goal for this week: Acquire blueprints for research and preservation",
		"Leadership recommends the following goal for this week: Acquire or confiscate dangerous tech by any means necessary."
		)

GLOBAL_LIST_INIT(knight_gunsmith_recipes, list(
	/datum/crafting_recipe/n99,
	/datum/crafting_recipe/varmintrifle,
	/datum/crafting_recipe/huntingshotgun,
	/datum/crafting_recipe/smg10mm,
	/datum/crafting_recipe/verminkiller, 
	/datum/crafting_recipe/trench, 
	/datum/crafting_recipe/huntingrifle,
	/datum/crafting_recipe/scope,
	/datum/crafting_recipe/ergonomic_grip,
	/datum/crafting_recipe/metal_guard,
	/datum/crafting_recipe/forged_barrel,
	/datum/crafting_recipe/sniperscope,
	/datum/crafting_recipe/suppressor,
	/datum/crafting_recipe/recoilcomp,
	/datum/crafting_recipe/laserguide,
	/datum/crafting_recipe/fullauto))

/datum/outfit/job/bos
	name = "bosdatums"
	jobtype = 	/datum/job/bos
	backpack = 	/obj/item/storage/backpack/explorer
	satchel = 	/obj/item/storage/backpack/satchel/explorer
	ears = 		/obj/item/radio/headset/headset_bos
	uniform =	/obj/item/clothing/under/syndicate/brotherhood
	shoes = 	/obj/item/clothing/shoes/combat/swat
	gloves = 	/obj/item/clothing/gloves/combat
	id = 		/obj/item/card/id/dogtag

/datum/outfit/job/bos/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/tribalradio)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/durathread_vest)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/boscombatarmor)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/boscombathelmet)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/boscombatarmormk2)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/boscombathelmetmk2)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/set_vrboard/bos)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/gate_bos)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)

/*
Elder
*/

/datum/job/bos/f13elder
	title = "Elder"
	flag = F13ELDER
	head_announce = list("Security")
	supervisors = "the High Elders"
	selection_color = "#7f8c8d"
	req_admin_notify = 1

	exp_requirements = 3000

	total_positions = 0
	spawn_positions = 0

	outfit = /datum/outfit/job/bos/f13elder

	access = list(ACCESS_BROTHERHOOD_COMMAND, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_MINERAL_STOREROOM, ACCESS_CHANGE_IDS)
	minimal_access = list(ACCESS_BROTHERHOOD_COMMAND, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_MINERAL_STOREROOM, ACCESS_CHANGE_IDS)

/datum/outfit/job/bos/f13elder/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/jet)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/turbo)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/psycho)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/medx)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/medx/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak5)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak5/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/superstimpak)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/superstimpak5)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/buffout)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/steady)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_PA_WEAR, src)

/datum/outfit/job/bos/f13elder
	name = "Elder"
	jobtype = /datum/job/bos/f13elder
	suit =	/obj/item/clothing/suit/armor/light/duster/bos/scribe/elder
	glasses =	/obj/item/clothing/glasses/night
	accessory =	/obj/item/clothing/accessory/bos/elder
	suit_store =	/obj/item/gun/energy/laser/laer
	neck =	/obj/item/clothing/neck/mantle/bos/right
	ears = /obj/item/radio/headset/headset_bos/command
	backpack_contents = list(
		/obj/item/stock_parts/cell/ammo/mfc = 2,
		/obj/item/melee/onehanded/knife/hunting = 1,
		/obj/item/gun/ballistic/automatic/pistol/n99 = 1
	)

/*
Head Paladin
*/

/datum/job/bos/f13headpaladin
	title = "Head Paladin"
	flag = F13HEADPALADIN
	display_order = JOB_DISPLAY_ORDER_HEADPALADIN
	head_announce = list("Security")
	total_positions = 1
	spawn_positions = 1
	description = "You are the acting field commander until the Brotherhood regains its strength enough to place an Elder for the bunker. You are a veteran of many battles and sorties in pursuit of Brotherhood goals; your only weakness may just be your hubris. Your main goals are defense of the Chapter and surveillance of the surrounding region for technology."
	supervisors = "the Elder"
	selection_color = "#7f8c8d"

	exp_requirements = 2400

	loadout_options = list(
	/datum/outfit/loadout/hpstand, //Tribeam laser + Hardened T-51
	/datum/outfit/loadout/hpheavy, //DKS + Glock + Hardened T-51
	/datum/outfit/loadout/hpgat		//Gatling + Hardened T-51
	)

	outfit = /datum/outfit/job/bos/f13headpaladin

	access = list(ACCESS_BROTHERHOOD_COMMAND, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS, ACCESS_CHANGE_IDS)
	minimal_access = list(ACCESS_BROTHERHOOD_COMMAND, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS, ACCESS_CHANGE_IDS)

/datum/outfit/job/bos/f13headpaladin/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/jet)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/turbo)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/psycho)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/medx)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/medx/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak5)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak5/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/superstimpak)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/superstimpak5)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/buffout)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/steady)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	ADD_TRAIT(H, TRAIT_IRONFIST, src)
	ADD_TRAIT(H, TRAIT_PA_WEAR, src)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	if(H.mind)
		var/obj/effect/proc_holder/spell/terrifying_presence/S = new /obj/effect/proc_holder/spell/terrifying_presence
		H.mind.AddSpell(S)

/datum/outfit/job/bos/f13headpaladin
	name = "Head Paladin"
	jobtype = /datum/job/bos/f13headpaladin
	uniform = 		/obj/item/clothing/under/f13/recon
	accessory = 	/obj/item/clothing/accessory/bos/headpaladin
	glasses =       /obj/item/clothing/glasses/sunglasses
	belt =			/obj/item/storage/belt/military/army
	mask =			/obj/item/clothing/mask/gas/sechailer
	ears =			/obj/item/radio/headset/headset_bos/command
	neck = 			/obj/item/clothing/neck/mantle/bos/paladin
	suit = /obj/item/clothing/suit/armor/power_armor/t51b/bos
	head = /obj/item/clothing/head/helmet/f13/power_armor/t51b
	backpack_contents = list(
		/obj/item/melee/onehanded/knife/hunting = 1,
		/obj/item/melee/powerfist/f13 = 1,
		/obj/item/gun/ballistic/automatic/pistol/n99/crusader = 1,
		/obj/item/ammo_box/magazine/pistol10mm = 2,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 3,
		/obj/item/flashlight/seclite = 1
		)

/datum/outfit/loadout/hpstand
	name = "Shock Head Paladin"
	l_hand = /obj/item/gun/energy/laser/scatter
	backpack_contents = list(
		/obj/item/stock_parts/cell/ammo/mfc = 3
	)

/datum/outfit/loadout/hpheavy
	name = "Heavy Head Paladin"
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/sniper = 1,
		/obj/item/ammo_box/magazine/w308 = 2,
		/obj/item/gun/energy/laser/plasma/glock = 1,
		/obj/item/stock_parts/cell/ammo/ec = 2,
	)

/datum/outfit/loadout/hpgat
	name = "Laser Gatling Head Paladin"
	backpack_contents = list(
		/obj/item/minigunpack = 1
	)

/*
Head Scribe
*/

/datum/job/bos/f13headscribe
	title = "Head Scribe"
	flag = F13HEADSCRIBE
	display_order = JOB_DISPLAY_ORDER_HEADSCRIBE
	head_announce = list("Security")
	total_positions = 1
	spawn_positions = 1
	description = "You are the foremost experienced scribe remaining in this bunker. Your role is to ensure the safekeeping and proper usage of technology within the Brotherhood. You are also the lead medical expert in this Chapter. Delegate your tasks to your Scribes."
	supervisors = "the Elder"
	selection_color = "#7f8c8d"

	exp_requirements = 1500

	outfit = /datum/outfit/job/bos/f13headscribe

	access = list(ACCESS_BROTHERHOOD_COMMAND, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_CHANGE_IDS)
	minimal_access = list(ACCESS_BROTHERHOOD_COMMAND, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_CHANGE_IDS)

/datum/outfit/job/bos/f13headscribe/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/jet)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/turbo)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/psycho)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/medx)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/medx/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak5)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak5/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/superstimpak)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/superstimpak5)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/buffout)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/steady)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/lightplasmapistol)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/wattz2k)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/AER9)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/AEP7)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/booster)
	ADD_TRAIT(H, TRAIT_MEDICALEXPERT, src)
	ADD_TRAIT(H, TRAIT_CYBERNETICIST_EXPERT, src)
	ADD_TRAIT(H, TRAIT_CYBERNETICIST, src)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_SURGERY_HIGH, src)

/datum/outfit/job/bos/f13headscribe
	name = "Head Scribe"
	jobtype = /datum/job/bos/f13headscribe
	accessory = 	/obj/item/clothing/accessory/bos/headscribe
	glasses =       /obj/item/clothing/glasses/hud/health/sunglasses
	suit = 			/obj/item/clothing/suit/armor/light/duster/bos/scribe/headscribe
	suit_store = 	/obj/item/gun/medbeam
	belt = 			/obj/item/storage/belt/utility/bos
	backpack_contents = list(
		/obj/item/melee/onehanded/knife/survival = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2,
		/obj/item/blueprint/research=2,
		/obj/item/storage/firstaid/tactical/bosheadscribe=1,
		/obj/item/clothing/mask/gas/adv/gasmask = 1,
		/obj/item/stock_parts/cell/ammo/ec = 2,
		/obj/item/gun/energy/laser/plasma/glock = 1,
		/obj/item/flashlight/seclite = 1
		)

/*
Knight-Captain
*/

/datum/job/bos/f13knightcap
	title = "Knight-Captain"
	flag = F13KNIGHTCAPTAIN
	display_order = JOB_DISPLAY_ORDER_KNIGHTCAPTAIN
	head_announce = list("Security")
	total_positions = 1
	spawn_positions = 1
	description = "You are the Knight-Captain, leader of your respective division in the Chapter. Your knowledge of pre-war materials and engineering is almost unparalleled, and you have basic combat training and experience. You are in charge of the Chapter's engineering Corps, and your Knights. Delegate to them as necessary. As Chief Armorer, you are also in charge of the armory."
	supervisors = "the Elder and Head Paladin in external affairs"
	selection_color = "#7f8c8d"

	exp_requirements = 1500

	loadout_options = list(
	/datum/outfit/loadout/capstand, //DKS 2 mags
	/datum/outfit/loadout/capsap, //RCW + 2 mags
	/datum/outfit/loadout/capalt //Neostead with buck because they don't know slugs are better
	)

	outfit = /datum/outfit/job/bos/f13knightcap

	access = list(ACCESS_BROTHERHOOD_COMMAND, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_CHANGE_IDS)
	minimal_access = list(ACCESS_BROTHERHOOD_COMMAND, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_CHANGE_IDS)

/datum/outfit/job/bos/f13knightcap/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/jet)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/turbo)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/psycho)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/medx)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/medx/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak5)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak5/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/superstimpak)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/superstimpak5)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/buffout)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/steady)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/commando)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/m1carbine)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/n99)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/m2405) 
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/thatgun)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/huntingrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/lever_action)// temporary as head scribe taken plasma pistol as they are more plasma / laser and knight is ballistic. Actually accurate?! for BOS?
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_PA_WEAR, src)
	ADD_TRAIT(H, TRAIT_GUNSMITH_ONE, src)
	ADD_TRAIT(H, TRAIT_GUNSMITH_TWO, src)
	ADD_TRAIT(H, TRAIT_GUNSMITH_THREE, src)
	ADD_TRAIT(H, TRAIT_GUNSMITH_FOUR, src)
	for(var/datum/crafting_recipe/recipe as() in GLOB.knight_gunsmith_recipes)
		H.mind.teach_crafting_recipe(recipe)

/datum/outfit/job/bos/f13knightcap
	name = "Knight-Captain"
	jobtype = /datum/job/bos/f13knightcap
	suit = 			/obj/item/clothing/suit/armor/medium/combat/brotherhood/captain
	glasses =		/obj/item/clothing/glasses/night
	accessory =		/obj/item/clothing/accessory/bos/knightcaptain
	belt =			/obj/item/storage/belt/military/army
	neck =			/obj/item/storage/belt/holster
	mask =			/obj/item/clothing/mask/gas/sechailer
	head =			/obj/item/clothing/head/helmet/f13/combat/brotherhood/captain
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/pistol/pistol14 = 1,
		/obj/item/ammo_box/magazine/pistol14mm = 2,
		/obj/item/melee/onehanded/knife/hunting = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2,
		/obj/item/flashlight/seclite = 1
		)

/datum/outfit/loadout/capstand
	name = "Standard"
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/sniper = 1,
		/obj/item/ammo_box/magazine/w308 = 2
	)

/datum/outfit/loadout/capsap
	name = "Close Support"
	backpack_contents = list(
		/obj/item/gun/energy/laser/rcw = 1,
		/obj/item/stock_parts/cell/ammo/ecp = 2
	)

/datum/outfit/loadout/capalt
	name = "Warden-Defender"
	backpack_contents = list(
		/obj/item/gun/ballistic/shotgun/automatic/combat/neostead = 1,
		/obj/item/ammo_box/shotgun/buck = 2
	)

/*
Senior Paladin
*/

/datum/job/bos/f13seniorpaladin
	title = "Senior Paladin"
	flag = F13SENIORPALADIN
	display_order = JOB_DISPLAY_ORDER_SENIORPALADIN
	total_positions = 1
	spawn_positions = 1
	description = "As the Chapter's senior offensive warrior, you have proven your service and dedication to the Brotherhood over your time as a Paladin. As your skills gained, however, you were deigned to be more useful as a commander and trainer. Your job is to coordinate the Paladins and ensure they work as a team, instilling discipline as you go."
	supervisors = "the Head Paladin"

	exp_requirements = 1500

	loadout_options = list(
		/datum/outfit/loadout/spaladina, //5mm minigun
		/datum/outfit/loadout/spaladinc,  //Aer14 + pistol
		/datum/outfit/loadout/spaladind //Sledge and fist
		)

	outfit = /datum/outfit/job/bos/f13seniorpaladin

	access = list(ACCESS_BROTHERHOOD_COMMAND, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS)
	minimal_access = list(ACCESS_BROTHERHOOD_COMMAND,ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/bos,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/bos,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/bos/f13paladin,
		),
	)

/datum/outfit/job/bos/f13seniorpaladin/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_PA_WEAR, src)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)

/datum/outfit/job/bos/f13seniorpaladin
	name =	"Senior Paladin"
	jobtype =	/datum/job/bos/f13seniorpaladin
	suit =	/obj/item/clothing/suit/armor/power_armor/t51b/bos
	head =	/obj/item/clothing/head/helmet/f13/power_armor/t51b
	accessory =	/obj/item/clothing/accessory/bos/seniorpaladin
	uniform =	/obj/item/clothing/under/f13/recon
	mask =	/obj/item/clothing/mask/gas/sechailer
	belt =	/obj/item/storage/belt/military/army
	neck =	/obj/item/clothing/neck/mantle/bos/paladin

	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2,
		/obj/item/melee/onehanded/knife/hunting = 1,
		/obj/item/flashlight/seclite = 1
	)

/datum/outfit/loadout/spaladina
	name = "Senior Firesupport Paladin"
	backpack_contents = list(
		/obj/item/minigunpackbal5mm = 1,
		/obj/item/gun/energy/laser/pistol = 1,
		/obj/item/stock_parts/cell/ammo/ec = 2
	)

/datum/outfit/loadout/spaladinc
	name = "Senior Frontline Paladin"
	backpack_contents = list(
		/obj/item/gun/energy/laser/aer12 = 1,
		/obj/item/gun/energy/laser/pistol = 1,
		/obj/item/stock_parts/cell/ammo/mfc = 2,
		/obj/item/stock_parts/cell/ammo/ec = 2
		)

/datum/outfit/loadout/spaladind
	name = "Senior Melee Specialist"
	backpack_contents = list(
		/obj/item/melee/powerfist/f13 = 1,
		/obj/item/twohanded/sledgehammer/supersledge = 1,
		/obj/item/gun/energy/laser/pistol = 1,
		
		)


/*
Paladin
*/

/datum/job/bos/f13paladin
	title = "Paladin"
	flag = F13PALADIN
	display_order = JOB_DISPLAY_ORDER_PALADIN
	total_positions = 1
	spawn_positions = 1
	description = "You answer directly to the Senior Paladin. You are this Chapter's main line of defense and offense; highly trained in combat and weaponry though with little practical field experience, you are eager to prove your worth to the Brotherhood. Your primary duties are defense and surface operations. You may also be assigned a trainee Initiate."
	supervisors = "the Head Paladin"
	exp_requirements = 1200

	loadout_options = list(
	/datum/outfit/loadout/paladinc, //Aer9
	/datum/outfit/loadout/paladind //Aep 7 and fist
	)

	outfit = /datum/outfit/job/bos/f13paladin

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/bos,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/bos,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/bos/f13initiate,
		),
		/datum/matchmaking_pref/disciple = list(
			/datum/job/bos/f13seniorpaladin,
		),
	)

/datum/outfit/job/bos/f13paladin/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_PA_WEAR, src)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)

/datum/outfit/job/bos/f13paladin
	name =	"Paladin"
	jobtype =	/datum/job/bos/f13paladin
	suit =	/obj/item/clothing/suit/armor/power_armor/t45d/bos
	head =	/obj/item/clothing/head/helmet/f13/power_armor/t45d
	uniform =	/obj/item/clothing/under/f13/recon
	mask =	/obj/item/clothing/mask/gas/sechailer
	belt =	/obj/item/storage/belt/military/army
	neck =	/obj/item/clothing/neck/mantle/bos/paladin
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak= 1,
		/obj/item/melee/onehanded/knife/hunting = 1,
		/obj/item/flashlight/seclite = 1
	)

/datum/outfit/loadout/paladinc
	name = "Frontline Paladin"
	backpack_contents = list(
		/obj/item/gun/energy/laser/aer9 = 1,
		/obj/item/gun/energy/laser/pistol = 1,
		/obj/item/stock_parts/cell/ammo/mfc = 2,
		/obj/item/stock_parts/cell/ammo/ec = 2,
		/obj/item/clothing/accessory/bos/paladin = 1
		)

/datum/outfit/loadout/paladind
	name = "Melee Specialist"
	backpack_contents = list(
		/obj/item/melee/powerfist/f13 = 1,
		/obj/item/gun/energy/laser/pistol = 1,
		/obj/item/stock_parts/cell/ammo/ec = 2,
		/obj/item/clothing/accessory/bos/paladin = 1
		)

/*
Senior Scribe
*/

/datum/job/bos/f13seniorscribe
	title = "Senior Scribe"
	flag = F13SENIORSCRIBE
	display_order = JOB_DISPLAY_ORDER_SENIORSCRIBE
	total_positions = 1
	spawn_positions = 1
	description = "You are the bunker's seniormost medical and scientific expert in the bunker, sans the Head Scribe themselves. You are trained in both medicine and engineering, while also having extensive studies of the old world to assist in pinpointing what technology would be useful to the Brotherhood and its interests."
	supervisors = "the Head Scribe"

	exp_requirements = 900

	loadout_options = list(
	/datum/outfit/loadout/seniorscribefs,
	/datum/outfit/loadout/seniorscribebs
	)

	outfit = /datum/outfit/job/bos/f13seniorscribe

	access = list(ACCESS_BROTHERHOOD_COMMAND, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS)
	minimal_access = list(ACCESS_BROTHERHOOD_COMMAND, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/bos,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/bos,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/bos/f13scribe,
		),
	)


/datum/outfit/job/bos/f13seniorscribe/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/jet)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/turbo)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/psycho)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/medx)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/medx/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak5)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak5/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/superstimpak)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/superstimpak5)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/buffout)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/steady)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/wattz2k)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/AER9)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/AEP7)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/booster)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_SURGERY_HIGH, src)
	ADD_TRAIT(H, TRAIT_CYBERNETICIST, src)

/datum/outfit/job/bos/f13seniorscribe
	name =	"Senior Scribe"
	jobtype =	/datum/job/bos/f13seniorscribe
	accessory =	/obj/item/clothing/accessory/bos/seniorscribe
	suit =	/obj/item/clothing/suit/armor/light/duster/bos/scribe/seniorscribe
	glasses =	/obj/item/clothing/glasses/sunglasses/big
	backpack_contents = list(
		/obj/item/stock_parts/cell/ammo/ec = 2,
		/obj/item/gun/energy/laser/pistol = 1,
		/obj/item/melee/onehanded/knife/survival = 1,
		/obj/item/storage/firstaid/regular = 1,
		/obj/item/clothing/mask/gas/adv/gasmask = 1,
		/obj/item/flashlight/seclite = 1

	)

/datum/outfit/loadout/seniorscribefs
	name = "Senior Field Scribe"
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/CMO=1,
		/obj/item/clothing/glasses/hud/health=1,
		/obj/item/clothing/suit/toggle/labcoat/scribecoat=1,
		/obj/item/defibrillator/compact=1,
		/obj/item/clothing/gloves/color/latex=1,
		/obj/item/storage/belt/medical/surgery_belt_adv=1
		)

/datum/outfit/loadout/seniorscribebs
	name = "Senior Bunker Scribe"
	backpack_contents = list(
		/obj/item/storage/belt/utility/bos=1,
		/obj/item/clothing/gloves/color/yellow=1,
		/obj/item/blueprint/research=6,
		/obj/item/clothing/gloves/color/yellow=1
		)



/*
Scribe
*/

/datum/job/bos/f13scribe
	title = "Scribe"
	flag = F13SCRIBE
	display_order = JOB_DISPLAY_ORDER_SCRIBE
	total_positions = 2
	spawn_positions = 2
	description = "You answer directly to the Senior Scribe, tasked with researching and reverse-engineering recovered technologies from the old world, while maintaining the brotherhoods scientific archives. You may also be given a trainee to assign duties to."
	supervisors = "the Senior Scribe and Head Scribe"

	exp_requirements = 300

	loadout_options = list(
	/datum/outfit/loadout/scribefs,
	/datum/outfit/loadout/scribejbs,
	/datum/outfit/loadout/scribebs
	)

	outfit = /datum/outfit/job/bos/f13scribe

	access = list(ACCESS_BOS)
	minimal_access = list(ACCESS_BOS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/bos,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/bos,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/bos/f13initiate,
		),
		/datum/matchmaking_pref/disciple = list(
			/datum/job/bos/f13seniorscribe,
		),
	)

/datum/outfit/job/bos/f13scribe
	name = "Scribe"
	jobtype = /datum/job/bos/f13scribe
	suit = 			/obj/item/clothing/suit/armor/light/duster/bos/scribe
	glasses =		/obj/item/clothing/glasses/sunglasses/big
	backpack_contents = list(
		/obj/item/stock_parts/cell/ammo/ec = 2,
		/obj/item/gun/energy/laser/pistol = 1,
		/obj/item/melee/onehanded/knife/survival = 1,
		/obj/item/storage/firstaid/regular = 1,
		/obj/item/flashlight/seclite = 1
		)

/datum/outfit/job/bos/f13scribe/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/jet)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/turbo)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/psycho)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/medx)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/medx/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak5)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak5/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/superstimpak)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/superstimpak5)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/buffout)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/steady)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/AER9)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/booster)
	ADD_TRAIT(H, TRAIT_SURGERY_MID, src)
	ADD_TRAIT(H, TRAIT_MEDICALGRADUATE, src)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)


//	You gotta be a bunker scribe before fieldscribe
/datum/outfit/loadout/scribefs
	name = "Field Scribe"
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/CMO=1,
		/obj/item/clothing/glasses/hud/health=1,
		/obj/item/clothing/accessory/bos/scribe=1,
		/obj/item/clothing/suit/toggle/labcoat/scribecoat=1,
		/obj/item/clothing/gloves/color/latex=1,
		/obj/item/storage/belt/medical/surgical=1,
		)

/datum/outfit/loadout/scribejbs
	name = "Junior Bunker Scribe"
	backpack_contents = list(
		/obj/item/clothing/accessory/bos/juniorscribe=1,
		/obj/item/storage/belt/utility/full=1,
		/obj/item/clothing/gloves/color/yellow=1,
		/obj/item/clothing/mask/gas/welding=1,
		/obj/item/blueprint/research=1,
		)


/datum/outfit/loadout/scribebs
	name = "Bunker Scribe"
	backpack_contents = list(
		/obj/item/clothing/accessory/bos/scribe=1,
		/obj/item/storage/belt/utility/full=1,
		/obj/item/clothing/gloves/color/yellow=1,
		/obj/item/clothing/mask/gas/welding=1,
		/obj/item/blueprint/research=1
		)

/*
Senior Knight
*/

/datum/job/bos/f13seniorknight
	title = "Senior Knight"
	flag = F13SENIORKNIGHT
	display_order = JOB_DISPLAY_ORDER_SENIORKNIGHT
	total_positions = 2
	spawn_positions = 2
	description = "You report directly to the Knight-Captain. You are the Brotherhood Senior Knight. Having served the Knight Caste for some time now, you are versatile and experienced in both basic combat and repairs, and also a primary maintainer of the Bunker's facilities. As your seniormost Knight, you may be assigned initiates or Junior Knights to mentor."
	supervisors = "the Knight-Captain inside, Paladins outside"
	exp_requirements = 900

	loadout_options = list(
	/datum/outfit/loadout/sknighta, //AER12
	/datum/outfit/loadout/sknightb, //Lever Action
	/datum/outfit/loadout/sknightc, //R91
	/datum/outfit/loadout/sknightd	//Ripper and Bulletproof Shield
	)

	outfit = /datum/outfit/job/bos/f13seniorknight

	access = list(ACCESS_BROTHERHOOD_COMMAND, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS)
	minimal_access = list(ACCESS_BROTHERHOOD_COMMAND, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/bos,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/bos,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/bos/f13knight,
		),
	)

/datum/outfit/job/bos/f13seniorknight/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/commando)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/m1carbine)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/n99)
	ADD_TRAIT(H, TRAIT_GUNSMITH_ONE, src)
	ADD_TRAIT(H, TRAIT_GUNSMITH_TWO, src)
	ADD_TRAIT(H, TRAIT_GUNSMITH_THREE, src)
	ADD_TRAIT(H, TRAIT_GUNSMITH_FOUR, src)
	for(var/datum/crafting_recipe/recipe as() in GLOB.knight_gunsmith_recipes)
		H.mind.teach_crafting_recipe(recipe)


/datum/outfit/job/bos/f13seniorknight
	name = "Senior Knight"
	jobtype = /datum/job/bos/f13seniorknight
	accessory = 	/obj/item/clothing/accessory/bos/seniorknight
	glasses =       /obj/item/clothing/glasses/night
	mask =			/obj/item/clothing/mask/gas/sechailer
	belt = 			/obj/item/storage/belt/military/army
	neck =			/obj/item/storage/belt/holster
	head = 			/obj/item/clothing/head/helmet/f13/combat/brotherhood/senior
	backpack_contents = list(
		/obj/item/melee/onehanded/knife/hunting = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2,
		/obj/item/flashlight/seclite = 1
		)

/datum/outfit/loadout/sknighta
	name = "Footknight"
	suit = /obj/item/clothing/suit/armor/medium/combat/brotherhood/senior
	backpack_contents = list(
		/obj/item/gun/energy/laser/aer12 = 1,
		/obj/item/stock_parts/cell/ammo/mfc = 2,
		/obj/item/gun_upgrade/scope/watchman = 1,
		/obj/item/gun/ballistic/automatic/pistol/autoloader = 1,
		/obj/item/ammo_box/magazine/pistol45/socom = 2
		)

/datum/outfit/loadout/sknightb
	name = "Knight-Defender"
	suit = /obj/item/clothing/suit/armor/medium/combat/brotherhood/senior
	backpack_contents = list(
		/obj/item/gun/ballistic/shotgun/automatic/combat/shotgunlever = 1,
		/obj/item/ammo_box/shotgun/buck = 2,
		/obj/item/gun/energy/laser/pistol = 1,
		/obj/item/stock_parts/cell/ammo/ec = 2
		)

/datum/outfit/loadout/sknightc
	name = "Recon"
	suit = /obj/item/clothing/suit/armor/light/combat/brotherhood/scout/senior
	backpack_contents = list(
		/obj/item/clothing/suit/armor/light/combat/brotherhood/scout/senior = 1,
		/obj/item/gun/ballistic/automatic/marksman = 1,
		/obj/item/ammo_box/magazine/m556/rifle = 3,
		/obj/item/gun/energy/laser/pistol = 1,
		/obj/item/stock_parts/cell/ammo/ec = 2
		)

/datum/outfit/loadout/sknightd
	name = "Senior Knight-Cavalry"
	suit = /obj/item/clothing/suit/armor/light/combat/brotherhood/scout/senior
	backpack_contents = list(
		/obj/item/melee/powered/ripper/prewar = 1,
		/obj/item/shield/riot/bullet_proof = 1
		)
/*
Knight
*/

/datum/job/bos/f13knight
	title = "Knight"
	flag = F13KNIGHT
	display_order = JOB_DISPLAY_ORDER_KNIGHT
	total_positions = 3
	spawn_positions = 3
	description = " You are the Brotherhood Knight, the veritable lifeblood of your organization. You are a versatile and adaptably trained person: from your primary duties of weapon & armor repair to basic combat, survival and stealth skills, the only thing you lack is proper experience. You are also in charge of Initiates."
	supervisors = "the Senior Knight and Knight-Captain"

	exp_requirements = 300

	loadout_options = list(
	/datum/outfit/loadout/knighta, //AER9 J
	/datum/outfit/loadout/knightc, //AER9 S
	/datum/outfit/loadout/knighte, //Engi J
	/datum/outfit/loadout/knightf, //Engi S
	/datum/outfit/loadout/knightb, //BF + Shield J
	/datum/outfit/loadout/knightd //BF + Shield S
	)

	outfit = /datum/outfit/job/bos/f13knight

	access = list(ACCESS_BOS)
	minimal_access = list(ACCESS_BOS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/bos,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/bos,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/bos/f13initiate,
		),
		/datum/matchmaking_pref/disciple = list(
			/datum/job/bos/f13seniorknight,
		),
	)

/datum/outfit/job/bos/f13knight/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/m1carbine)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/n99)
	ADD_TRAIT(H, TRAIT_GUNSMITH_ONE, src)
	ADD_TRAIT(H, TRAIT_GUNSMITH_TWO, src)
	ADD_TRAIT(H, TRAIT_GUNSMITH_THREE, src)
	ADD_TRAIT(H, TRAIT_GUNSMITH_FOUR, src)
	for(var/datum/crafting_recipe/recipe as() in GLOB.knight_gunsmith_recipes)
		H.mind.teach_crafting_recipe(recipe)


/datum/outfit/job/bos/f13knight
	name = "Knight"
	jobtype = /datum/job/bos/f13knight
	mask =			/obj/item/clothing/mask/gas/sechailer
	belt = 			/obj/item/storage/belt/military/army
	neck =			/obj/item/storage/belt/holster
	head = 			/obj/item/clothing/head/helmet/f13/combat/brotherhood
	backpack_contents = list(
		/obj/item/melee/onehanded/knife/survival = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 1,
		/obj/item/flashlight/seclite = 1
		)

/datum/outfit/loadout/knighta
	name = "Junior Footknight"
	suit = /obj/item/clothing/suit/armor/medium/combat/brotherhood
	backpack_contents = list(
		/obj/item/clothing/accessory/bos/juniorknight = 1,
		/obj/item/gun/energy/laser/aer9 = 1,
		/obj/item/stock_parts/cell/ammo/mfc = 2,
		/obj/item/gun/ballistic/automatic/pistol/autoloader = 1,
		/obj/item/ammo_box/magazine/pistol45/socom = 2
		)

/datum/outfit/loadout/knightb
	name = "Junior Knight-Cavalry"
	suit = /obj/item/clothing/suit/armor/light/combat/brotherhood/scout
	backpack_contents = list(
		/obj/item/clothing/accessory/bos/juniorknight = 1,
		/obj/item/gun/ballistic/revolver/ballisticfist = 1,
		/obj/item/ammo_box/shotgun/buck = 2,
		/obj/item/shield/riot/bullet_proof = 1
		)


/datum/outfit/loadout/knightc
	name = "Footknight"
	suit = /obj/item/clothing/suit/armor/medium/combat/brotherhood
	backpack_contents = list(
		/obj/item/clothing/accessory/bos/knight = 1,
		/obj/item/gun/energy/laser/aer9 = 1,
		/obj/item/stock_parts/cell/ammo/mfc = 2,
		/obj/item/gun/ballistic/automatic/pistol/autoloader = 1,
		/obj/item/ammo_box/magazine/pistol45/socom = 2
		)

/datum/outfit/loadout/knightd
	name = "Knight-Cavalry"
	suit = /obj/item/clothing/suit/armor/light/combat/brotherhood/scout
	backpack_contents = list(
		/obj/item/clothing/accessory/bos/knight = 1,
		/obj/item/gun/ballistic/revolver/ballisticfist = 1,
		/obj/item/ammo_box/shotgun/buck = 2,
		/obj/item/shield/riot/bullet_proof = 1
		)

/datum/outfit/loadout/knighte
	name = "Junior Knight-Engineer"
	suit = /obj/item/clothing/suit/armor/light/combat/brotherhood/scout
	backpack_contents = list(
		/obj/item/clothing/accessory/bos/juniorknight = 1,
		/obj/item/storage/belt/utility/full = 1,
		/obj/item/stack/sheet/metal/fifty = 1,
		/obj/item/stack/sheet/glass/fifty = 1,
		/obj/item/gun/ballistic/shotgun/police = 1,
		/obj/item/ammo_box/shotgun/buck = 2,
		/obj/item/clothing/mask/gas/welding = 1
		)

/datum/outfit/loadout/knightf
	name = "Knight-Engineer"
	suit = /obj/item/clothing/suit/armor/light/combat/brotherhood/scout
	backpack_contents = list(
		/obj/item/clothing/accessory/bos/knight = 1,
		/obj/item/storage/belt/utility/full = 1,
		/obj/item/stack/sheet/metal/fifty = 1,
		/obj/item/stack/sheet/glass/fifty = 1,
		/obj/item/gun/ballistic/shotgun/police = 1,
		/obj/item/ammo_box/shotgun/buck = 2,
		/obj/item/clothing/mask/gas/welding = 1
		)

/*
Initiate
*/

/datum/job/bos/f13initiate
	title = "Initiate"
	flag = F13INITIATE
	display_order = JOB_DISPLAY_ORDER_INITIATE
	total_positions = 4
	spawn_positions = 4
	description = "Either recently inducted or born into the Brotherhood, you have since proven yourself worthy of assignment to the Chapter. You are to assist your superiors and receive training how they deem fit. You are NEVER allowed to leave the bunker without the direct supervision of a superior; doing so may result in exile or transferrence back the Valley."
	supervisors = "the Scribes, Knights or Paladins"

	exp_type = EXP_TYPE_FALLOUT
	exp_requirements = 0

	loadout_options = list(
	/datum/outfit/loadout/initiatek, //AEP7 and Engibelt with combat armor, no helmet
	/datum/outfit/loadout/initiates //Medical belt and chem knowledge
	)

	outfit = /datum/outfit/job/bos/f13initiate

	access = list(ACCESS_BOS)
	minimal_access = list(ACCESS_BOS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/bos,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/bos,
		),
		/datum/matchmaking_pref/disciple = list(
			/datum/job/bos/f13knight,
			/datum/job/bos/f13scribe,
		),
	)

/datum/outfit/job/bos/f13initiate
	name = "Initiate"
	jobtype = /datum/job/bos/f13initiate
	backpack_contents = list(
		/obj/item/melee/onehanded/knife/survival = 1,
		/obj/item/flashlight/seclite = 1
		)

/datum/outfit/job/bos/f13initiate/post_equip(mob/living/carbon/human/H, visualsOnly)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_SURGERY_LOW, src)


/datum/outfit/loadout/initiatek
	name = "Knight-Aspirant"
	belt = 			/obj/item/storage/belt/utility/full
	suit = 			/obj/item/clothing/suit/armor/medium/combat/brotherhood/initiate
	head = 			/obj/item/clothing/head/helmet/f13/combat/brotherhood/initiate
	backpack_contents = list(
		/obj/item/gun/energy/laser/pistol = 1,
		/obj/item/stock_parts/cell/ammo/ec = 2,
		/obj/item/book/granter/crafting_recipe/gunsmith_one = 1,
		/obj/item/book/granter/crafting_recipe/gunsmith_two = 1,
		/obj/item/clothing/accessory/bos/initiateK = 1
		)

/datum/outfit/loadout/initiates
	name = "Scribe-Aspirant"
	belt =			/obj/item/storage/belt/medical
	suit =			/obj/item/clothing/suit/toggle/labcoat
	glasses =		/obj/item/clothing/glasses/science
	gloves =		/obj/item/clothing/gloves/color/latex
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 1,
		/obj/item/book/granter/trait/chemistry = 1,
		/obj/item/clothing/accessory/bos/initiateS = 1
		)

/*
Off Duty
*/

/datum/job/bos/f13offduty
	title = "Brotherhood Off-Duty"
	flag = F13OFFDUTYBOS
	display_order = JOB_DISPLAY_ORDER_INITIATE
	total_positions = 4
	spawn_positions = 4
	description = "Whether operating in disguise or simply enjoying time from the off-shift, you are still a member of the Brotherhood and must abide by the Codex and follow the orders of your superiors. That being said, while off-duty your orders do not take precedence and you should resist issuing them when another of your rank is currently on duty, and if one does not exist, commit to going on-duty. You have a duty to safeguard what equipment you are given, especially your holotags. Ideally, you should be paired with one or more fellow off-duty members; and you would know where the bunker in the region is."
	supervisors = "your Superior rank"

	exp_type = EXP_TYPE_FALLOUT
	exp_requirements = 300

	outfit = /datum/outfit/job/bos/f13offduty


/datum/outfit/job/bos/f13offduty
	name = "Brotherhood Off-Duty"
	jobtype = /datum/job/bos/f13offduty
	backpack_contents = list(
		/obj/item/melee/onehanded/knife/survival = 1
		)

		/* 
		They're broken so until its fixed, its gone
		*/
