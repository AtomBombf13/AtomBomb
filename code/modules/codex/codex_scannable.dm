var/global/list/unlocked_codex_scannables = list()

/datum/extension/scannable
	expected_type = /atom
	base_type = /datum/extension/scannable
	var/associated_entry
	var/scan_delay = 5 SECONDS

/datum/extension/scannable/New(datum/holder, entry_value, _scan_delay)
	..()
	associated_entry = entry_value
	if(isnum(_scan_delay))
		scan_delay = _scan_delay

/datum/codex_entry/scannable
	name = null
	var/secret_text
	var/has_scannable_secrets = FALSE
	var/worth_points = 1
	var/category

/datum/codex_entry/scannable/New(_display_name, /list/_associated_paths, /list/_associated_strings, _lore_text, _mechanics_text, _antag_text)
	..()
	if(category)
		var/datum/codex_category/cat = SScodex.categorized_categories[category]
		if(istype(cat))
			cat.items |= name

/datum/codex_entry/scannable/proc/reveal_secrets()
	has_scannable_secrets = FALSE
	lore_text += "<br><br>[secret_text]"

/datum/extension/scannable/proc/is_scannable()
	if(associated_entry)
		if(ispath(associated_entry, /datum/codex_entry/scannable))
			return !(associated_entry in global.unlocked_codex_scannables)
		var/datum/codex_entry/scannable/associated_entry_page = SScodex.get_entry_by_string(associated_entry)
		return istype(associated_entry_page) && associated_entry_page.has_scannable_secrets

/datum/extension/scannable/proc/scanned()

	if(!is_scannable())
		return null

	if(associated_entry)

		var/datum/codex_entry/scannable/associated_entry_page
		if(ispath(associated_entry, /datum/codex_entry/scannable))
			global.unlocked_codex_scannables[associated_entry] = new associated_entry
			associated_entry_page = global.unlocked_codex_scannables[associated_entry]
		else
			associated_entry_page = SScodex.get_entry_by_string(associated_entry)

		if(istype(associated_entry_page))
			associated_entry_page.reveal_secrets()
			return associated_entry_page
