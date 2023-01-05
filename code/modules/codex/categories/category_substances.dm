/datum/codex_category/substances
	name = "Substances"
	desc = "Various natural and artificial substances."

/datum/codex_category/substances/Populate()

	var/list/entries_to_register = list()

	var/list/all_recipe_reactions = GLOB.chemical_reagents_list

	for(var/reactiontype in all_recipe_reactions)
		var/mechanics_text
		var/lore_text
		var/category_name

		var/datum/reagent/working_reagent = all_recipe_reactions[reactiontype]
		if(!istype(working_reagent) || working_reagent.hidden_from_codex)
			continue
		category_name = "chemical substance"
		lore_text = initial(working_reagent.description)
		mechanics_text = "This substance is \a [initial(working_reagent.name)]."

		if(working_reagent.taste_description)
			mechanics_text += "<br>It tastes like [initial(working_reagent.taste_description)]"
		
		var/key = "[working_reagent.name] (chemistry reaction)"
		var/datum/codex_entry/entry = SScodex.get_codex_entry(key)
		if(entry)
			mechanics_text += "<br>This can be made with this recipe: <span codexlink='[key]'>[initial(working_reagent.name)]</span>"

		entries_to_register += new /datum/codex_entry(                  \
		_display_name =       "[working_reagent.name] ([category_name])",         \
		_associated_strings = list("[working_reagent.name] (chemical substance)"), \
		_lore_text =          lore_text,                               \
		_mechanics_text =     mechanics_text,                          \
		)

	for(var/datum/codex_entry/entry in entries_to_register)
		items |= entry.name

	. = ..()
