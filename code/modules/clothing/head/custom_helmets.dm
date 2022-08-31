/*
This file contains all modkit helmet item paths. Why is this file used instead of light, medium, heavy or power armor helmet files?
1. To avoid clutter - ALL custom items that are modkits are to be put here. No exemptions.
2. To avoid abuse of item-setting - ALL custom items that are modkits NEVER should have unique helmet values.
3. ALL custom items that are modkits should ALWAYS pull from a master file. I.E - your custom helmet a varient of T-45? Then pull from T-45. Do NOT make it a unique path.

Below you will find all the templates for modkit items.*/

//Custom item - Rebel0 / Mariya Sankinova
/obj/item/clothing/head/helmet/f13/power_armor/t45d/mari
	name = "modified midwestern power helmet"
	desc = "This helmet once belonged to the Midwestern branch of the Brotherhood of Steel. Though it appears to sport a new paintjob now as well as a few modifications to its helmet; specified to fit the wearer."
	icon_state = "marihelm"
	item_state = "marihelm"

/obj/item/clothing/head/helmet/f13/power_armor/t45d/mari/update_icon_state()
	icon_state = "marihelm[light_on]"
	item_state = "marihelm[light_on]"
