/obj/structure/destructible/clockwork/trap/power_nullifier
	name = "power nullifier"
	desc = "A well hidden set of wires and connections."
	clockwork_desc = "When triggered, it sets off a 3x3 emp pulse with the center suffering a stronger pulse."
	icon_state = "electric_trap"
	break_message = span_warning("The power nullifier sparks, then slowly crumbles to debris!")
	max_integrity = 40
	density = FALSE
	var/activated = FALSE

/obj/structure/destructible/clockwork/trap/power_nullifier/activate()
	if(!activated)
		activated = TRUE
		empulse_using_range(get_turf(src),1,TRUE)

/obj/structure/destructible/clockwork/trap/power_nullifier/emp_act(strength=1)
	activate()
