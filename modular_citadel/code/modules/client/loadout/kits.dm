///Item boxes for custom loadouts transferred from Legacy.

//Master file for custom loadout kits
/obj/item/storage/box/large/custom_kit
	name = "Custom Loadout"
	desc = "Your custom loadout items!"
	w_class = WEIGHT_CLASS_BULKY

//Mariya Sankinova - Rebel0
/obj/item/storage/box/large/custom_kit/mariya/PopulateContents()
	new /obj/item/modkit/mariarmor(src)
	new /obj/item/modkit/marihelmet(src)
