/*
Town access doors
Sheriff/Deputy, Gatehouse etc: 62 ACCESS_GATEWAY
General access: 25 ACCESS_BAR
Clinic surgery/storage: 68 ACCESS_CLONING
Shopkeeper: 34 ACCESS_CARGO_BOT
Barkeep : 28 ACCESS_KITCHEN - you jebronis made default bar for no reason bruh
Prospector : 48 ACCESS_MINING
Detective : 4 ACCESS_FORENSICS_LOCKERS
here's a tip, go search DEFINES/access.dm
*/

// Headsets for everyone!!
/datum/outfit/job/den
	name = "Eastwood Default Template"
	ears = /obj/item/radio/headset/headset_town
	belt = null
	id = /obj/item/card/id/dogtag/town
	uniform = /obj/item/clothing/under/f13/vault
	shoes = /obj/item/clothing/shoes/f13/cowboy
	backpack = /obj/item/storage/backpack/satchel/explorer
	r_pocket = /obj/item/flashlight/seclite
	r_hand = /obj/item/book/granter/trait/selection
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx,
		/obj/item/storage/bag/money/small/settler = 1,
		/obj/item/melee/onehanded/knife/hunting = 1
		)

/*
Mayor
*/

/datum/job/oasis
	exp_type = EXP_TYPE_OASIS
	faction = FACTION_OASIS

/datum/job/oasis/f13mayor
	title = "Alderman"
	flag = F13MAYOR
	department_flag = DEP_OASIS
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Overseer"
	description = "A subordinate of the Overseer, you are the primary face of the town. Handling the day to day dealings of the denizens of our fair city falls to you. Those wasters outside the walls are an unknown factor, so it falls to you to maintain relations with the Wastelands many players. Be wary of the Machine down below, as with the trades and treaties in place. Balance the budget, but don't step on the Merchant's toes. Organise defences, but do not encroach on the Marshal's office. Most of all: don't lose your head."
	selection_color = "#d7b088"

	exp_requirements = 750

	outfit = /datum/outfit/job/den/f13mayor
	access = list(ACCESS_BAR, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_CLINIC, ACCESS_KITCHEN, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS)
	minimal_access = list(ACCESS_BAR, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_KITCHEN, ACCESS_CLINIC, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis
		)
	)


/datum/outfit/job/den/f13mayor/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/tribalradio)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/durathread_vest)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)

/datum/outfit/job/den/f13mayor
	name = "Alderman"
	jobtype = /datum/job/oasis/f13mayor
	id = /obj/item/card/id/silver/mayor
	glasses = /obj/item/clothing/glasses/sunglasses
	ears = /obj/item/radio/headset/headset_town/mayor
	head =/obj/item/clothing/head/helmet/f13/brahmincowboyhat
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	l_pocket = /obj/item/storage/bag/money/small/oasis
	r_pocket = /obj/item/flashlight/seclite
	suit = /obj/item/clothing/suit/armor/light/duster/battlecoat
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx =1,
		/obj/item/storage/box/citizenship_permits = 1,
		/obj/item/pen/fountain/captain = 1,
		/obj/item/clothing/mask/cigarette/cigar = 1,
		/obj/item/toy/cards/deck/unum = 1,
		/obj/item/gun/ballistic/revolver/colt6520 = 1,
		)

/*--------------------------------------------------------------*/
/*
/datum/job/oasis/f13secretary
	title = "Secretary"
	flag = F13SECRETARY
	department_flag = DEP_OASIS
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Mayor"
	description = "The settlement of Nash is a busy place, and the Mayor often can't handle everything by themselves. You are here to help them with anything and everything they require, and make sure the more trivial problems do not concern them. You handle clerical work, hear complaints, and set meetings within the manor. An efficient and smooth running town means a happy Mayor - just remember that if things go wrong, you're a convenient scapegoat."
	enforces = "You are the stand-in leader of Nash if a Mayor does not exist."
	selection_color = "#d7b088"
	exp_requirements = 400

	outfit = /datum/outfit/job/den/f13secretary

	loadout_options = list(
	/datum/outfit/loadout/pr,
	/datum/outfit/loadout/pw
	)

	access = list(ACCESS_BAR, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_CLINIC, ACCESS_KITCHEN, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS)
	minimal_access = list(ACCESS_BAR, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_KITCHEN, ACCESS_CLINIC, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis
		)
	)

/datum/outfit/job/den/f13secretary
	name = "Secretary"
	jobtype = /datum/job/oasis/f13secretary
	id = /obj/item/card/id/silver
	ears = /obj/item/radio/headset/headset_town/mayor
	glasses = /obj/item/clothing/glasses/regular/hipster
	gloves = /obj/item/clothing/gloves/color/white
	backpack = /obj/item/storage/backpack/satchel/leather
	satchel = /obj/item/storage/backpack/satchel/leather
	r_hand = /obj/item/storage/briefcase/secretary
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/seclite
	shoes = /obj/item/clothing/shoes/f13/fancy
	uniform = /obj/item/clothing/under/suit/black
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx,
		/obj/item/ammo_box/magazine/m9mm = 1,
		/obj/item/melee/onehanded/knife/switchblade = 1,
		/obj/item/pda = 1
		)

/datum/outfit/loadout/pr
	name = "Public Relations"
	backpack_contents = list(
		/obj/item/megaphone = 1,
		/obj/item/reagent_containers/food/snacks/store/cake/birthday = 1,
		/obj/item/clothing/accessory/medal/ribbon = 1,
		/obj/item/clothing/gloves/color/latex/nitrile = 1,
		/obj/item/camera = 1,
		/obj/item/storage/crayons = 1,
		/obj/item/choice_beacon/box/carpet = 1
		)

/datum/outfit/loadout/pw
	name = "Public Works"
	backpack_contents = list(
		/obj/item/clothing/head/hardhat = 1,
		/obj/item/clothing/suit/hazardvest = 1,
		/obj/item/stack/sheet/metal/twenty = 2,
		/obj/item/stack/sheet/glass/ten = 2,
		/obj/item/stack/sheet/mineral/concrete/ten = 2
		)

/datum/outfit/job/den/f13secretary/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/tribalradio)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/durathread_vest)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/policepistol)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/policerifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/steelbib/heavy)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/armyhelmetheavy)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_SELF_AWARE, src)
*/

/*--------------------------------------------------------------*/

/datum/job/oasis/f13sheriff
	title = "Marshal"
	flag = F13SHERIFF
	department_flag = DEP_OASIS
	head_announce = list("Security")
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Alderman and Overseer"
	description = "As the head of the security forces, you are the face of justice in the town. Uphold the law, or bend it to suit your needs, you set the precedent for how justice is doled out in the town, so bear that in mind when you sentence that pickpocket to death. Maintain the armoury and keep that watchful eye on the elevator to the Vault below. Whatever you do, don't lose your head."
	exp_requirements = 750

	outfit = /datum/outfit/job/den/f13sheriff

	loadout_options = list(
	/datum/outfit/loadout/thelaw,
	/datum/outfit/loadout/thechief
	)

	access = list(ACCESS_BAR, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_KITCHEN, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS)
	minimal_access = list(ACCESS_BAR, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_CLINIC, ACCESS_KITCHEN, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis
		)
	)

/datum/outfit/job/den/f13sheriff
	name = "Marshal"
	jobtype = /datum/job/oasis/f13sheriff
	id = /obj/item/card/id/dogtag/sheriff
	belt = null
	ears = /obj/item/radio/headset/headset_town/lawman
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	belt = /obj/item/storage/belt/army
	glasses = /obj/item/clothing/glasses/sunglasses
	l_pocket = /obj/item/storage/bag/money/small/den
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx,
		/obj/item/storage/box/deputy_badges = 1,
		/obj/item/restraints/handcuffs = 1,
		/obj/item/melee/classic_baton = 1,
		/obj/item/melee/onehanded/knife/bowie = 1,
		/obj/item/grenade/flashbang = 1,
		/obj/item/gun/ballistic/revolver/colt6520/Bigiron=1,
		)

/datum/outfit/loadout/thelaw
	name = "The Law Man"
	suit = /obj/item/clothing/suit/armor/medium/duster/town/sheriff
	head = /obj/item/clothing/head/f13/town/big
	uniform = /obj/item/clothing/under/f13/police/formal
	neck = /obj/item/storage/belt/shoulderholster
	r_hand = /obj/item/gun/ballistic/rifle/repeater/brush
	backpack_contents = list(
		/obj/item/ammo_box/tube/c4570 = 3,
		/obj/item/gun_upgrade/scope/watchman = 1
		)

/datum/outfit/loadout/thechief
	name = "The Chief"
	uniform = /obj/item/clothing/under/f13/police/chief
	suit = /obj/item/clothing/suit/armor/medium/duster/town/chief
	head = /obj/item/clothing/head/f13/town/chief
	neck = /obj/item/storage/belt/shoulderholster
	r_hand = /obj/item/gun/ballistic/shotgun/automatic/combat/citykiller
	backpack_contents = list(/obj/item/ammo_box/shotgun/slug = 1,
		/obj/item/ammo_box/shotgun/buck = 2
		)

/datum/outfit/job/den/f13sheriff/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/policepistol)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/policerifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/steelbib/heavy)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/armyhelmetheavy)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	ADD_TRAIT(H, TRAIT_SELF_AWARE, src)

/*--------------------------------------------------------------*/

/datum/job/oasis/f13detective
	title = "Detective"
	flag = F13DETECTIVE
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Marshal"
	description  = "Investigating crimes and disappearences in the town, you are the marshal's infromation gathering expert."
	selection_color = "#dcba97"
	outfit = /datum/outfit/job/oasis/f13detective

	access = list(ACCESS_BAR, ACCESS_FORENSICS_LOCKERS)
	minimal_access = list(ACCESS_BAR, ACCESS_FORENSICS_LOCKERS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/oasis/f13detective
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/oasis/f13detective
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/wasteland/f13wastelander
		)
	)


/datum/outfit/job/oasis/f13detective
	name = "Detective"
	jobtype = /datum/job/oasis/f13detective
	suit = /obj/item/clothing/suit/armor/medium/duster/town
	head = /obj/item/clothing/head/helmet/f13/bowler
	ears = /obj/item/radio/headset/headset_town/lawman
	id = /obj/item/card/id/silver
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/flare
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	suit_store = /obj/item/gun/ballistic/revolver/colt6520
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx,
		/obj/item/pda/detective=1,
		/obj/item/camera/detective=1,
		/obj/item/toy/crayon/white=1,
		/obj/item/detective_scanner=1,
		/obj/item/storage/box/gloves=1,
		/obj/item/storage/box/evidence=1)

/*--------------------------------------------------------------*/

/datum/job/oasis/f13deputy
	title = "Deputy"
	flag = F13DEPUTY
	department_flag = DEP_OASIS
	total_positions = 5
	spawn_positions = 4
	supervisors = "The Marshal"
	description = "Day or night, you watch the walls with diligence. The wastes outside are lawless."
	selection_color = "#dcba97"
	exp_type = EXP_TYPE_OASIS
	exp_requirements = 300

	loadout_options = list(
	/datum/outfit/loadout/frontierjustice,
	/datum/outfit/loadout/police,
	/datum/outfit/loadout/swat,)

	outfit = /datum/outfit/job/den/f13deputy
	access = list(ACCESS_BAR, ACCESS_GATEWAY)
	minimal_access = list(ACCESS_BAR, ACCESS_GATEWAY)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis
		)
	)

/datum/outfit/job/den/f13deputy
	name = "Deputy"
	jobtype = /datum/job/oasis/f13deputy
	id = /obj/item/card/id/dogtag/deputy
	ears = /obj/item/radio/headset/headset_town/lawman
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	belt = /obj/item/storage/belt/army/assault
	suit_store = /obj/item/storage/belt/legholster/police
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/flare
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx,
		/obj/item/restraints/handcuffs = 1,
		/obj/item/melee/onehanded/knife/bowie = 1,
		/obj/item/grenade/flashbang = 1,
		/obj/item/gun/ballistic/revolver/colt6520 = 1,
		)

/datum/outfit/loadout/frontierjustice
	name = "Rugged Frontiersman"
	suit = /obj/item/clothing/suit/armor/medium/duster/town/deputy
	head = /obj/item/clothing/head/f13/town/deputy
	neck = /obj/item/storage/belt/shoulderholster
	r_hand = /obj/item/gun/ballistic/rifle/repeater/trail
	backpack_contents = list(
		/obj/item/ammo_box/tube/m44 = 2,
		/obj/item/ammo_box/m44 = 2,
		)

/datum/outfit/loadout/police
	name = "Vault Security Heavy"
	suit = /obj/item/clothing/suit/armor/medium/combat/mk2/Vault
	head = /obj/item/clothing/head/helmet/f13/combat/mk2/vault
	belt = /obj/item/storage/belt/legholster
	r_hand = /obj/item/gun/ballistic/shotgun/police
	shoes = /obj/item/clothing/shoes/jackboots
	backpack_contents = list(
		/obj/item/ammo_box/shotgun/bean = 1,
		/obj/item/ammo_box/shotgun/buck = 1,
		/obj/item/flashlight/seclite = 1,
		)

/datum/outfit/loadout/swat
	name = "Vault Security Classic"
	suit = /obj/item/clothing/suit/armor/medium/combat/mk2/Vault
	head = /obj/item/clothing/head/helmet/f13/combat/mk2/vault
	mask = /obj/item/clothing/mask/balaclava
	gloves = /obj/item/clothing/gloves/f13/military
	shoes = /obj/item/clothing/shoes/jackboots
	r_hand = /obj/item/gun/ballistic/automatic/assault_carbine/policerifle
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m5mm=1,
		/obj/item/flashlight/seclite = 1
		)

/datum/outfit/job/den/f13deputy/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)

/*--------------------------------------------------------------*/
/*
/datum/job/oasis/f13farmer
	title = "Farmer"
	flag = F13FARMER
	department_flag = DEP_OASIS
	total_positions = 4
	spawn_positions = 4
	supervisors = "Nash laws"
	description = "You are a farmer living in Nash. Treat your town with respect and make sure to follow the laws in place, as your premium status may be revoked if you are considered a danger to the populace."
	enforces = "Farming is a public service, and you are under control of local governance - and you are expected to produce food."
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/den/f13farmer

	access = list(ACCESS_BAR, ACCESS_KITCHEN)
	minimal_access = list(ACCESS_BAR, ACCESS_KITCHEN)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis,
		),
	)

	loadout_options = list(
	/datum/outfit/loadout/abiotic,
	/datum/outfit/loadout/pomologist,
	/datum/outfit/loadout/zany,)

/datum/outfit/job/den/f13farmer
	name = "Farmer"
	jobtype = /datum/job/oasis/f13farmer

	id = /obj/item/card/id/dogtag/town

	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/flare
	belt = /obj/item/storage/bag/plants
	backpack_contents = list(
		/obj/item/cultivator=1, \
		/obj/item/hatchet=1,
		/obj/item/shovel/spade=1, \
		/obj/item/gun/ballistic/automatic/pistol/n99, \
		/obj/item/ammo_box/magazine/m10mm/adv/simple=2)
	shoes = 		/obj/item/clothing/shoes/workboots

/datum/outfit/job/den/f13settler/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(
		/obj/item/clothing/under/f13/settler, \
		/obj/item/clothing/under/f13/brahminm, \
		/obj/item/clothing/under/f13/machinist, \
		/obj/item/clothing/under/f13/lumberjack, \
		/obj/item/clothing/under/f13/roving)

/datum/outfit/loadout/abiotic
	name = "Abiotic"
	backpack_contents = list(
		/obj/item/seeds/bamboo = 1,
		/obj/item/seeds/glowshroom = 1,
		/obj/item/seeds/tower = 1,
		)

/datum/outfit/loadout/pomologist
	name = "Pomologist"
	backpack_contents = list(
		/obj/item/seeds/grape/green = 1,
		/obj/item/seeds/apple/gold = 1,
		/obj/item/seeds/cherry/blue = 1,
		)

/datum/outfit/loadout/zany
	name = "Zany"
	backpack_contents = list(
		/obj/item/clothing/mask/cigarette/pipe = 1,
		/obj/item/seeds/cannabis = 1,
		/obj/item/seeds/tea/catnip = 1,
		)
*/
/*--------------------------------------------------------------*/

/datum/job/oasis/f13prospector
	title = "Roadie"
	flag = F13PROSPECTOR
	department_flag = DEP_OASIS
	total_positions = 2
	spawn_positions = 4
	supervisors = "The Alderman and Merchant"
	description = "Operate the shop when the Merchant's asleep or just isn't there, push and pull those crates to and fro like your life depends on it (and when your paycheck is based on performance, well, it certainly does). If there are no crates to pick up, head out into the wastes and start scavenging for anything you could sell at an extortionate price."
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/den/f13prospector

	access = list(ACCESS_BAR, ACCESS_CARGO_BOT)
	minimal_access = list(ACCESS_BAR, ACCESS_CARGO_BOT)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis,
		),
	)

	loadout_options = list(
	/datum/outfit/loadout/engineer,
	/datum/outfit/loadout/miner,)

/datum/outfit/job/den/f13prospector
	name = "Prospector"
	jobtype = /datum/job/oasis/f13prospector

	id = /obj/item/card/id/dogtag/town
	ears = /obj/item/radio/headset/headset_town/commerce
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/lantern
	belt = /obj/item/storage/bag/ore
	shoes = /obj/item/clothing/shoes/jackboots
	backpack_contents = list(
		/obj/item/mining_scanner = 1,
		/obj/item/melee/onehanded/knife/hunting = 1,
		/obj/item/gun/ballistic/revolver/colt6520 = 1,
		)

/datum/outfit/job/den/f13settler/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(
		/obj/item/clothing/under/f13/machinist, \
		/obj/item/clothing/under/f13/roving, \
		/obj/item/clothing/under/f13/cowboyt)

/datum/outfit/job/den/f13prospector/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
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
	uniform = /obj/item/clothing/under/misc/overalls
	belt = /obj/item/storage/belt/utility/full
	shoes = /obj/item/clothing/shoes/workboots
	backpack_contents = list(
		/obj/item/pickaxe/mini = 1,
		/obj/item/shovel/spade = 1,
		)

/datum/outfit/loadout/miner
	name = "Miner"
	suit = /obj/item/clothing/suit/armor/light/leather/rig
	uniform = /obj/item/clothing/under/f13/lumberjack
	head = /obj/item/clothing/head/hardhat
	belt = /obj/item/storage/belt/utility/mining/alt
	shoes = /obj/item/clothing/shoes/f13/miner
	backpack_contents = list(
		/obj/item/t_scanner/adv_mining_scanner = 1,
		/obj/item/pickaxe/silver = 1,
		/obj/item/shovel = 1,
		)


/*--------------------------------------------------------------*/

/datum/job/oasis/f13dendoc
	title = "Researcher"
	flag = F13DENDOC
	department_flag = DEP_OASIS
	total_positions = 2
	spawn_positions = 2
	supervisors = "The Alderman"
	description = "Doctor, Scientist, Roboticist, each of you under the Vault's employ stands under the title of Researcher. The Vault's servers are regularly wiped by some glitch in the system, and it's down to the Scientists to restore these data files.The Medical Professionals, even those who handle quarantined patients, are the clinical cornerstone of the town, so long as the price is right.Just remember that you're no Follower - medicine doesn't come for free, and you aren't here out of the kindness of your heart. Make sure to turn a profit on your services, or the Alderman might reconsider your position!"
	selection_color = "#dcba97"

	loadout_options = list(
	/datum/outfit/loadout/rescueranger,
	/datum/outfit/loadout/stitcher,
	/datum/outfit/loadout/mixer,
	/datum/outfit/loadout/holidaydoc)

	outfit = /datum/outfit/job/den/f13dendoc
	access = list(ACCESS_BAR, ACCESS_CLINIC, ACCESS_CLONING)
	minimal_access = list(ACCESS_BAR, ACCESS_CLINIC, ACCESS_CLONING)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis
		)
	)

/datum/outfit/job/den/f13dendoc
	name = "Researcher"
	jobtype = /datum/job/oasis/f13dendoc
	chemwhiz = TRUE
	ears = /obj/item/radio/headset/headset_town/commerce
	uniform = /obj/item/clothing/under/f13/medic
	glasses = /obj/item/clothing/glasses/hud/health
	neck = /obj/item/clothing/neck/stethoscope
	suit = /obj/item/clothing/suit/toggle/labcoat
	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel/med
	shoes = /obj/item/clothing/shoes/sneakers/white
	id = /obj/item/card/id/dendoctor
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/flare
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2,
		/obj/item/storage/firstaid/regular = 1,
		/obj/item/clothing/accessory/armband/medblue = 1,
		/obj/item/gun/ballistic/revolver/colt6520 = 1,
		)
/datum/outfit/job/den/f13dendoc/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(GLOB.chemwhiz_recipes)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_SURGERY_HIGH, src)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)

/datum/outfit/loadout/rescueranger
	name = "Search and Rescue"
	backpack_contents = list(/obj/item/clothing/head/f13/police/sergeant = 1,
		/obj/item/gun/ballistic/shotgun/automatic/combat/auto5 = 1,
		/obj/item/ammo_box/shotgun/buck = 1,
		/obj/item/clothing/suit/toggle/labcoat/paramedic = 1,
		/obj/item/folder/white = 1,
		/obj/item/flashlight/pen/paramedic = 1
		)

/datum/outfit/loadout/stitcher
	name = "Stitcher"
	backpack_contents = list(/obj/item/clothing/head/hardhat/white = 1,
		/obj/item/grenade/flashbang = 1,
		/obj/item/clothing/glasses/welding = 1,
		/obj/item/storage/belt/medical/primitive = 1,
		/obj/item/storage/medical/ancientfirstaid = 1,
		/obj/item/circuitboard/machine/limbgrower = 1,
		/obj/item/healthanalyzer/advanced = 1,
		/obj/item/storage/belt/legholster/police = 1
		)

/datum/outfit/loadout/mixer
	name = "Mixer"
	backpack_contents = list(/obj/item/clothing/head/beret/chem = 1,
		/obj/item/melee/classic_baton/police = 1,
		/obj/item/pen/sleepy = 1,
		/obj/item/reagent_containers/glass/beaker/plastic = 1,
		/obj/item/reagent_containers/glass/beaker/meta = 1,
		/obj/item/reagent_containers/hypospray = 1,
		/obj/item/circuitboard/machine/bloodbankgen = 1
		)

/datum/outfit/loadout/holidaydoc
	name = "Holiday Doc"
	backpack_contents = list(/obj/item/vending_refill/medical = 1,
		/obj/item/pda/medical = 1,
		/obj/item/clothing/suit/hooded/surgical = 1,
		/obj/item/storage/medical/ancientfirstaid = 1,
		/obj/item/ammo_box/m44 = 1,
		/obj/item/gun/ballistic/revolver/m29/snub = 1
		)
/*--------------------------------------------------------------*/

/datum/job/oasis/f13barkeep
	title = "Barkeeper"
	flag = F13BARKEEP
	department_flag = DEP_OASIS
	total_positions = 2
	spawn_positions = 2
	supervisors = "the free market and Alderman"
	description = "As proprietor of the inn, you are responsible for ensuring both citizens and travellers in Eastwood can get some food, drink and rest. Speak to the farmers for fresh produce!"
	enforces = "Your inn is a private business and you can decide who is welcome there. However, you are still subject to the overarching laws of Eastwood."
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/den/f13barkeep

	loadout_options = list(
	/datum/outfit/loadout/rugged,
	/datum/outfit/loadout/frontier,
	/datum/outfit/loadout/richmantender,
	/datum/outfit/loadout/diner)

	access = list(ACCESS_BAR, ACCESS_KITCHEN)
	minimal_access = list(ACCESS_BAR, ACCESS_KITCHEN)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis
		)
	)


/datum/outfit/job/den/f13barkeep
	name = "Barkeeper"
	jobtype = /datum/job/oasis/f13barkeep
	id = /obj/item/card/id/dogtag/town
	ears = /obj/item/radio/headset/headset_town/commerce
	belt = /obj/item/gun/ballistic/revolver/caravan_shotgun
	shoes = /obj/item/clothing/shoes/workboots/mining
	backpack = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx,
		/obj/item/storage/bag/money/small/settler = 1,
		/obj/item/ammo_box/shotgun/bean = 2,
		/obj/item/book/manual/nuka_recipes = 1,
		/obj/item/stack/f13Cash/caps/onezerozero = 1,
		/obj/item/reagent_containers/food/drinks/bottle/rotgut = 1,
		/obj/item/gun/ballistic/revolver/colt6520 = 1,
		)

/datum/outfit/loadout/rugged
	name = "Rugged"
	head = /obj/item/clothing/head/helmet/f13/brahmincowboyhat
	uniform = /obj/item/clothing/under/f13/cowboyb
	suit = /obj/item/clothing/suit/armor/outfit/vest/cowboy
	gloves = /obj/item/clothing/gloves/color/brown
	shoes = /obj/item/clothing/shoes/f13/brownie

/datum/outfit/loadout/frontier
	name = "Frontier"
	head = /obj/item/clothing/head/helmet/f13/bowler
	mask = /obj/item/clothing/mask/fakemoustache
	uniform = /obj/item/clothing/under/f13/westender
	suit = /obj/item/clothing/suit/armor/outfit/vest/bartender
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/f13/fancy

/datum/outfit/loadout/richmantender
	name = "Fancy"
	head = /obj/item/clothing/head/fedora
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/under/rank/bartender
	suit = /obj/item/clothing/suit/toggle/lawyer/black
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/f13/fancy
	neck = /obj/item/clothing/neck/tie/black

/datum/outfit/loadout/diner
	name = "Diner"
	glasses = /obj/item/clothing/glasses/orange
	uniform = /obj/item/clothing/under/f13/brahminf
	neck = /obj/item/clothing/neck/apron/chef
	gloves = /obj/item/clothing/gloves/color/white
	shoes = /obj/item/clothing/shoes/f13/military/ncr

/*--------------------------------------------------------------*/
/datum/job/oasis/f13settler
	title = "Citizen"
	flag = F13SETTLER
	department_flag = DEP_OASIS
	total_positions = 10
	spawn_positions = 8
	supervisors = "Eastwood's laws"
	description = "You are a citizen living in Eastwood. Treat your town and vault with respect and make sure to follow the laws in place, as your premium status may be revoked if you are considered a danger to the populace. One of the local businesses may have work if you require funds."
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/den/f13settler

	loadout_options = list(
		/datum/outfit/loadout/provisioner,
		/datum/outfit/loadout/groundskeeper,
		/datum/outfit/loadout/artisan,
		/datum/outfit/loadout/outdoorsman,
		/datum/outfit/loadout/singer,
		/datum/outfit/loadout/farmer,
	)
	access = list(ACCESS_BAR)
	minimal_access = list(ACCESS_BAR)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis
		)
	)


/datum/outfit/job/den/f13settler
	name = "Citizen"
	jobtype = /datum/job/oasis/f13settler
	belt = null
	id = /obj/item/card/id/dogtag/town
	uniform = /obj/item/clothing/under/f13/settler
	shoes = /obj/item/clothing/shoes/jackboots
	backpack = /obj/item/storage/backpack/satchel/explorer
	r_pocket = /obj/item/flashlight/flare
	r_hand = /obj/item/book/granter/trait/selection
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx,
		/obj/item/storage/bag/money/small/settler = 1,
		/obj/item/melee/onehanded/knife/hunting = 1,
		)

/datum/outfit/job/den/f13settler/pre_equip(mob/living/carbon/human/H)
	. = ..()
	head = pick(/obj/item/clothing/head/f13/ranger_hat/tan,
		/obj/item/clothing/head/soft/mime,
		/obj/item/clothing/head/soft/black,
		/obj/item/clothing/head/soft/grey,
		/obj/item/clothing/head/f13/gambler,
		/obj/item/clothing/head/f13/cowboy,
		/obj/item/clothing/head/f13/ranger_hat/banded,
		/obj/item/clothing/head/cowboyhat/white,
		/obj/item/clothing/head/beret/headband,
		/obj/item/clothing/head/cowboyhat/pink,
		/obj/item/clothing/head/f13/police/trooper,
		/obj/item/clothing/head/fedora/curator,
		/obj/item/clothing/head/fedora/det_hat,
		/obj/item/clothing/head/helmet/f13/bowler,)
	uniform = pick(
		/obj/item/clothing/under/f13/vault)

/datum/outfit/loadout/provisioner
	name = "Provisioner"
	neck = /obj/item/clothing/neck/scarf/cptpatriot
	suit = /obj/item/clothing/suit/jacket/miljacket
	neck = /obj/item/clothing/ears/headphones
	gloves = /obj/item/pda
	shoes = /obj/item/clothing/shoes/f13/explorer
	uniform = /obj/item/clothing/under/f13/merca
	gloves = /obj/item/clothing/gloves/f13/leather
	shoes = /obj/item/clothing/shoes/f13/explorer
	backpack_contents = list(/obj/item/reagent_containers/food/drinks/flask = 1,
	/obj/item/gun/ballistic/revolver/colt6520 = 1,
	/obj/item/storage/medical/ancientfirstaid = 1,
	/obj/item/reagent_containers/food/drinks/flask/survival = 1,
	/obj/item/book/granter/trait/trekking = 1,
	)

/datum/outfit/loadout/groundskeeper
	name = "Groundskeeper"
	head = /obj/item/clothing/head/soft/grey
	belt = /obj/item/storage/belt/utility/waster
	suit = /obj/item/clothing/under/f13/mechanic
	gloves = /obj/item/clothing/gloves/color/black
	shoes = /obj/item/clothing/shoes/sneakers/noslip
	neck = /obj/item/storage/belt/shoulderholster/ranger44
	backpack_contents = list(/obj/item/storage/bag/trash = 1,
	/obj/item/reagent_containers/spray/cleaner = 1,
	/obj/item/mop = 1,
	/obj/item/reagent_containers/glass/bucket/plastic = 1,
	/obj/item/broom = 1,
	/obj/item/stack/sheet/metal/fifty = 1,
	/obj/item/lightreplacer = 1,
	/obj/item/reagent_containers/spray/cleaner = 1
	)

/datum/outfit/loadout/artisan
	name = "Artisan"
	uniform = /obj/item/clothing/under/f13/cowboyg
	belt = /obj/item/storage/belt/utility/mining/alt
	gloves = /obj/item/clothing/gloves/f13/blacksmith
	shoes = /obj/item/clothing/shoes/f13/military/leather
	neck = /obj/item/storage/belt/shoulderholster/ranger357
	backpack_contents = list(/obj/item/twohanded/sledgehammer/simple = 1,
	/obj/item/book/granter/crafting_recipe/ODF = 1,
	/obj/item/clothing/glasses/welding = 1,
	/obj/item/storage/belt/utility/mining/alt = 1,
	/obj/item/melee/smith/hammer/premade = 1,
	/obj/item/stack/sheet/mineral/titanium = 15,
	/obj/item/pickaxe/mini = 1,
	/obj/item/mining_scanner = 1
	)

/datum/outfit/loadout/outdoorsman
	name = "Outdoorsman"
	head = /obj/item/clothing/head/helmet/f13/marlowhat
	suit = /obj/item/clothing/suit/armor/light/leather/tanvest
	belt = /obj/item/melee/onehanded/knife/bowie
	uniform = /obj/item/clothing/under/f13/cowboyt
	gloves = /obj/item/clothing/gloves/botanic_leather
	shoes = /obj/item/clothing/shoes/f13/peltboots
	backpack_contents = list(/obj/item/gun/ballistic/revolver/winchesterrebored = 1,
	/obj/item/ammo_box/a762/doublestacked = 2,
	/obj/item/fishingrod = 1,
	/obj/item/binoculars = 1,
	/obj/item/crafting/campfirekit = 1,
	/obj/item/storage/fancy/rollingpapers/makeshift = 1
	)

/datum/outfit/loadout/singer
	name = "Singer"
	shoes = /obj/item/clothing/shoes/laceup
	backpack_contents = list(/obj/item/clothing/under/f13/classdress = 1,
	/obj/item/clothing/under/suit/black_really = 1,
	/obj/item/clothing/gloves/evening = 1,
	/obj/item/clothing/gloves/color/white = 1,
	/obj/item/melee/classic_baton/militarypolice = 1,
	/obj/item/grenade/smokebomb = 2,
	/obj/item/clothing/accessory/pocketprotector/full = 1,
	/obj/item/choice_beacon/music = 1,
	/obj/item/gun/energy/laser/complianceregulator = 1,
	/obj/item/stock_parts/cell/ammo/ec = 1
	)

// if we ever add back the loadout display you'll have to put the items in places you want it to appear on the display model

/datum/outfit/loadout/farmer
	name = "Farmer"
	backpack_contents = list(/obj/item/clothing/head/helmet/f13/brahmincowboyhat = 1,
	/obj/item/clothing/under/f13/rustic = 1,
	/obj/item/clothing/suit/armor/light/duster/brahmin = 1,
	/obj/item/clothing/gloves/botanic_leather = 1,
	/obj/item/twohanded/fireaxe= 1,
	/obj/item/storage/belt/utility/gardener = 1,
	/obj/item/shovel/spade = 1,
	/obj/item/cultivator = 1,
	/obj/item/reagent_containers/glass/bucket/plastic = 1,
	/obj/item/storage/bag/plants/portaseeder= 1,
	/obj/item/seeds/bamboo = 1,
	/obj/item/seeds/apple/gold = 1,
	/obj/item/seeds/cannabis = 1
	)

/*
/datum/job/oasis/f13banker
	title = "Banker"
	flag = F13BANKER
	department_flag = DEP_OASIS
	total_positions = 1
	spawn_positions = 2
	supervisors = "The Mayor"
	description = "No matter the nature of society, fortune and profit are there to be made! It is up to you to make deals, distribute caps and earn interest - an easy first venture might be safekeeping possessions in the strongboxes of your vault within the First Bank of Nash. Ensure you make a profit and retain enough capital for your day-to-day operations. You are under the governance of Nash, but perhaps deal-making will take you into other alliances."
	enforces = "Your bank is a private business and you are not under direct control of local governance, but are subject to their laws."
	selection_color = "#dcba97"
	outfit = /datum/outfit/job/den/f13banker

	loadout_options = list(
	/datum/outfit/loadout/classy,
	/datum/outfit/loadout/loanshark,
	/datum/outfit/loadout/investor
	)

	access = list(ACCESS_BAR, ACCESS_MINT_VAULT)
	minimal_access = list(ACCESS_BAR, ACCESS_MINT_VAULT)

/datum/outfit/job/den/f13banker
	name = "Banker"
	jobtype = /datum/job/oasis/f13banker

	uniform = /obj/item/clothing/under/lawyer/blacksuit
	id = /obj/item/card/id/silver
	ears = /obj/item/radio/headset/headset_town/commerce
	shoes = /obj/item/clothing/shoes/f13/fancy
	backpack = /obj/item/storage/backpack/satchel/leather
	satchel = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx,
		/obj/item/storage/bag/money/small = 1)

/datum/outfit/loadout/classy
	name = "Classy"
	head = /obj/item/clothing/head/collectable/tophat
	glasses = /obj/item/clothing/glasses/monocle
	uniform = /obj/item/clothing/under/suit_jacket/charcoal
	suit = /obj/item/clothing/suit/armor/outfit/jacket/banker
	gloves = /obj/item/clothing/gloves/color/white
	shoes = /obj/item/clothing/shoes/laceup
	backpack_contents = list(/obj/item/cane=1,
		/obj/item/storage/belt/shoulderholster/ranger45 =1,
		/obj/item/storage/fancy/cigarettes/cigpack_bigboss=1,
		/obj/item/reagent_containers/food/drinks/bottle/whiskey=1,
		/obj/item/reagent_containers/food/drinks/drinkingglass/shotglass=1,
		/obj/item/lighter/gold = 1
		)

/datum/outfit/loadout/loanshark
	name = "Loanshark"
	glasses = /obj/item/clothing/glasses/orange
	mask = /obj/item/clothing/mask/cigarette/cigar
	suit = /obj/item/clothing/suit/armor/outfit/vest
	uniform = /obj/item/clothing/under/f13/sleazeball
	shoes = /obj/item/clothing/shoes/sandal
	backpack_contents = list(/obj/item/reagent_containers/food/drinks/bottle/whiskey=1,
		/obj/item/storage/box/matches=1,
		/obj/item/gun/ballistic/automatic/smg/mini_uzi=1,
		/obj/item/instrument/violin/golden = 1
		)

/datum/outfit/loadout/investor
	name = "Investor"
	glasses = /obj/item/clothing/glasses/sunglasses
	suit = /obj/item/clothing/suit/toggle/lawyer/black
	uniform = /obj/item/clothing/under/f13/bennys
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/laceup
	backpack_contents = list(/obj/item/storage/fancy/cigarettes/cigpack_bigboss=1,
		/obj/item/storage/box/matches=1,
		/obj/item/ingot/gold = 1,
		/obj/item/gun/ballistic/shotgun/automatic/combat/shotgunlever = 1
		)
*/
/*--------------------------------------------------------------*/

/datum/job/oasis/f13shopkeeper
	title = "Merchant"
	flag = F13SHOPKEEPER
	department_flag = DEP_OASIS
	total_positions = 2
	spawn_positions = 2
	supervisors = "the free market and Overseer"
	description = "Trade deals fall upon your shoulders to negotiate with those around the town, so ensure you never give more than you've got. Of course, selling the town is the worst thing you could do, so it should go without saying that you can't do that. Negotiate with the traders of the wastes, extort them for the shirt on their back, or set them up for life, it's up to you to decide."
	enforces = "Your store is a private business and you can decide who is welcome there. However, you are still subject to the overarching laws of Eastwood."
	selection_color = "#dcba97"
	exp_requirements = 300

	outfit = /datum/outfit/job/den/f13shopkeeper
	access = list(ACCESS_BAR, ACCESS_CARGO_BOT)
	minimal_access = list(ACCESS_BAR, ACCESS_CARGO_BOT)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis
		)
	)

/datum/outfit/job/den/f13shopkeeper
	name = "Merchant"
	jobtype = /datum/job/oasis/f13shopkeeper
	id = /obj/item/card/id/dogtag/town
	ears = /obj/item/radio/headset/headset_town/commerce
	uniform = /obj/item/clothing/under/f13/roving
	backpack = /obj/item/storage/backpack
	satchel = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag
	gloves = /obj/item/clothing/gloves/fingerless
	l_pocket = /obj/item/storage/bag/money/small/den
	r_pocket = /obj/item/flashlight/glowstick
	shoes = /obj/item/clothing/shoes/f13/explorer
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx,
		/obj/item/storage/box/shopkeeper = 1)

/datum/outfit/job/den/f13shopkeeper/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/policepistol)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/policerifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/steelbib/heavy)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/armyhelmetheavy)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/tribalradio)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/durathread_vest)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/trail_carbine)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/lever_action)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/a180)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/huntingrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/varmintrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/huntingshotgun)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/thatgun)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/uzi)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/smg10mm)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/frag_shrapnel)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/concussion)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/explosive/shrapnelmine)

/datum/outfit/job/den/f13shopkeeper/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return



/////////////////////
// Oasis Mob Roles //
/////////////////////

/*Internal-antags for Town. The purpose of these roles is to provide some internal issues for the town, add roleplay, and overall act as the Den used to without many of the same issues.
Hopefully.

Roles should be limited and low since they should attempt to work within town rather than take it over. Loadouts should be weak for the same reason.*/

// Enforcer = Base role. Intended to be 2-3 slots only.
/datum/job/wasteland/f13enforcer
	title = "Desperado Enforcer"
	flag = F13ENFORCER
	faction = FACTION_WASTELAND
	social_faction = FACTION_RAIDERS
	total_positions = 3
	spawn_positions = 3
	description = "You're a member of the local desperado gang, a group of chem-dealers, loan-sharkers and hitman from across the civilized wastes."
	supervisors = "The Boss."
	selection_color = "#ff4747"
	exp_requirements = 300
	exp_type = EXP_TYPE_WASTELAND

	outfit = /datum/outfit/job/wasteland/f13enforcer

	access = list(ACCESS_DEN)
	minimal_access = list(ACCESS_DEN)

	loadout_options = list(
		/datum/outfit/loadout/hitman,
		/datum/outfit/loadout/bodyguard,
		)

/datum/outfit/job/wasteland/f13enforcer
	name = "Desperado Enforcer"
	jobtype = /datum/job/wasteland/f13enforcer

	id = /obj/item/card/id/denid
	belt = /obj/item/storage/belt/army/assault
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
		/obj/item/storage/bag/money/small/wastelander)

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

/datum/job/wasteland/f13mobboss
	title = "Desperado Leader"
	flag = F13MOBBOSS
	faction = FACTION_WASTELAND
	social_faction = FACTION_RAIDERS
	total_positions = 1
	spawn_positions = 1
	description = "You are the leader of the local desperado gang, a gang of bandits, cattle-rustlers, hitmen, loan-sharkers and various other criminal activities. Luckily for you, you own the casino in town with your fellow 'buisness partners'. Make use of it, keep your men in line, and turn a profit. Be it working with the locals or against them."
	supervisors = "Whatever god you pray to. Sky's the limit!"
	selection_color = "#ff4747"
	exp_requirements = 500
	exp_type = EXP_TYPE_OUTLAW

	outfit = /datum/outfit/job/wasteland/f13mobboss

	access = list(ACCESS_DEN)
	minimal_access = list(ACCESS_DEN)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis/f13mayor,
			/datum/job/oasis/f13sheriff,
			/datum/job/oasis/f13detective,
		),
		/datum/matchmaking_pref/patron = list(
			/datum/job/wasteland/f13wastelander,
		),
	)


/datum/outfit/job/wasteland/f13mobboss
	name = "Den Mob Boss"
	jobtype = /datum/job/wasteland/f13mobboss

	id = /obj/item/card/id/denid
	belt = /obj/item/storage/belt/army/assault
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
		/obj/item/storage/bag/money/small/raider/mobboss, \
		/obj/item/book/granter/crafting_recipe/manual/denvr)

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
