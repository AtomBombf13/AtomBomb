/*CONTAINED WITHIN FILE:
- Legion Under Shirts
*/

//Legion

/obj/item/clothing/under/f13/campfollowermale
	name = "camp follower male robe"
	desc = "Olive colored cloth with a red belt."
	icon_state = "legcamp"
	item_state = "brownjsuit"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/f13/campfollowerfemale
	name = "camp follower female robe"
	desc = "Olive colored cloth with a red sash."
	icon_state = "legcamp_f"
	item_state = "legcamp_f"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/f13/legskirt
	name = "legionary fatigues"
	desc = "A black learthery skirt and a thick long sleeve cotton shirt."
	icon_state = "legskirt"
	item_state = "legskirt"
	item_color = "legskirt"
	var/sleeves_adjusted = 0
	lefthand_file = 'icons/mob/inhands/clothing_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/clothing_righthand.dmi'
	alt_covers_chest = TRUE
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = TRUE

/obj/item/clothing/under/f13/legskirt/tac
	name = "\improper ''tactical'' combat skirt"
	desc = "A leathery skirt below a thick, black, long-sleeve cotton shirt. Perfect for operatives favoring wardrobe malfunctions."
	icon_state = "tacskirt"
	item_state = "tacskirt"
	item_color = "tacskirt"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = TRUE

/obj/item/clothing/under/f13/priestess
	name = "priestess robes"
	desc = "The robes worn by a Priestess of Mars."
	icon_state = "priestess"
	item_state = "priestess"
	item_color = "priestess"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/f13/pmarsrobe
	name = "priestess of mars robe"
	desc = "A red robe decorated with bird feathers for the Priestess of Mars."
	icon_state = "pmars_robe"
	item_state = "pmars_robe"
	armor = list(melee = 0, bullet = 0, laser = 20, energy = 20, bomb = 5, bio = 0, rad = 0, fire = 100, acid = 0)
	resistance_flags = LAVA_PROOF | FIRE_PROOF
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	flags_inv = HIDEGLOVES|HIDESHOES
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/f13/legauxilia
	name = "male auxilia robes"
	desc = "Thin cotton robe for males, short sleeved with a leather belt, ends just above the knees."
	icon_state = "legaux"
	item_state = "legaux"
	item_color = "legskirt"
	lefthand_file = 'icons/mob/inhands/clothing_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/clothing_righthand.dmi'
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/f13/legauxiliaf
	name = "female auxilia robes"
	desc = "Thin cotton robe for females, kneelength and held together by a black sash."
	icon_state = "legauxf"
	item_state = "legauxf"
	item_color = "legskirt"
	lefthand_file = 'icons/mob/inhands/clothing_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/clothing_righthand.dmi'
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/f13/legslave
	name = "simple male slave clothing"
	desc = "A roughly made long tunic, held in place by a rope, its marked with a big red X signaling its wearer is property of the Legion."
	icon_state = "legslave"
	item_state = "legslave"
	item_color = "rag"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/f13/legslavef
	name = "simple female slave clothing"
	desc = "A roughly made long tunic, held in place by a rope, its marked with a big red X signaling its wearer is property of the Legion."
	icon_state = "legslavef"
	item_state = "legslavef"
	item_color = "rag"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE
