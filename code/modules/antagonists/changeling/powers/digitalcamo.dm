/obj/effect/proc_holder/changeling/digitalcamo
	name = "Digital Camouflage"
	desc = "By evolving the ability to distort our form and proportions, we defeat common algorithms used to detect lifeforms on cameras."
	helptext = "We cannot be tracked by camera or seen by AI units while using this skill. However, humans looking at us will find us... uncanny. This ability is somewhat loud, and carries a small risk of our blood gaining violent sensitivity to heat."
	dna_cost = 1
	loudness = 1
	action_icon = 'icons/mob/actions/actions_changeling.dmi'
	action_icon_state = "ling_digital_camo"
	action_background_icon_state = "bg_ling"

//Prevents AIs tracking you but makes you easily detectable to the human-eye.
/obj/effect/proc_holder/changeling/digitalcamo/sting_action(mob/user)

	if(user.digitalcamo)
		to_chat(user, span_notice("We return to normal."))
		user.digitalinvis = 0
		user.digitalcamo = 0
	else
		to_chat(user, span_notice("We distort our form to hide from the AI"))
		user.digitalcamo = 1
		user.digitalinvis = 1
	return TRUE

/obj/effect/proc_holder/changeling/digitalcamo/on_refund(mob/user)
	action.Remove(user)
	user.digitalcamo = 0
	user.digitalinvis = 0
