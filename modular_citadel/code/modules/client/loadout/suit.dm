/datum/gear/suit
	category = LOADOUT_CATEGORY_SUIT
	subcategory = LOADOUT_SUBCATEGORY_SUIT_GENERAL
	slot = SLOT_WEAR_SUIT

/datum/gear/suit/redhood
	name = "Red cloak"
	path = /obj/item/clothing/suit/hooded/cloak/david
	cost = 2

/datum/gear/suit/labcoat
	name = "Labcoat"
	path = /obj/item/clothing/suit/toggle/labcoat
	cost = 2

/datum/gear/suit/bomber
	name = "Bomber jacket"
	path = /obj/item/clothing/suit/jacket
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 1

/datum/gear/suit/bomber/oldjacketbomber
	name = "Old bomber jacket"
	path = /obj/item/clothing/suit/bomber

/// Flannels Below

/datum/gear/suit/flannel
	name = "Red flannel jacket"
	path = /obj/item/clothing/suit/jacket/flannel/red
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 1

/datum/gear/suit/flannel/jacketflannelblack
	name = "Black flannel jacket"
	path = /obj/item/clothing/suit/jacket/flannel

/datum/gear/suit/flannel/jacketflannelaqua
	name = "Aqua flannel jacket"
	path = /obj/item/clothing/suit/jacket/flannel/aqua

/datum/gear/suit/flannel/jacketflannelbrown
	name = "Brown flannel jacket"
	path = /obj/item/clothing/suit/jacket/flannel/brown

/datum/gear/suit/jacketleather
	name = "Leather jacket"
	path = /obj/item/clothing/suit/armor/light/leather/leather_jacket
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 2

/datum/gear/suit/overcoatleather
	name = "Leather overcoat"
	path = /obj/item/clothing/suit/jacket/leather/overcoat
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 1

/datum/gear/suit/jacketpuffer
	name = "Puffer jacket"
	path = /obj/item/clothing/suit/jacket/puffer
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 1

/datum/gear/suit/vestpuffer
	name = "Puffer vest"
	path = /obj/item/clothing/suit/jacket/puffer/vest
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 1

/datum/gear/suit/jacketlettermanbrown
	name = "Brown letterman jacket"
	path = /obj/item/clothing/suit/jacket/letterman
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 1

/datum/gear/suit/jacketlettermanred
	name = "Red letterman jacket"
	path = /obj/item/clothing/suit/jacket/letterman_red
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 1

/datum/gear/suit/militaryjacket
	name = "Military Jacket"
	path = /obj/item/clothing/suit/jacket/miljacket
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 1

/datum/gear/suit/flakjack
	name = "Flak Jacket"
	path = /obj/item/clothing/suit/armor/light/vest/flak
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 2

/datum/gear/suit/marlowsuit
	name = "wasteland ganger overcoat"
	path = /obj/item/clothing/suit/armor/marlowsuit
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 2

/datum/gear/suit/armorkit
	name = "Armor Kit"
	path = /obj/item/clothing/suit/armor/light/kit
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 2

/datum/gear/suit/punkkit
	name = "Punk Armor Kit"
	path = /obj/item/clothing/suit/armor/light/kit/punk
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 2

/datum/gear/suit/autumn
	name = "tan trenchcoat"
	path = /obj/item/clothing/suit/armor/light/duster/autumn
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 2

/datum/gear/suit/ncrcfjacket
	name = "NCRCF jacket"
	path = /obj/item/clothing/suit/armor/outfit/overalls/ncrcfjacket
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 1

/datum/gear/suit/samurai  //added by TK420634 ~ 5/29/2022 "Samurai Wasteland WeebShit Edition (tm)
	name = "Rusted Samurai Armor"
	path = /obj/item/clothing/suit/samurai
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 2

/// 	Beginning of Coats/Armor section
// 	Below are one points as they are cosmetics

/datum/gear/suit/fieldscribe
	name = "Fieldscribe suit"
	path = /obj/item/clothing/suit/toggle/labcoat/fieldscribe
	subcategory = LOADOUT_SUBCATEGORY_SUIT_FACTIONS
	cost = 2
	restricted_desc = "Scribes"
	restricted_roles = list("Head Scribe",
							"Senior Scribe",
							"Scribe",
							)

/datum/gear/suit/scribecoat
	name = "Fieldscribe coat"
	path = /obj/item/clothing/suit/toggle/labcoat/scribecoat
	subcategory = LOADOUT_SUBCATEGORY_SUIT_FACTIONS
	cost = 2
	restricted_desc = "Scribes"
	restricted_roles = list("Head Scribe",
							"Senior Scribe",
							"Scribe",
							)

/datum/gear/suit/town
	name = "Town Trenchcoat"
	path = /obj/item/clothing/suit/armor/light/duster/town
	subcategory = LOADOUT_SUBCATEGORY_SUIT_FACTIONS
	cost = 2
	restricted_desc = "Eastwood"
	restricted_roles = list("Mayor",
							"Director",
							"Provost Marshal",
							"Town Doctor",
							"Citizen",
							"Deputy Marshal",
							"Merchant",
							"Researcher",
							"Prospector",
							"Detective",
							"Barkeep",
							"Preacher"
							)

/datum/gear/suit/blueshirt
	name = "Eastwood light armor vest"
	path = /obj/item/clothing/suit/armor/light/vest/blueshirt
	subcategory = LOADOUT_SUBCATEGORY_SUIT_FACTIONS
	cost = 3
	restricted_desc = "Eastwood PD, Eastwood officials"
	restricted_roles = list("Mayor",
							"Provost Marshal",
							"Deputy Marshal",
							"Merchant"
							)

/datum/gear/suit/hazardvest
	name = "Hazard Vest"
	path = /obj/item/clothing/suit/hazardvest
	subcategory = LOADOUT_SUBCATEGORY_SUIT_FACTIONS
	cost = 2
	restricted_roles = list("Citizen",
							"Prospector"
							)


// BEGIN_INTERNALS
// END_INTERNALS
// BEGIN_FILE_DIR
#define FILE_DIR .
// END_FILE_DIR
// BEGIN_PREFERENCES
// END_PREFERENCES
// BEGIN_INCLUDE
// END_INCLUDE
