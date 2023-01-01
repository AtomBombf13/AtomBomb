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
		var/mechanics_text
		var/lore_text
		var/category_name
		if(istype(reactiontype, /datum/crafting_recipe/food/))
			var/datum/crafting_recipe/food/food = reactiontype
			if(!istype(food) || !food.name || food.hidden_from_codex)
				continue

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



			entries_to_register += new /datum/codex_entry(                  \
			_display_name =       "[food.name] ([category_name])",         \
			_associated_strings = list("[food.name] (chemical reaction)"), \
			_lore_text =          lore_text,                               \
			_mechanics_text =     mechanics_text,                          \
			)

	for(var/datum/codex_entry/entry in entries_to_register)
		items |= entry.name

	. = ..()
