#define DICK_MOVEMENT_SPEED "hugedick"
#define BREAST_MOVEMENT_SPEED "megamilk"

/datum/status_effect/chem/SGDF
	id = "SGDF"
	var/mob/living/fermi_Clone
	var/mob/living/original
	var/datum/mind/originalmind
	var/status_set = FALSE
	alert_type = null

/datum/status_effect/chem/SGDF/on_apply()
	log_reagent("FERMICHEM: SGDF status appied on [owner], ID: [owner.key]")
	fermi_Clone = owner
	return ..()

/datum/status_effect/chem/SGDF/tick()
	if(!status_set)
		return ..()
	if(original.stat == DEAD || original == null || !original)
		if((fermi_Clone && fermi_Clone.stat != DEAD) || (fermi_Clone == null))
			if(originalmind)
				owner.remove_status_effect(src)
	..()

/datum/status_effect/chem/SGDF/on_remove()
	log_reagent("FERMICHEM: SGDF mind shift applied. [owner] is now playing as their clone and should not have memories after their clone split (look up SGDF status applied). ID: [owner.key]")
	originalmind.transfer_to(fermi_Clone)
	to_chat(owner, span_warning("Lucidity shoots to your previously blank mind as your mind suddenly finishes the cloning process. You marvel for a moment at yourself, as your mind subconciously recollects all your memories up until the point when you cloned yourself. Curiously, you find that you memories are blank after you ingested the synthetic serum, leaving you to wonder where the other you is."))
	fermi_Clone = null
	return ..()

///////////////////////////////////////////////
//			Astral INSURANCE
///////////////////////////////////////////////
//Makes sure people can't get trapped in each other's bodies if lag causes a deync between proc calls.


/datum/status_effect/chem/astral_insurance
	id = "astral_insurance"
	var/mob/living/original
	var/datum/mind/originalmind
	alert_type = null

/datum/status_effect/chem/astral_insurance/tick(mob/living/carbon/M)
	. = ..()
	if(owner.reagents.has_reagent(/datum/reagent/fermi/astral))
		return
	if(owner.mind == originalmind) //If they're home, let the chem deal with deletion.
		return
	if(owner.mind)
		var/mob/living/simple_animal/astral/G = new(get_turf(M.loc))
		owner.mind.transfer_to(G)//Just in case someone else is inside of you, it makes them a ghost and should hopefully bring them home at the end.
		to_chat(G, "<span class='warning'>[M]'s conciousness snaps back to them as their astrogen runs out, kicking your projected mind out!'</b></span>")
		log_reagent("FERMICHEM: [M]'s possesser has been booted out into a astral ghost!")
	originalmind.transfer_to(original)

/datum/status_effect/chem/astral_insurance/on_remove() //God damnit get them home!
	if(owner.mind != originalmind) //If they're home, HOORAY
		if(owner.mind)
			var/mob/living/simple_animal/astral/G = new(get_turf(owner))
			owner.mind.transfer_to(G)//Just in case someone else is inside of you, it makes them a ghost and should hopefully bring them home at the end.
			to_chat(G, "<span class='warning'>[owner]'s conciousness snaps back to them as their astrogen runs out, kicking your projected mind out!'</b></span>")
			log_reagent("FERMICHEM: [owner]'s possesser has been booted out into a astral ghost!")
		originalmind.transfer_to(original)
	return ..()

/*//////////////////////////////////////////
		K Y S
///////////////////////////////////////////
*/
