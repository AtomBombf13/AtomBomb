/datum/codex_category/recipes
	name = "Recipes"
	desc = "Recipes for a variety of different kinds of foods and condiments."
	guide_name = "Cooking"

/datum/codex_category/recipes/Populate()

	var/list/entries_to_register = list()

	guide_html = {"
		<h1>Chef recipes</h1>
		Here is a guide on food recipes and also how to not poison your customers accidentally.

		<h3>Basics:</h3>
		<ul>
		<li>Mix an egg and some flour along with some water to make dough.</li>
		<li>Bake that to make a bun or flatten and cut it.</li>
		<li>Cut up a meat slab with a sharp knife to make cutlets.</li>
		<li>Mix flour and protein (ground meat) to make meatballs.</li>
		</ul>"}

	var/list/all_recipe_reactions = GLOB.crafting_recipes
	for(var/reactiontype in all_recipe_reactions)
		var/datum/crafting_recipe/food/food = reactiontype
		if(!istype(food) || !food.name || food.hidden_from_codex)
			continue
		var/mechanics_text
		var/lore_text
		var/category_name

		var/datum/crafting_recipe/food/food_ref = food
		var/obj/item/product = food_ref.result
		if(!product)
			continue
		category_name = "craft food"
		lore_text = initial(product.desc)
		mechanics_text = "This recipe produces \a [initial(product.name)].<br>It should be performed using the crafting menu and requires the following ingredients:"


		var/list/reactant_values = list()
		for(var/reactant_id in food.reqs)
			var/obj/item/reactant = reactant_id
			reactant_values += "[food.reqs[reactant_id]]u <span codexlink='[initial(reactant.name)] (substance)'>[initial(reactant.name)]</span>"
		mechanics_text += " [jointext(reactant_values, " + ")]"


		/* TODO: Drinks
		var/list/catalysts = list()
		for(var/catalyst_id in food.required_catalysts)
			var/decl/material/catalyst = GET_DECL(catalyst_id)
			catalysts += "[food.catalysts[catalyst_id]]u <span codexlink='[catalyst.codex_name || catalyst.name] (substance)'>[catalyst.name]</span>"
		if(catalysts.len)
			mechanics_text += " (catalysts: [jointext(catalysts, ", ")])]"
		if(food.maximum_temperature != INFINITY)
			mechanics_text += "<br>The recipe will not succeed if the temperature is above [food.maximum_temperature]K."
		if(food.minimum_temperature > 0)
			mechanics_text += "<br>The recipe will not succeed if the temperature is below [food.minimum_temperature]K."
		*/

		entries_to_register += new /datum/codex_entry(                  \
		 _display_name =       "[food.name] ([category_name])",         \
		 _associated_strings = list("[food.name] (chemical reaction)"), \
		 _lore_text =          lore_text,                               \
		 _mechanics_text =     mechanics_text,                          \
		)

	/*var/list/all_recipes = decls_repository.get_decls_of_subtype(/decl/recipe)
	for(var/rtype in all_recipes)
		var/decl/recipe/recipe = all_recipes[rtype]
		if(!istype(recipe) || recipe.hidden_from_codex || !recipe.result)
			continue

		var/mechanics_text = ""
		if(recipe.mechanics_text)
			mechanics_text = "[recipe.mechanics_text]<br><br>"
		mechanics_text += "This recipe requires the following ingredients:<br>"
		var/list/ingredients = list()
		for(var/thing in recipe.reagents)
			var/decl/material/thing_reagent = GET_DECL(thing)
			ingredients += "[recipe.reagents[thing]]u <span codexlink='[thing_reagent.codex_name || thing_reagent.name] (substance)'>[thing_reagent.name]</span>"
		for(var/thing in recipe.items)
			var/atom/thing_atom = thing
			var/count = recipe.items[thing]
			var/thing_name = initial(thing_atom.name)
			if(SScodex.get_entry_by_string(thing_name))
				thing_name = "<l>[thing_name]</l>"
			ingredients += (count > 1) ? "[count]x [thing_name]" : "\a [initial(thing_atom.name)]"
		for(var/thing in recipe.fruit)
			ingredients += "[recipe.fruit[thing]] [thing]\s"
		mechanics_text += "<ul><li>[jointext(ingredients, "</li><li>")]</li></ul>"
		var/atom/recipe_product = recipe.result
		mechanics_text += "<br>This recipe takes [CEILING(recipe.time/10, 1)] second\s to cook in a microwave and creates \a [initial(recipe_product.name)]."
		var/lore_text = recipe.lore_text
		if(!lore_text)
			lore_text = initial(recipe_product.desc)

		var/recipe_name = recipe.display_name || sanitize(initial(recipe_product.name))
		guide_html += "<h3>[capitalize(recipe_name)]</h3>Place [english_list(ingredients)] into a microwave for [CEILING(recipe.time/10, 1)] second\s."

		entries_to_register += new /datum/codex_entry(             \
		 _display_name =       "[recipe_name] (microwave recipe)", \
		 _lore_text =          lore_text,                          \
		 _mechanics_text =     mechanics_text,                     \
		 _antag_text =         recipe.antag_text                   \
		)*/

	for(var/datum/codex_entry/entry in entries_to_register)
		items |= entry.name

	. = ..()
