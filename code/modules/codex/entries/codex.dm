/datum/codex_entry/survival_guide
	name = "The Wasteland Survival Guide"
	lore_text = "The Wasteland Survival Guide is the overall body containing the document that you are currently reading. It is a distributed encyclopedia maintained by a dedicated, hard-working staff of scrappers, farmers, mercenaries, and common travelers, all with the goal of providing you, the user, with supposedly up-to-date, nominally useful documentation on the topics you want to know about (And to hopefully keep you alive just a bit longer!). \
	<br><br> \
	Access to the Wasteland Survival Guide is afforded instantly by a variety of methods, including pip-boy and the hard-copy books! \
	<br><br> \
	The Wasteland Survival Guide editorial offices for this region are located in Novac and will offer cash payments for stories, anecdotes and evidence of the strange and undocumented miscellany cluttering up our little slice of wasteland. Remember our motto: <i>\"Knowledge is power, sell your excess!\"</i>"

/datum/codex_entry/survival_guide/New()
	mechanics_text = "The Wasteland Survival Guide is both an IC and OOC resource. ICly, it is as described; a survival book. You can use <b>Search-Codex <i>topic</i></b> to look something up, or you can click the links provided when examining some objects. \
	<br><br> \
	Any of the lore you find in the Survival Guide, designated by <span class='codexLore'>green</span> text, can be freely referenced in-character. \
	<br><br> \
	OOC information on various mechanics and interactions is marked by <span class='codexMechanics'>blue</span> text. \
	<br><br> \
	Information for special entries will not be shown unless you are an {redacted}, and is marked by <span class='codexAntag'>red</span> text."
	..()

/datum/codex_entry/nexus
	name = "Table of Contents"
	mechanics_text = "The place to start with <span codexlink='The Wasteland Survival Guide'>The Wasteland Survival Guide</span><br>"

/datum/codex_entry/nexus/get_codex_body(mob/presenting_to, include_header, include_footer)
	. = list(get_codex_header(presenting_to))
	. += "[mechanics_text]"
	. += "<h3>Categories</h3>"
	var/list/category_strings
	var/list/categories = SScodex.categories
	for(var/i= 1, i<=categories.len, i++)
		var/datum/codex_category/C = categories[i]
		if(!C?.name)
			continue
		var/key = "[C.name] (category)"
		var/datum/codex_entry/entry = SScodex.get_codex_entry(key)
		if(entry)
			LAZYADD(category_strings, "<li><span codexlink='[key]'>[initial(C.name)]</span> - [initial(C.desc)]")
	. += jointext(category_strings, " ")
	return "<span class = 'codexMechanics'>[jointext(., null)]</span>"

/client/proc/codex_topic(href, href_list)
	if(href_list["codex_search"]) //nano throwing errors
		search_codex()
		return TRUE

	if(href_list["codex_index"]) //nano throwing errors
		list_codex_entries()
		return TRUE
