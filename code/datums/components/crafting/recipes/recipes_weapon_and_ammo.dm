/datum/crafting_recipe/twohanded/spear
	name = "Spear"
	result = /obj/item/twohanded/spear
	reqs = list(/obj/item/restraints/handcuffs/cable = 1,
				/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/rods = 1,
				/obj/item/stack/crafting/goodparts = 2)
	time = 60
	category = CAT_WEAPONRY
	subcategory = CAT_MELEE

/datum/crafting_recipe/melee/scrapspear
	name = "Scrap Spear"
	result = /obj/item/twohanded/spear/scrapspear
	reqs = list(/obj/item/stack/rods = 2,
				/obj/item/shard = 1)
	time = 40
	category = CAT_WEAPONRY
	subcategory = CAT_MELEE

/datum/crafting_recipe/scrapshield
	name = "Scrap Shield"
	result = /obj/item/shield/riot/scrapshield
	reqs = list(/obj/item/stack/cable_coil = 30,
				/obj/item/stack/sheet/metal = 10)
	tools = list(TOOL_WELDER)
	time = 100
	category = CAT_WEAPONRY
	subcategory = CAT_MELEE

/datum/crafting_recipe/scraptower
	name = "Scrap Towershield"
	result = /obj/item/shield/riot/tower/scrap
	reqs = list(/obj/item/stack/cable_coil = 30,
				/obj/item/stack/sheet/metal = 35)
	tools = list(TOOL_WELDER)
	time = 100
	category = CAT_WEAPONRY
	subcategory = CAT_MELEE

/datum/crafting_recipe/steeltower
	name = "Steel Towershield"
	result = /obj/item/shield/riot/tower
	reqs = list(/obj/item/stack/cable_coil = 30,
				/obj/item/stack/sheet/metal = 15,
				/obj/item/stack/crafting/metalparts = 5)
	tools = list(TOOL_WELDER)
	time = 100
	category = CAT_WEAPONRY
	subcategory = CAT_MELEE
	always_available = FALSE

/datum/crafting_recipe/buckler
	name = "Wooden Buckler"
	result = /obj/item/shield/riot/buckler
	reqs = list(/obj/item/stack/sheet/mineral/wood = 15,
				/obj/item/stack/sheet/leather = 1)
	tools = list(TOOL_SCREWDRIVER)
	time = 40
	category = CAT_WEAPONRY
	subcategory = CAT_MELEE

/datum/crafting_recipe/melee/improvisedbayonet
	name = "Improvised bayonet"
	result = /obj/item/melee/onehanded/knife/bayonet
	time = 300
	reqs = list(/obj/item/melee/onehanded/knife/hunting = 1)
	category = CAT_WEAPONRY
	subcategory = CAT_MELEE

/datum/crafting_recipe/bola
	name = "Bola"
	result = /obj/item/restraints/legcuffs/bola
	reqs = list(/obj/item/restraints/handcuffs/cable = 1,
				/obj/item/stack/sheet/metal = 6)
	time = 20//15 faster than crafting them by hand!
	category= CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/chainsaw
	name = "Chainsaw"
	result = /obj/item/twohanded/chainsaw
	reqs = list(/obj/item/circular_saw = 1,
				/obj/item/stack/cable_coil = 3,
				/obj/item/stack/sheet/plasteel = 5)
	tools = list(TOOL_WELDER)
	time = 50
	category = CAT_WEAPONRY
	subcategory = CAT_MELEE
	always_available = FALSE

/datum/crafting_recipe/steelsaw
	name = "Steel Saw"
	result = /obj/item/twohanded/steelsaw
	reqs = list(/obj/item/circular_saw = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/stack/sheet/plasteel = 5,
				/obj/item/stack/crafting/goodparts = 3)
	tools = list(TOOL_WELDER, TOOL_AWORKBENCH)
	time = 60
	category = CAT_WEAPONRY
	subcategory = CAT_MELEE
	always_available = FALSE

/datum/crafting_recipe/autoaxe
	name = "Auto Axe"
	result = /obj/item/twohanded/steelsaw/autoaxe
	reqs = list(/obj/item/twohanded/steelsaw = 1,
				/obj/item/stack/sheet/mineral/titanium = 1,
				/obj/item/stack/crafting/goodparts = 3,
				/obj/structure/wreck/trash/engine)
	tools = list(TOOL_WELDER)
	time = 60
	category = CAT_WEAPONRY
	subcategory = CAT_MELEE
	always_available = FALSE

////////////////
///POWER CELLS//
///////////////

/datum/crafting_recipe/ecrecharge
	name = "Small Energy Cell (recycle)"
	result = /obj/item/stock_parts/cell/ammo/ec
	reqs = list(/obj/item/stock_parts/cell/ammo/ec=2)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/mfcrecharge
	name = "Microfusion Cell (recycle)"
	result = /obj/item/stock_parts/cell/ammo/mfc
	reqs = list(/obj/item/stock_parts/cell/ammo/mfc=2)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/ecprecharge
	name = "Electron Charge Pack (recycle)"
	result = /obj/item/stock_parts/cell/ammo/ecp
	reqs = list(/obj/item/stock_parts/cell/ammo/ecp=2)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/batteryboxplasma //plasmamusket ammo
	name = "Plasma Can"
	result = /obj/item/ammo_box/plasmamusket
	reqs = list(/obj/item/stack/crafting/electronicparts = 2,
				/obj/item/stack/sheet/glass = 3,
				/obj/item/stack/sheet/metal = 3)
	tools = list(TOOL_WORKBENCH, TOOL_MULTITOOL)
	time = 20
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO


/datum/crafting_recipe/batterybox //lasmusket ammo
	name = "Laser Musket battery pack"
	result = /obj/item/ammo_box/lasmusket
	reqs = list(/obj/item/stack/crafting/electronicparts = 1,
				/obj/item/stack/sheet/glass = 2,
				/obj/item/stack/sheet/metal = 2)
	tools = list(TOOL_WORKBENCH, TOOL_MULTITOOL)
	time = 20
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/////////////////
///ammo        //
/////////////////

/datum/crafting_recipe/flamerfuel
	name = "Flamethrower Fuel"
	result = /obj/item/ammo_box/jerrycan
	reqs = list(/datum/reagent/napalm = 50,
				/obj/item/reagent_containers/glass/beaker/large)
	tools = list(TOOL_WORKBENCH)
	time = 5
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/m22shock
	name = ".22 Long Rifle electroshock ammo box"
	result = /obj/item/ammo_box/m22/shock
	reqs = list(/obj/item/stack/crafting/metalparts = 1,
	/obj/item/stack/cable_coil = 5,
	/obj/item/stack/crafting/electronicparts = 2,
	/obj/item/stack/sheet/metal = 1,
	/obj/item/stack/ore/blackpowder = 1
	)
	tools = list(TOOL_MSRELOADER)
	time = 5
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/c9mmincin
	name = "9mm incendiary-tipped ammo box"
	result = /obj/item/ammo_box/c9mm/incendiary
	reqs = list(/obj/item/stack/crafting/metalparts = 1,
	/obj/item/stack/sheet/metal = 5,
	/datum/reagent/fuel = 20,
	/obj/item/stack/ore/blackpowder = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 5
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/needler
	name = "box of four HN needler cartridges"
	result = /obj/item/storage/box/medicine/needler
	reqs = list(/obj/item/stack/sheet/plastic/ = 10,
				/obj/item/reagent_containers/syringe/xlarge = 20)
	tools = list(TOOL_WORKBENCH)
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO
	time = 5
	always_available = FALSE

/datum/crafting_recipe/c38boxincin
	name = ".38 incendiary-tipped ammo box"
	result = /obj/item/ammo_box/c38box/incendiary
	reqs = list(/obj/item/stack/crafting/metalparts = 1,
	/obj/item/stack/sheet/metal = 5,
	/datum/reagent/fuel = 20,
	/obj/item/stack/ore/blackpowder = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 5
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/c10mmincin
	name = "10mm incendiary-tipped ammo box"
	result = /obj/item/ammo_box/c10mm/fire
	reqs = list(/obj/item/stack/crafting/metalparts = 1,
	/obj/item/stack/sheet/metal = 6,
	/datum/reagent/fuel = 10,
	/obj/item/stack/ore/blackpowder = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 5
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/a357boxincin
	name = ".357 incendiary-tipped ammo box"
	result = /obj/item/ammo_box/a357box/incendiary
	reqs = list(/obj/item/stack/crafting/metalparts = 1,
	/obj/item/stack/sheet/metal = 5,
	/datum/reagent/fuel = 10,
	/obj/item/stack/ore/blackpowder = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 5
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/m44boxincin
	name = ".44 incendiary-tipped ammo box"
	result = /obj/item/ammo_box/m44box/incendiary
	reqs = list(/obj/item/stack/crafting/metalparts = 1,
	/obj/item/stack/sheet/metal = 5,
	/datum/reagent/fuel = 10,
	/obj/item/stack/ore/blackpowder = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 5
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/c45incin
	name = ".45 ACP incendiary-tipped ammo box"
	result = /obj/item/ammo_box/c45/incendiary
	reqs = list(/obj/item/stack/crafting/metalparts = 1,
	/obj/item/stack/sheet/metal = 5,
	/datum/reagent/fuel = 10,
	/obj/item/stack/ore/blackpowder = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 5
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/c4570boxheavy
	name = ".45-70 Gv'mt ultradense ammo box"
	result = /obj/item/ammo_box/c4570box/knockback
	reqs = list(/obj/item/stack/crafting/metalparts = 2,
	/obj/item/stack/sheet/mineral/titanium = 1,
	/obj/item/stack/sheet/prewar = 2,
	/obj/item/stack/ore/blackpowder = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 5
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/c4570boxheavy
	name = ".45-70 Gv'mt ultradense ammo box"
	result = /obj/item/ammo_box/c4570box/knockback
	reqs = list(/obj/item/stack/crafting/metalparts = 1,
	/obj/item/stack/sheet/mineral/titanium = 1,
	/obj/item/stack/sheet/prewar = 1,
	/obj/item/stack/ore/blackpowder = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 5
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/m5mmboxshock
	name = "5mm ESD ammo box"
	result = /obj/item/ammo_box/m5mmbox/shock
	reqs = list(/obj/item/stack/crafting/metalparts = 1,
	/obj/item/stack/sheet/mineral/titanium = 1,
	/obj/item/stack/sheet/prewar = 1,
	/obj/item/stack/cable_coil = 5,
	/obj/item/stack/crafting/electronicparts = 2,
	/obj/item/stack/ore/blackpowder = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 5
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/a556shrap
	name = "5.56mm micro-shrapnel ammo box"
	result = /obj/item/ammo_box/a556/microshrapnel
	reqs = list(/obj/item/stack/crafting/metalparts = 1,
	/obj/item/stack/sheet/prewar = 2,
	/obj/item/stack/sheet/mineral/titanium = 1,
	/obj/item/stack/ore/blackpowder = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 5
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO
/*
/datum/crafting_recipe/a556uranium
	name = "5.56mm uranium-tipped ammo box"
	result = /obj/item/ammo_box/a556/uraniumtipped
	reqs = list(/obj/item/stack/crafting/metalparts = 1,
	/obj/item/stack/sheet/mineral/titanium = 2,
	/obj/item/stack/sheet/prewar = 2,
	/obj/item/stack/sheet/mineral/uranium = 2,
	/obj/item/stack/ore/blackpowder = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 5
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO
*/
/*
/datum/crafting_recipe/a762boxirr
	name = "7.62 U-235 ammo box"
	result = /obj/item/ammo_box/a762box/uraniumtipped
	reqs = list(/obj/item/stack/crafting/metalparts = 1,
	/obj/item/stack/sheet/mineral/titanium = 1,
	/obj/item/stack/sheet/prewar = 1,
	/obj/item/stack/sheet/mineral/uranium = 1,
	/obj/item/stack/ore/blackpowder = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 5
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO
*/

/datum/crafting_recipe/a762boxshrap
	name = "7.62mm micro-shrapnel ammo box"
	result = /obj/item/ammo_box/a762box/microshrapnel
	reqs = list(/obj/item/stack/crafting/metalparts = 1,
	/obj/item/stack/sheet/prewar = 2,
	/obj/item/stack/sheet/mineral/titanium = 1,
	/obj/item/stack/ore/blackpowder = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 5
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO


/*
/datum/crafting_recipe/a50MGboxuranium
	name = "12.7mm U-235 ammo box"
	result = /obj/item/ammo_box/a50MGbox/uraniumtipped
	reqs = list(/obj/item/stack/crafting/metalparts = 1,
	/obj/item/stack/sheet/mineral/titanium = 2,
	/obj/item/stack/sheet/prewar = 2,
	/obj/item/stack/sheet/mineral/uranium = 2,
	/obj/item/stack/ore/blackpowder = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 5
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO
*/

/datum/crafting_recipe/a50MGboxcontaminated
	name = "12.7mm contaminated ammo box"
	result = /obj/item/ammo_box/a50MGbox/contam
	reqs = list(/obj/item/stack/crafting/metalparts = 2,
	/obj/item/stack/sheet/mineral/titanium = 2,
	/obj/item/stack/sheet/prewar = 2,
	/datum/reagent/toxin/formaldehyde = 25,
	/obj/item/stack/ore/blackpowder = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 5
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO


/datum/crafting_recipe/m14mmboxcontaminated
	name = "14mm contaminated ammo box"
	result = /obj/item/ammo_box/m14mm/contam
	reqs = list(/obj/item/stack/crafting/metalparts = 1,
	/obj/item/stack/sheet/mineral/titanium = 2,
	/obj/item/stack/sheet/prewar = 2,
	/datum/reagent/toxin/formaldehyde = 30,
	/obj/item/stack/ore/blackpowder = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 5
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/datum/crafting_recipe/m2mmblender
	name = "2mm \"Blender\" magazine"
	result = /obj/item/ammo_box/magazine/m2mm/blender
	reqs = list(/obj/item/stack/crafting/metalparts = 2,
	/obj/item/stack/sheet/prewar = 2,
	/obj/item/stack/crafting/goodparts = 1,
	/obj/item/stack/sheet/mineral/titanium = 1,
	)
	tools = list(TOOL_AWORKBENCH)
	time = 5
	category = CAT_WEAPONRY
	subcategory = CAT_AMMO

/////////////////
///GUN CRAFTING//
/////////////////
/datum/crafting_recipe/gun/rockitlauncher
	name = "Rock-It-Launcher"
	result = /obj/item/rockitlauncher_pack
	reqs = list(/obj/item/advanced_crafting_components/conductors = 1,
				/obj/item/stack/crafting/electronicparts = 5,
				/obj/item/stack/crafting/goodparts = 5,
				/obj/item/stack/crafting/metalparts = 5,
				/obj/item/stack/cable_coil = 5,
				/obj/item/stack/sheet/plastic = 5,
				/obj/item/stack/sheet/metal = 10)
	tools = list(TOOL_WORKBENCH, TOOL_MULTITOOL, TOOL_SCREWDRIVER, TOOL_WRENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

//Hobo Guns

/datum/crafting_recipe/gun/zipgun
	name = "Zip gun (9mm)"
	result = /obj/item/gun/ballistic/automatic/hobo/zipgun
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/rods = 1,
				/obj/item/ammo_casing/c9mm = 5,
				/obj/item/stack/crafting/metalparts = 1)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/gun/pepperbox
	name = "Pepperbox gun (10mm)"
	result = /obj/item/gun/ballistic/revolver/hobo/pepperbox
	reqs = list(/obj/item/stack/sheet/mineral/wood = 2,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/ammo_casing/c10mm = 4,
				/obj/item/stack/rods = 4)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/gun/piperifle
	name = "Piperifle (10mm)"
	result = /obj/item/gun/ballistic/revolver/hobo/piperifle
	reqs = list(/obj/item/stack/sheet/mineral/wood = 2,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/rods = 1)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/gun/autopiperifle
	name = "Auto-pipe rifle (.357)"
	result = /obj/item/gun/ballistic/automatic/autopipe
	reqs = list(/obj/item/ammo_casing/a357 = 30,
	/obj/item/stack/crafting/metalparts = 2,
	/obj/item/stack/sheet/cloth = 1,
	/obj/item/stack/sheet/mineral/wood = 2)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/gun/knifegun
	name = "Knife gun (.44)"
	result = /obj/item/gun/ballistic/revolver/hobo/knifegun
	reqs = list(/obj/item/scalpel = 1,
				/obj/item/stack/rods = 1,
				/obj/item/ammo_casing/m44 = 1,
				/obj/item/restraints/handcuffs/cable = 1)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/gun/knucklegun
	name = "Knucklegun (.45)"
	result = /obj/item/gun/ballistic/revolver/hobo/knucklegun
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/rods = 4,
				/obj/item/ammo_casing/c45 = 4,
				/obj/item/stack/crafting/metalparts = 1)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/gun/shotgunbat
	name = "Shotgun bat"
	result = /obj/item/gun/ballistic/revolver/single_shotgun
	reqs = list(/obj/item/screwdriver = 1,
	/obj/item/twohanded/baseball = 1,
	/obj/item/stack/crafting/metalparts = 2,
	/obj/item/ammo_casing/shotgun = 1,
	/obj/item/stack/rods = 1)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/gun/winchesterrebored
	name = "Winchester rebored (.308)"
	result = /obj/item/gun/ballistic/revolver/winchesterrebored
	reqs = list(/obj/item/gun/ballistic/revolver/widowmaker = 1,
				/obj/item/stack/rods = 2)
	tools = list(TOOL_WORKBENCH, TOOL_DRILL)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/m29snub
	name = "snubnose .44 magnum revolver"
	result = /obj/item/gun/ballistic/revolver/m29/snub
	reqs = list(
		/obj/item/gun/ballistic/revolver/m29 = 1,
		/obj/item/stack/crafting/goodparts = 1,
		)
	tools = list(TOOL_WORKBENCH, TOOL_SAW, TOOL_SCREWDRIVER)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/gun/plasmamusket
	name = "Plasma musket"
	result = /obj/item/gun/ballistic/rifle/hobo/plasmacaster
	reqs = list(/obj/item/gun/ballistic/rifle/hobo/lasmusket = 1,
				/obj/item/stack/crafting/electronicparts = 2,
				/obj/item/advanced_crafting_components/conductors = 1)
	tools = list(TOOL_WORKBENCH, TOOL_MULTITOOL)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/gun/lasmusket
	name = "Laser musket"
	result = /obj/item/gun/ballistic/rifle/hobo/lasmusket
	reqs = list(/obj/item/trash/f13/electronic/toaster = 1,
				/obj/item/gun/ballistic/revolver/hobo/piperifle = 1,
				/obj/item/reagent_containers/food/drinks/bottle = 1,
				/obj/item/stack/cable_coil = 3)
	tools = list(TOOL_WORKBENCH, TOOL_MULTITOOL)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON


//browning hi-power
/datum/crafting_recipe/ninemil
	name = "9mm Pistol"
	result = /obj/item/gun/ballistic/automatic/pistol/ninemil
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/sheet/metal = 2)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//m1911
/datum/crafting_recipe/m1911
	name = "M1911"
	result = /obj/item/gun/ballistic/automatic/pistol/m1911
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 2,
				/obj/item/stack/sheet/metal = 1)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//n99
/datum/crafting_recipe/n99
	name = "10mm Pistol"
	result = /obj/item/gun/ballistic/automatic/pistol/n99
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 3,
				/obj/item/stack/sheet/metal = 1,)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//hunting rifle
/datum/crafting_recipe/huntingrifle
	name = "Hunting Rifle"
	result = /obj/item/gun/ballistic/rifle/hunting
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 4,
				/obj/item/stack/sheet/metal = 3,)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//battle rifle
/datum/crafting_recipe/m1garand
	name = "M1 Garand"
	result = /obj/item/gun/ballistic/automatic/m1garand
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 2,
				/obj/item/advanced_crafting_components/assembly = 1,
				/obj/item/advanced_crafting_components/receiver = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/metal = 1)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//varmint rifle
/datum/crafting_recipe/varmintrifle
	name = "Varmint Rifle"
	result = /obj/item/gun/ballistic/rifle/mag/varmint
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 4,
				/obj/item/stack/sheet/metal = 1)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//craftable psuedo-ratslayer
/datum/crafting_recipe/verminkiller
	name = "Upgraded Varmint Rifle"
	result = /obj/item/gun/ballistic/rifle/mag/varmint/verminkiller
	reqs = list(/obj/item/gun/ballistic/rifle/mag/varmint = 1,
				/obj/item/advanced_crafting_components/lenses = 1, //scope
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/plastic = 2,
				/obj/item/stack/sheet/metal = 10)
	tools = list(TOOL_WORKBENCH)
	time = 300 //30 sec
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

/datum/crafting_recipe/policepistol
	name = ".357 Police Pistol"
	result = /obj/item/gun/ballistic/revolver/police
	reqs = list(/obj/item/stack/crafting/metalparts = 3,
				/obj/item/stack/sheet/metal = 4,)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//rangemaster
/datum/crafting_recipe/rangemaster
	name = "Colt Rangemaster"
	result = /obj/item/gun/ballistic/automatic/rangemaster
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 4,
				/obj/item/advanced_crafting_components/receiver = 1,
				/obj/item/advanced_crafting_components/alloys = 1,
				/obj/item/advanced_crafting_components/assembly = 1,
				/obj/item/stack/crafting/goodparts = 5,
				/obj/item/stack/sheet/metal = 3)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//r91
/datum/crafting_recipe/r91
	name = "R91 Assault Rifle"
	result = /obj/item/gun/ballistic/automatic/assault_rifle
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/sheet/metal = 4,
				/obj/item/advanced_crafting_components/assembly = 1,
				/obj/item/advanced_crafting_components/receiver = 1,
				/obj/item/stack/crafting/goodparts = 1,
				/obj/item/stack/sheet/mineral/titanium = 2)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

/datum/crafting_recipe/pps
	name = "Ppsh-41"
	result = /obj/item/gun/ballistic/automatic/smg/ppsh
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/advanced_crafting_components/receiver = 1,
				/obj/item/stack/crafting/metalparts = 2
				)
	tools = list(TOOL_AWORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

/datum/crafting_recipe/commando
	name = "DeLisle Commando Carbine"
	result = /obj/item/gun/ballistic/rifle/mag/commando
	reqs = list(/obj/item/stack/sheet/mineral/wood = 2,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/sheet/metal = 5,
				/obj/item/advanced_crafting_components/receiver = 1
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//infiltrator
/datum/crafting_recipe/infiltrator
	name = "Infiltrator Carbine"
	result = /obj/item/gun/ballistic/automatic/assault_rifle/infiltrator
	reqs = list(/obj/item/gun/ballistic/automatic/assault_rifle = 1,
				/obj/item/stack/sheet/glass = 2,
				/obj/item/stack/crafting/goodparts = 1,
				/obj/item/gun_upgrade/muzzle/silencer = 1,
				/obj/item/stack/sheet/plastic = 3,
	)
	tools = list(TOOL_AWORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//hunting shotgun
/datum/crafting_recipe/huntingshotgun
	name = "Hunting Shotgun"
	result = /obj/item/gun/ballistic/shotgun/hunting
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 3,
				/obj/item/stack/sheet/metal = 3,
	)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//trench shotgun

/datum/crafting_recipe/trench
	name = "Trench Shotgun"
	result = /obj/item/gun/ballistic/shotgun/trench
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/stack/crafting/metalparts = 5,
				/obj/item/stack/sheet/metal = 3,
	)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//marksman carbine
/datum/crafting_recipe/marksmancarbine
	name = "Marksman Carbine"
	result = /obj/item/gun/ballistic/automatic/marksman
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/advanced_crafting_components/assembly = 1,
				/obj/item/stack/crafting/goodparts = 3
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

/datum/crafting_recipe/combatrifle
	name = "Combat Rifle"
	result = /obj/item/gun/ballistic/automatic/combat
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/advanced_crafting_components/assembly = 1,
				/obj/item/stack/crafting/goodparts = 3
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

/datum/crafting_recipe/policerifle
	name = "Police Rifle"
	result = /obj/item/gun/ballistic/automatic/assault_carbine/policerifle
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/advanced_crafting_components/assembly = 1,
				/obj/item/stack/crafting/goodparts = 3,
				/obj/item/stack/sheet/mineral/wood = 3
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//r84 lmg
/datum/crafting_recipe/lmg
	name = "R84 LMG"
	result = /obj/item/gun/ballistic/automatic/r84
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/advanced_crafting_components/assembly = 1,
				/obj/item/advanced_crafting_components/alloys = 1,
				/obj/item/stack/crafting/goodparts = 5
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//lsw lmg
/datum/crafting_recipe/gun/lsw
	name = "LSW LMG"
	result = /obj/item/gun/ballistic/automatic/lsw
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/advanced_crafting_components/assembly = 1,
				/obj/item/advanced_crafting_components/alloys = 1,
				/obj/item/stack/crafting/goodparts = 5,
				/obj/item/gun_upgrade/scope/watchman = 1
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE


//service rifle
/datum/crafting_recipe/servicerifle
	name = "Service Rifle 5.56mm"
	result = /obj/item/gun/ballistic/automatic/service
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/crafting/metalparts = 10,
				/obj/item/stack/sheet/mineral/wood = 5,
				/obj/item/stack/crafting/goodparts = 5,
				/obj/item/advanced_crafting_components/receiver = 1
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//scout carbine
/datum/crafting_recipe/scoutcarbine
	name = "Scout Carbine"
	result = /obj/item/gun/ballistic/automatic/service/carbine
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/crafting/metalparts = 10,
				/obj/item/stack/sheet/mineral/wood = 5,
				/obj/item/stack/crafting/goodparts = 5
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

/datum/crafting_recipe/gaussrifle
	name = "M72 Gauss Rifle"
	result = /obj/item/gun/ballistic/automatic/m72
	reqs = list(/obj/item/stack/sheet/metal = 15,
				/obj/item/advanced_crafting_components/flux = 1,
				/obj/item/advanced_crafting_components/conductors = 2,
				/obj/item/advanced_crafting_components/alloys = 2,
				/obj/item/advanced_crafting_components/assembly = 1,
				/obj/item/advanced_crafting_components/receiver = 1,
				/obj/item/stack/crafting/metalparts = 5,
				/obj/item/stack/crafting/electronicparts = 15
				)
	tools = list(TOOL_AWORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

/datum/crafting_recipe/neostead
	name = "Neostead 2000"
	result = /obj/item/gun/ballistic/shotgun/automatic/combat/neostead
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/advanced_crafting_components/assembly = 1,
				/obj/item/advanced_crafting_components/alloys = 1,
				/obj/item/advanced_crafting_components/receiver = 1,
				/obj/item/stack/crafting/goodparts = 15,
				)
	tools = list(TOOL_AWORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE


//wattz1000
/datum/crafting_recipe/wattz1k
	name = "wattz 1000 laser pistol"
	result = /obj/item/gun/energy/laser/wattz
	reqs = list(/obj/item/stack/sheet/metal = 3,
				/obj/item/stack/sheet/prewar = 5,
				/obj/item/stack/crafting/goodparts = 3,
				/obj/item/stack/crafting/metalparts = 2,
				/obj/item/stack/crafting/electronicparts = 2
				)
	tools = list(TOOL_WORKBENCH)
	time = 180
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//aep7
/datum/crafting_recipe/AEP7
	name = "AEP-7"
	result = /obj/item/gun/energy/laser/pistol
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/advanced_crafting_components/lenses = 1,
				/obj/item/stack/crafting/metalparts = 3,
				/obj/item/stack/crafting/electronicparts = 3
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE


//recharger pistol, low-tier
/datum/crafting_recipe/rechargerpistol
	name = "recharger pistol"
	result = /obj/item/gun/energy/laser/recharger
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/advanced_crafting_components/lenses = 1,
				/obj/item/advanced_crafting_components/flux = 1,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/crafting/electronicparts = 2,
				/obj/item/stack/sheet/mineral/gold = 5,
				/obj/item/stack/sheet/mineral/uranium = 8,
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//lever action shotgun
/datum/crafting_recipe/lever_action
	name = "Lever Action Shotgun"
	result = /obj/item/gun/ballistic/shotgun/automatic/combat/shotgunlever
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/advanced_crafting_components/receiver = 1,
				/obj/item/stack/crafting/metalparts = 3,
	)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//trail carbine
/datum/crafting_recipe/trail_carbine
	name = "Trail Carbine"
	result = /obj/item/gun/ballistic/rifle/repeater/trail
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/advanced_crafting_components/receiver = 1,
				/obj/item/stack/crafting/metalparts = 3,
	)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//.223 pistol
/datum/crafting_recipe/thatgun
	name = ".223 Pistol"
	result = /obj/item/gun/ballistic/revolver/thatgun
	reqs = list(/obj/item/stack/crafting/metalparts = 2,
				/obj/item/stack/sheet/metal = 3,)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//plasma pistol
/datum/crafting_recipe/plasmapistol
	name = "Plasma Pistol"
	result = /obj/item/gun/energy/laser/plasma/pistol
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/advanced_crafting_components/flux = 1,
				/obj/item/stack/crafting/metalparts = 3,
				/obj/item/stack/crafting/electronicparts = 3
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//BoS plasma pistol
/datum/crafting_recipe/lightplasmapistol
	name = "Lightweight Plasma Pistol"
	result = /obj/item/gun/energy/laser/plasma/pistol/light
	reqs = list(/obj/item/advanced_crafting_components/flux = 1,
				/obj/item/stack/crafting/metalparts = 5,
				/obj/item/stack/crafting/electronicparts = 2
				)
	tools = list(TOOL_AWORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//uzi
/datum/crafting_recipe/uzi
	name = "Uzi SMG"
	result = /obj/item/gun/ballistic/automatic/smg/mini_uzi
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/advanced_crafting_components/receiver = 1
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//10mm smg
/datum/crafting_recipe/smg10mm
	name = "10mm SMG"
	result = /obj/item/gun/ballistic/automatic/smg/smg10mm
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/advanced_crafting_components/receiver = 1
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//grease gun
/datum/crafting_recipe/grease_gun
	name = "m3a1 grease gun"
	result = /obj/item/gun/ballistic/automatic/smg/greasegun
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/advanced_crafting_components/receiver = 1,
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//brush gun
/datum/crafting_recipe/brush
	name = "Brush Gun"
	result = /obj/item/gun/ballistic/rifle/repeater/brush
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/advanced_crafting_components/assembly = 1,
				/obj/item/advanced_crafting_components/receiver = 1,
				/obj/item/stack/crafting/goodparts = 3,
	)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//r91
/datum/crafting_recipe/r91
	name = "R91 Assault Rifle"
	result = /obj/item/gun/ballistic/automatic/assault_rifle
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/advanced_crafting_components/assembly = 1,
				/obj/item/advanced_crafting_components/receiver = 1,
				/obj/item/stack/sheet/mineral/wood = 5,
				/obj/item/stack/crafting/goodparts = 5
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//Riot shotgun
/datum/crafting_recipe/riotshotgun
	name = "Riot Shotgun"
	result = /obj/item/gun/ballistic/automatic/shotgun/riot
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/advanced_crafting_components/alloys = 1,
				/obj/item/advanced_crafting_components/receiver = 1,
				/obj/item/stack/sheet/mineral/wood = 5,
				/obj/item/stack/crafting/goodparts = 5
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//sniper
/datum/crafting_recipe/dks
	name = "DKS Sniper Rifle"
	result = /obj/item/gun/ballistic/automatic/sniper
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/advanced_crafting_components/assembly = 1,
				/obj/item/advanced_crafting_components/alloys = 1,
				/obj/item/stack/sheet/mineral/wood = 5,
				/obj/item/stack/crafting/goodparts = 5
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

/datum/crafting_recipe/m1carbine
	name = "M1 Carbine"
	result = /obj/item/gun/ballistic/automatic/m1carbine
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/sheet/mineral/wood = 5,
				/obj/item/stack/crafting/goodparts = 5
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//deagle
/datum/crafting_recipe/deagle
	name = "Desert Eagle"
	result = /obj/item/gun/ballistic/automatic/pistol/deagle
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/crafting/metalparts = 10,
				/obj/item/stack/sheet/mineral/wood = 5,
				/obj/item/advanced_crafting_components/alloys = 1,
				/obj/item/stack/crafting/goodparts = 5
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//a180
/datum/crafting_recipe/a180
	name = "American 180"
	result = /obj/item/gun/ballistic/automatic/smg/american180
	reqs = list(/obj/item/stack/sheet/metal = 15,
				/obj/item/stack/crafting/metalparts = 15,
				/obj/item/stack/sheet/mineral/wood = 10,
				/obj/item/advanced_crafting_components/alloys = 2,
				/obj/item/stack/crafting/goodparts = 5
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//aer9
/datum/crafting_recipe/AER9
	name = "AER-9"
	result = /obj/item/gun/energy/laser/aer9
	reqs = list(/obj/item/stack/sheet/metal = 15,
				/obj/item/advanced_crafting_components/lenses = 1,
				/obj/item/advanced_crafting_components/alloys = 1,
				/obj/item/stack/crafting/goodparts = 3,
				/obj/item/stack/crafting/electronicparts = 3
				)
	tools = list(TOOL_AWORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//plasma rifle
/datum/crafting_recipe/plasmarifle
	name = "Plasma Rifle"
	result = /obj/item/gun/energy/laser/plasma
	reqs = list(/obj/item/stack/sheet/metal = 15,
				/obj/item/advanced_crafting_components/flux = 1,
				/obj/item/advanced_crafting_components/conductors = 2,
				/obj/item/advanced_crafting_components/alloys = 1,
				/obj/item/stack/crafting/metalparts = 3,
				/obj/item/stack/crafting/electronicparts = 3
				)
	tools = list(TOOL_AWORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//tribeam
/datum/crafting_recipe/tribeam
	name = "Tribeam Laser Rifle"
	result = /obj/item/gun/energy/laser/scatter
	reqs = list(/obj/item/stack/sheet/metal = 15,
				/obj/item/advanced_crafting_components/conductors = 1,
				/obj/item/advanced_crafting_components/alloys = 1,
				/obj/item/advanced_crafting_components/lenses = 1,
				/obj/item/stack/crafting/goodparts = 3,
				/obj/item/stack/crafting/electronicparts = 3
				)
	tools = list(TOOL_AWORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//rcw
/datum/crafting_recipe/rcw
	name = "Laser RCW"
	result = /obj/item/gun/energy/laser/rcw
	reqs = list(/obj/item/stack/sheet/mineral/titanium = 15,
				/obj/item/advanced_crafting_components/conductors = 2,
				/obj/item/advanced_crafting_components/alloys = 1,
				/obj/item/advanced_crafting_components/lenses = 1,
				/obj/item/stack/crafting/goodparts = 5,
				/obj/item/stack/crafting/electronicparts = 5
				)
	tools = list(TOOL_AWORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE


//AM rifle
/datum/crafting_recipe/am_rifle
	name = "Anti-Materiel Rifle"
	result = /obj/item/gun/ballistic/rifle/mag/antimateriel
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/advanced_crafting_components/assembly = 1,
				/obj/item/advanced_crafting_components/alloys = 1,
				/obj/item/advanced_crafting_components/receiver = 1,
				/obj/item/stack/crafting/goodparts = 5
				)
	tools = list(TOOL_AWORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

	//M2045 Magnum Revolver Rifle
/datum/crafting_recipe/m2405
	name = "M2045 Magnum Revolver Rifle"
	result = /obj/item/gun/ballistic/revolver/m2405
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/advanced_crafting_components/assembly = 1,
				/obj/item/advanced_crafting_components/alloys = 1,
				/obj/item/advanced_crafting_components/receiver = 1,
				/obj/item/stack/crafting/goodparts = 5
				)
	tools = list(TOOL_AWORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//city killer
/datum/crafting_recipe/city_killer
	name = "City-Killer Shotgun"
	result = /obj/item/gun/ballistic/automatic/shotgun/citykiller
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/advanced_crafting_components/assembly = 1,
				/obj/item/advanced_crafting_components/alloys = 1,
				/obj/item/advanced_crafting_components/receiver = 1,
				/obj/item/stack/crafting/goodparts = 10,
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//rangemaster
/datum/crafting_recipe/rangemaster
	name = "Colt Rangemaster"
	result = /obj/item/gun/ballistic/automatic/rangemaster
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/advanced_crafting_components/assembly = 1,
				/obj/item/advanced_crafting_components/alloys = 1,
				/obj/item/advanced_crafting_components/receiver = 1,
				/obj/item/stack/crafting/goodparts = 5
				)
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//bozar
/datum/crafting_recipe/bozar
	name = "Bozar"
	result = /obj/item/gun/ballistic/automatic/bozar
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/advanced_crafting_components/assembly = 1,
				/obj/item/advanced_crafting_components/alloys = 1,
				/obj/item/advanced_crafting_components/receiver = 1,
				/obj/item/stack/crafting/goodparts = 5,

				)
	tools = list(TOOL_AWORKBENCH)
	time = 180
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//wattz2000
/datum/crafting_recipe/wattz2k
	name = "Wattz 2000 Laser Rifle"
	result = /obj/item/gun/energy/laser/wattz2k
	reqs = list(/obj/item/stack/sheet/metal = 15,
				/obj/item/advanced_crafting_components/conductors = 1,
				/obj/item/advanced_crafting_components/alloys = 1,
				/obj/item/advanced_crafting_components/lenses = 1,
				/obj/item/stack/crafting/goodparts = 3,
				/obj/item/stack/crafting/electronicparts = 3
				)
	tools = list(TOOL_AWORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON
	always_available = FALSE

//magneto
/datum/crafting_recipe/magnetowattz
	name = "Wattz 1000 Magneto-laser Pistol"
	result = /obj/item/gun/energy/laser/wattz/magneto
	reqs = list(/obj/item/gun/energy/laser/wattz = 1,
				/obj/item/stack/crafting/electronicparts = 2)
	tools = list(TOOL_AWORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

//extendo GLOCK
/datum/crafting_recipe/glock86a
	name = "Glock 86A Plasma Pistol"
	result = /obj/item/gun/energy/laser/plasma/glock/extended
	reqs = list(/obj/item/gun/energy/laser/plasma/glock = 1,
				/obj/item/stack/crafting/metalparts = 3,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/crafting/electronicparts = 3)
	tools = list(TOOL_AWORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON


//////////////////////////////////
///GUN ATTACHMENT/PARTS CRAFTING//
//////////////////////////////////
/datum/crafting_recipe/scope
	name = "ACOG Scope"
	result = /obj/item/gun_upgrade/scope/watchman
	reqs = list(
				/obj/item/stack/sheet/metal = 3,
				/obj/item/stack/sheet/glass = 3,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/crafting/goodparts = 1
				)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/sniperscope
	name = "Sniper Scope"
	result = /obj/item/gun_upgrade/scope/killer
	reqs = list(
				/obj/item/stack/sheet/metal = 3,
				/obj/item/stack/sheet/glass = 3,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/crafting/goodparts = 1
				)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/suppressor
	name = "Silencer"
	result = /obj/item/gun_upgrade/muzzle/silencer
	reqs = list(
				/obj/item/stack/sheet/metal = 3,
				/obj/item/stack/sheet/plastic = 2,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/crafting/goodparts = 1
				)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/recoilcomp
	name = "Recoil Compensator"
	result = /obj/item/gun_upgrade/muzzle/recoil_comp
	reqs = list(
				/obj/item/stack/sheet/metal = 3,
				/obj/item/stack/sheet/plastic = 2,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/crafting/goodparts = 1
				)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/ergonomic_grip
	name = "Ergonomic Grip"
	result = /obj/item/tool_upgrade/productivity/ergonomic_grip
	reqs = list(
				/obj/item/stack/sheet/plastic = 5,
				/obj/item/stack/sheet/leather = 2
				)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/metal_guard
	name = "Metal Guard"
	result = /obj/item/tool_upgrade/reinforcement/guard
	reqs = list(
				/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/crafting/metalparts = 5,
				/obj/item/stack/crafting/goodparts = 5
				)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/forged_barrel
	name = "Forged Barrel"
	result = /obj/item/gun_upgrade/barrel/forged
	reqs = list(
				/obj/item/stack/sheet/mineral/titanium = 5,
				/obj/item/stack/crafting/metalparts = 5,
				/obj/item/stack/crafting/goodparts = 5
	)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/booster
	name = "Booster Chip"
	result = /obj/item/tool_upgrade/productivity/booster
	reqs = list(
				/obj/item/stack/crafting/electronicparts = 5,
				/obj/item/stack/sheet/plastic = 5,
				/obj/item/stack/cable_coil = 5
	)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/heatsink
	name = "Heatsink"
	result = /obj/item/tool_upgrade/reinforcement/heatsink
	reqs = list(
				/obj/item/stack/crafting/electronicparts = 2,
				/obj/item/stack/crafting/metalparts = 5,
				/obj/item/stack/cable_coil = 5
	)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/laserguide
	name = "Laser Guide"
	result = /obj/item/tool_upgrade/refinement/laserguide
	reqs = list(
				/obj/item/laser_pointer = 1,
				/obj/item/crafting/duct_tape = 1
	)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/gigalens
	name = "GigaLens"
	result = /obj/item/gun_upgrade/barrel/excruciator
	reqs = list(
				/obj/item/advanced_crafting_components/lenses = 1,
				/obj/item/stack/crafting/goodparts = 5,
				/obj/item/advanced_crafting_components/flux = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/battshunt
	name = "Poseidon Quantum Injection Electro-shunt"
	result = /obj/item/gun_upgrade/mechanism/battery_shunt
	reqs = list(
				/obj/item/advanced_crafting_components/flux = 2,
				/obj/item/stack/sheet/mineral/gold = 3,
				/obj/item/tool_upgrade/productivity/booster = 1,
				/obj/item/stock_parts/capacitor/adv = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/coolant
	name = "Coolant Coil"
	result = /obj/item/tool_upgrade/reinforcement/plasmablock
	reqs = list(
				/obj/item/advanced_crafting_components/conductors = 1,
				/obj/item/stack/crafting/goodparts = 5,
				/obj/item/advanced_crafting_components/alloys = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/overdrivemod
	name = "REPCONN overdrive chip"
	result = /obj/item/gun_upgrade/mechanism/overdrive
	reqs = list(
				/obj/item/stack/sheet/mineral/uranium = 2,
				/obj/item/stock_parts/capacitor/adv = 1,
				/obj/item/stack/sheet/mineral/gold = 1,
				/obj/item/tool_upgrade/productivity/booster = 1,
				/obj/item/advanced_crafting_components/flux = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/ai_tool
	name = "Vault-Tec Integrated VATS module"
	result = /obj/item/tool_upgrade/augment/ai_tool
	reqs = list (
				/obj/item/gun_upgrade/mechanism/overdrive = 1,
				/obj/item/stack/sheet/bluespace_crystal = 1,
				/obj/item/stock_parts/scanning_module/triphasic = 1,
				/obj/item/gun_upgrade/mechanism/overshooter = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/overshootermod
	name = "Extended internal magazine kit"
	result = /obj/item/gun_upgrade/mechanism/overshooter
	reqs = list(
				/obj/item/stack/sheet/mineral/titanium = 5,
				/obj/item/advanced_crafting_components/alloys = 1,
				/obj/item/stock_parts/matter_bin/super = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/fullauto
	name = "Full Auto Kit"
	result = /obj/item/gun_upgrade/mechanism/autosear
	reqs = list(
				/obj/item/advanced_crafting_components/receiver = 1,
				/obj/item/stack/crafting/goodparts = 5,
				/obj/item/advanced_crafting_components/assembly = 1
	)
	tools = list(TOOL_AWORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/flux
	name = "Flux capacitor"
	result = /obj/item/advanced_crafting_components/flux
	reqs = list(
				/obj/item/stack/cable_coil = 5,
				/obj/item/stack/crafting/goodparts = 5,
				/obj/item/stack/crafting/electronicparts = 5
				)
	tools = list(TOOL_AWORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/lenses
	name = "Focused crystal lenses"
	result = /obj/item/advanced_crafting_components/lenses
	reqs = list(
				/obj/item/stack/cable_coil = 5,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/crafting/electronicparts = 1,
				/obj/item/stack/sheet/glass = 10
				)
	tools = list(TOOL_AWORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/conductors
	name = "Superconductor coil"
	result = /obj/item/advanced_crafting_components/conductors
	reqs = list(
				/obj/item/stack/cable_coil = 30,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/crafting/electronicparts = 2
				)
	tools = list(TOOL_AWORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/receiver
	name = "Advanced modular receiver"
	result = /obj/item/advanced_crafting_components/receiver
	reqs = list(
				/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/crafting/metalparts = 5
				)
	tools = list(TOOL_AWORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/assembly
	name = "Pre-war weapon assembly"
	result = /obj/item/advanced_crafting_components/assembly
	reqs = list(
				/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/crafting/metalparts = 5,
				/obj/item/stack/sheet/plastic = 5
				)
	tools = list(TOOL_AWORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE

/datum/crafting_recipe/alloys
	name = "Superlight alloys"
	result = /obj/item/advanced_crafting_components/alloys
	reqs = list(
				/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/sheet/mineral/titanium = 5,
				/obj/item/stack/sheet/plasteel = 5
				)
	tools = list(TOOL_AWORKBENCH)
	time = 30
	category = CAT_WEAPONRY
	subcategory = CAT_PARTS
	always_available = FALSE
//Let's get batty
/datum/crafting_recipe/wooden_bat
	name = "Wooden Bat"
	result = /obj/item/twohanded/baseball
	reqs = list(/obj/item/stack/sheet/mineral/wood = 10,
				/obj/item/stack/sheet/leather = 1)
	tools = list(TOOL_WORKBENCH)
	time = 40
	category = CAT_WEAPONRY
	subcategory = CAT_MELEE

