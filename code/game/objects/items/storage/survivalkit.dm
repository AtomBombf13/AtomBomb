///////////////////
/* Survival Kits */
///////////////////

/obj/item/storage/survivalkit
	name = "survival kit"
	desc = "A robust leather pouch containing the essentials for wasteland survival."
	icon = 'icons/fallout/objects/storage.dmi'
	icon_state = "survivalkit"
	w_class = WEIGHT_CLASS_SMALL

/obj/item/storage/survivalkit/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_items = 4

/obj/item/storage/survivalkit/PopulateContents()
	new /obj/item/melee/onehanded/knife/switchblade(src)
	new /obj/item/lighter/greyscale(src)
	new /obj/item/reagent_containers/food/drinks/flask/survival(src)
	new /obj/item/reagent_containers/food/snacks/f13/canned/kibble(src)

/obj/item/storage/survivalkit/adv
	name = "advanced survival kit"
	icon_state = "survivalkit_advanced"

/obj/item/storage/survivalkit/adv/PopulateContents()
	new /obj/item/melee/onehanded/knife/switchblade(src)
	new /obj/item/lighter(src)
	new /obj/item/reagent_containers/food/drinks/flask/survival(src)
	new /obj/item/reagent_containers/food/snacks/f13/canned/ncr/igauna_bits(src)

/obj/item/storage/survivalkit/tribal
	name = "tribal pouch"
	icon_state = "survivalkit_tribal"

/obj/item/storage/survivalkit/tribal/PopulateContents()
	new /obj/item/melee/onehanded/knife/switchblade(src)
	new /obj/item/lighter/greyscale(src)
	new /obj/item/reagent_containers/food/drinks/flask/survival(src)
	new /obj/item/reagent_containers/food/snacks/breadhard(src)

/obj/item/storage/survivalkit/tribal/empty/PopulateContents()
	return

/obj/item/storage/survivalkit/tribal/chief
	name = "chieftain pouch"
	desc = "A robust leather pouch containing the essentials for wasteland survival."
	icon_state = "survivalkit_tribal_chief"

/obj/item/storage/survivalkit/tribal/chief/PopulateContents()
	new /obj/item/melee/onehanded/knife/switchblade(src)
	new /obj/item/lighter(src)
	new /obj/item/reagent_containers/food/drinks/flask/survival(src)
	new /obj/item/reagent_containers/food/snacks/f13/molerat_manicotti(src)

////////////////////
/* First Aid Kits */
////////////////////

/obj/item/storage/survivalkit/medical
	name = "individual first aid kit"
	desc = "A robust leather pouch containing the essentials for trauma care."
	icon_state = "ifak"

/obj/item/storage/survivalkit/medical/PopulateContents()
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/stack/medical/suture(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/reagent_containers/pill/emergency(src)

/obj/item/storage/survivalkit/medical/adv
	name = "advanced-individual first aid kit"
	desc = "A robust leather pouch containing the essentials for trauma care."
	icon_state = "ifak_trauma"

/obj/item/storage/survivalkit/medical/adv/PopulateContents()
	new /obj/item/stack/medical/gauze/adv(src)
	new /obj/item/stack/medical/suture/medicated(src)
	new /obj/item/stack/medical/mesh(src)
	new /obj/item/reagent_containers/hypospray/medipen/stimpak(src)

/obj/item/storage/survivalkit/medical/tribal
	name = "tribal medicine bag"
	desc = "A robust leather pouch containing the essentials for tribal trauma care."
	icon_state = "tribalmed"

/obj/item/storage/survivalkit/medical/tribal/PopulateContents()
	new /obj/item/stack/medical/gauze/improvised(src)
	new /obj/item/stack/medical/suture(src)
	new /obj/item/stack/medical/mesh/aloe(src)
	new /obj/item/reagent_containers/pill/patch/healpoultice(src)

/obj/item/storage/survivalkit/medical/tribal/empty/PopulateContents()
	return

/obj/item/storage/survivalkit/medical/tribal/adv
	name = "advanced tribal medicine bag"
	desc = "A robust leather pouch containing the essentials for tribal trauma care."
	icon_state = "tribalmed_advanced"

/obj/item/storage/survivalkit/medical/tribal/adv/PopulateContents()
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/stack/medical/suture(src)
	new /obj/item/stack/medical/mesh(src)
	new /obj/item/reagent_containers/pill/bitterdrink(src)

/obj/item/storage/survivalkit/medical/raider
	name = "raider emergency bag"
	desc = "A rugged pouch full of average assortment of medications."
	icon_state = "ifak"

/obj/item/storage/survivalkit/medical/raider/PopulateContents()
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/reagent_containers/pill/patch/turbo(src)
	new /obj/item/reagent_containers/hypospray/medipen/medx(src)
	new /obj/item/reagent_containers/pill/emergency(src)
