/datum/codex_category/smithing
	name = "Smithing"
	desc = "Recipes for smithing with an anvil."
	guide_name = "Smithing"

/datum/codex_category/smithing/Populate()

	guide_html = {"
		<h1>Smithing guide</h1>
		Here is a guide on how to forge yourself into the history books.

		<h3>Basics:</h3>
		<ul>
		<li>How to work a hammer and anvil and produce basic tools.</li>
		<li>The needed tools are: good gloves, metal ingots, a furnace, wood planks, an anvil, quenching trough and a special hammer. </li>

		<li>Forging mittens: Only very thick mittens are really reliable enough for touching red-hot metal. Make some from leather if you need to.</li> 
		<li>Metal ingots: Take the metal stack you want to work in your hand and fashion ingots from it. (inhand crafting) </li>
		<li>Furnace: Needs fuel, welding fuel most commonly. Five measures of fuel burns fast but is enough to heat a couple ingots if you are fast. </li>
		<li>Wooden bits: Cut down planks to rods with something sharp. Then cut leather to strips and wrap it around the rod for making a sword handle, or directly on the workpiece for some tools. </li>
		<li>Metal bits: On occasion you might need some chain to complete your work, if so, take a metal sheet in your hand and make a length of chain from it. (inhand crafting) </li>
		<li>Anvil: A solid anvil makes things easier. (crafting menu forging & blacksmithing) </li>
		<li>Quenching trough: Basically a big tub of water, or oil. (crafting menu forging & blacksmithing) </li>
		<li>Hammer: Most commonly a sledgehammer is used for the first work, which is making a better hammer. Craft one to get going. (crafting menu forging & blacksmithing) </li>

		<li><h3>The process<h3>

		<li>Heat the ingot, move it to the anvil. </li>
		<li>Prepare the metal, weak, strong and heavy hits enhance the quality but overworking the metal will produce slag and you have to start over. Try a couple hits then move on to making the item if you have no other ideas. </li>
		<li>Follow the smithing recipe for the item you want to make, the end result will depend on how much experience you have smithing, and the quality of your tools and preparations. </li>
		<li>Quenching: when the hot metal piece is finished, you need to temper it in cold fluids in a trough to finish it, before adding fittings such as a wooden rod, sword handle, chain or leather strips.</li>
		<li>The first item you make should be a good hammer, you might need to repeat the process and replace the previous hammer with a new one in steps. Try to have at least a masterworked iron hammer before moving on to other items to save you headache. </li>
		</ul>"}

	var/list/entries_to_register = list()

	var/list/smithing_recipes = GLOB.anvil_recipes
	
	for(var/i in smithing_recipes)

		var/mechanics_text
		var/lore_text
		var/category_name

		var/datum/smithing/smithing_recipe = i
		if(!istype(smithing_recipe) || isnull(smithing_recipe.id))
			continue
		
		category_name = "smithing recipe"

		var/list/working_text = get_smithing_recipe(smithing_recipe.construct_steps)

		var/obj/item/smithing/smithing_result = smithing_recipe.result // This is the uncompleted item made by smithing.

		lore_text = initial(smithing_result.desc)
		mechanics_text = "This recipe produces \a [initial(smithing_result.name)].<br>It should be performed following the smithing guide at an avil and requires the following steps:"
		mechanics_text += "<br> [working_text]"

		entries_to_register += new /datum/codex_entry(                  \
		_display_name =       "[smithing_recipe.name] ([category_name])",         \
		_associated_strings = list("[smithing_recipe.name] (smithing)"), \
		_lore_text =          lore_text,                               \
		_mechanics_text =     mechanics_text,                          \
		)

	for(var/datum/codex_entry/entry in entries_to_register)
		items |= entry.name

	. = ..()

/datum/codex_category/smithing/proc/get_smithing_recipe(recipe)
	var/list/split_recipe = splittext(recipe, "")
	var/list/completed_recipe = list()
	for(var/i in split_recipe)
		switch(i)
			if("b")
				completed_recipe += "Bend"
			if("u")
				completed_recipe += "Upset"
			if("s")
				completed_recipe += "Shrink"
			if("p")
				completed_recipe += "Punch"
			if("d")
				completed_recipe += "Draw"
			if("f")
				completed_recipe += "Fold"

	return english_list(completed_recipe, and_text = " then ")
		
