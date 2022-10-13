/obj/item/storage/survivalkit
	name = "survival kit"
	desc = "A robust leather pouch containing the essentials for wasteland survival."
	icon_state = "survivalkit"
	w_class = WEIGHT_CLASS_SMALL

/obj/item/storage/survivalkit/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_items = 4

/obj/item/storage/survivalkit/PopulateContents()
	new /obj/item/reagent_containers/hypospray/medipen/stimpak(src)
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/reagent_containers/food/drinks/flask/survival(src)
	new /obj/item/reagent_containers/pill/radx(src)

/obj/item/storage/survivalkit/tribal
	name = "tribal pouch"
	desc = "A robust leather pocket pouch for all the essentials for wasteland tribal survival."
	icon_state = "survivalkit_tribal"
	w_class = WEIGHT_CLASS_SMALL

/obj/item/storage/survivalkit/tribal/PopulateContents()
	new /obj/item/reagent_containers/pill/healingpowder(src)
	new /obj/item/reagent_containers/pill/healingpowder(src)
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/reagent_containers/food/drinks/flask/survival(src)

/obj/item/storage/survivalkit/tribal/empty/PopulateContents()
	return

/obj/item/storage/survivalkit/adv
	name = "survival kit"
	desc = "A robust leather pouch containing the essentials for wasteland survival."
	icon_state = "survivalkit"
	w_class = WEIGHT_CLASS_SMALL

/obj/item/storage/survivalkit/adv/PopulateContents()
	new /obj/item/reagent_containers/hypospray/medipen/stimpak/super(src)
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/flashlight/seclite(src)
	new /obj/item/reagent_containers/pill/radx(src)

/obj/item/storage/survivalkit/aid
	name = "individual first aid kit"
	desc = "A robust leather pouch containing the essentials for trauma care."
	icon_state = "ifak"
	w_class = WEIGHT_CLASS_SMALL

/obj/item/storage/survivalkit/aid/PopulateContents()
	new /obj/item/reagent_containers/hypospray/medipen/stimpak(src)
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/stack/medical/suture(src)
	new /obj/item/stack/medical/ointment(src)

/obj/item/storage/survivalkit/aid/adv
	name = "advanced-individual first aid kit"
	desc = "A robust leather pouch containing the essentials for trauma care."
	icon_state = "ifak"
	w_class = WEIGHT_CLASS_SMALL

/obj/item/storage/survivalkit/aid/adv/PopulateContents()
	new /obj/item/reagent_containers/hypospray/medipen/stimpak/super(src)
	new /obj/item/stack/medical/gauze/adv(src)
	new /obj/item/stack/medical/suture/medicated(src)
	new /obj/item/stack/medical/mesh(src)

/// Tribal med pouch!
/obj/item/storage/survivalkit/medical/tribal
	name = "pocket medicine bag"
	desc = "A robust leather pouch containing the essentials for tribal trauma care."
	icon_state = "survivalkit_tribal"
	color = "#d1ffb3"

/obj/item/storage/survivalkit/medical/tribal/PopulateContents()
	new /obj/item/reagent_containers/pill/healingpowder(src)
	new /obj/item/reagent_containers/pill/healingpowder(src)
	new /obj/item/stack/medical/gauze/improvised(src)
	new /obj/item/stack/medical/mesh/aloe(src)

/obj/item/storage/survivalkit/medical/tribal/empty/PopulateContents()
	return

/// Chieftaint pouch!
/obj/item/storage/survivalkit/tribal/chief
	name = "chieftain pouch"
	desc = "A robust leather pouch containing the essentials for wasteland survival."
	icon_state = "survivalkit_tribal"
