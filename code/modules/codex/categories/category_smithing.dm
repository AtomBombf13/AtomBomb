/datum/codex_category/smithing
	name = "Smithing"
	desc = "Recipes for smithing with an anvil."
	guide_name = "Smithing"
	var/list/split_wojack

/datum/codex_category/smithing/Populate()

	var/list/entries_to_register = list()

	guide_html = {"
		<h1>Chef recipes</h1>
		Here is a guide on food recipes and also how to not poison your customers accidentally.

		<h3>Basics:</h3>
		<ul>
		<li>Mix water and some flour to make dough.</li>
		<li>Bake that to make a bun or flatten and cut it.</li>
		<li>Cut up a meat slab with a sharp knife to make cutlets.</li>
		<li>Process a slab of meat to make meatballs.</li>
		</ul>"}

	for(var/smithing_recipe in GLOB.anvil_recipes)
		parse_smithing_recipe(smithing_recipe)


/datum/codex_category/smithing/proc/parse_smithing_recipe(var/recipe)
	split_wojack += splittext(recipe, regex(@"\d+|\D+"))
		
