/* (fuckin' british spelling of armor........)

This file contains all modkit armor item paths. Why is this file used instead of light, medium, heavy or power armor files?
1. To avoid clutter - ALL custom items that are modkits are to be put here. No exemptions.
2. To avoid abuse of item-setting - ALL custom items that are modkits NEVER should have unique armor values.
3. ALL custom items that are modkits should ALWAYS pull from a master file. I.E - your custom armor a varient of T-45? Then pull from T-45. Do NOT make it a unique path.

Make sure you ALWAYS direct the icon path of these custom items to: "suit(s)_custom.dmi" - otherwise your sprite will not work! This is for organization simplicity.

Below you will find all the templates for modkit items.*/

//Custom item - Rebel0 / Mariya Sankinova
/obj/item/clothing/suit/armor/f13/power_armor/t45d/mari
	name = "modified midwestern power armor"
	desc = "This set of power armor once belonged to the Midwestrn branch of the Brotherhood. Though now it appears to be modified and sporting a new paintjob, the words 'Fighting Girlfriend' painted onto its right shoulder alongside its new chapter colors."
	icon = 'icons/obj/clothing/suits_custom.dmi'
	icon_state = "mariarmor"
	item_state = "mariarmor"
