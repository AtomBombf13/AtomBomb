/*CONTAINED WITHIN FILE:
- Khan Undershirts
*/

//Khans
/obj/item/clothing/under/f13/khan
	name = "great khan uniform"
	desc = "Clothing marking the wearer as one of the the Great Khans. Most common are denim pants."
	icon = 'icons/fallout/clothing/khans.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/khaans.dmi'
	icon_state = "khan_uniform"
	item_state = "khan_uniform"
	item_color = "khan_uniform"
	fitted = NO_FEMALE_UNIFORM
	var/uniformtoggled = FALSE

/obj/item/clothing/under/f13/khan/shorts //Skirt aswell, if you alt click on it, turns into khan skirt.
	name = "great khan jorts"
	desc = "Clothing marking the wearer as one of the the Great Khans. Most common are denim pants, but jorts is a acceptable alternative."
	icon = 'icons/fallout/clothing/khans.dmi'
	icon_state = "khan_short"
	item_state = "khan_short"

/obj/item/clothing/under/f13/khan/booty
	name = "khan booty shorts"
	desc = "Clothing marking the wearer as one of the the Great Khans. Most common are denim pants, But this pair doesn't seem to leave much to the imagination."
	icon = 'icons/fallout/clothing/khans.dmi'
	icon_state = "khan_booty"
	item_state = "khan_booty"

/obj/item/clothing/under/f13/khan/Goji
	name = "Leather Pants"
	desc = "Clothing marking the wearer as one of the the Great Khans. Most common are denim pants, but this is a pair of tight leather pants."
	icon = 'icons/fallout/clothing/khans.dmi'
	icon_state = "Gojipants"
	item_state = "Gojipants"
	item_color = "Gojipants"

// Testing fixed toggle uniform so icon updates properly
/obj/item/clothing/under/f13/khan/AltClick(mob/user)
	. = ..()
	if(!user.canUseTopic(src, BE_CLOSE, ismonkey(user)))
		return
	uniform_toggle(user)
	return TRUE

/obj/item/clothing/under/f13/khan/ui_action_click()
	uniform_toggle()

/obj/item/clothing/under/f13/khan/proc/uniform_toggle()
	set src in usr

	if(!can_use(usr))
		return 0

	to_chat(usr, span_notice("You adjust the [src]."))
	if(src.uniformtoggled)
		src.icon_state = "[initial(icon_state)]"
		src.item_state = "[initial(icon_state)]"
		src.uniformtoggled = FALSE
	else if(!src.uniformtoggled)
		src.icon_state = "[initial(icon_state)]_t"
		src.item_state = "[initial(icon_state)]_t"
		src.uniformtoggled = TRUE
	usr.update_inv_w_uniform()
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()
