/mob/living/carbon/human
	var/saved_underwear = ""//saves their underwear so it can be toggled later
	var/saved_undershirt = ""
	var/saved_socks = ""
	var/hidden_underwear = FALSE
	var/hidden_undershirt = FALSE
	var/hidden_socks = FALSE

//Mob procs
/mob/living/carbon/human/verb/underwear_toggle()
	set name = "Toggle undergarments"
	set category = "IC"

	var/confirm = input(src, "Select what part of your form to alter", "Undergarment Toggling") as null|anything in list("Top", "Bottom", "Socks", "All")
	if(!confirm)
		return
	if(confirm == "Top")
		hidden_undershirt = !hidden_undershirt

	if(confirm == "Bottom")
		hidden_underwear = !hidden_underwear

	if(confirm == "Socks")
		hidden_socks = !hidden_socks

	if(confirm == "All")
		var/on_off = (hidden_undershirt || hidden_underwear || hidden_socks) ? FALSE : TRUE
		hidden_undershirt = on_off
		hidden_underwear = on_off
		hidden_socks = on_off

	update_body(TRUE)

