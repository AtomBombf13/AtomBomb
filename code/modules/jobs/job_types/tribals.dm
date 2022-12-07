/datum/job/tribal
	department_flag = TRIBAL
	selection_color = "#049b9b"
	exp_type = EXP_TYPE_WASTELAND
	forbids = "The use of pre-collapse technology, especially pre-collapse weapons of war."
	enforces = "The tribe operate as if they are a part of a singular clan. Any harm dealt upon another member is likened to harm placed upon your brother or sister. Above all things, the tribe comes first."
	objectivesList = list(
		"The Tribe has decided to look for fresh blood from the out-peoples.  See if you can find someone to willingly join the tribe and learn our ways.",
		"This week we hunt, gecko's are to be reduced in numbers to a more sustainable level on this land for having murdered too many of our brahmin.",
		"This week we hunt, the Cazador menace is too strong in this land.  Their stingers are dangerous and the elders demand their extinction.",
		"The druids far off have asked us to find a cursed pre-war weapon that throws burning light at whatever you seek to destroy.  All of them must be found and destroyed, or our crops might fail.",
		"The Village rests, defend it and prosper this week.  Peace is rare, and we should enjoy it with song, dance, and good company.  Feel free to include outsiders if they will follow our ways when on our lands.",
		"The Village rests, defend it and prosper this week.  Peace is rare, but at least we can build defenses and take solitude in our isolation.",
		"The swamp calls the hunters forth, seek out the thing that shines and return it to the shamans to appease the spirits.  If no shaman can be found then hide the item from the out-peoples.",
		"This week is one of rememberance.  Think of the times when our tribe came forth from The Cave of Crying.  Of the friends and loved ones lost.  Remember peace, and cry for what is lost.",
		"This week is one of rememberance.  Think of the times when our tribe has failed at our duties and work together as the family we are to try and solve internal issues. Tomorrow can be better, if only we try today.")

GLOBAL_LIST_INIT(tribal_job_recipes, list(
	/datum/crafting_recipe/tribal_pa,
	/datum/crafting_recipe/tribal_pa_helmet,
	/datum/crafting_recipe/tribal_combat_armor,
	/datum/crafting_recipe/tribal_combat_armor_helmet,
	/datum/crafting_recipe/tribal_r_combat_armor,
	/datum/crafting_recipe/tribal_r_combat_armor_helmet,
	/datum/crafting_recipe/tribalwar/chitinarmor,
	/datum/crafting_recipe/tribalwar/lightcloak,
	/datum/crafting_recipe/warmace,
	/datum/crafting_recipe/tribalwar/lighttribe,
	/datum/crafting_recipe/tribalwar/heavytribe,
	/datum/crafting_recipe/tribalwar/legendaryclawcloak,
	/datum/crafting_recipe/tribalwar/deathclawspear,
	/datum/crafting_recipe/warpaint,
	/datum/crafting_recipe/tribalradio,
	/datum/crafting_recipe/tribalwar/goliathcloak,
	/datum/crafting_recipe/tribalwar/bonebow,
	/datum/crafting_recipe/tribalwar/tribe_bow,
	/datum/crafting_recipe/tribalwar/sturdybow,
	/datum/crafting_recipe/tribalwar/warclub,
	/datum/crafting_recipe/tribalwar/silverbow,
	/datum/crafting_recipe/tribalwar/arrowbone,
	/datum/crafting_recipe/tribalwar/bonespear,
	/datum/crafting_recipe/tribalwar/bonecodpiece,
	/datum/crafting_recipe/tribalwar/bracers,
	/datum/crafting_recipe/tribal/bonetalisman,
	/datum/crafting_recipe/spearfisher,
	/datum/crafting_recipe/healpoultice,
	/datum/crafting_recipe/healpoultice5,
	/datum/crafting_recipe/food/pemmican,
	/datum/crafting_recipe/tribal/bonebag,
	/datum/crafting_recipe/gate_wayfareroor))

/datum/outfit/job/tribal/
	name = "Tribal"
	jobtype = /datum/job/tribal/
	shoes = /obj/item/clothing/shoes/sandal
	gloves = /obj/item/clothing/gloves/f13/handwraps
	backpack = /obj/item/storage/backpack/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	id = null
	box = /obj/item/storage/survivalkit/tribal
	box_two = /obj/item/storage/survivalkit/medical/tribal
	ears = null

/datum/outfit/job/tribal/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_TRIBAL, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_TRAPPER, src)
	ADD_TRAIT(H, TRAIT_MACHINE_SPIRITS, src)
	ADD_TRAIT(H, TRAIT_AUTO_DRAW, src)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	H.grant_language(/datum/language/tribal)
	for(var/datum/crafting_recipe/recipe as() in GLOB.tribal_job_recipes)
		H.mind.teach_crafting_recipe(recipe)
/*
/*
Tribal Chief
*/

/datum/job/tribal/f13chief
	title = "Chief"
	flag = F13CHIEF
	display_order = JOB_DISPLAY_ORDER_CHIEF
	department_flag = TRIBAL
	faction = FACTION_TRIBE
	total_positions = 1
	spawn_positions = 1
	exp_type = EXP_TYPE_TRIBAL
	supervisors = "The Elders of the tribe."
	enforces = "The ways of the Machine spirits."
	forbids = "Abusing technology and using Pre-War weapons."
	description = "The leader and central political figure in the Wayfarer Tribe. You engage in diplomatic meetings with the powers present within the Region to ensure the village's safety and independence."
	selection_color = "#006666"
	outfit = /datum/outfit/job/tribal/f13chief
	exp_requirements = 1200

	access = list(ACCESS_TRIBE)
	minimal_access = list(ACCESS_TRIBE)

/datum/outfit/job/tribal/f13chief/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	ADD_TRAIT(H, TRAIT_BIG_LEAGUES, src)

/datum/outfit/job/tribal/f13chief
	name =	"Chief"
	jobtype =	/datum/job/tribal/f13chief
	head =	/obj/item/clothing/head/helmet/f13/wayfarer/chief/green
	uniform =	/obj/item/clothing/under/f13/tribal/wayfarer
	belt =	/obj/item/storage/backpack/spearquiver
	neck =	/obj/item/clothing/neck/mantle/chief
	id =	/obj/item/card/id/tribetattoo
	suit =	/obj/item/clothing/suit/hooded/cloak/hhunter
	suit_store =	/obj/item/twohanded/spear/bonespear/deathclaw
	backpack_contents = list(
		/obj/item/restraints/legcuffs/bola = 1,
		/obj/item/reagent_containers/pill/patch/healingpowder = 2,
		/obj/item/warpaint_bowl=1,
		/obj/item/stack/medical/gauze = 1,
		/obj/item/flashlight/lantern = 1,
	)

/*
Tribal Shaman
*/
/datum/job/tribal/f13shaman
	title = "Shaman"
	flag = F13SHAMAN
	display_order = JOB_DISPLAY_ORDER_SHAMAN
	department_flag = TRIBAL
	faction = FACTION_TRIBE
	total_positions = 1
	spawn_positions = 1
	exp_type = EXP_TYPE_TRIBAL
	supervisors = "The Elders of the tribe and the chief."
	enforces = "The ways of the Machine spirits."
	forbids = "Abusing technology and using Pre-War weapons."
	description = "The spiritual leader and cultural core of the Wayfarer Tribe. You aid villagers in their day to day lives by offering guidance and advice, while also acting as the direct aid to the chief. You are the guardian of the tribe's customs, their health, and knowledge."
	selection_color = "#006666"
	exp_requirements = 900

	outfit = /datum/outfit/job/tribal/f13shaman

	access = list(ACCESS_TRIBE)
	minimal_access = list(ACCESS_TRIBE)

	loadout_options = list(
		/datum/outfit/loadout/invoker, //Red shaman
		/datum/outfit/loadout/ascetic, //Blue shaman
	)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/mentor = list(
			/datum/job/tribal/f13druid,
		),
	)

/datum/outfit/job/tribal/f13shaman/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	ADD_TRAIT(H, TRAIT_SPIRITUAL, src)

/datum/outfit/job/tribal/f13shaman
	name = "Shaman"
	jobtype = /datum/job/tribal/f13shaman
	uniform = /obj/item/clothing/under/f13/tribal/wayfarer
	gloves = /obj/item/clothing/gloves/f13/handwraps
	shoes = /obj/item/clothing/shoes/sandal
	r_hand = /obj/item/twohanded/sledgehammer/shamanstaff
	id = /obj/item/card/id/tribetattoo
	backpack_contents = list(
		/obj/item/smelling_salts/wayfarer=1,
		/obj/item/warpaint_bowl=1,
		/obj/item/reagent_containers/glass/mortar=1,
		/obj/item/pestle=1,
		/obj/item/reagent_containers/glass/primitive_chem_isolator=1,
		/obj/item/reagent_containers/pill/patch/healpoultice=2,
		/obj/item/flashlight/lantern = 1,
	)

/datum/outfit/job/tribal/f13shaman/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_SURGERY_MID, src)

/datum/outfit/loadout/invoker
	name = "Invoker"
	backpack_contents = list(
		/obj/item/clothing/head/helmet/f13/wayfarer/shamanred=1,
		/obj/item/clothing/under/f13/tribal/wayfarer/shamanred=1,
		/obj/item/melee/onehanded/knife/ritualdagger=1
	)

/datum/outfit/loadout/ascetic
	name = "Ascetic"
	backpack_contents = list(
		/obj/item/clothing/head/helmet/f13/wayfarer/shamanblue=1,
		/obj/item/clothing/under/f13/tribal/wayfarer/shamanblue=1,
		/obj/item/melee/onehanded/knife/ritualdagger=1
	)

/*
Tribal Head Hunter
*/
/datum/job/tribal/f13Hhunter
	title = "Head Hunter"
	flag = F13HHUNTER
	display_order = JOB_DISPLAY_ORDER_HHUNTER
	department_flag = TRIBAL
	faction = FACTION_TRIBE
	total_positions = 1
	spawn_positions = 1
	exp_type = EXP_TYPE_TRIBAL
	supervisors = "The Elders of the tribe and the chief."
	enforces = "The ways of the Machine spirits."
	forbids = "Abusing technology and using Pre-War weapons."
	description = "You are the village Head Hunter; you organize the hunters of the tribe and are the authority in matters of protecting the tribe and the land of the Wayfarers. You lead the Great Hunts and War-Bands in time of conflict."
	selection_color = "#006666"
	exp_requirements = 900

	outfit = /datum/outfit/job/tribal/f13Hhunter
	access = list(ACCESS_TRIBE)
	minimal_access = list(ACCESS_TRIBE)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/tribal,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/tribal,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/tribal/f13hunter,
		),
	)

/datum/outfit/job/tribal/f13Hhunter/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	ADD_TRAIT(H, TRAIT_BIG_LEAGUES, src)

/datum/outfit/job/tribal/f13Hhunter
	name = "Hunter"
	jobtype = /datum/job/tribal/f13Hhunter
	uniform = /obj/item/clothing/under/f13/tribal/wayfarer/hunter
	suit = /obj/item/clothing/suit/hooded/cloak/shunter
	belt = /obj/item/twohanded/spearaxe
	id = /obj/item/card/id/tribetattoo
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/healingpowder=2,
		/obj/item/warpaint_bowl=1,
		/obj/item/stack/medical/gauze=1,
		/obj/item/restraints/legcuffs/bola/tactical=2,
		/obj/item/flashlight/flare/torch=1,
		/obj/item/flashlight/lantern = 1
	)

/*
Druid
*/

/datum/job/tribal/f13druid
	title = "Druid"
	flag = F13DRUID
	display_order = JOB_DISPLAY_ORDER_DRUID
	department_flag = TRIBAL
	faction = FACTION_TRIBE
	total_positions = 2
	spawn_positions = 2
	exp_type = EXP_TYPE_TRIBAL
	supervisors = "The Chief and the Shaman."
	enforces = "The ways of the Machine spirits."
	forbids = "Abusing technology and using Pre-War weapons."
	description = "You are a Druid in the tribe; you perform rituals, and bless pre-war relics and other artifacts for the tribe to use. You also are the spiritual guides of the tribe, and work with the Shaman during rituals or other spiritual matters."
	exp_requirements = 300

	loadout_options = list(
		/datum/outfit/loadout/mender, //Basic Medical Stuff
		/datum/outfit/loadout/medodiks, //Tribal Surgeon (Medicus ???)
		/datum/outfit/loadout/nurturer	//Farmer
	)

	outfit = /datum/outfit/job/tribal/f13druid
	access = list(ACCESS_TRIBE)
	minimal_access = list(ACCESS_TRIBE)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/tribal,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/tribal,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/tribal/f13villager,
			/datum/job/tribal/f13spiritpledged,
		),
		/datum/matchmaking_pref/disciple = list(
			/datum/job/tribal/f13shaman,
		),
	)

/datum/outfit/job/tribal/f13druid/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_SPIRITUAL, src)
	ADD_TRAIT(H, TRAIT_SURGERY_LOW, src)

/datum/outfit/job/tribal/f13druid
	name = "Druid"
	jobtype = /datum/job/tribal/f13druid
	head = /obj/item/clothing/head/helmet/f13/wayfarer/antler
	uniform = /obj/item/clothing/under/f13/tribal/wayfarer/acolyte
	gloves = /obj/item/clothing/gloves/f13/handwraps
	shoes = /obj/item/clothing/shoes/sandal
	id = /obj/item/card/id/tribetattoo
	backpack_contents = list(
		/obj/item/reagent_containers/glass/mortar=1,
		/obj/item/pestle=1,
		/obj/item/warpaint_bowl=1,
		/obj/item/melee/onehanded/knife/ritualdagger=1,
		/obj/item/reagent_containers/glass/primitive_chem_isolator=1,
		/obj/item/reagent_containers/pill/patch/healpoultice=2
	)

/datum/outfit/loadout/mender
	name = "Field Mender"
	backpack_contents = list(
		/obj/item/stack/medical/gauze=1,
		/obj/item/stack/medical/suture=1,
		/obj/item/stack/medical/ointment=1
	)

/datum/outfit/loadout/medodiks
	name = "Medodiks"
	backpack_contents = list(
		/obj/item/seeds/bee_balm=1,
		/obj/item/reagent_containers/medspray=1
	)

/datum/outfit/loadout/nurturer
	name = "Nurturer"
	backpack_contents = list(
		/obj/item/storage/bag/plants=1,
		/obj/item/cultivator=1,
		/obj/item/shovel/spade=1,
		/obj/item/plant_analyzer=1
	)


/*
Villager
*/

/datum/job/tribal/f13villager
	title = "Villager"
	flag = F13VILLAGER
	display_order = JOB_DISPLAY_ORDER_VILLAGER
	department_flag = TRIBAL
	faction = FACTION_TRIBE
	total_positions = 6
	spawn_positions = 6
	exp_type = EXP_TYPE_TRIBAL
	supervisors = "Tribal Chief, Shaman and Headhunter"
	description = "A proud member of the Wayfarer tribe, you do what needs to be done to ensure the survival of yourself and your people while following the laws of the tribe."
	exp_requirements = 0

	outfit = /datum/outfit/job/tribal/f13villager

	access = list(ACCESS_TRIBE)
	minimal_access = list(ACCESS_TRIBE)

	loadout_options = list(
		/datum/outfit/loadout/merchant, //Bone Spear, Bone Knife, Healing powder
		/datum/outfit/loadout/f13blacksmith,
		/datum/outfit/loadout/glassblower,	//Ritual dagger, Improvized gauze, Healing powders, Mortar
		/datum/outfit/loadout/craftsman, //Crude tools
		/datum/outfit/loadout/f13gardener
	)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/tribal,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/tribal,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/tribal/f13villager,
			/datum/job/tribal/f13spiritpledged,
		),
		/datum/matchmaking_pref/disciple = list(
			/datum/job/tribal/f13druid,
			/datum/job/tribal/f13villager,
			/datum/job/tribal/f13hunter,
		),
	)

/datum/outfit/job/tribal/f13villager
	name = "Villager"
	jobtype = /datum/job/tribal/f13villager
	uniform = /obj/item/clothing/under/f13/tribal/wayfarer
	gloves = /obj/item/clothing/gloves/f13/handwraps
	shoes = /obj/item/clothing/shoes/sandal
	id = /obj/item/card/id/tribetattoo
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/healingpowder=1,
		/obj/item/warpaint_bowl=1,
		/obj/item/stack/medical/gauze=1,
		/obj/item/flashlight/flare/torch=1
	)

/datum/outfit/loadout/merchant
	name = "Merchant"
	backpack_contents = list(
		/obj/item/stack/sheet/cardboard/fifty=1,
		/obj/item/paper_bin/bundlenatural=1,
		/obj/item/pen/charcoal=1
	)

/datum/outfit/loadout/glassblower
	name = "Glassblower"
	backpack_contents = list(
		/obj/item/glasswork/glasskit=1,
		/obj/item/glasswork/blowing_rod=1
	)

/datum/outfit/loadout/f13blacksmith
	name = "Blacksmith"
	backpack_contents = list(
		/obj/item/melee/smith/hammer/premade=1,
		/obj/item/clothing/gloves/blacksmith_mittens=1,
		/obj/item/stack/sheet/bronze/thirty=1
	)

/datum/outfit/loadout/craftsman
	name = "Craftsman"
	backpack_contents = list(
		/obj/item/storage/belt/utility=1,
		/obj/item/crowbar/crude=1,
		/obj/item/wrench/crude=1,
		/obj/item/wirecutters/crude=1,
		/obj/item/weldingtool/crude=1
	)

/datum/outfit/loadout/f13gardener
	name = "Gardener"
	backpack_contents = list(
		/obj/item/scythe=1,
		/obj/item/storage/bag/plants=1,
		/obj/item/cultivator=1,
		/obj/item/reagent_containers/glass/bucket/wood=1
	)


/*
Hunter
*/
/datum/job/tribal/f13hunter
	title = "Hunter"
	flag = F13HUNTER
	display_order = JOB_DISPLAY_ORDER_HUNTER
	department_flag = TRIBAL
	faction = FACTION_TRIBE
	total_positions = 2
	spawn_positions = 2
	exp_type = EXP_TYPE_TRIBAL
	supervisors = "The chief and Head Hunter."
	enforces = "The ways of the Machine spirits."
	forbids = "Abusing technology and using Pre-War weapons."
	description = "You are a Hunter for the tribe; you bring back food and relics, anything that may house a machine spirit that can be purified by the shaman. You also are the protectors of the tribe, and work with the Head Hunter during Great Hunts or times of War."
	exp_requirements = 450

	outfit = /datum/outfit/job/tribal/f13hunter

	access = list(ACCESS_TRIBE)
	minimal_access = list(ACCESS_TRIBE)

	loadout_options = list(
		/datum/outfit/loadout/arqosman, //Bow and quiver, Light armor
		/datum/outfit/loadout/lostosman, //Deathclaw Bone Spear, Heavy armor
		/datum/outfit/loadout/kladjosman //Warhammer, Heavy armor
	)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/tribal,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/tribal,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/tribal/f13villager,
			/datum/job/tribal/f13spiritpledged,
		),
		/datum/matchmaking_pref/disciple = list(
			/datum/job/tribal/f13Hhunter,
		),
	)

/datum/outfit/job/tribal/f13hunter/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	ADD_TRAIT(H, TRAIT_BIG_LEAGUES, src)

/datum/outfit/job/tribal/f13hunter
	name = "Hunter"
	jobtype = /datum/job/tribal/f13hunter
	head = /obj/item/clothing/head/helmet/f13/wayfarer/hunter
	uniform = /obj/item/clothing/under/f13/tribal/wayfarer/hunter
	gloves = /obj/item/clothing/gloves/f13/handwraps
	shoes = /obj/item/clothing/shoes/sandal
	id = /obj/item/card/id/tribetattoo
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/healingpowder=2,
		/obj/item/warpaint_bowl=1,
		/obj/item/stack/medical/gauze=1,
		/obj/item/flashlight/flare/torch=1
	)

/datum/outfit/loadout/arqosman
	name = "Arqosman"
	suit =		/obj/item/clothing/suit/armor/light/tribal/westernwayfarer
	backpack_contents = list(
		/obj/item/gun/ballistic/bow/tribal=1,
		/obj/item/storage/bag/tribe_quiver=1
	)

/datum/outfit/loadout/lostosman
	name = "Lostosman"
	suit =		/obj/item/clothing/suit/armor/light/tribal/westernwayfarer
	l_hand =	/obj/item/twohanded/spear/bonespear/deathclaw

/datum/outfit/loadout/kladjosman
	name = "Kladjosman"
	suit =		/obj/item/clothing/suit/armor/light/tribal/westernwayfarer
	l_hand =	/obj/item/twohanded/sledgehammer/warmace

/*
Spirit-Pledged
*/
/datum/job/tribal/f13spiritpledged
	title = "Spirit-Pledged"
	flag = F13SPIRITPLEDGED
	display_order = JOB_DISPLAY_ORDER_SPIRITPLEDGED
	department_flag = TRIBAL
	faction = FACTION_TRIBE
	total_positions = 0
	spawn_positions = 0
	exp_type = EXP_TYPE_TRIBAL
	supervisors = "All other tribals."
	description = "An outsider to the tribe, you have been welcomed to learn their ways and grow closer to their culture and lifestyle, do NOT run off alone into the wasteland without the supervision of another higher ranking tribal."

	outfit = /datum/outfit/job/tribal/f13spiritpledged

	access = list(ACCESS_TRIBE)
	minimal_access = list(ACCESS_TRIBE)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/tribal,
		),
		/datum/matchmaking_pref/disciple = list(
			/datum/job/tribal/f13druid,
			/datum/job/tribal/f13villager,
			/datum/job/tribal/f13hunter,
		),
	)

	loadout_options = list(
		/datum/outfit/loadout/gatherer, //bone spear, healing powder
		/datum/outfit/loadout/gardener //gardener
	)

/datum/outfit/job/tribal/f13spiritpledged
	name = "Spirit-Pledged"
	jobtype = /datum/job/tribal/f13spiritpledged
	uniform = /obj/item/clothing/under/f13/tribal/wayfarer
	id = /obj/item/card/id/tribetattoo

/datum/outfit/loadout/gatherer
	name = "Gatherer"
	backpack_contents = list(
		/obj/item/twohanded/spear/bonespear=1,
		/obj/item/melee/onehanded/knife/bone=1,
		/obj/item/reagent_containers/pill/patch/healingpowder=1
	)

/datum/outfit/loadout/gardener
	name = "Gardener"
	backpack_contents = list(
		/obj/item/scythe=1,
		/obj/item/storage/bag/plants=1,
		/obj/item/cultivator=1,
		/obj/item/reagent_containers/glass/bucket/wood=1
	)

/*
Guardian
*/

/datum/job/tribal/f13guardian
	title = "Guardian"
	flag = F13GUARDIAN
	display_order = JOB_DISPLAY_ORDER_GUARDIAN
	department_flag = TRIBAL
	faction = FACTION_TRIBE
	total_positions = 1
	spawn_positions = 1
	exp_type = EXP_TYPE_TRIBAL
	supervisors = "All leadership, but the Chief is priority"
	description = "A hand chosen Hunter with much promise, you are one of the village Guardians. An elite Hunter given the duty to protect the village, your duty is to ensure your kin are safe at all costs, as well as follow any orders from your superiors and enforce the law of the tribe. Do not leave the village unless circumstances allow it."
	exp_requirements = 450

	outfit = /datum/outfit/job/tribal/f13guardian

	access = list(ACCESS_TRIBE)
	minimal_access = list(ACCESS_TRIBE)

/datum/outfit/job/tribal/f13guardian/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	ADD_TRAIT(H, TRAIT_BIG_LEAGUES, src)

/datum/outfit/job/tribal/f13guardian
	name = "Guardian"
	jobtype = /datum/job/tribal/f13guardian
	uniform = /obj/item/clothing/under/f13/tribal/wayfarer/hunter
	gloves = /obj/item/clothing/gloves/f13/handwraps
	shoes = /obj/item/clothing/shoes/sandal
	suit = /obj/item/clothing/suit/armor/heavy/tribal/westernwayfarer
	suit_store = /obj/item/twohanded/spear/bonespear/deathclaw
	id = /obj/item/card/id/tribetattoo
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/healingpowder=2,
		/obj/item/warpaint_bowl=1,
		/obj/item/stack/medical/gauze=1,
		/obj/item/flashlight/flare/torch=1,
		/obj/item/restraints/legcuffs/bola/tactical=1
	)
*/
