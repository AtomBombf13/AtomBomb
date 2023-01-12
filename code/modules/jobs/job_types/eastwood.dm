/*
Town access doors
Mayor: ACCESS_TOWN_COMMAND 283
Provost Marshal: ACCESS_TOWN_HOS 282
Deputy, Detective: ACCESS_TOWN_SEC 281
General access: ACCESS_TOWN 273
Director: ACCESS_TOWN_CMO 287
Doctor: ACCESS_TOWN_DOC 280
Researcher: ACCESS_TOWN_SCIENCE 279
Barkeeper: ACCESS_TOWN_BAR 275
Prospector : ACCESS_TOWN_PROSP 277
Citizen: ACCESS_TOWN_CIV 274
Preacher: ACCESS_TOWN_PREACH 278
Merchant: ACCESS_TOWN_MERCH 276

All Access for every role in every faction: ACCESS_PUBLIC 284

here's a tip, go search DEFINES/access.dm
*/

/datum/job/eastwood
	exp_type = EXP_TYPE_EASTWOOD
	faction = FACTION_EASTWOOD
	department_flag = DEP_EASTWOOD
	selection_color = "#dcba97"

// Headsets for everyone!!
/datum/outfit/job/eastwood
	name = "Eastwood Default Template"
	id = /obj/item/card/id/dogtag/town
	ears = /obj/item/radio/headset/headset_town
	belt = null
	uniform = /obj/item/clothing/under/f13/eastwood/vault
	shoes = /obj/item/clothing/shoes/jackboots
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	backpack_contents = list(
		/obj/item/storage/bag/money/small/settler = 1
		)

/*--------------------------------------------------------------*/
//Mayor
/*--------------------------------------------------------------*/
//Executive with 3 mags

/datum/job/eastwood/f13mayor
	title = "Mayor"
	flag = F13MAYOR
	display_order = JOB_DISPLAY_ORDER_MAYOR
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Overseer"
	description = "A subordinate of the Overseer, you are the primary face of the town. Handling the day to day dealings of the denizens of our fair city falls to you. Those wasters outside the walls are an unknown factor, so it falls to you to maintain relations with the Wastelands many players. Be wary of the Machine down below, as with the trades and treaties in place. Balance the budget, but don't step on the Merchant's toes. Organise defences, but do not encroach on the Marshal's office. Most of all: don't lose your head."
	selection_color = "#af9172"
	exp_requirements = 750

	outfit = /datum/outfit/job/eastwood/f13mayor
	access = list(ACCESS_CLONING, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS,ACCESS_ROBOTICS, ACCESS_TOWN_SEC, ACCESS_PUBLIC, ACCESS_TOWN, ACCESS_TOWN_BAR, ACCESS_TOWN_CIV, ACCESS_TOWN_DOC, ACCESS_TOWN_PROSP, ACCESS_TOWN_PREACH, ACCESS_TOWN_MERCH, ACCESS_TOWN_SCIENCE, ACCESS_TOWN_COMMAND, ACCESS_CHANGE_IDS)
	minimal_access = list(ACCESS_CLONING, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_MINING, ACCESS_ROBOTICS, ACCESS_FORENSICS_LOCKERS, ACCESS_TOWN_SEC, ACCESS_PUBLIC, ACCESS_TOWN, ACCESS_TOWN_BAR, ACCESS_TOWN_CIV, ACCESS_TOWN_DOC, ACCESS_TOWN_PROSP, ACCESS_TOWN_PREACH, ACCESS_TOWN_MERCH, ACCESS_TOWN_SCIENCE, ACCESS_TOWN_COMMAND, ACCESS_CHANGE_IDS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/eastwood
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/eastwood
		)
	)


/datum/outfit/job/eastwood/f13mayor/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/tribalradio)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/durathread_vest)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)

/datum/outfit/job/eastwood/f13mayor
	name = "Mayor"
	jobtype = /datum/job/eastwood/f13mayor
	id = /obj/item/card/id/silver/mayor
	glasses = /obj/item/clothing/glasses/sunglasses
	ears = /obj/item/radio/headset/headset_town/mayor
	head =/obj/item/clothing/head/helmet/f13/brahmincowboyhat
	l_pocket = /obj/item/storage/bag/money/small/oasis
	r_pocket = /obj/item/flashlight/seclite
	suit = /obj/item/clothing/suit/armor/medium/duster/mayor
	suit_store = /obj/item/gun/ballistic/automatic/pistol/n99/executive
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx = 1,
		/obj/item/storage/box/citizenship_permits = 1,
		/obj/item/pen/fountain/captain = 1,
		/obj/item/clothing/mask/cigarette/cigar = 1,
		/obj/item/toy/cards/deck/unum = 1,
		/obj/item/ammo_box/magazine/pistol10mm = 3,
		/obj/item/megaphone/command = 1
		)

/*--------------------------------------------------------------*/
//Marshal
/*--------------------------------------------------------------*/
//Brush gun, peacekeeper - Sheriff Coat
//AK112, big 10mm revolver - Riot Helmet/coat

/datum/job/eastwood/f13sheriff
	title = "Provost Marshal"
	flag = F13SHERIFF
	display_order = JOB_DISPLAY_ORDER_SHERIFF
	selection_color = "#af9172"
	head_announce = list("Security")
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Mayor and Overseer"
	description = "As the head of the security forces, you are the face of justice in the town. Uphold the law, or bend it to suit your needs, you set the precedent for how justice is doled out in the town, so bear that in mind when you sentence that pickpocket to death. Maintain the armoury and keep that watchful eye on the elevator to the Vault below. Whatever you do, don't lose your head."
	exp_requirements = 750

	outfit = /datum/outfit/job/eastwood/f13sheriff

	loadout_options = list(
	/datum/outfit/loadout/thechief,
	/datum/outfit/loadout/theoldguard
	)

	access = list(ACCESS_CLONING, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS, ACCESS_TOWN_SEC, ACCESS_PUBLIC, ACCESS_TOWN, ACCESS_TOWN_BAR, ACCESS_TOWN_CIV, ACCESS_TOWN_DOC, ACCESS_TOWN_PROSP, ACCESS_TOWN_PREACH, ACCESS_TOWN_HOS, ACCESS_CHANGE_IDS)
	minimal_access = list(ACCESS_CLONING, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS, ACCESS_TOWN_SEC, ACCESS_PUBLIC, ACCESS_TOWN, ACCESS_TOWN_BAR, ACCESS_TOWN_CIV, ACCESS_TOWN_DOC, ACCESS_TOWN_PROSP, ACCESS_TOWN_PREACH, ACCESS_TOWN_HOS,  ACCESS_CHANGE_IDS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/eastwood
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/eastwood
		)
	)

/datum/outfit/job/eastwood/f13sheriff
	name = "Provost Marshal"
	jobtype = /datum/job/eastwood/f13sheriff
	id = /obj/item/card/id/dogtag/sheriff
	ears = /obj/item/radio/headset/headset_town/lawman_sheriff
	glasses  = /obj/item/clothing/glasses/sunglasses
	neck = /obj/item/storage/belt/holster/leg
	belt = /obj/item/storage/belt/military/army
	uniform = /obj/item/clothing/under/f13/eastwood/vault/security
	l_pocket = /obj/item/storage/bag/money/small/den
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx = 1,
		/obj/item/storage/box/deputy_badges = 1,
		/obj/item/restraints/handcuffs = 1,
		/obj/item/melee/classic_baton = 1,
		/obj/item/melee/onehanded/knife/bowie = 1,
		/obj/item/grenade/flashbang = 1
		)

/datum/outfit/loadout/thechief
	name = "The Chief of Security"
	suit = /obj/item/clothing/suit/armor/medium/town/riot
	head = /obj/item/clothing/head/f13/town/riot
	gloves = /obj/item/clothing/gloves/f13/military
	r_hand = /obj/item/gun/ballistic/automatic/assault_carbine/worn
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m5mm = 3,
		/obj/item/gun/ballistic/revolver/colt6520/Bigiron = 1
		)

/datum/outfit/loadout/theoldguard
	name = "The Old Guard"
	uniform = /obj/item/clothing/under/f13/eastwood/sheriff
	suit = /obj/item/clothing/suit/armor/medium/combat/sheriff
	head = /obj/item/clothing/head/f13/town/sheriff
	gloves = /obj/item/clothing/gloves/rifleman
	r_hand = /obj/item/gun/ballistic/rifle/repeater/brush
	backpack_contents = list(
		/obj/item/ammo_box/tube/c4570 = 3,
		/obj/item/gun_upgrade/scope/watchman = 1,
		/obj/item/gun/ballistic/revolver/m29/peacekeeper = 1,
		/obj/item/book/granter/trait/rifleman = 1
		)

/datum/outfit/job/eastwood/f13sheriff/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/policepistol)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/steelbib/heavy)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/armyhelmetheavy)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	ADD_TRAIT(H, TRAIT_SELF_AWARE, src)

/*--------------------------------------------------------------*/
//Deputy
/*--------------------------------------------------------------*/
//Police carbine, 10mm revolver - Vault Security Armor
//Trail carbine, .357 revolver - Deputy Coat (OG DR loadout)
//Lever-action Shotgun, .357 revolver - Deputy Coat

/datum/job/eastwood/f13deputy
	title = "Deputy Marshal"
	flag = F13DEPUTY
	display_order = JOB_DISPLAY_ORDER_DEPUTY
	total_positions = 5
	spawn_positions = 5
	supervisors = "The Marshal, in his absence Mayor"
	description = "You are part of a local police department as an officer of Eastwood, uphold laws and protect it's citizens whatever it takes. You are a subordinate of Marshal and in his absence Mayor, follow their orders as long as it doesn't endanger Eastwood or it's citizens."
	selection_color = "#dcba97"
	exp_requirements = 300

	loadout_options = list(
	/datum/outfit/loadout/vaultheavy,
	/datum/outfit/loadout/frontier,
	/datum/outfit/loadout/frontiershotgun
	)

	outfit = /datum/outfit/job/eastwood/f13deputy
	access = list(ACCESS_TOWN_SEC, ACCESS_PUBLIC, ACCESS_TOWN)
	minimal_access = list(ACCESS_TOWN_SEC, ACCESS_PUBLIC, ACCESS_TOWN)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/eastwood
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/eastwood
		)
	)

/datum/outfit/job/eastwood/f13deputy
	name = "Deputy Marshal"
	jobtype = /datum/job/eastwood/f13deputy
	id = /obj/item/card/id/dogtag/deputy
	uniform = /obj/item/clothing/under/f13/eastwood/vault/security
	ears = /obj/item/radio/headset/headset_town/lawman
	neck = /obj/item/storage/belt/holster/leg
	belt = /obj/item/storage/belt/military/army
	glasses  = /obj/item/clothing/glasses/sunglasses
	r_pocket = /obj/item/flashlight/seclite
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx = 1,
		/obj/item/restraints/handcuffs = 1,
		/obj/item/melee/onehanded/knife/bowie = 1,
		/obj/item/grenade/flashbang = 1,
		/obj/item/storage/bag/money/small/settler = 1
		)

/datum/outfit/loadout/vaultheavy
	name = "Vault Security Classic"
	head = /obj/item/clothing/head/helmet/f13/combat/town
	suit = /obj/item/clothing/suit/armor/medium/combat/town
	mask = /obj/item/clothing/mask/gas/town
	gloves = /obj/item/clothing/gloves/f13/military
	r_hand = /obj/item/gun/ballistic/automatic/combat
	backpack_contents = list(
		/obj/item/ammo_box/magazine/greasegun = 1,
		/obj/item/gun/ballistic/revolver/colt6520 = 1
		)

/datum/outfit/loadout/frontier
	name = "Rugged Frontiersman"
	head = /obj/item/clothing/head/f13/town/deputy
	suit = /obj/item/clothing/suit/armor/light/duster/town/deputy
	uniform = /obj/item/clothing/under/f13/eastwood/deputy
	gloves = /obj/item/clothing/gloves/rifleman
	r_hand = /obj/item/gun/ballistic/rifle/repeater/trail
	backpack_contents = list(
		/obj/item/ammo_box/tube/m44 = 2,
		/obj/item/ammo_box/loader/a357 = 2,
		/obj/item/gun/ballistic/revolver/colt357 = 1
		)

/datum/outfit/loadout/frontiershotgun
	name = "Upfront Frontiersman"
	head = /obj/item/clothing/head/f13/town/deputy
	suit = /obj/item/clothing/suit/armor/light/duster/town/deputy
	uniform = /obj/item/clothing/under/f13/eastwood/deputy
	gloves = /obj/item/clothing/gloves/rifleman
	r_hand = /obj/item/gun/ballistic/shotgun/automatic/combat/shotgunlever
	backpack_contents = list(
		/obj/item/ammo_box/shotgun/bean = 1,
		/obj/item/ammo_box/shotgun/buck = 1,
		/obj/item/ammo_box/loader/a357 = 2,
		/obj/item/gun/ballistic/revolver/colt357 = 1
		)

/datum/outfit/job/eastwood/f13deputy/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)


/*--------------------------------------------------------------*/
//Detective
/*--------------------------------------------------------------*/
//.44 Magnum Snub - Duster

/datum/job/eastwood/f13detective
	title = "Detective"
	flag = F13DETECTIVE
	display_order = JOB_DISPLAY_ORDER_DETECTIVE
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Marshal"
	description  = "Investigating crimes and disappearences in the town, you are the marshal's infromation gathering expert."
	selection_color = "#dcba97"
	outfit = /datum/outfit/job/eastwood/f13detective

	access = list(ACCESS_VTCC_SEC, ACCESS_BAR, ACCESS_FORENSICS_LOCKERS, ACCESS_TOWN_SEC, ACCESS_PUBLIC, ACCESS_TOWN)
	minimal_access = list(ACCESS_VTCC_SEC, ACCESS_BAR, ACCESS_FORENSICS_LOCKERS, ACCESS_TOWN_SEC, ACCESS_PUBLIC, ACCESS_TOWN)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/eastwood/f13detective
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/eastwood/f13detective
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/wasteland/f13wastelander
		)
	)


/datum/outfit/job/eastwood/f13detective
	name = "Detective"
	jobtype = /datum/job/eastwood/f13detective
	id = /obj/item/card/id/silver
	uniform = /obj/item/clothing/under/f13/eastwood/detective
	suit = /obj/item/clothing/suit/armor/light/duster/town/deputy
	head = /obj/item/clothing/head/f13/town/deputy
	ears = /obj/item/radio/headset/headset_town/lawman
	gloves = /obj/item/clothing/gloves/color/black
	l_pocket = /obj/item/storage/bag/money/small/settler
	suit_store = /obj/item/gun/ballistic/revolver/m29/snub
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx = 1,
		/obj/item/pda/detective=1,
		/obj/item/camera/detective=1,
		/obj/item/toy/crayon/white=1,
		/obj/item/detective_scanner=1,
		/obj/item/storage/box/gloves=1,
		/obj/item/storage/box/evidence=1,
		/obj/item/ammo_box/loader/m44=1
		)

/*--------------------------------------------------------------*/	
//Town Director
/*--------------------------------------------------------------*/

/datum/job/eastwood/f13towncmo
	title = "Director"
	flag = F13CHIEFMED
	display_order = JOB_DISPLAY_ORDER_F13CHIEFMED
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Mayor and Overseer"
	description = "From the board of the VTCC, you were chosen to be the chief delegator for the medical and science wings of this town's clinic. You are the mediator of workplace drama, the human resource enforcer, and the cornerstone of inspiration for your underlings. As their supervisor, it is your job to make sure that this clinic functions at peak performance."
	selection_color = "#af9172"
	exp_requirements = 750

	outfit = /datum/outfit/job/eastwood/f13towncmo
	access = list(ACCESS_TOWN_SCIENCE, ACCESS_PUBLIC, ACCESS_TOWN, ACCESS_TOWN_DOC, ACCESS_TOWN_CMO, ACCESS_ROBOTICS)
	minimal_access = list(ACCESS_TOWN_SCIENCE, ACCESS_PUBLIC, ACCESS_TOWN, ACCESS_TOWN_DOC, ACCESS_TOWN_CMO, ACCESS_ROBOTICS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/eastwood
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/eastwood
		)
	)

/datum/outfit/job/eastwood/f13towncmo
	name = "Director"
	jobtype = /datum/job/eastwood/f13towncmo
	id = /obj/item/card/id/f13towncmo
	chemwhiz = TRUE
	ears = /obj/item/radio/headset/headset_town/cmo
	uniform = /obj/item/clothing/under/rank/medical/chief_medical_officer
	glasses = /obj/item/clothing/glasses/science
	suit = /obj/item/clothing/suit/toggle/labcoat/cmo
	head = /obj/item/clothing/head/beret/cmo
	suit_store = /obj/item/gun/energy/laser/complianceregulator
	l_pocket = /obj/item/storage/bag/money/small/den
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2,
		/obj/item/megaphone/command = 1,
		/obj/item/stock_parts/cell/ammo/ec = 2,
		/obj/item/pda/medical = 1
		)

/datum/outfit/job/eastwood/f13towncmo/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(GLOB.chemwhiz_recipes)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/medx)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/medx/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak5)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak5/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/superstimpak)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/superstimpak5)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/needler)
	ADD_TRAIT(H, TRAIT_MEDICALGRADUATE, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_SURGERY_MID, src)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_CYBERNETICIST, src)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_MEDICALEXPERT, src)
	ADD_TRAIT(H, TRAIT_CYBERNETICIST_EXPERT, src)
	ADD_TRAIT(H, TRAIT_SURGERY_HIGH, src)
/*--------------------------------------------------------------*/
//Researcher
/*--------------------------------------------------------------*/
//Needler - Labcoat

/datum/job/eastwood/f13denres
	title = "Researcher"
	flag = F13DENRES
	display_order = JOB_DISPLAY_ORDER_RESEARCHER
	total_positions = 2
	spawn_positions = 2
	supervisors = "The Mayor and Director"
	description =  "Scientist, Roboticist, each of you under the Vault's employ stands under the title of Researcher. The Vault's servers are regularly wiped by some glitch in the system, and it's down to the Scientists to restore these data files. Make sure to turn a profit on your services, or the Mayor might reconsider your position!"
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/eastwood/f13denres
	access = list(ACCESS_TOWN_SCIENCE, ACCESS_PUBLIC, ACCESS_TOWN, ACCESS_TOWN_DOC, ACCESS_ROBOTICS)
	minimal_access = list(ACCESS_TOWN_SCIENCE, ACCESS_PUBLIC, ACCESS_TOWN, ACCESS_TOWN_DOC, ACCESS_ROBOTICS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/eastwood
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/eastwood
		)
	)

/datum/outfit/job/eastwood/f13denres
	name = "Researcher"
	jobtype = /datum/job/eastwood/f13denres
	id = /obj/item/card/id/denresearcher
	chemwhiz = TRUE
	ears = /obj/item/radio/headset/headset_town/commerce
	uniform = /obj/item/clothing/under/f13/eastwood/vault
	glasses = /obj/item/clothing/glasses/science
	suit = /obj/item/clothing/suit/toggle/labcoat/science
	suit_store = /obj/item/gun/ballistic/revolver/needler
	l_pocket = /obj/item/storage/bag/money/small/settler
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2,
		/obj/item/clothing/accessory/armband/science = 1,
		/obj/item/ammo_box/stripper/needle = 1
		)

/datum/outfit/job/eastwood/f13denres/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(GLOB.chemwhiz_recipes)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/needler)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_CYBERNETICIST, src)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)

/*--------------------------------------------------------------*/
//Town Doctor
/*--------------------------------------------------------------*/
//Regular Labcoat or Follower

/datum/job/eastwood/f13dendoc
	title = "Town Doctor"
	flag = F13DENDOC
	display_order = JOB_DISPLAY_ORDER_DENDOC
	total_positions = 2
	spawn_positions = 2
	supervisors = "The Mayor and Director"
	description = "Doctor, the Medical Professionals, even those who handle quarantined patients, are the clinical cornerstone of the town, so long as the price is right. Just remember that you're no Follower (unless you somehow are) - medicine doesn't come for free, and you aren't here out of the kindness of your heart. Make sure to turn a profit on your services, or the Mayor might reconsider your position!"
	selection_color = "#dcba97"

	loadout_options = list(
	/datum/outfit/loadout/vaultdoc,
	/datum/outfit/loadout/barber,
	/datum/outfit/loadout/follower,
	/datum/outfit/loadout/nurse
	)

	outfit = /datum/outfit/job/eastwood/f13dendoc
	access = list(ACCESS_CLONING, ACCESS_TOWN_DOC, ACCESS_PUBLIC, ACCESS_TOWN)
	minimal_access = list(ACCESS_CLONING, ACCESS_TOWN_DOC, ACCESS_PUBLIC, ACCESS_TOWN)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/eastwood
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/eastwood
		)
	)

/datum/outfit/job/eastwood/f13dendoc
	name = "Town Doctor"
	jobtype = /datum/job/eastwood/f13dendoc
	id = /obj/item/card/id/dendoctor
	chemwhiz = TRUE
	ears = /obj/item/radio/headset/headset_town/commerce
	glasses = /obj/item/clothing/glasses/hud/health
	gloves = /obj/item/clothing/gloves/color/latex
	neck = /obj/item/clothing/neck/stethoscope
	belt = /obj/item/storage/belt/medical/primitive
	l_pocket = /obj/item/storage/bag/money/small/settler
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2,
		/obj/item/storage/firstaid/regular = 1,
		/obj/item/clothing/accessory/armband/medblue = 1,
		/obj/item/pda/medical = 1,
		/obj/item/flashlight/pen = 1
		)

/datum/outfit/job/eastwood/f13dendoc/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(GLOB.chemwhiz_recipes)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/medx)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/medx/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak5)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak5/chemistry)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/superstimpak)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/superstimpak5)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/needler)
	ADD_TRAIT(H, TRAIT_MEDICALGRADUATE, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_SURGERY_MID, src)

/datum/outfit/loadout/vaultdoc
	name = "Vault Doctor"
	suit = /obj/item/clothing/suit/toggle/labcoat/paramedic

/datum/outfit/loadout/barber
	name = "Barber Surgeon"
	uniform = /obj/item/clothing/under/f13/eastwood/doctor
	suit = /obj/item/clothing/suit/toggle/labcoat
	shoes = /obj/item/clothing/shoes/f13/military/leather
	r_hand = /obj/item/melee/onehanded/straight_razor

/datum/outfit/loadout/follower
	name = "Follower"
	uniform =	/obj/item/clothing/under/f13/followers
	suit	=	/obj/item/clothing/suit/toggle/labcoat/followers
	shoes 	=	/obj/item/clothing/shoes/f13/brownie

/datum/outfit/loadout/nurse
	name = "Nurse"
	head =		/obj/item/clothing/head/fashion/hat_nurse
	uniform =	/obj/item/clothing/under/f13/fashion/nurse_uniform
	shoes 	=	/obj/item/clothing/shoes/laceup/alternative


/*--------------------------------------------------------------*/
//Merchant
/*--------------------------------------------------------------*/
//Gets nothing but can craft

/datum/job/eastwood/f13shopkeeper
	title = "Merchant"
	flag = F13SHOPKEEPER
	display_order = JOB_DISPLAY_ORDER_SHOPKEEPER
	total_positions = 1
	spawn_positions = 1
	supervisors = "the free market and the Mayor"
	description = "Trade deals fall upon your shoulders to negotiate with those around the town, so ensure you never give more than you've got. Of course, selling the town is the worst thing you could do, so it should go without saying that you can't do that. Negotiate with the traders of the wastes, extort them for the shirt on their back, or set them up for life, it's up to you to decide."
	enforces = "Your store is a private business and you can decide who is welcome there. However, you are still subject to the overarching laws of Eastwood."
	selection_color = "#dcba97"
	exp_requirements = 300

	outfit = /datum/outfit/job/eastwood/f13shopkeeper
	access = list(ACCESS_CARGO_BOT, ACCESS_TOWN_MERCH, ACCESS_PUBLIC, ACCESS_TOWN, ACCESS_TOWN_PROSP)
	minimal_access = list(ACCESS_CARGO_BOT, ACCESS_TOWN_MERCH, ACCESS_PUBLIC, ACCESS_TOWN, ACCESS_TOWN_PROSP)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/eastwood
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/eastwood
		)
	)

/datum/outfit/job/eastwood/f13shopkeeper
	name = "Merchant"
	jobtype = /datum/job/eastwood/f13shopkeeper
	id = /obj/item/card/id/dogtag/town
	ears = /obj/item/radio/headset/headset_town/commerce
	uniform = /obj/item/clothing/under/f13/eastwood/merchant
	suit = /obj/item/clothing/suit/armor/light/duster/brahmin
	gloves = /obj/item/clothing/gloves/fingerless
	l_pocket = /obj/item/storage/bag/money/small/den
	shoes = /obj/item/clothing/shoes/f13/explorer
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx =1,
		/obj/item/storage/box/shopkeeper = 1)

/datum/outfit/job/eastwood/f13shopkeeper/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/tribalradio)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/huntingrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/n99)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/smg10mm)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/combatrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/frag_shrapnel)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/high_explosive)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/explosive/shrapnelmine)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/metal_guard)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/laserguide)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/forged_barrel)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/overshootermod)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/fullauto)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/combat_helmet)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/combat_armor)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/policepistol)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/policerifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/steelbib/heavy)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/armyhelmetheavy)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/needler)

/datum/outfit/job/eastwood/f13shopkeeper/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

/*--------------------------------------------------------------*/
//Prospector
/*--------------------------------------------------------------*/
//10mm Revolver - Leather armor / just overalls

/datum/job/eastwood/f13prospector
	title = "Prospector"
	flag = F13PROSPECTOR
	display_order = JOB_DISPLAY_ORDER_PROSPECTOR
	total_positions = 2
	spawn_positions = 2
	supervisors = "The Mayor and Merchant"
	description = "You are employeed by the local town merchant to bring in gear, supplies, and materials in exchange for caps. Pay varies depending on what you bring in so.. sometimes it's not great work, but it's honest work."
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/eastwood/f13prospector

	access = list( ACCESS_CARGO_BOT, ACCESS_TOWN_PROSP, ACCESS_PUBLIC, ACCESS_TOWN)
	minimal_access = list(ACCESS_CARGO_BOT, ACCESS_TOWN_PROSP, ACCESS_PUBLIC, ACCESS_TOWN)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/eastwood,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/eastwood,
		),
	)

	loadout_options = list(
	/datum/outfit/loadout/engineer,
	/datum/outfit/loadout/miner)

/datum/outfit/job/eastwood/f13prospector
	name = "Prospector"
	jobtype = /datum/job/eastwood/f13prospector
	id = /obj/item/card/id/dogtag/town

	ears = /obj/item/radio/headset/headset_town/commerce
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/lantern
	uniform = /obj/item/clothing/under/f13/eastwood/prospector
	shoes = /obj/item/clothing/shoes/workboots
	backpack_contents = list(/obj/item/gun/ballistic/revolver/colt6520 = 1)

/datum/outfit/job/eastwood/f13prospector/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/tribalradio)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/durathread_vest)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/steelbib/heavy)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/armyhelmetheavy)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)

/datum/outfit/loadout/engineer
	name = "Engineer"
	suit = /obj/item/clothing/suit/apron/overalls
	glasses = /obj/item/clothing/glasses/welding
	belt = /obj/item/storage/belt/utility/full
	backpack_contents = list(
		/obj/item/pickaxe/mini = 1,
		/obj/item/shovel/spade = 1
		)

/datum/outfit/loadout/miner
	name = "Miner"
	suit = /obj/item/clothing/suit/armor/light/leather/rig
	head = /obj/item/clothing/head/hardhat
	belt = /obj/item/storage/belt/utility/mining
	backpack_contents = list(
		/obj/item/t_scanner/adv_mining_scanner = 1,
		/obj/item/pickaxe/silver = 1,
		/obj/item/shovel = 1
		)

/*--------------------------------------------------------------*/
//Barkeeper
/*--------------------------------------------------------------*/
//Starts with Shotgun and some alcohol - Otherwise outfits

/datum/job/eastwood/f13barkeep
	title = "Barkeeper"
	flag = F13BARKEEP
	display_order = JOB_DISPLAY_ORDER_BARKEEP
	total_positions = 2
	spawn_positions = 2
	supervisors = "the free market and Mayor"
	description = "As proprietor of the town saloon, you are responsible for ensuring both citizens and travellers in Eastwood can get some food, drink and rest. Speak to the farmers for fresh produce!"
	enforces = "Your saloon is a private business and you can decide who is welcome there. However, you are still subject to the overarching laws of Eastwood."
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/eastwood/f13barkeep

	access = list(ACCESS_TOWN_BAR, ACCESS_PUBLIC, ACCESS_TOWN)
	minimal_access = list(ACCESS_TOWN_BAR, ACCESS_PUBLIC, ACCESS_TOWN)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/eastwood
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/eastwood
		)
	)


/datum/outfit/job/eastwood/f13barkeep
	name = "Barkeeper"
	jobtype = /datum/job/eastwood/f13barkeep
	id = /obj/item/card/id/dogtag/town
	ears = /obj/item/radio/headset/headset_town/commerce
	shoes = /obj/item/clothing/shoes/laceup
	uniform = /obj/item/clothing/under/f13/eastwood/barkeeper
	suit = /obj/item/clothing/suit/armor/light/duster/town/bartender
	suit_store = /obj/item/gun/ballistic/revolver/caravan_shotgun
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx = 1,
		/obj/item/storage/bag/money/small/settler = 1,
		/obj/item/ammo_box/shotgun/bean = 2,
		/obj/item/book/manual/nuka_recipes = 1,
		/obj/item/stack/f13Cash/caps/onezerozero = 1,
		/obj/item/reagent_containers/food/drinks/bottle/rotgut = 1
		)

/*--------------------------------------------------------------*/
//Preacher
/*--------------------------------------------------------------*/

/datum/job/eastwood/f13preacher
	title = "Preacher"
	flag = F13PREACHER
	display_order = JOB_DISPLAY_ORDER_PREACHER
	total_positions = 1
	spawn_positions = 1
	supervisors = "your faith"
	description = "You are the last bastion of your faith in this forsaken Wasteland - whatever that faith may be. Spread your word and preach to the faithless in whatever manner you see fit, but remember that the divine cannot always protect you from harsh realities."

	outfit = /datum/outfit/job/eastwood/f13preacher

	loadout_options = list(
	/datum/outfit/loadout/mormon, 			//FNV Mormons
	/datum/outfit/loadout/hubologist,		//Post F2 Hubologists (or what is even left of them)
	/datum/outfit/loadout/preacheratom		//F3/F4 Children of Atom
	//datum/outfit/loadout/reaver			//FBoS: Tactics Reaver Movement
	)

	access = list(ACCESS_TOWN, ACCESS_TOWN_PREACH, ACCESS_PUBLIC)		//we can expand on this and make alterations as people suggest different loadouts
	minimal_access = list(ACCESS_TOWN, ACCESS_TOWN_PREACH, ACCESS_PUBLIC)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/disciple = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/patron = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/protegee = list(
			/datum/job/wasteland/f13wastelander,
		),
	)

/datum/outfit/job/eastwood/f13preacher
	name = "Preacher"
	jobtype = /datum/job/eastwood/f13preacher

	id = 			/obj/item/card/id/dogtag/town
	head =			/obj/item/clothing/head/helmet/f13/brahmincowboyhat
	neck =			/obj/item/clothing/neck/scarf/red
	uniform = 		/obj/item/clothing/under/f13/eastwood/townie
	shoes = 		/obj/item/clothing/shoes/f13/military/leather

	backpack_contents = list(
		/obj/item/reagent_containers/food/snacks/store/bread/plain = 5,
		/obj/item/reagent_containers/food/snacks/fishmeat/salmon = 2,
		/obj/item/reagent_containers/glass/beaker/waterbottle = 2,
		/obj/item/storage/fancy/candle_box = 1,
		/obj/item/storage/bag/money/small/settler = 1
		)

/datum/outfit/loadout/mormon //Translators and tribal teachers like in NV
	name = "Mormon"
	suit = /obj/item/clothing/suit/jacket/leather
	backpack_contents = list(
	/obj/item/book/granter/trait/mormon = 1,
	/obj/item/reagent_containers/food/snacks/store/bread/plain = 5
	)

/datum/outfit/loadout/hubologist //Crackheads and horny fiends
	name = "Hubologist"
	suit = /obj/item/clothing/suit/toggle/labcoat/robe_hubologist
	backpack_contents = list(
	/obj/item/reagent_containers/pill/patch/jet = 5,
	/obj/item/reagent_containers/hypospray/medipen/psycho = 5
	)

/datum/outfit/loadout/preacheratom //Big hammer, big radiation energy
	name = "Preacher of Atom"
	r_hand = /obj/item/twohanded/sledgehammer/atomsjudgement
	uniform = /obj/item/clothing/under/f13/atomfaithful
	backpack_contents = list(/obj/item/storage/pill_bottle/chem_tin/radx = 3) //You are going to need these buddy

/*
/datum/outfit/loadout/reaver
	name = "Reaver Follower"
	backpack_contents = list(
	)
*/

/datum/job/eastwood/f13preacher/after_spawn(mob/living/H, mob/M)
	. = ..()
	if(H.mind)
		H.mind.isholy = TRUE

	var/obj/item/storage/book/bible/booze/B = new

	if(GLOB.religion)
		B.deity_name = GLOB.deity
		B.name = GLOB.bible_name
		B.icon_state = GLOB.bible_icon_state
		B.item_state = GLOB.bible_item_state
		to_chat(H, "There is already an established religion onboard the station. You are an acolyte of [GLOB.deity]. Defer to the Chaplain.")
		H.equip_to_slot_or_del(B, SLOT_IN_BACKPACK)
		var/nrt = GLOB.holy_weapon_type || /obj/item/nullrod
		var/obj/item/nullrod/N = new nrt(H)
		H.put_in_hands(N)
		return

	var/new_religion = DEFAULT_RELIGION
	if(M.client && M.client.prefs.custom_names["religion"])
		new_religion = M.client.prefs.custom_names["religion"]

	var/new_deity = DEFAULT_DEITY
	if(M.client && M.client.prefs.custom_names["deity"])
		new_deity = M.client.prefs.custom_names["deity"]

	B.deity_name = new_deity


	switch(lowertext(new_religion))
		if("christianity") // DEFAULT_RELIGION
			B.name = pick("The Holy Bible","The Dead Sea Scrolls")
		if("buddhism")
			B.name = "The Sutras"
		if("clownism","honkmother","honk","honkism","comedy")
			B.name = pick("The Holy Joke Book", "Just a Prank", "Hymns to the Honkmother")
		if("chaos")
			B.name = "The Book of Lorgar"
		if("cthulhu")
			B.name = "The Necronomicon"
		if("hinduism")
			B.name = "The Vedas"
		if("homosexuality")
			B.name = pick("Guys Gone Wild","Coming Out of The Closet")
		if("imperium")
			B.name = "Uplifting Primer"
		if("islam")
			B.name = "Quran"
		if("judaism")
			B.name = "The Torah"
		if("lampism")
			B.name = "Fluorescent Incandescence"
		if("lol", "wtf", "gay", "penis", "ass", "poo", "badmin", "shitmin", "deadmin", "cock", "cocks", "meme", "memes")
			B.name = pick("Woodys Got Wood: The Aftermath", "War of the Cocks", "Sweet Bro and Hella Jef: Expanded Edition", "F.A.T.A.L. Rulebook")
			H.adjustOrganLoss(ORGAN_SLOT_BRAIN, 150) // starts off dumb as fuck
		if("monkeyism","apism","gorillism","primatism")
			B.name = pick("Going Bananas", "Bananas Out For Harambe")
		if("mormonism")
			B.name = "The Book of Mormon"
		if("pastafarianism")
			B.name = "The Gospel of the Flying Spaghetti Monster"
		if("rastafarianism","rasta")
			B.name = "The Holy Piby"
		if("satanism")
			B.name = "The Unholy Bible"
		if("science")
			B.name = pick("Principle of Relativity", "Quantum Enigma: Physics Encounters Consciousness", "Programming the Universe", "Quantum Physics and Theology", "String Theory for Dummies", "How To: Build Your Own Warp Drive", "The Mysteries of Bluespace", "Playing God: Collector's Edition")
		if("scientology")
			B.name = pick("The Biography of L. Ron Hubbard","Dianetics")
		if("servicianism", "partying")
			B.name = "The Tenets of Servicia"
			B.deity_name = pick("Servicia", "Space Bacchus", "Space Dionysus")
			B.desc = "Happy, Full, Clean. Live it and give it."
		if("subgenius")
			B.name = "Book of the SubGenius"
		if("toolboxia","greytide")
			B.name = pick("Toolbox Manifesto","iGlove Assistants")
		if("weeaboo","kawaii")
			B.name = pick("Fanfiction Compendium","Japanese for Dummies","The Manganomicon","Establishing Your O.T.P")
		if("amongus")
			B.name = pick("The Melody of Venting", "Tragedy of Electrical", "Emergency Vote")
			H.adjustOrganLoss(ORGAN_SLOT_BRAIN, 150) // starts off dumb as fuck
		else
			B.name = "The Holy Book of [new_religion]"

	GLOB.religion = new_religion
	GLOB.bible_name = B.name
	GLOB.deity = B.deity_name

	H.equip_to_slot_or_del(B, SLOT_IN_BACKPACK)

	SSblackbox.record_feedback("text", "religion_name", 1, "[new_religion]", 1)
	SSblackbox.record_feedback("text", "religion_deity", 1, "[new_deity]", 1)

/*--------------------------------------------------------------*/
//Citizen
/*--------------------------------------------------------------*/

/datum/job/eastwood/f13settler
	title = "Citizen"
	flag = F13SETTLER
	display_order = JOB_DISPLAY_ORDER_SETTLER
	total_positions = 8
	spawn_positions = 8
	supervisors = "Eastwood's laws"
	description = "You are a citizen living in Eastwood. Treat your town and vault with respect and make sure to follow the laws in place, as your premium status may be revoked if you are considered a danger to the populace. One of the local businesses may have work if you require funds."
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/eastwood/f13settler

	loadout_options = list(
		/datum/outfit/loadout/outdoorsman,
		/datum/outfit/loadout/vaultie,
		/datum/outfit/loadout/farmer
	)
	access = list(ACCESS_TOWN, ACCESS_TOWN_CIV, ACCESS_PUBLIC)
	minimal_access = list(ACCESS_TOWN, ACCESS_TOWN_CIV, ACCESS_PUBLIC)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/eastwood
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/eastwood
		)
	)


/datum/outfit/job/eastwood/f13settler
	name = "Citizen"
	jobtype = /datum/job/eastwood/f13settler
	id = /obj/item/card/id/dogtag/town
	uniform = /obj/item/clothing/under/f13/eastwood/townie
	shoes = /obj/item/clothing/shoes/f13/military/leather
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx = 1,
		/obj/item/storage/bag/money/small/settler = 1
		)

/datum/outfit/job/eastwood/f13settler/pre_equip(mob/living/carbon/human/H)
	. = ..()

/datum/outfit/loadout/outdoorsman
	name = "Outdoorsman"
	head = /obj/item/clothing/head/helmet/f13/marlowhat
	suit = /obj/item/clothing/suit/armor/light/leather/tanvest
	belt = /obj/item/melee/onehanded/knife/bowie
	gloves = /obj/item/clothing/gloves/botanic_leather
	shoes = /obj/item/clothing/shoes/f13/peltboots
	backpack_contents = list(/obj/item/gun/ballistic/revolver/winchesterrebored = 1,
	/obj/item/ammo_box/stripper/a762/doublestacked = 2,
	/obj/item/fishingrod = 1,
	/obj/item/binoculars = 1,
	/obj/item/crafting/campfirekit = 1,
	/obj/item/storage/fancy/rollingpapers/makeshift = 1
	)

/datum/outfit/loadout/vaultie //Think of this as old citizens
	name = "Vaultie"
	uniform = /obj/item/clothing/under/f13/eastwood/vault
	belt = /obj/item/storage/belt
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/f13/leather
	backpack_contents = list(
	/obj/item/gun/ballistic/automatic/pistol/n99 = 1,
	/obj/item/ammo_box/magazine/pistol10mm = 2,
	/obj/item/melee/onehanded/knife/survival = 1,
	/obj/item/flashlight/flare = 1,
	/obj/item/pda = 1,
	/obj/item/reagent_containers/food/drinks/flask = 1,
	)

/datum/outfit/loadout/farmer
	name = "Farmer"
	backpack_contents = list(
	/obj/item/clothing/head/helmet/f13/brahmincowboyhat = 1,
	/obj/item/clothing/under/f13/eastwood/townie/farmer = 1,
	/obj/item/clothing/suit/armor/light/duster/brahmin = 1,
	/obj/item/clothing/gloves/botanic_leather = 1,
	/obj/item/twohanded/fireaxe= 1,
	/obj/item/storage/belt/utility/gardener = 1,
	/obj/item/shovel/spade = 1,
	/obj/item/cultivator = 1,
	/obj/item/reagent_containers/glass/bucket/plastic = 1,
	/obj/item/storage/bag/plants/portaseeder= 1,
	/obj/item/seeds/bamboo = 1,
	/obj/item/seeds/cannabis = 1
	)

/////////////////////
// Oasis Mob Roles //
/////////////////////

/*Internal-antags for Town. The purpose of these roles is to provide some internal issues for the town, add roleplay, and overall act as the Den used to without many of the same issues.
Hopefully.

Roles should be limited and low since they should attempt to work within town rather than take it over. Loadouts should be weak for the same reason.*/

// Enforcer = Base role. Intended to be 2-3 slots only.
/*--------------------------------------------------------------*/
//Desperado Enforcer
/*--------------------------------------------------------------*/

/datum/job/wasteland/f13enforcer
	title = "Desperado Enforcer"
	flag = F13ENFORCER
	display_order = JOB_DISPLAY_ORDER_MOB_ENFORCER
	faction = FACTION_WASTELAND
	social_faction = FACTION_RAIDERS
	total_positions = 3
	spawn_positions = 3
	description = "You're a member of the local desperado gang, a group of chem-dealers, loan-sharkers and hitman from across the civilized wastes."
	supervisors = "The Boss."
	selection_color = "#df80af"
	exp_requirements = 300
	exp_type = EXP_TYPE_WASTELAND

	outfit = /datum/outfit/job/wasteland/f13enforcer

	access = list(ACCESS_DEN, ACCESS_PUBLIC)
	minimal_access = list(ACCESS_DEN, ACCESS_PUBLIC)

	loadout_options = list(
		/datum/outfit/loadout/hitman,
		/datum/outfit/loadout/bodyguard
		)

/datum/outfit/job/wasteland/f13enforcer
	name = "Desperado Enforcer"
	jobtype = /datum/job/wasteland/f13enforcer

	id = /obj/item/card/id/denid
	belt = /obj/item/storage/belt/military/army
	shoes = /obj/item/clothing/shoes/laceup
	ears = /obj/item/radio/headset/headset_den
	l_pocket = /obj/item/melee/onehanded/knife/switchblade
	r_pocket = /obj/item/flashlight/seclite
	uniform = /obj/item/clothing/under/f13/densuit
	backpack =	/obj/item/storage/backpack/satchel
	satchel =  /obj/item/storage/backpack/satchel
	gloves =  /obj/item/clothing/gloves/color/white
	head = /obj/item/clothing/head/beret/durathread
	mask =  /obj/item/clothing/mask/bandana/durathread
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/restraints/handcuffs=1, \
		/obj/item/gun/ballistic/revolver/police = 1,
		/obj/item/ammo_box/loader/a357 = 1,
		/obj/item/storage/bag/money/small/wastelander = 1)

/datum/outfit/job/wasteland/f13enforcer/pre_equip(mob/living/carbon/human/H)
	..()
	r_hand = /obj/item/book/granter/trait/selection

/datum/outfit/job/wasteland/f13enforcer/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

	if(!H.gang)
		var/datum/gang/denmob/DM = GLOB.denmob
		GLOB.all_gangs |= DM
		DM.add_member(H)
		H.gang = DM

	H.mind.teach_crafting_recipe(/datum/crafting_recipe/set_vrboard/den)

/datum/outfit/loadout/hitman
	name = "Hitman"
	r_hand = /obj/item/gun/ballistic/automatic/smg/american180
	suit = /obj/item/clothing/suit/armor/medium/vest
	backpack_contents = list(
						/obj/item/ammo_box/magazine/m22smg=2,
						)

/datum/outfit/loadout/bodyguard
	name = "Bodyguard"
	r_hand = /obj/item/gun/ballistic/shotgun/police
	suit = /obj/item/clothing/suit/armor/medium/vest
	backpack_contents = list(
		/obj/item/ammo_box/shotgun/buck = 2,
		/obj/item/melee/onehanded/knife/hunting = 1,
		)

/*--------------------------------------------------------------*/
//Desperado Leader
/*--------------------------------------------------------------*/

/datum/job/wasteland/f13mobboss
	title = "Desperado Leader"
	flag = F13MOBBOSS
	display_order = JOB_DISPLAY_ORDER_MOB_BOSS
	faction = FACTION_WASTELAND
	social_faction = FACTION_RAIDERS
	total_positions = 1
	spawn_positions = 1
	description = "You are the leader of the local desperado gang, a gang of bandits, cattle-rustlers, hitmen, loan-sharkers and various other criminal activities. Luckily for you, you own the casino in town with your fellow 'buisness partners'. Make use of it, keep your men in line, and turn a profit. Be it working with the locals or against them."
	supervisors = "Whatever god you pray to. The sky's the limit!"
	selection_color = "#df80af"
	exp_requirements = 500
	exp_type = EXP_TYPE_OUTLAW

	outfit = /datum/outfit/job/wasteland/f13mobboss

	access = list(ACCESS_DEN, ACCESS_PUBLIC)
	minimal_access = list(ACCESS_DEN, ACCESS_PUBLIC)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/rival = list(
			/datum/job/eastwood/f13mayor,
			/datum/job/eastwood/f13sheriff,
			/datum/job/eastwood/f13detective,
		),
		/datum/matchmaking_pref/patron = list(
			/datum/job/wasteland/f13wastelander,
		),
	)

/datum/outfit/job/wasteland/f13mobboss
	name = "Den Mob Boss"
	jobtype = /datum/job/wasteland/f13mobboss

	id = /obj/item/card/id/denid
	belt = /obj/item/storage/belt/military/army
	ears = /obj/item/radio/headset/headset_den
	shoes = /obj/item/clothing/shoes/laceup
	l_pocket = /obj/item/melee/onehanded/knife/switchblade
	r_pocket = /obj/item/flashlight/seclite
	uniform = /obj/item/clothing/under/f13/densuit
	suit = /obj/item/clothing/suit/armor/medium/combat/mk2/raider
	backpack =	/obj/item/storage/backpack/satchel
	satchel = 	/obj/item/storage/backpack/satchel
	gloves = /obj/item/clothing/gloves/color/white
	head = /obj/item/clothing/head/caphat/beret/white
	mask = /obj/item/clothing/mask/bandana/durathread
	suit_store = /obj/item/gun/ballistic/automatic/smg/greasegun
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/restraints/handcuffs=1, \
		/obj/item/ammo_box/magazine/greasegun=2, \
		/obj/item/gun/ballistic/revolver/police = 1,
		/obj/item/ammo_box/loader/a357 = 1,
		/obj/item/storage/bag/money/small/raider/mobboss = 1, \
		/obj/item/book/granter/crafting_recipe/manual/denvr = 1)

/datum/outfit/job/wasteland/f13mobboss/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)


/datum/outfit/job/wasteland/f13mobboss/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

	if(!H.gang)
		var/datum/gang/denmob/DM = GLOB.denmob
		GLOB.all_gangs |= DM
		DM.add_member(H)
		H.gang = DM
