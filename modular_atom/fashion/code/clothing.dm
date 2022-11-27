// Where I put my old stuff I update or new things I make of a sufficent quality that I don't want them mixed in with the chaotic piles in master.


// ------------------------ DRESSES ----------------------------- //

/obj/item/clothing/under/f13/female/dress
	name = "picnic dress"
	desc = "Cheery polkadot casual dress."
	icon = 'modular_atom/fashion/icons/clothing.dmi'
	mob_overlay_icon = 'modular_atom/fashion/icons/onmob.dmi'
	righthand_file = 'modular_atom/fashion/icons/onmobright.dmi'
	lefthand_file = 'modular_atom/fashion/icons/onmobleft.dmi'
	icon_state = "dress_picnic"
	item_state = "dress_picnic"
	armor = ARMOR_VALUE_CLOTHES

/obj/item/clothing/under/f13/female/dress/fifties
	name = "50s style dress"
	desc = "Fancy checkered yellow dress with small shoulder puffs."
	icon_state = "dress_50s"
	item_state = "dress_50s"

/obj/item/clothing/under/f13/female/dress/nurse
	name = "nurse uniform"
	desc = "Pre-war style nurse uniform in blue and white."
	icon_state = "dress_nurse"
	item_state = "dress_nurse"
	permeability_coefficient = 0.5
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T1)



// ------------------------ HEADWEAR ----------------------------- //

/obj/item/clothing/head/fashion
	name = "hairband"
	desc = "Pretty yellow ribbon to tie up your hair with."
	icon = 'modular_atom/fashion/icons/clothing.dmi'
	mob_overlay_icon = 'modular_atom/fashion/icons/onmob.dmi'
	righthand_file = 'modular_atom/fashion/icons/onmobright.dmi'
	lefthand_file = 'modular_atom/fashion/icons/onmobleft.dmi'
	icon_state = "hat_hairband"
	item_state = "hat_hairband"
	armor = ARMOR_VALUE_CLOTHES

/obj/item/clothing/head/fashion/hat_scarecrow
	name = "scarecrow hat"
	desc = "Felt hat, no nonsense. Looks good on a scarecrow."
	icon_state = "hat_scarecrow"
	item_state = "hat_scarecrow"
	dynamic_hair_suffix = "+generic"
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T1)

/obj/item/clothing/head/fashion/hat_nurse
	name = "nurse's hat"
	desc = "Looks just like in the pre-war magazines. Hopefully the wearer has some sort of medical training."
	icon_state = "hat_nurse"
	item_state = "hat_nurse"
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T1)



// ------------------------ SUITS ----------------------------- //

/obj/item/clothing/suit/armor/outfit/overalls/farmer
	icon = 'modular_atom/fashion/icons/clothing.dmi'
	mob_overlay_icon = 'modular_atom/fashion/icons/onmob.dmi'
	righthand_file = 'modular_atom/fashion/icons/onmobright.dmi'
	lefthand_file = 'modular_atom/fashion/icons/onmobleft.dmi'
	icon_state = "overalls_farmer"
	item_state = "overalls_farmer"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/service/overalls
