// F13: Medicine

/datum/chemical_reaction/mentats
	name = "mentats"
	id = /datum/reagent/medicine/mentat
	results = list(/datum/reagent/medicine/mentat = 3)
	required_reagents = list(/datum/reagent/medicine/neurine = 1, /datum/reagent/cellulose = 1)
	required_temp = 451

/datum/chemical_reaction/stimfluid
	name = "stimfluid"
	id = /datum/reagent/medicine/stimpak
	results = list(/datum/reagent/medicine/stimpak = 20)
	required_reagents = list(
		/datum/reagent/medicine/bicaridine = 5, 
		/datum/reagent/medicine/kelotane = 5, 
		/datum/reagent/medicine/styptic_powder = 5, 
		/datum/reagent/medicine/silver_sulfadiazine = 5, 
		)
	required_temp = 451

// F13: Drugs 

/datum/chemical_reaction/jet
	name = "Jet"
	id = /datum/reagent/drug/jet
	results = list(/datum/reagent/drug/jet = 5)
	required_reagents = list(/datum/reagent/drug/nicotine = 2, /datum/reagent/consumable/milk = 2, /datum/reagent/fuel = 1, /datum/reagent/consumable/ethanol = 1)
	OptimalTempMin 		= 600
	OptimalTempMax		= 675
	ExplodeTemp			= 700
	OptimalpHMin		= 7
	OptimalpHMax		= 10
	ReactpHLim			= 2
	CurveSharpT 		= 5
	CurveSharppH 		= 0.7
	ThermicConstant		= -6
	HIonRelease 		= -0.5
	RateUpLim 			= 10
	FermiChem 			= TRUE

/datum/chemical_reaction/turbo
	name = "Turbo"
	id = /datum/reagent/drug/turbo
	results = list(/datum/reagent/drug/turbo = 4)
	required_reagents = list(/datum/reagent/cellulose = 1, /datum/reagent/toxin/cyanide = 1, /datum/reagent/consumable/brocjuice = 1, /datum/reagent/drug/jet = 1) //fairly close to the ingame recipe
	OptimalTempMin 		= 410
	OptimalTempMax		= 525
	ExplodeTemp			= 585
	OptimalpHMin		= 4
	OptimalpHMax		= 7
	ReactpHLim			= 2
	CurveSharpT 		= 5
	CurveSharppH 		= 0.7
	ThermicConstant		= 8
	HIonRelease 		= 0.5
	RateUpLim 			= 7
	FermiChem 			= TRUE

/datum/chemical_reaction/psycho
	name = "Psycho"
	id = /datum/reagent/drug/psycho
	results = list(/datum/reagent/drug/psycho = 3)
	required_reagents = list(/datum/reagent/toxin/acid = 1, /datum/reagent/consumable/cavefungusjuice = 1, /datum/reagent/ash = 1, /datum/reagent/drug/methamphetamine = 1)
	OptimalTempMin 		= 223
	OptimalTempMax		= 303
	ExplodeTemp			= 323
	OptimalpHMin		= 3
	OptimalpHMax		= 6
	ReactpHLim			= 1
	CurveSharpT 		= 5
	CurveSharppH 		= 0.7
	ThermicConstant		= 5
	HIonRelease 		= 0.5
	RateUpLim 			= 5
	FermiChem 			= TRUE

/datum/chemical_reaction/buffout
	name = "Buffout"
	id = /datum/reagent/drug/buffout
	results = list(/datum/reagent/drug/buffout = 10)
	required_reagents = list(/datum/reagent/consumable/sugar = 1, /datum/reagent/phosphorus = 1, /datum/reagent/sulfur = 1, /datum/reagent/drug/crank = 1, /datum/reagent/carbondioxide = 1, /datum/reagent/nitrous_oxide = 1, /datum/reagent/consumable/yuccajuice = 1)
	OptimalTempMin 		= 165
	OptimalTempMax		= 215
	ExplodeTemp			= 223
	OptimalpHMin		= 8
	OptimalpHMax		= 11
	ReactpHLim			= 1
	CurveSharpT 		= 5
	CurveSharppH 		= 0.7
	ThermicConstant		= 2
	HIonRelease 		= 0.25
	RateUpLim 			= 3
	FermiChem 			= TRUE

/datum/chemical_reaction/medx
	name = "Med-X"
	id = /datum/reagent/medicine/medx
	results = list(/datum/reagent/medicine/medx = 4)
	required_reagents = list(/datum/reagent/drug/aranesp = 1, /datum/reagent/phenol = 1, /datum/reagent/drug/heroin = 1, /datum/reagent/medicine/stimpakimitation = 1)
	OptimalTempMin 		= 780
	OptimalTempMax		= 821
	ExplodeTemp			= 824
	OptimalpHMin		= 10
	OptimalpHMax		= 14
	ReactpHLim			= 1
	CurveSharpT 		= 10
	CurveSharppH 		= 0.5
	ThermicConstant		= 8
	HIonRelease 		= -0.5
	RateUpLim 			= 40
	FermiChem 			= TRUE

/// F13: Miscellaneous

/datum/chemical_reaction/space_cleaner
	name = "Abraxo cleaner"
	id = /datum/reagent/abraxo_cleaner
	results = list(/datum/reagent/abraxo_cleaner = 2)
	required_reagents = list(/datum/reagent/ammonia = 1, /datum/reagent/water = 1)
