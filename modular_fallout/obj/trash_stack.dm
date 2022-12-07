/obj/item/storage/trash_stack
	name = "pile of garbage"
	desc = "a pile of garbage. Smells as good, as it looks, though it may contain something useful. Or may not"
	icon = 'icons/fallout/objects/crafting.dmi'
	icon_state = "trash_1"
	anchored = TRUE
	density = FALSE
	var/list/loot_players = list()
	var/list/lootable_trash = list()
	var/list/garbage_list = list()

/obj/item/storage/trash_stack/proc/initialize_lootable_trash()
	garbage_list = list(GLOB.trash_ammo, GLOB.trash_chem, GLOB.trash_clothing, GLOB.trash_craft,
						GLOB.trash_gun, GLOB.trash_misc, GLOB.trash_money,
						GLOB.trash_part, GLOB.trash_tool, GLOB.trash_attachment)
	lootable_trash = list() //we are setting them to an empty list so you can't double the amount of stuff
	for(var/i in garbage_list)
		for(var/ii in i)
			lootable_trash += ii

/obj/item/storage/trash_stack/Initialize()
	. = ..()
	icon_state = "trash_[rand(1,3)]"
	GLOB.trash_piles += src
	initialize_lootable_trash()

/obj/item/storage/trash_stack/Destroy()
	GLOB.trash_piles -= src
	. = ..()

/obj/item/storage/trash_stack/attack_hand(mob/user)
	var/turf/ST = get_turf(src)
	if(user?.a_intent != INTENT_HARM)
		if(user in loot_players)
			to_chat(user, span_notice("You already have looted [src]."))
			return
		for(var/i=0, i<rand(1,4), i++)
			var/itemtype= pickweight(lootable_trash)
			//var/itemtypebonus= pickweight(lootable_trash)
			if(itemtype)
				to_chat(user, span_notice("You scavenge through [src]."))
				var/obj/item/item = new itemtype(ST)
				//if (prob(10+(user.special_l*3.5)))//SPECIAL Integration
				//	to_chat(user, span_notice("You get lucky and find even more loot!"))
				//	var/obj/item/bonusitem = new itemtypebonus(ST)				
				//	if(istype(bonusitem))
				//		bonusitem.from_trash = TRUE
				if(istype(item))
					item.from_trash = TRUE
				if(isgun(item))
					var/obj/item/gun/trash_gun = item
					var/prob_trash = 80
					while(prob_trash > 0)
						if(prob(prob_trash))
							var/trash_mod_path = pick(GLOB.trash_gunmods)
							var/obj/item/gun_upgrade/trash_mod = new trash_mod_path
							if(SEND_SIGNAL(trash_mod, COMSIG_ITEM_ATTACK_OBJ_NOHIT, trash_gun, null))
								break
							QDEL_NULL(trash_mod)
						prob_trash -= 40
		loot_players += user
	else
		return ..()



/obj/item/storage/money_stack
	name = "payroll safe"
	desc = "a payroll safe. Use it every hour to receive your pay."
	icon = 'icons/obj/structures.dmi'
	icon_state = "safe"
	anchored = TRUE
	density = TRUE
	var/list/paid_players = list()
	var/list/pay = list(/obj/item/stack/f13Cash/random/med)

/obj/item/storage/money_stack/ncr
	pay = list(/obj/item/stack/f13Cash/random/ncr/med)

/obj/item/storage/money_stack/legion
	pay = list(/obj/item/stack/f13Cash/random/denarius/med)

/obj/item/storage/money_stack/Initialize()
	. = ..()
	GLOB.money_piles += src

/obj/item/storage/money_stack/Destroy()
	GLOB.money_piles -= src
	. = ..()

/obj/item/storage/money_stack/attack_hand(mob/user)
	var/turf/ST = get_turf(src)
	if(user?.a_intent != INTENT_HARM)
		if(user in paid_players)
			to_chat(user, span_notice("You have already taken your pay from the [src]."))
			return
		for(var/i=0, i<rand(1,2), i++)
			var/itemtype = pick(pay)
			if(itemtype)
				to_chat(user, span_notice("You get your pay from the [src]."))
				new itemtype(ST)
		paid_players += user
	else
		return ..()
