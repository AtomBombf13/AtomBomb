//Master file for donator/custom items. Use kit.dm, modkit.dm and whatever custom armor/helmet.dm that is applicable as well for all files found here.

//Holdover from Sunset - funny food crafting. Why? Don't know, just leaving though.
/datum/gear/donator/exoticjazz
	name = "Happy Sharky Company Cuisine Book"
	slot = SLOT_IN_BACKPACK
	path = /obj/item/book/granter/crafting_recipe/happysharky
	category = LOADOUT_CATEGORY_BACKPACK
	ckeywhitelist = list ("ExoticJazz")
	cost = 0

//Custom Mid-West PA for Mariya Sankinova / Rebel0
/datum/gear/donator/kits/mariyasankinova
	name = "Mariya Sankinova's belongings"
	path = /obj/item/storage/box/large/custom_kit/mariya
	ckeywhitelist = list("rebel0")
