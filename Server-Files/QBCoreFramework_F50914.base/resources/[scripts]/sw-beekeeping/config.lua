
Config = {

	Debug = false,
	Target = 'qb-target',
	Link = "qs-inventory/html/images/",
	JobRole = 'beekeeper',
	MoneyType = 'bank',
	
	SWFarming = true,
	
	BeeFoodProp = 'bzzz_props_beehive_feeding_001',
	MeadProp = 'bzzz_props_beehive_mead_001',
	PollinationTime = 5,
	AttractTime = 5,
	
	ApiaryFramePrice = 50,
	PollenPrice = 50,
	ScraperPrice = 50,
	SmokerPrice = 50,
	
	HoneyPrice = 200,
	AppleHoneyPrice = 350,
	LemonHoneyPrice = 350,
	LimeHoneyPrice = 350,
	OrangeHoneyPrice = 350,
	PeachHoneyPrice = 350,
	
	MeadPrice = 300,
	AppleMeadPrice = 450,
	LemonMeadPrice = 450,
	LimeMeadPrice = 450,
	OrangeMeadPrice = 450,
	PeachMeadPrice = 450,
}

Apiaries = {
	[1] = { location = vector4(368.03, 6525.43, 28.5, 50.4), prop = 'bzzz_props_beehive_box_001', process = nil, product = nil, attractiveness = nil },
	[2] = { location = vector4(357.47, 6511.25, 28.32, 262.01), prop = 'bzzz_props_beehive_box_002', process = nil, product = nil, attractiveness = nil },
	[3] = { location = vector4(337.16, 6525.07, 28.6, 80.27), prop = 'bzzz_props_beehive_box_002', process = nil, product = nil, attractiveness = nil },
	[4] = { location = vector4(324.52, 6510.04, 29.03, 70.39), prop = 'bzzz_props_beehive_box_001', process = nil, product = nil, attractiveness = nil },
	[5] = { location = vector4(276.65, 6512.95, 30.31, 70.78), prop = 'bzzz_props_beehive_box_001', process = nil, product = nil, attractiveness = nil },
	[6] = { location = vector4(269.11, 6524.33, 30.54, 102.58), prop = 'bzzz_props_beehive_box_002', process = nil, product = nil, attractiveness = nil },
	[7] = { location = vector4(257.17, 6509.24, 30.84, 240.99), prop = 'bzzz_props_beehive_box_002', process = nil, product = nil, attractiveness = nil },
	[8] = { location = vector4(235.92, 6520.58, 31.22, 70.32), prop = 'bzzz_props_beehive_box_001', process = nil, product = nil, attractiveness = nil },
	[9] = { location = vector4(216.97, 6505.0, 31.41, 240.02), prop = 'bzzz_props_beehive_box_001', process = nil, product = nil, attractiveness = nil },
	[10] = { location = vector4(200.35, 6502.42, 31.51, 240.42), prop = 'bzzz_props_beehive_box_002', process = nil, product = nil, attractiveness = nil },
}

Barrels = {
	[1] = { location = vector4(294.12, 6522.27, 29.67, 5.0), prop = 'bzzz_props_beehive_barrel_001', product = 'honey', },
	[2] = { location = vector4(294.14, 6523.45, 29.66, 5.0), prop = 'bzzz_props_beehive_barrel_001', product = 'honey', },
	[3] = { location = vector4(294.13, 6524.75, 29.66, 5.0), prop = 'bzzz_props_beehive_barrel_001', product = 'honey', },
	
	[4] = { location = vector4(293.87, 6527.35, 29.67, 5.0), prop = 'bzzz_props_beehive_barrel_002', product = 'mead', },
	[5] = { location = vector4(293.79, 6528.53, 29.68, 5.0), prop = 'bzzz_props_beehive_barrel_002', product = 'mead', },
	[6] = { location = vector4(293.7, 6529.73, 29.68, 5.0), prop = 'bzzz_props_beehive_barrel_002', product = 'mead', },
}

Workers = {
	[1] = { location = vector4(295.41302490234, 6532.7456054688, 29.610696792603, 89.756301879883), model = `cs_old_man2`, scenario = "WORLD_HUMAN_CLIPBOARD", sprite = 628, colour = 1, blipName = 'Apiarist', enable = true, },
}

Blips = {
	[1] = { location = vector3(240.03, 6513.37, 31.16), colour = 5, sprite = 289, blipName = 'Bee Apiaries', },
}

Crafting = {
	Honeycomb = {
		[1] = { ['honey'] = {
				['queenbee'] = 1,
				['workerbee'] = 2,
				['pollen'] = 3,
				['frame'] = 1,
		} },
		[2] = { ['honey_apple'] = {
				['queenbee'] = 1,
				['workerbee'] = 2,
				['pollen_apple'] = 3,
				['frame'] = 1,
		} },
		[3] = { ['honey_orange'] = {
				['queenbee'] = 1,
				['workerbee'] = 2,
				['pollen_orange'] = 3,
				['frame'] = 1,
		} },
		[4] = { ['honey_lime'] = {
				['queenbee'] = 1,
				['workerbee'] = 2,
				['pollen_lime'] = 3,
				['frame'] = 1,
		} },
		[5] = { ['honey_lemon'] = {
				['queenbee'] = 1,
				['workerbee'] = 2,
				['pollen_lemon'] = 3,
				['frame'] = 1,
		} },
		[6] = { ['honey_peach'] = {
				['queenbee'] = 1,
				['workerbee'] = 2,
				['pollen_peach'] = 3,
				['frame'] = 1,
		} },
	},
	
	Mead = {
		[1] = { ['mead'] = {
				['honey'] = 1,
				['water_bottle'] = 1,
		} },
		[2] = { ['mead_apple'] = {
				['honey_apple'] = 1,
				['water_bottle'] = 1,
				['apple'] = 2,
		} },
		[3] = { ['mead_lemon'] = {
				['honey_lemon'] = 1,
				['water_bottle'] = 1,
				['lemon'] = 2,
		} },
		[4] = { ['mead_lime'] = {
				['honey_lime'] = 1,
				['water_bottle'] = 1,
				['lime'] = 2,
		} },
		[5] = { ['mead_orange'] = {
				['honey_orange'] = 1,
				['water_bottle'] = 1,
				['orange'] = 2,
		} },		
	},
}