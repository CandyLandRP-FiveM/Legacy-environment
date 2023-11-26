Config = {}
Config.RenderDistance = 15.0
Config.Target = 'qb-target' --['ox_target'/'qtarget'/'qb-target']

Config.Weed = {
	IllegalSeller = {
		Label = 'Illegal Seller',
		Coords = vector4(-1161.074, -505.508, 35.03, 269.056),
		Blip = false,
		Ped = `s_m_y_dealer_01`,
		Items = {
			{ name = 'weed_seed', price = 50, account = 'money', icon = 'seedling' },
			{ name = 'plastic_bag', price = 10, account = 'money', icon = 'sheet-plastic' },
			{ name = 'xtcbaggy', price = 500, account = 'money', icon = 'xtcbaggy' },
		}
	},
	Gardener = {
		Label = 'Gardener',
		Coords = vector4(-1346.103, 58.814, 55.246, 280.242),
		Blip = false,
			--Text = 'Gardener',
			--Sprite  = 480,
			--Scale   = 0.75,
			--Colour  = 21

		Ped = `s_m_m_gardener_01`,
		Items = {
			{ name = 'water_can', price = 10, account = 'money', icon = 'droplet' },
			{ name = 'fertilizer', price = 10, account = 'money', icon = 'mound' },
			{ name = 'trowel', price = 500, account = 'money', icon = 'trowel' }
		}
	},
	Planting = {
		Props = { --Allowed props
			`prop_pot_plant_01a`,
			`prop_pot_plant_01b`,
			`prop_pot_plant_01c`,
			`prop_pot_plant_01d`,
			`prop_pot_plant_01e`,
			`prop_pot_plant_02a`,
			`prop_pot_plant_02b`,
			`prop_pot_plant_02c`,
			`prop_pot_plant_02d`,
			`prop_pot_plant_03b`,
			`prop_pot_plant_03b_cr2`,
			`prop_pot_plant_03c`,
			`prop_pot_plant_04a`,
			`prop_pot_plant_04b`,
			`prop_pot_plant_04c`,
			`prop_pot_plant_05d`,
			`prop_pot_plant_05d_l1`
		},
		Materials = { --Allowed materials
			[2409420175] = true,
			[3008270349] = true,
			[3833216577] = true,
			[223086562] = true,
			[1333033863] = true,
			[4170197704] = true,
			[3594309083] = true,
			[2461440131] = true,
			[1109728704] = true,
			[2352068586] = true,
			[1144315879] = true,
			[581794674] = true,
			[2128369009] = true,
			[-461750719] = true,
			[-1286696947] = true,
		},
		MaxPlants = 0, --Maximum planted (Set to 0 to remove the limit)
		CycleInterval = 30 * 60000, --Refresh all plants every 30 minutes

		--This will give you 10 weed for fully grown and max quality plant. 
		--100.0 (Growth) * 100.0 (Quality) / 1000.0 (ResultDivisor) = 10 weed
		--Lower this value to get more weed.
		ResultDivisor = 1000.0,

		-- Durations
		PlantDuration = 10000,
		HarvestDuration = 10000,
		WaterDuration = 5000,
		FertilizeDuration = 5000,

		--Modify plant per cycle
		Add = {
			['status'] = 10.0,
			['quality']  = 10.0
		},
		Remove = {
			['water'] = 2.0,
			['fertilizer'] = 2.0
		}
	},
}

Config.Cocaine = {
	Spawning = {
		Locations = {
			{
				Coords = vector3(-3115.26, 3296.2, 6.49),
				Radius = 20.0
			}
		},
		Limit = 25, --Max spawn plant limit
		Model = `prop_plant_01a`,
		GiveAmount = { min = 3, max = 8 },
		Duration = 3 * 60000, --Time between new coca plant spawn
		HarvestDuration = 10000
	},
	Teleport = {
		Enter = vector4(5124.83, -5141.06, 2.19, 13.64),
		Exit = vector4(1088.6548, -3188.1760, -38.9935, 180.0)
	},
	Processing = {
		{
			Radius = 1.0,
			Prompt = '[%s] - Make cocaine',
			Icon = 'hand',
			Progress = {
				Message = 'Making cocaine...',
				Duration = 7500
			},
			Animation = {
				Dict = 'anim@amb@business@coc@coc_unpack_cut_left@',
				Name = 'coke_cut_coccutter'
			},
			RequiredItems = {
				{ name = 'coke_leaf', count = 10 }
			},
			GiveItems = {
				{ name = 'coke', min = 2, max = 6 }
			},
			ErrorMessage = 'You need coca leafs.',
			Locations = {
				vector3(1095.4331, -3196.5586, -38.9935),
				vector3(1093.1399, -3196.5723, -38.9935),
				vector3(1090.4292, -3196.5657, -38.9935),
				vector3(1090.3131, -3194.9287, -38.9935),
				vector3(1092.9976, -3194.9194, -38.9935),
				vector3(1095.3649, -3194.9202, -38.9935)
			}
		},
		{
			Radius = 1.0,
			Prompt = '[%s] - Package cocaine',
			Icon = 'hand',
			Progress = {
				Message = 'Packaging cocaine...',
				Duration = 12500
			},
			Animation = {
				Dict = 'anim@amb@business@meth@meth_smash_weight_check@',
				Name = 'break_weigh_v2_char01'
			},
			RequiredItems = {
				{ name = 'coke', count = 3 }
			},
			GiveItems = {
				{ name = 'coke_bag', count = 6 }
			},
			ErrorMessage = 'You need 3 grams of cocaine.',
			Locations = {
				vector3(1100.3556, -3198.8042, -38.9935)
			}
		}
	}
}

Config.Meth = {
	Teleport = {
		Enter = vector4(1, 1, 1, 1),
		Exit = vector4(1, 1, 1, 1)
	},
	Processing = {
		{
			Radius = 0.5,
			Prompt = '[%s] - Cook meth',
			Icon = 'flask-vial',
			Progress = {
				Message = 'Cooking meth...',
				Duration = 7500
			},
			Animation = {
				Dict = 'mp_car_bomb',
				Name = 'car_bomb_mechanic'
			},
			RequiredItems = {
				{ name = 'ammonia', count = 2 },
				{ name = 'chemicals', count = 2 },
			},
			GiveItems = {
				--{ name, count?, min?, max? } count or min and max have to defined
				{ name = 'meth', min = 3, max = 6 }
			},
			ErrorMessage = 'You need ammonia and chemicals.',
			Locations = {
				vector3(4951.24, -5096.97, 3.24),
			},
		},
		{
			Radius = 1.0,
			Prompt = '[%s] - Package meth',
			Icon = 'hand',
			Progress = {
				Message = 'Packaging meth...',
				Duration = 5000
			},
			Animation = {
				Dict = 'anim@amb@business@meth@meth_smash_weight_check@',
				Name = 'break_weigh_v2_char01'
			},
			RequiredItems = {
				{ name = 'meth', count = 6 }
			},
			GiveItems = {
				{ name = 'meth_bag', count = 10 }
			},
			ErrorMessage = 'You need 6 grams of meth.',
			Locations = {
				vector3(4955.17, -5096.77, 3.24)
			}
		}
	},
	Chemist = {
		Label = 'Chemist',
		Coords = vector4(-2166.84, 5198.31, 16.88, 129.47),
		Blip = false,
			--Text = 'Chemist',
			--Sprite  = 480,
			--Scale   = 0.75,
			--Colour  = 15
		Ped = `s_m_m_doctor_01`,
		Items = {
			{ name = 'ammonia', price = 50, account = 'money', icon = 'vial' },
			{ name = 'chemicals', price = 100, account = 'money', icon = 'vial' }
		}
	},
	Table = {
		Model = `bkr_prop_meth_table01a`,
		Zones = {
			Enabled = false, -- You can place it anywhere if disabled
			Locations = {
				{
					Coords = vector3(5183.34, -5145.99, 3.55),
					Radius = 50.0
				}
			}
		},
		RequiredItems = {
			{ name = 'ammonia', count = 1 },
			{ name = 'chemicals', count = 1 },
		},
		GiveItems = {
			--{ name, count?, min?, max? } count or min and max have to defined
			{ name = 'meth_bag', min = 1, max = 5 }
		},
		Progress = {
			Message = 'Cooking meth...',
			Duration = 10000
		},
		Animation = {
			Dict = 'mp_car_bomb',
			Name = 'car_bomb_mechanic'
		},
		ErrorMessage = 'You need ammonia and chemicals.'
	}
}

Config.Heroin = {
	Spawning = {
		--You can add more locations
		Locations = {
			{
				Coords = vector3(2592.52, 4914.24, 37.4),
				Radius = 50.0,
			}
		},
		Limit = 40, --Max spawn plant limit
		GiveAmount = { min = 1, max = 2 },
		Model = `prop_plant_01b`,
		Duration = 3 * 60000, --Time between new poppy plant spawn
		HarvestDuration = 10000
	},
	Processing = {
		{
			Radius = 0.5,
			Prompt = '[%s] - Cook heroin',
			Icon = 'flask-vial',
			Progress = {
				Message = 'Cooking heroin...',
				Duration = 7500
			},
			Animation = {
				Dict = 'mp_car_bomb',
				Name = 'car_bomb_mechanic'
			},
			RequiredItems = {
				{ name = 'ammonia', count = 1 },
				{ name = 'poppy_plant', count = 1 },
			},
			GiveItems = {
				--{ name, count?, min?, max? } count or min and max have to defined
				{ name = 'heroin_bag', count = 1 }
			},
			ErrorMessage = 'You need ammonia and poppy plant.',
			Locations = {
				vector3(1392.0513, 3605.8459, 38.9418)
			}
		}
	}
}

Config.Selling = {
	Command = 'dealer',
	MinPolice = 0,
	Zones = {
		{
			Coords = vector3(0, 0, 0),
        	Size = vector3(0 ,0 ,0),
			Rotation = 0.0,
			Debug = false
		},
	},
	Items = {},
		-- {
		-- 	Name = 'meth_bag',
		-- 	Account = 'money',
		-- 	Price = { min = 175, max = 225 },
		-- 	Count = { min = 1, max = 5 }
		-- },
		-- {
		-- 	Name = 'coke_bag',
		-- 	Account = 'money',
		-- 	Price = { min = 225, max = 275 },
		-- 	Count = { min = 1, max = 5 }
		-- },
		-- {
		-- 	Name = 'weed_bag',
		-- 	Account = 'money',
		-- 	Price = { min = 25, max = 75 },
		-- 	Count = { min = 1, max = 5 }
		-- },
		-- {
		-- 	Name = 'heroin_bag',
		-- 	Account = 'money',
		-- 	Price = { min = 100, max = 150 },
		-- 	Count = { min = 1, max = 5 }
		-- }
	--The client blip.
	-- Blip = {
	-- 	Text = 'Client',
	-- 	Sprite  = 280,
	-- 	Scale   = 1.0,
	-- 	Colour  = 74
	-- },
	-- ReportChance = 20, --percentage
	-- Dispatch = {
	-- 	Code = '10-14',
	-- 	Title = 'Drug Dealing',
	-- 	Message = 'A person is dealing drugs!'
	-- }
}

Config.DoorSales = {
	Locations = {
		vector3(0, 0, 0),
		vector3(0, 0, 0)
	},
	Items = {
		{
			Name = 'meth_bag',
			Account = 'money',
			Price = 200
		},
		{
			Name = 'coke_bag',
			Account = 'money',
			Price = 250
		},
		{
			Name = 'weed_bag',
			Account = 'money',
			Price = 50
		},
		{
			Name = 'heroin_bag',
			Account = 'money',
			Price = 125
		}
	},
}

--You can add your own effects here
Config.UsableDrugs = {
	['weed_joint'] = {
		Progress = 'You\'re enjoying a joint...',
		Animation = { --ox_lib progress animation table
			scenario = 'WORLD_HUMAN_SMOKING_POT'
		},
		Duration = 60000 --Effect duration
	},
}

-- In inventory packaging/crafting
Config.Packaging = {
	PlasticBag = true, -- Allow drugs to be packaged in inventory with plastic bag
	Joint = true -- Allow joint to be packaged with weed papers
}