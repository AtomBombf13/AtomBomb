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
		<li>Mix water and some flour to make dough.</li>
		<li>Bake that to make a bun or flatten and cut it.</li>
		<li>Cut up a meat slab with a sharp knife to make cutlets.</li>
		<li>Process a slab of meat to make meatballs.</li>
		</ul>"}

	var/list/all_recipes = GLOB.crafting_recipes

	for(var/reactiontype in all_recipes)
		var/mechanics_text
		var/lore_text
		var/category_name
		if(istype(reactiontype, /datum/crafting_recipe/food/)) // Special check for food, rest can be generic
			var/datum/crafting_recipe/food/food = reactiontype
			if(!istype(food) || !food.name || food.hidden_from_codex)
				continue

			var/datum/crafting_recipe/food/food_ref = food
			var/obj/item/product = food_ref.result
			if(!product)
				continue
			category_name = "craft food"
			lore_text = initial(product.desc)
			mechanics_text = "This recipe produces \a [initial(product.name)].<br>It should be performed using the crafting menu under the [initial(food_ref.category)] category and requires the following ingredients:"

			var/list/crafting_requirements = list()
			for(var/part_id in food.reqs)
				var/obj/item/part = part_id
				crafting_requirements += "[food.reqs[part_id]]u <span codexlink='[initial(part.name)] (substance)'>[initial(part.name)]</span>"
			mechanics_text += " [jointext(crafting_requirements, " + ")]"
			if(!food.always_available)
				mechanics_text += "<br> You need special knowledge to craft this!"

			entries_to_register += new /datum/codex_entry(                  \
			_display_name =       "[food.name] ([category_name])",         \
			_associated_strings = list("[food.name] (crafting recipe)"), \
			_lore_text =          lore_text,                               \
			_mechanics_text =     mechanics_text,                          \
			)
		else
			var/datum/crafting_recipe/working_recipe = reactiontype
			if(!istype(working_recipe) || !working_recipe.name || working_recipe.hidden_from_codex)
				continue
			var/obj/item/product = working_recipe.result
			if(!product)
				continue
			category_name = "craft item"
			lore_text = initial(product.desc)
			mechanics_text = "This recipe produces \a [initial(product.name)].<br>It should be performed using the crafting menu under the [initial(working_recipe.category)] category and requires the following ingredients:"

			var/list/crafting_requirements = list()
			for(var/part_id in working_recipe.reqs)
				var/obj/item/part = part_id
				crafting_requirements += "[working_recipe.reqs[part_id]]u <span codexlink='[initial(part.name)] (item)'>[initial(part.name)]</span>"
			mechanics_text += " [jointext(crafting_requirements, " + ")]"
			if(!working_recipe.always_available)
				mechanics_text += "<br> You need special knowledge to craft this!"

			entries_to_register += new /datum/codex_entry(                  \
			_display_name =       "[working_recipe.name] ([category_name])",         \
			_associated_strings = list("[working_recipe.name] (crafting recipe)"), \
			_lore_text =          lore_text,                               \
			_mechanics_text =     mechanics_text,                          \
			)

	for(var/datum/codex_entry/entry in entries_to_register)
		items |= entry.name

	. = ..()
