/datum/codex_category/chemical_reactions
	name = "Chemical Recations"
	desc = "List of chemical reactions and their parts."
	//defer_population = TRUE

/datum/codex_category/chemical_reactions/Populate()

	var/list/entries_to_register = list()


	var/list/all_reactions = GLOB.chemical_reactions_list

	for(var/reactiontype in all_reactions)
		var/mechanics_text
		var/lore_text
		var/category_name

		for(var/i, i<= LAZYLEN(all_reactions[reactiontype]), i++)

			var/datum/chemical_reaction/working_reaction = all_reactions[reactiontype][i]
			if(!istype(working_reaction) || working_reaction.hidden_from_codex)
				continue

			if(!LAZYLEN(working_reaction.results))
				continue
			
			category_name = "chemistry reaction"
			//lore_text = initial(product.description) have to figure out something to put here since some things have multiple products...
			mechanics_text = "This recipe produces the following:<br>"

			for(var/working_product in working_reaction.results)
				var/datum/reagent/result = working_product
				mechanics_text += " [working_reaction.results[working_product]]u <span codexlink='[initial(result.name)] (chemical substance)'>[initial(result.name)]"

			mechanics_text += "<br>It should be performed by mixing the chemicals needed together. It requires the following ingredients:"

			var/list/chemical_requirements = list()
			for(var/part_id in working_reaction.required_reagents)
				var/datum/reagent/part = part_id
				chemical_requirements += "[working_reaction.required_reagents[part_id]]u <span codexlink='[initial(part.name)] (chemical substance)'>[initial(part.name)]</span>"
			mechanics_text += " [jointext(chemical_requirements, " + ")]"

			var/list/catalyst_requirements = list()
			for(var/catalyst_id in working_reaction.required_catalysts)
				var/datum/reagent/catalyst_part = catalyst_id
				catalyst_requirements += "<span codexlink='[initial(catalyst_part.name)] (chemical substance)'>[initial(catalyst_part.name)]</span>"
			if(LAZYLEN(catalyst_requirements))
				mechanics_text += "<br>You need the combine the above with the following as a catalyst:"
				mechanics_text += " [jointext(catalyst_requirements, " + ")]"


			//if(!working_reaction.always_available)
			//	mechanics_text += "<br> You need special knowledge to craft this!"

			entries_to_register += new /datum/codex_entry(                  \
			_display_name =       "[working_reaction.name] ([category_name])",         \
			_associated_strings = list("[working_reaction.name] (chemistry recipe)"), \
			_lore_text =          lore_text,                               \
			_mechanics_text =     mechanics_text,                          \
			)


	for(var/datum/codex_entry/entry in entries_to_register)
		items |= entry.name

	. = ..()
