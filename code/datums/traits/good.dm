// Explosive / Chemistry Wiz

GLOBAL_LIST_INIT(chemwhiz_recipes, list(
	/datum/crafting_recipe/jet,
	/datum/crafting_recipe/turbo,
	/datum/crafting_recipe/psycho,
	/datum/crafting_recipe/medx,
	/datum/crafting_recipe/medx/chemistry,
	/datum/crafting_recipe/stimpak,
	/datum/crafting_recipe/stimpak/chemistry,
	/datum/crafting_recipe/stimpak5,
	/datum/crafting_recipe/stimpak5/chemistry,
	/datum/crafting_recipe/superstimpak,
	/datum/crafting_recipe/superstimpak5,
	/datum/crafting_recipe/buffout,
	/datum/crafting_recipe/steady))

GLOBAL_LIST_INIT(basic_explosive_recipes, list(
	/datum/crafting_recipe/dynamite,
	/datum/crafting_recipe/pipebomb,
	/datum/crafting_recipe/smokebomb,
	/datum/crafting_recipe/empgrenade,
	/datum/crafting_recipe/flashbang,
	/datum/crafting_recipe/rocket_base,
	/datum/crafting_recipe/weakrocket))

GLOBAL_LIST_INIT(adv_explosive_recipes, list(
	/datum/crafting_recipe/high_explosive,
	/datum/crafting_recipe/frag_shrapnel,
	/datum/crafting_recipe/incendiary,
	/datum/crafting_recipe/smokebomb,
	/datum/crafting_recipe/empgrenade,
	/datum/crafting_recipe/explosive/explomine,
	/datum/crafting_recipe/explosive/shrapnelmine,
	/datum/crafting_recipe/rocket_base,
	/datum/crafting_recipe/strongrocket))

/// Tribal globals

GLOBAL_LIST_INIT(whitelegs_recipes, list(
	/datum/crafting_recipe/tribalwar/whitelegs/lightarmour,
	/datum/crafting_recipe/tribalwar/whitelegs/armour, 
	/datum/crafting_recipe/tribalwar/whitelegs/garb, 
	/datum/crafting_recipe/tribalwar/whitelegs/femalegarb, 
	/datum/crafting_recipe/tribalwar/whitelegs/heavyarmour))

GLOBAL_LIST_INIT(deadhorses_recipes, list(
	/datum/crafting_recipe/tribalwar/deadhorses/lightarmour,
	/datum/crafting_recipe/tribalwar/deadhorses/armour,
	/datum/crafting_recipe/tribalwar/deadhorses/garb,
	/datum/crafting_recipe/tribalwar/deadhorses/femalegarb,
	/datum/crafting_recipe/tribalwar/deadhorses/heavyarmour))

GLOBAL_LIST_INIT(sorrows_recipes, list(
	/datum/crafting_recipe/tribalwar/sorrows/armour,
	/datum/crafting_recipe/tribalwar/sorrows/garb,
	/datum/crafting_recipe/tribalwar/sorrows/femalegarb,
	/datum/crafting_recipe/tribalwar/sorrows/yaoguaigauntlet))

GLOBAL_LIST_INIT(rustwalkers_recipes, list(
	/datum/crafting_recipe/tribalwar/rustwalkers/lightarmour,
	/datum/crafting_recipe/tribalwar/rustwalkers/armour,
	/datum/crafting_recipe/tribalwar/rustwalkers/garb,
	/datum/crafting_recipe/tribalwar/rustwalkers/femalegarb,
	/datum/crafting_recipe/tribalwar/rustwalkers/heavyarmour))

GLOBAL_LIST_INIT(eighties_recipes, list(
	/datum/crafting_recipe/tribalwar/eighties/lightarmour,
	/datum/crafting_recipe/tribalwar/eighties/armour,
	/datum/crafting_recipe/tribalwar/eighties/garb,
	/datum/crafting_recipe/tribalwar/eighties/femalegarb,
	/datum/crafting_recipe/tribalwar/eighties/heavyarmour))

GLOBAL_LIST_INIT(wayfarer_recipes, list(
	/datum/crafting_recipe/tribalwar/lighttribe,
	/datum/crafting_recipe/tribalwar/heavytribe,
	/datum/crafting_recipe/warmace))

GLOBAL_LIST_INIT(bone_dancer_recipes, list(
	/datum/crafting_recipe/tribalwar/bone/lightarmour,
	/datum/crafting_recipe/tribalwar/bone/armour, 
	/datum/crafting_recipe/tribalwar/bone/heavyarmour,
	/datum/crafting_recipe/tribalwar/bone/garb,
	/datum/crafting_recipe/tribalwar/bone/helmet))

//predominantly positive traits
//this file is named weirdly so that positive traits are listed above negative ones

/datum/quirk/alcohol_tolerance
	name = "Alcohol Tolerance"
	desc = "You become drunk more slowly and suffer fewer drawbacks from alcohol."
	value = 1
	mob_trait = TRAIT_ALCOHOL_TOLERANCE
	gain_text = span_notice("You feel like you could drink a whole keg!")
	lose_text = span_danger("You don't feel as resistant to alcohol anymore. Somehow.")
	medical_record_text = "Patient demonstrates a high tolerance for alcohol."

/datum/quirk/horrifying_tastes
	name = "Horrifying Tastes"
	desc = "You enjoy a fine sort of meal not often appreciated by your peers. To serve man, in all it's forms is your life's work. Put bluntly - you are a cannibal. Consuming human flesh doesn't bother you, and dishes such as longpork stew will heal you."
	mob_trait = TRAIT_LONGPORKLOVER
	value = 2
	gain_text = span_notice("You have an insatiable hunger for the flesh of your fellow man.")
	lose_text = span_notice("The terrible hunger fades - you feel peace at last.")
	medical_record_text = "Patient refuses to comment on their dietary preferences."

/datum/quirk/horrifying_tastes/add()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/species/species = H.dna.species
	species.liked_food |= LONGPORK
	species.disliked_food &= ~LONGPORK

/datum/quirk/horrifying_tastes/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(H)
		var/datum/species/species = H.dna.species
		species.liked_food &= ~LONGPORK
		species.disliked_food |= LONGPORK

/datum/quirk/tribal
	name = "Former Tribal"
	desc = "You used to be part of one of the tribes scattered throughout the wasteland. You may have some additional skills as a result, though advanced tech still confuses you."
	value = 2
	gain_text = span_notice("You remember the old ways of your tribe..")
	lose_text = span_notice("You've forgotten the ways of your ancestors..")

/datum/quirk/tribal/add()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_TECHNOPHOBE, "Former Tribal")
	ADD_TRAIT(H, TRAIT_TRIBAL, "Former Tribal")

/datum/quirk/tribal/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		REMOVE_TRAIT(H, TRAIT_TECHNOPHOBE, "Former Tribal")
		REMOVE_TRAIT(H, TRAIT_TRIBAL, "Former Tribal")


/datum/quirk/tribespeak
	name = "Tribal Language Comprehension"
	desc = "You're somehow capable of understanding and speaking the common tribal languages in the area."
	value = 1
	gain_text = span_notice("You remember the old ways of your tribe..")
	lose_text = span_notice("You've forgotten the ways of your ancestors..")


/datum/quirk/tribespeak/add()
	var/mob/living/carbon/human/H = quirk_holder
	H.grant_language(/datum/language/tribal)

/datum/quirk/tribespeak/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		H.remove_language(/datum/language/tribal)

/datum/quirk/spanishspeak
	name = "Spanish Language Comprehension"
	desc = "You're somehow capable of understanding and speaking the common language of the mexican cartels in the south."
	value = 1
	gain_text = span_notice("You remember the old ways of the mexican cartels..")
	lose_text = span_notice("You've forgotten the ways of the mexican cartels..")

/datum/quirk/spanishspeak/add()
	var/mob/living/carbon/human/H = quirk_holder
	H.grant_language(/datum/language/spanish)

/datum/quirk/spanishspeak/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		H.remove_language(/datum/language/spanish)

/datum/quirk/apathetic
	name = "Apathetic"
	desc = "You just don't care as much as other people. That's nice to have in a place like this, I guess."
	value = 1
	mood_quirk = TRUE
	medical_record_text = "Patient was administered the Apathy Evaluation Scale but did not bother to complete it."

/datum/quirk/apathetic/add()
	var/datum/component/mood/mood = quirk_holder.GetComponent(/datum/component/mood)
	if(mood)
		mood.mood_modifier = 0.8

/datum/quirk/apathetic/remove()
	if(quirk_holder)
		var/datum/component/mood/mood = quirk_holder.GetComponent(/datum/component/mood)
		if(mood)
			mood.mood_modifier = 1 //Change this once/if species get their own mood modifiers.

/datum/quirk/drunkhealing
	name = "Drunken Resilience"
	desc = "Nothing like a good drink to make you feel on top of the world. Whenever you're drunk, you slowly recover from injuries."
	value = 2
	mob_trait = TRAIT_DRUNK_HEALING
	gain_text = span_notice("You feel like a drink would do you good.")
	lose_text = span_danger("You no longer feel like drinking would ease your pain.")
	medical_record_text = "Patient has unusually efficient liver metabolism and can slowly regenerate wounds by drinking alcoholic beverages."

/datum/quirk/empath
	name = "Empath"
	desc = "Whether it's a sixth sense or careful study of body language, it only takes you a quick glance at someone to understand how they feel."
	value = 2
	mob_trait = TRAIT_EMPATH
	gain_text = span_notice("You feel in tune with those around you.")
	lose_text = span_danger("You feel isolated from others.")
	medical_record_text = "Patient is highly perceptive of and sensitive to social cues, or may possibly have ESP. Further testing needed."

/datum/quirk/freerunning
	name = "Freerunning"
	desc = "You're great at quick moves! You can climb tables more quickly."
	value = 2
	mob_trait = TRAIT_FREERUNNING
	gain_text = span_notice("You feel lithe on your feet!")
	lose_text = span_danger("You feel clumsy again.")
	medical_record_text = "Patient scored highly on cardio tests."

/datum/quirk/friendly
	name = "Friendly"
	desc = "You give the best hugs, especially when you're in the right mood."
	value = 1
	mob_trait = TRAIT_FRIENDLY
	gain_text = span_notice("You want to hug someone.")
	lose_text = span_danger("You no longer feel compelled to hug others.")
	mood_quirk = TRUE
	medical_record_text = "Patient demonstrates low-inhibitions for physical contact and well-developed arms. Requesting another doctor take over this case."

/datum/quirk/jolly
	name = "Jolly"
	desc = "You sometimes just feel happy, for no reason at all."
	value = 1
	mob_trait = TRAIT_JOLLY
	mood_quirk = TRUE
	medical_record_text = "Patient demonstrates constant euthymia irregular for environment. It's a bit much, to be honest."

/datum/quirk/jolly/on_process()
	if(prob(0.05))
		SEND_SIGNAL(quirk_holder, COMSIG_ADD_MOOD_EVENT, "jolly", /datum/mood_event/jolly)

/datum/quirk/light_step
	name = "Light Step"
	desc = "You walk with a gentle step; stepping on sharp objects is quieter, less painful and you won't leave footprints behind you."
	value = 1
	mob_trait = TRAIT_LIGHT_STEP
	gain_text = span_notice("You walk with a little more litheness.")
	lose_text = span_danger("You start tromping around like a barbarian.")
	medical_record_text = "Patient's dexterity belies a strong capacity for stealth."

/*
/datum/quirk/quick_step
	name = "Quick Step"
	desc = "You walk with determined strides, and out-pace most people when walking."
	value = 2
	mob_trait = TRAIT_SPEEDY_STEP
	gain_text = span_notice("You feel determined. No time to lose.")
	lose_text = span_danger("You feel less determined. What's the rush, man?")
	medical_record_text = "Patient scored highly on racewalking tests."
*/

/datum/quirk/musician
	name = "Musician"
	desc = "You can tune handheld musical instruments to play melodies that clear certain negative effects and soothe the soul."
	value = 1
	mob_trait = TRAIT_MUSICIAN
	gain_text = span_notice("You know everything about musical instruments.")
	lose_text = span_danger("You forget how musical instruments work.")
	medical_record_text = "Patient brain scans show a highly-developed auditory pathway."

/datum/quirk/musician/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/obj/item/choice_beacon/music/B = new(get_turf(H))
	H.put_in_hands(B)
	H.equip_to_slot_if_possible(B, SLOT_IN_BACKPACK)
	var/obj/item/musicaltuner/musicaltuner = new(get_turf(H))
	H.put_in_hands(musicaltuner)
	H.equip_to_slot_if_possible(musicaltuner, SLOT_IN_BACKPACK)
	H.regenerate_icons()

/datum/quirk/photographer
	name = "Photographer"
	desc = "You know how to handle a camera, shortening the delay between each shot."
	value = 1
	mob_trait = TRAIT_PHOTOGRAPHER
	gain_text = span_notice("You know everything about photography.")
	lose_text = span_danger("You forget how photo cameras work.")
	medical_record_text = "Patient mentions photography as a stress-relieving hobby."

/datum/quirk/photographer/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/obj/item/camera/camera = new(get_turf(H))
	H.put_in_hands(camera)
	H.equip_to_slot(camera, SLOT_NECK)
	H.regenerate_icons()

/datum/quirk/selfaware
	name = "Self-Aware"
	desc = "You know your body well, and can accurately assess the extent of your wounds."
	value = 2
	mob_trait = TRAIT_SELF_AWARE
	medical_record_text = "Patient demonstrates an uncanny knack for self-diagnosis."

/datum/quirk/skittish
	name = "Skittish"
	desc = "You can conceal yourself in danger. Ctrl-shift-click a closed locker to jump into it, as long as you have access."
	value = 2
	mob_trait = TRAIT_SKITTISH
	medical_record_text = "Patient demonstrates a high aversion to danger and has described hiding in containers out of fear."

/datum/quirk/spiritual
	name = "Spiritual"
	desc = "You're in tune with the gods, and your prayers may be more likely to be heard. Or not."
	value = 1
	mob_trait = TRAIT_SPIRITUAL
	gain_text = span_notice("You feel a little more faithful to the gods today.")
	lose_text = span_danger("You feel less faithful in the gods.")
	medical_record_text = "Patient reports a belief in a higher power."

/datum/quirk/tagger
	name = "Tagger"
	desc = "You're an experienced artist. While drawing graffiti, you can get twice as many uses out of drawing supplies."
	value = 1
	mob_trait = TRAIT_TAGGER
	gain_text = span_notice("You know how to tag walls efficiently.")
	lose_text = span_danger("You forget how to tag walls properly.")
	medical_record_text = "Patient was recently seen for possible paint huffing incident."

/datum/quirk/tagger/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/obj/item/toy/crayon/spraycan/spraycan = new(get_turf(H))
	H.put_in_hands(spraycan)
	H.equip_to_slot(spraycan, SLOT_IN_BACKPACK)
	H.regenerate_icons()

/datum/quirk/voracious
	name = "Voracious"
	desc = "Nothing gets between you and your food. You eat twice as fast as everyone else!"
	value = 1
	mob_trait = TRAIT_VORACIOUS
	gain_text = span_notice("You feel HONGRY.")
	lose_text = span_danger("You no longer feel HONGRY.")
	medical_record_text = "Patient demonstrates a disturbing capacity for eating."

/datum/quirk/bloodpressure
	name = "Polycythemia vera"
	desc = "You've a treated form of Polycythemia vera that increases the total blood volume inside of you as well as the rate of replenishment!"
	value = 2 //I honeslty dunno if this is a good trait? I just means you use more of medbays blood and make janitors madder, but you also regen blood a lil faster.
	mob_trait = TRAIT_HIGH_BLOOD
	gain_text = span_notice("You feel full of blood!")
	lose_text = span_notice("You feel like your blood pressure went down.")
	medical_record_text = "Patient's blood tests report an abnormal concentration of red blood cells in their bloodstream."

/datum/quirk/bloodpressure/add()
	quirk_holder.blood_ratio = 1.2
	quirk_holder.blood_volume += 150

/datum/quirk/bloodpressure/remove()
	if(quirk_holder)
		quirk_holder.blood_ratio = 1

/datum/quirk/tribal_tech
	name = "Primitive Tech"
	desc = "You're able to use primitive technology."
	value = 2
	mob_trait = TRAIT_MACHINE_SPIRITS
	gain_text = span_notice("You are now able to use primitive technology.")
	lose_text = span_danger("You are no longer able to use primitive technology.")
	locked = TRUE

/datum/quirk/night_vision
	name = "Night Vision"
	desc = "You can see slightly more clearly in full darkness than most people."
	value = 1
	mob_trait = TRAIT_NIGHT_VISION
	gain_text = span_notice("The shadows seem a little less dark.")
	lose_text = span_danger("Everything seems a little darker.")


/datum/quirk/night_vision/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.update_sight()

/datum/quirk/nukalover
	name = "Nuka Fiend"
	desc = "You are a fan of America's most popular pre-war soft drink. Your body simply loves the sugary drink so much, it rejects healthier alternatives."
	value = 2
	mob_trait = TRAIT_NUKA_LOVER
	gain_text = span_notice("You want to buy the whole world a nuka-cola!")
	lose_text = span_danger("What's the big deal about nuka-cola?")
	medical_record_text = "Patient has an addiction to the soft drink Nuka-Cola. Somehow, their metabolism has adapted to the sugars and artifical flavorings."
	
/datum/quirk/nukalover/add()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/species/species = H.dna.species
	species.liked_food |= NUKA
	species.disliked_food |= VEGETABLES

/datum/quirk/nukalover/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(H)
		var/datum/species/species = H.dna.species
		species.liked_food = initial(species.liked_food)
		species.disliked_food = initial(species.disliked_food)

/datum/quirk/trapper
	name = "Trapper"
	desc = "As an experienced hunter and trapper you know your way around butchering animals for their products, and are able to get twice the usable materials by eliminating waste."
	value = 2
	mob_trait = TRAIT_TRAPPER
	gain_text = span_notice("You learn the secrets of butchering!")
	lose_text = span_danger("You forget how to slaughter animals.")
	locked = TRUE

/datum/quirk/bigleagues
	name = "Big Leagues"
	desc = "Swing for the fences! You deal additional damage with melee weapons."
	value = 2
	mob_trait = TRAIT_BIG_LEAGUES
	gain_text = span_notice("You feel like swinging for the fences!")
	lose_text = span_danger("You feel like bunting.")
	locked = TRUE

/datum/quirk/chemwhiz
	name = "Chem Whiz"
	desc = "You've been playing around with chemicals all your life. You know how to use chemistry machinery."
	value = 2
	mob_trait = TRAIT_CHEMWHIZ
	gain_text = span_notice("The mysteries of chemistry are revealed to you.")
	lose_text = span_danger("You forget how the periodic table works.")
	locked =  TRUE

/datum/quirk/chemwhiz/add()
	var/mob/living/carbon/human/H = quirk_holder
	// I made the quirks add the same recipes as the trait books. Feel free to nerf this
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.chemwhiz_recipes

/datum/quirk/chemwhiz/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(H)
		H.mind.learned_recipes -= GLOB.chemwhiz_recipes


/datum/quirk/pa_wear
	name = "PA Wear"
	desc = "You've being around the wastes and have learned the importance of defense."
	value = 3
	mob_trait = TRAIT_PA_WEAR
	gain_text = span_notice("You realize how to use Power Armor.")
	lose_text = span_danger("You forget how Power Armor works.")
	locked = TRUE

/datum/quirk/hard_yards
	name = "Hard Yards"
	desc = "You've put them in, now reap the rewards."
	value = 3
	mob_trait = TRAIT_HARD_YARDS
	gain_text = span_notice("Rain or shine, nothing slows you down.")
	lose_text = span_danger("You walk with a less sure gait, the ground seeming less firm somehow.")
	locked = TRUE

/datum/quirk/lifegiver
	name = "Lifegiver"
	desc = "You embody wellness! Instantly gain +10 maximum Health"
	value = 3
	mob_trait = TRAIT_LIFEGIVER
	gain_text = span_notice("You feel more healthy than usual.")
	lose_text = span_danger("You feel less healthy than usual.")
	locked = TRUE

/datum/quirk/lifegiver/on_spawn()
	var/mob/living/carbon/human/mob_tar = quirk_holder
	mob_tar.maxHealth += 10
	mob_tar.health += 10

/datum/quirk/iron_fist
	name = "Iron Fist"
	desc = "You have fists of kung-fury! Increases unarmed damage."
	value = 2
	mob_trait = TRAIT_IRONFIST
	gain_text = span_notice("Your fists feel furious!")
	lose_text = span_danger("Your fists feel calm again.")
	locked = TRUE

/datum/quirk/iron_fist/on_spawn()
	var/mob/living/carbon/human/mob_tar = quirk_holder
	mob_tar.dna.species.punchdamagelow = 4
	mob_tar.dna.species.punchdamagehigh = 11

/datum/quirk/light_step
	name = "Light Step"
	desc = "You walk with a gentle step, making stepping on sharp objects quieter and less painful."
	value = 1
	mob_trait = TRAIT_LIGHT_STEP
	gain_text = span_notice("You walk with a little more litheness.")
	lose_text = span_danger("You start tromping around like a barbarian.")

/datum/quirk/surgerylow
	name = "Minor Surgery"
	desc = "You are a somewhat adequate medical practicioner, capable of performing minor surgery."
	value = 1
	mob_trait = TRAIT_SURGERY_LOW
	gain_text = span_notice("You feel yourself discovering the basics of the human body.")
	lose_text = span_danger("You forget how to perform even the simplest surgery.")
	locked = TRUE

/datum/quirk/surgerymid
	name = "Intermediate Surgery"
	desc = "You are a skilled medical practicioner, capable of performing most surgery."
	value = 1
	mob_trait = TRAIT_SURGERY_MID
	gain_text = span_notice("You feel yourself discovering most of the details of the human body.")
	lose_text = span_danger("You forget how to perform surgery.")
	locked = TRUE

/datum/quirk/surgeryhigh
	name = "Complex Surgery"
	desc = "You are an expert practicioner, capable of performing almost all surgery."
	value = 1
	mob_trait = TRAIT_SURGERY_HIGH
	gain_text = span_notice("You feel yourself discovering the most intricate secrets of the human body.")
	lose_text = span_danger("You forget your advanced surgical knowledge.")
	locked = TRUE

/datum/quirk/explosive_crafting
	name = "Explosives Crafting"
	desc = "You have strong feelings about the future of industrial society."
	value = 1
	mob_trait = TRAIT_EXPLOSIVE_CRAFTING
	gain_text = span_notice("You feel like you can make a bomb out of anything.")
	lose_text = "<span class='danger'You feel okay with the advancement of technology.</span>"
	locked = TRUE

/datum/quirk/explosive_crafting/add()
	var/mob/living/carbon/human/H = quirk_holder
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	// I made the quirks add the same recipes as the trait books. Feel free to nerf this
	H.mind.learned_recipes |= GLOB.basic_explosive_recipes

/datum/quirk/explosive_crafting/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(H)
		H.mind.learned_recipes -= GLOB.basic_explosive_recipes

/datum/quirk/advanced_explosive_crafting
	name = "Advanced Explosive Crafting"
	desc = "Decades of engineering knowledge have taught you to make all kinds of horrible explosives."
	value = 1
	mob_trait = TRAIT_ADVANCED_EXPLOSIVE_CRAFTING
	gain_text = span_notice("You're on the no-fly list.'")
	lose_text = "<span class='danger'You feel like you're allowed to fly on planes again.</span>"
	locked = TRUE

/datum/quirk/advanced_explosive_crafting/add()
	var/mob/living/carbon/human/H = quirk_holder
	// I made the quirks add the same recipes as the trait books. Feel free to nerf this
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.basic_explosive_recipes
	H.mind.learned_recipes |= GLOB.adv_explosive_recipes

/datum/quirk/advanced_explosive_crafting/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(H)
		H.mind.learned_recipes -= GLOB.basic_explosive_recipes
		H.mind.learned_recipes -= GLOB.adv_explosive_recipes


/datum/quirk/whitelegstraditions
	name = "White Legs traditions and language comprehension"
	desc = "You remember how to make your peoples ancient garments after all this time and language."
	value = 2
	mob_trait = TRAIT_WHITELEGS_TRAD
	gain_text = span_notice("The mysteries of your ancestors are revealed to you.")
	lose_text = span_danger("You forget how your ancestors have created their garments.")
	locked =  FALSE

/datum/quirk/whitelegstraditions/add()
	var/mob/living/carbon/human/H = quirk_holder
	H.grant_language(/datum/language/whiteleg)
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.whitelegs_recipes


/datum/quirk/whitelegstraditions/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		H.remove_language(/datum/language/whiteleg)
	if(H)
		H.mind.learned_recipes -= GLOB.whitelegs_recipes

/datum/quirk/deadhorsestraditions
	name = "Dead Horses traditions and language comprehension"
	desc = "You remember how to make your peoples ancient garments after all this time and language."
	value = 2
	mob_trait = TRAIT_DEADHORSES_TRAD
	gain_text = span_notice("The mysteries of your ancestors are revealed to you.")
	lose_text = span_danger("You forget how your ancestors have created their garments.")
	locked =  FALSE

/datum/quirk/deadhorsestraditions/add()
	var/mob/living/carbon/human/H = quirk_holder
	H.grant_language(/datum/language/deadhorses)
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.deadhorses_recipes


/datum/quirk/deadhorsestraditions/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		H.remove_language(/datum/language/deadhorses)
	if(H)
		H.mind.learned_recipes -= GLOB.deadhorses_recipes


/datum/quirk/sorrowstraditions
	name = "Sorrows traditions and language comprehension"
	desc = "You remember how to make your peoples ancient garments after all this time and language."
	value = 2
	mob_trait = TRAIT_SORROWS_TRAD
	gain_text = span_notice("The mysteries of your ancestors are revealed to you.")
	lose_text = span_danger("You forget how your ancestors have created their garments.")
	locked =  FALSE

/datum/quirk/sorrowstraditions/add()
	var/mob/living/carbon/human/H = quirk_holder
	H.grant_language(/datum/language/sorrows)
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.sorrows_recipes

/datum/quirk/sorrowstraditions/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		H.remove_language(/datum/language/sorrows)
	if(H)
		H.mind.learned_recipes -= GLOB.sorrows_recipes

/datum/quirk/rustwalkerstraditions
	name = "Rust Walkers traditions and language comprehension"
	desc = "You remember how to make your peoples ancient garments after all this time and language."
	value = 2
	mob_trait = TRAIT_RUSTWALKERS_TRAD
	gain_text = span_notice("The mysteries of your ancestors are revealed to you.")
	lose_text = span_danger("You forget how your ancestors have created their garments.")
	locked =  FALSE

/datum/quirk/rustwalkerstraditions/add()
	var/mob/living/carbon/human/H = quirk_holder
	H.grant_language(/datum/language/german)
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.rustwalkers_recipes


/datum/quirk/rustwalkerstraditions/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		H.remove_language(/datum/language/german)
	if(H)
		H.mind.learned_recipes -= GLOB.rustwalkers_recipes

/datum/quirk/eightiestraditions
	name = "Eighties traditions and language comprehension"
	desc = "You remember how to make your peoples ancient garments after all this time and language."
	value = 2
	mob_trait = TRAIT_EIGHTIES_TRAD
	gain_text = span_notice("The mysteries of your ancestors are revealed to you.")
	lose_text = span_danger("You forget how your ancestors have created their garments.")
	locked =  FALSE

/datum/quirk/eightiestraditions/add()
	var/mob/living/carbon/human/H = quirk_holder
	H.grant_language(/datum/language/tribal)
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.eighties_recipes

/datum/quirk/eightiestraditions/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		H.remove_language(/datum/language/tribal)
	if(H)
		H.mind.learned_recipes -= GLOB.eighties_recipes


/datum/quirk/wayfarertraditions
	name = "Wayfarer traditions and language comprehension"
	desc = "You remember how to make your peoples ancient garments after all this time and language."
	value = 2
	mob_trait = TRAIT_WAYFARER_TRAD
	gain_text = span_notice("The mysteries of your ancestors are revealed to you.")
	lose_text = span_danger("You forget how your ancestors have created their garments.")
	locked =  FALSE

/datum/quirk/wayfarertraditions/add()
	var/mob/living/carbon/human/H = quirk_holder
	H.grant_language(/datum/language/tribal)
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.wayfarer_recipes


/datum/quirk/wayfarertraditions/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		H.remove_language(/datum/language/tribal)
	if(H)
		H.mind.learned_recipes -= GLOB.wayfarer_recipes


/datum/quirk/bonedancertraditions
	name = "Bone Dancer traditions and language comprehension"
	desc = "You remember how to make your peoples ancient garments after all this time and language."
	value = 2
	mob_trait = TRAIT_BONEDANCER_TRAD
	gain_text = span_notice("The mysteries of your ancestors are revealed to you.")
	lose_text = span_danger("You forget how your ancestors have created their garments.")
	locked =  FALSE

/datum/quirk/bonedancertraditions/add()
	var/mob/living/carbon/human/H = quirk_holder
	H.grant_language(/datum/language/tribal)
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.bone_dancer_recipes


/datum/quirk/bonedancertraditions/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		H.remove_language(/datum/language/tribal)
	if(H)
		H.mind.learned_recipes -= GLOB.bone_dancer_recipes
