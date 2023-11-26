print("^2Jim^7-^2Consumables ^7v^41^7.^45 ^7- ^2Consumables Script by ^1Jimathy^7")

-- If you need support I now have a discord available, it helps me keep track of issues and give better support.

-- https://discord.gg/xKgQZ6wZvS

Config = {
	Debug = false,
	Core = "qb-core",

	Inv = "qb", -- set to "ox" if using ox_inventory
	Notify = "ox",  -- set to "ox" if using ox_lib

	UseProgbar = true,
	ProgressBar = "ox", -- set to "ox" if using ox_lib

	Consumables = {
		-- Default QB food and drink item override

		--Effects can be applied here, like stamina on coffee for example

		["sandwich"] = { 	         emote = "sandwich", 	canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 15, }},
		["twerks_candy"] = { 	     emote = "egobar", 		canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 10, }},
		["snikkel_candy"] = { 	     emote = "egobar", 		canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 10, }},
		["tosti"] = { 			     emote = "sandwich", 	canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 15, }},
		
		["atomic"] = { 			     emote = "eat",     	canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 75, }},
		["baconatom"] = { 			 emote = "eat",     	canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 65, thirst = 65 }},
		["frz_dried_cream"] = { 	 emote = "icecreamb", 	canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { effect = "strength", time = 10000, hunger = 60, }},
		["onion_rings"] = { 		 emote = "eat",     	canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 45, }},
		["fries"] = { 			     emote = "eat",     	canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 45, }},
		
		["danish"] = { 	             emote = "desert", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 75, }},
		["croissant"] = { 			 emote = "desert", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 45, }},
		["cookie"] = { 		         emote = "desert", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 45, }},
		["wedding_cake"] = { 		 emote = "desert", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 45, }},
		["panini"] = {               emote = "sandwich",    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food",stats = { hunger = 65, thirst = 65  }},
		["bagel"] = {               emote = "desert",    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food",stats = { hunger = 65, }},

		["pork_tacos"] = { 			 emote = "taco", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 55, }},
		["chicken_tacos"] = { 		 emote = "taco", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 55, }},
		["shrimp_tacos"] = { 		 emote = "taco", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 55, }},
		["beef_tacos"] = { 			 emote = "taco", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 55, }},
		["quesadilla"] = { 			 emote = "taco", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 65, thirst = 65 }},
		["tres_leches"] = { 		 emote = "desert", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 45, }},
		["carnetaco"] = { 			 emote = "taco", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 55, }},
		["elote"] = { 			     emote = "lollipop1e", 	canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 45, }},


		["irishstew"] = { 			 emote = "beans", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 65, thirst = 65 }},
		["irishbowl"] = { 			 emote = "dinner", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 45, }},
		["cornbeef"] = { 			 emote = "dinner", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 45, }},
		["bangers"] = { 			 emote = "dinner", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 45, }},
		["cheesecake"] = { 			 emote = "desert",     canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 45, }},

		["chips"] = { 			     emote = "crisps", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 35, }},
		["doughnut"] = { 			 emote = "donut3", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 35, }},

		["chowyeekow"] = { 			 emote = "dinner", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 45, }},
		["jiaozi"] = { 			     emote = "dinner", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 75, }},
		["shrimprice"] = { 			 emote = "dinner", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 45, }},
		["chickenrice"] = { 		 emote = "dinner", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 45, }},
		["porkrice"] = { 			 emote = "dinner", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 45, }},
		["beefrice"] = { 			 emote = "dinner", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 45, }},
		["crispyflounder"] = { 		 emote = "dinner", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 45, }},
		["braisedpuffer"] = { 		 emote = "dinner", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 65, thirst = 65, }},
		
		["lolipop"] = { 			 emote = "lollipop2a", 	canRun = true, 	time = 5000, stress = 75, heal = 0, armor = 0, type = "food", stats = { hunger = 5, }},

		["teddy"] = { 			     emote = "teddy", 	canRun = true, 	time = 5000, stress = 50, heal = 0, armor = 0, type = "hug", stats = { hunger = 0, }},
		["gizmo"] = { 			     emote = "teddy2", 	canRun = true, 	time = 5000, stress = 0, heal = 0, armor = 50, type = "hug", stats = { hunger = 0, }},

		
		["coffee"] = { 			     emote = "coffee", 		canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { thirst = 15, }},
		["water_bottle"] = { 	     emote = "drink", 		canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { thirst = 35, }},
		["dumbbitch"] = { 		     emote = "dbsoda", 		canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { thirst = 50, }},
		["kurkakola"] = { 		     emote = "ecola", 		canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { thirst = 15, }},
		
		["mango_jarritos"] = {       emote = "edrink", 		canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { thirst = 50, }},
		["pineapple_jarritos"] = { 	 emote = "edrink",      canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { thirst = 50, }},
		["cafe_de_olla"] = { 	     emote = "coffee", 		canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { effect = "stamina", time = 10000, thirst = 75, }},
		["horchata"] = { 		     emote = "frappe2", 	canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { thirst = 50, }},

		["espresso"] = { 		     emote = "coffee", 		canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { thirst = 30, }},
		
		["shamrock"] = { 		     emote = "sipshakeh", 	canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { effect = "luck", time = 10000, thirst = 75, }},

		["icedcoffee"] = { 	     emote = "coffee", 		canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { thirst = 50, }},
		["mocha"] = { 	         emote = "coffee",      canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { thirst = 50, }},
		["latte"] = { 		     emote = "coffee", 		canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { thirst = 50, }},
		["macchiato"] = {        emote = "coffee", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { thirst = 50, }},
		["frappe"] = { 	         emote = "frappe4", 	canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { thirst = 50, }},
		["mintmocha"] = { 	     emote = "coffee", 	    canRun = true, 	time = 5000, stress = 5, heal = 50, armor = 0, type = "food", stats = { hunger = 75, }},

		["atom_soda"] = { 		     emote = "soda", 		canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { thirst = 50, }},
		["marsmilk"] = { 		     emote = "sipshakel", 	canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { thirst = 50, }},
		["galaxylemonade"] = { 		 emote = "sipshakeg", 	canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { thirst = 50, }},
		["blackhole"] = { 		     emote = "coffee", 		canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { thirst = 50, }},
		
		["oolong"] = { 		         emote = "xmasmug", 	canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { thirst = 60, }},
		["kombucha"] = { 		     emote = "kambucha", 	canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { effect = "swimming", time = 10000, thirst = 75, }},
		["yujatea"] = { 		     emote = "xmasmug", 	canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink", stats = { thirst = 60, }},
		
		["pizza"] = { 		         emote = "pizzas5", 	canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 45, }},
		["nachos"] = { 		         emote = "taco", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 45, }},
		["popcorn"] = { 		     emote = "popcorn", 	canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "food", stats = { hunger = 75, }},
		["slush"] = { 		         emote = "mshake", 	    canRun = true, 	time = 5000, stress = 5, heal = 0, armor = 0, type = "drink",stats = { thirst = 50, }},
		["arcadecup"] = { 		     emote = "mshake", 	    canRun = true, 	time = 5000, stress = 25, heal = 0, armor = 0, type = "drink",stats = { hunger = 65, thirst = 65 }},
		
		["carplay"] = { 		     emote = "mechanic2", 	    canRun = true, 	time = 5000, stress = 0, heal = 0, armor = 0, type = "use",stats = { thirst = 0, }},

		--[[----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		-- Items that effect status changes, like bleeding can cause problems as they are all handled in their own scripts
		-- Testing these but they may be best left handled by default scripts
		["ifaks"] = { 			emote = "oxy", 		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 10, armor = 0, type = "drug", stats = { effect = "heal", amount = 6, widepupils = false, canOD = false } },
		["bandage"] = { 		emote = "oxy", 		time = math.random(5000, 6000), stress = 0, heal = 10, armor = 0, type = "drug", stats = { effect = "heal", amount = 3, widepupils = false, canOD = false } }, },
		]]

		--Testing effects & armor with small functionality to drugs - This may be another one left to default scripts
		["weed_joint"] = { 			emote = "smoke3",	time = math.random(5000, 6000), stress = 60, heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },
		["joint"] = { 			    emote = "smoke3",	time = math.random(5000, 6000), stress = 60, heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },

		["coke_bag"] = { 		emote = "coke",		time = 6000, stress = 45, heal = 0, armor = 0, type = "drug", stats = { screen = "focus", effect = "stamina", widepupils = true, canOD = true } },
		--["crackbaggy"] = { 		emote = "coke",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { effect = "heal", widepupils = false, canOD = true } },
		["xtcbaggy"] = { 		emote = "oxy",		time = 6000, stress = 45, heal = 0, armor = 10, type = "drug", stats = { effect = "strength", widepupils = true, canOD = true } },
		["meth_bag"] = { 		emote = "coke",		time = 6000, stress = 45, heal = 0, armor = 10, type = "drug", stats = { screen = "turbo", effect = "stamina", widepupils = true, canOD = true } },
		["ifaks"] = { 			emote = "oxy", 		time = 6000, stress = 100, heal = 75, armor = 0, type = "drug", stats =  { widepupils = false, canOD = false } },
		["oxycontin"] = { 	    emote = "oxy", 		time = 6000, stress = 100, heal = 75, armor = 0, type = "drug", stats = { screen = "weed", canOD = false } },
		["painkillers"] = { 	emote = "oxy", 		time = 6000, stress = 100, heal = 50, armor = 0, type = "drug", stats = { widepupils = false, canOD = false } },
		["bandage"] = { 		emote = "oxy", 		time = 600, stress = 0, heal = 15, armor = 0, type = "drug", stats = { effect = "heal", amount = 3, widepupils = false, canOD = false } },

		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

		--[[Example item
		["heartstopper"] = {
			emote = "burger", 							-- Select an emote from below, it has to be in here
			time = math.random(5000, 6000),				-- Amount of time it takes to consume the item
			stress = math.random(1,2),					-- Amount of stress relief, can be 0
			heal = 0, 									-- Set amount to heal by after consuming
			armor = 5,									-- Amount of armor to add
			type = "food",								-- Type: "alcohol" / "drink" / "food"

			stats = {
				screen = "thermal",						-- The screen effect to be played when after consuming the item "rampage" "turbo" "focus" "weed" "trevor" "nightvision" "thermal"
				effect = "heal", 						-- The status effect given by the item, "heal" / "stamina"
														-- This supports ps-buffs effects "armor" "stress" "swimming" "hacking" "intelligence" "luck" "strength"
				time = 10000,							-- How long the effect should last (if not added it will default to 10000)
				amount = 6,								-- How much the value is changed by per second
				hunger = math.random(10, 20),			-- The hunger/thirst stats of the item, if not found in the items.lua
				thirst = math.random(10, 20),			-- The hunger/thirst stats of the item, if not found in the items.lua
			},
			--Reward Items Variables
														-- These can be the only thing in a consumable table and the item will still work
			amounttogive = 3,							-- Used for "RewardItems", tells the script how many to give
			rewards = {
				[1] = {
					item = "plastic", 					-- prize item name
					max = 10,							-- max amount to give (this is put into math.random(1, max) )
					rarity = 1,							-- the rarity system, 1 being rarest, 4 being most common
				},
			},
		},]]

	},
	Emotes = {
		["drink"] = {"mp_player_intdrink", "loop_bottle", "Drink", AnimationOptions =
			{ Prop = "prop_ld_flow_bottle", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["coffee"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Coffee", AnimationOptions =
			{ Prop = 'p_amb_coffeecup_01', PropBone = 28422, PropPlacement = {0.0,0.0,0.0,0.0,0.0,0.0},
				EmoteLoop = true, EmoteMoving = true }},
		["burger"] = { "mp_player_inteat@burger", "mp_player_int_eat_burger", "Burger",	AnimationOptions =
			{ Prop = 'prop_cs_burger_01', PropBone = 18905, PropPlacement = {0.13,0.05,0.02,-50.0,16.0,60.0},
				EmoteMoving = true }},
		["beer"] = {"amb@world_human_drinking@beer@male@idle_a", "idle_c", "Beer", AnimationOptions =
			{ Prop = 'prop_amb_beer_bottle', PropBone = 28422, PropPlacement = {0.0,0.0,0.06,0.0,15.0,0.0},
				EmoteLoop = true, EmoteMoving = true }},
		["egobar"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger","Ego Bar", AnimationOptions =
			{ Prop = 'prop_choc_ego', PropBone = 60309, PropPlacement ={0.0,0.0,0.0,0.0,0.0,0.0},
				EmoteMoving = true }},
		["sandwich"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Sandwich", AnimationOptions =
			{ Prop = 'prop_sandwich_01', PropBone = 18905, PropPlacement = {0.13,0.05,0.02,-50.0,16.0,60.0},
				EmoteMoving = true }},
		["smoke3"] = { "amb@world_human_aa_smoke@male@idle_a", "idle_b", "Smoke 3", AnimationOptions =
			{ Prop = 'prop_cs_ciggy_01', PropBone = 28422, PropPlacement = {0.0,0.0,0.0,0.0,0.0,0.0},
				EmoteLoop = true, EmoteMoving = true }},
		["whiskey"] = { "amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Whiskey", AnimationOptions =
			{ Prop = 'prop_drink_whisky', PropBone = 28422, PropPlacement = {0.01,-0.01,-0.06,0.0,0.0,0.0},
				EmoteLoop = true, EmoteMoving = true } },
		["vodkab"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Vodka Bottle", AnimationOptions =
			{ Prop = 'prop_vodka_bottle', PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["ecola"] = {"mp_player_intdrink", "loop_bottle", "E-cola", AnimationOptions =
			{ Prop = "prop_ecola_can", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["crisps"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Chrisps", AnimationOptions =
			{ Prop = 'v_ret_ml_chips2', PropBone = 28422, PropPlacement = {0.01, -0.05, -0.1, 0.0, 0.0, 90.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["icecreamb"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Ice cream Chocolate", AnimationOptions =
			{ Prop = 'bzzz_icecream_chocolate', PropBone = 18905, PropPlacement = {0.14, -0.03, -0.1, 85.0, 70.0, -203.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["desert"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat dessert", AnimationOptions =
			{ Prop = 'bzzz_food_dessert_a', PropBone = 18905, PropPlacement = {0.15, -0.03, 0.03, -42.0, -36.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["taco"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Taco", AnimationOptions =
			{ Prop = 'prop_taco_01', PropBone = 60309, PropPlacement = {-0.0170,  0.0070, -0.0210, 107.9846, -105.0251, 55.7779},
				EmoteLoop = true, EmoteMoving = true, }},
		["eat"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat", AnimationOptions =
			{ Prop = 'prop_cs_burger_01', PropBone = 60309, PropPlacement = {0.0000, 0.0000, -0.0200, 30.0000, 0.0000, 0.0000},
				EmoteLoop = true, EmoteMoving = true, }},
		["donut3"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Donut Raspberry", AnimationOptions =
			{ Prop = 'bzzz_foodpack_donut001', PropBone = 60309, PropPlacement = {0.0000, 0.0300, -0.0100, 10.0000, 0.0000, -1.0000},
				EmoteLoop = true, EmoteMoving = true, }},
		["frappe4"] = {"amb@code_human_wander_drinking@female@base", "static", "Frappe 4", AnimationOptions =
			{ Prop = 'beanmachine_cup3', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.0600, 0.0, 0.0, -178.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["frappe3"] = {"amb@code_human_wander_drinking@female@base", "static", "Frappe 3", AnimationOptions =
			{ Prop = 'beanmachine_cup2', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.0600, 0.0, 0.0, -178.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["frappe2"] = {"amb@code_human_wander_drinking@female@base", "static", "Frappe 2", AnimationOptions =
			{ Prop = 'beanmachine_cup', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.0600, 0.0, 0.0, -178.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["sipshaked"] = {"smo@milkshake_idle", "milkshake_idle_clip", "brum_cherryshake_coffee", AnimationOptions =
			{ Prop = 'brum_cherryshake_coffee', PropBone = 28422, PropPlacement = {0.0850, 0.0670, -0.0350, -115.0862, -165.7841, 24.1318},
				EmoteLoop = true, EmoteMoving = true, }},
		["sipshakec"] = {"smo@milkshake_idle", "milkshake_idle_clip", "Sip Milkshake - Chocolate", AnimationOptions =
			{ Prop = 'brum_cherryshake_chocolate', PropBone = 28422, PropPlacement = {0.0850, 0.0670, -0.0350, -115.0862, -165.7841, 24.1318},
				EmoteLoop = true, EmoteMoving = true, }},
		["sipshakei"] = {"smo@milkshake_idle", "milkshake_idle_clip", "brum_cherryshake_strawberry", AnimationOptions =
			{ Prop = 'brum_cherryshake_strawberry', PropBone = 28422, PropPlacement = {0.0850, 0.0670, -0.0350, -115.0862, -165.7841, 24.1318},
				EmoteLoop = true, EmoteMoving = true, }},
		["xmasmug"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Coffee", AnimationOptions =
			{ Prop = 'bzzz_food_xmas_mug_a', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["wine"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Wine", AnimationOptions =
			{ Prop = 'prop_drink_redwine', PropBone = 18905, PropPlacement = {0.10, -0.03, 0.03, -100.0, 0.0, -10.0},
				EmoteLoop = true, EmoteMoving = true, }},	
		["edrink"] = {"mp_player_intdrink", "loop_bottle", "Energy Drink - Bottle", AnimationOptions =
			{ Prop = 'prop_energy_drink', PropBone = 60309, PropPlacement = {0.0080, 0.0010, 0.0160, 3.5690, 4.6611, -49.9065},
				EmoteLoop = true, EmoteMoving = true, }},
		["dbsoda"] = {"amb@code_human_wander_drinking@male@base", "static", "Soda - Dumb Bitch", AnimationOptions =
			{ Prop = 'dumbbitchjuice', PropBone = 28422, PropPlacement = {0.0060, -0.0020, -0.0700, 180.0000, 180.0000, -10.0000},
				EmoteLoop = true, EmoteMoving = true, }},
		["soda"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Soda - eCola Can", AnimationOptions =
			{ Prop = 'prop_ecola_can', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 130.0},
				EmoteLoop = true, EmoteMoving = true, }},	
		["sipshakeh"] = {"smo@milkshake_idle", "milkshake_idle_clip", "Sip Milkshake - Mint", AnimationOptions =
			{ Prop = 'brum_cherryshake_mint', PropBone = 28422, PropPlacement = {0.0850, 0.0670, -0.0350, -115.0862, -165.7841, 24.1318},
				EmoteLoop = true, EmoteMoving = true, }},		
		["kambucha"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Coffee", AnimationOptions =
			{ Prop = 'prop_energy_drink', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},	
		["beans"] = { "anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1", "base_idle", "Beans", AnimationOptions = 
		    { Prop = "h4_prop_h4_caviar_tin_01a", PropBone = 60309, PropPlacement = { 0.0, 0.0300, 0.0100, 0.0, 0.0, 0.0 },
             SecondProp = 'h4_prop_h4_caviar_spoon_01a', SecondPropBone = 28422, SecondPropPlacement = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 },
                EmoteLoop = true, EmoteMoving = true, }},
		["dinner"] = { "anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1", "base_idle", "Dinner", AnimationOptions = 
		    { Prop = "prop_cs_plate_01", PropBone = 60309, PropPlacement = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 },
             SecondProp = 'h4_prop_h4_caviar_spoon_01a', SecondPropBone = 28422, SecondPropPlacement = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 },
                EmoteLoop = true, EmoteMoving = true, }},
		["lollipop1e"] = { "mp_player_inteat@burger", "mp_player_int_eat_burger", "Lollipop Spiral Yellow", AnimationOptions = 
		    { Prop = "natty_lollipop_spiral05", PropBone = 60309, PropPlacement = { -0.0100, 0.0200, -0.0100, -175.1935, 97.6975, 20.9598 },
                EmoteMoving = true, }},		
		["sipshakeg"] = {"smo@milkshake_idle", "milkshake_idle_clip", "Sip Milkshake - Lemon", AnimationOptions =
			{ Prop = 'brum_cherryshake_lemon', PropBone = 28422, PropPlacement = {0.0850, 0.0670, -0.0350, -115.0862, -165.7841, 24.1318},
				EmoteLoop = true, EmoteMoving = true, }},
		["sipshakel"] = {"smo@milkshake_idle", "milkshake_idle_clip", "Sip Milkshake - Vanilla", AnimationOptions =
			{ Prop = 'brum_cherryshake_vanilla', PropBone = 28422, PropPlacement = {0.0850, 0.0670, -0.0350, -115.0862, -165.7841, 24.1318},
				EmoteLoop = true, EmoteMoving = true, }},
		["pizzas5"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Pizza Slice - Double Peperoni", AnimationOptions =
			{ Prop = 'knjgh_pizzaslice5', PropBone = 60309, PropPlacement = {0.0850, 0.0200, -0.0200, 73.6928, -66.7427, 68.367},
				EmoteLoop = true, EmoteMoving = true, }},
		["popcorn"] = {"amb@code_human_wander_drinking@female@base", "static", "Popcorn", AnimationOptions =
			{ Prop = 'prop_taymckenzienz_popcorn', PropBone = 28422, PropPlacement = {-0.0850, -0.0100, -0.0700, -179.3626, 176.9331, 11.9833},
				EmoteLoop = true, EmoteMoving = true, }},
		["mshake"] = {"amb@code_human_wander_drinking@female@base", "static", "Milshake - Bubblegum", AnimationOptions =
			{ Prop = 'brum_cherryshake_bubblegum', PropBone = 28422, PropPlacement = {0.0030, -0.0280, 0.0800, -180.0, -180.0, 30.0},
				EmoteLoop = true, EmoteMoving = true, }},	
		["lollipop2a"] = { "mp_player_inteat@burger", "mp_player_int_eat_burger", "Lollipop Spin Red", AnimationOptions = 
		    { Prop = "natty_lollipop_spin01", PropBone = 60309, PropPlacement = { -0.0100, 0.0200, -0.0100, -175.1935, 97.6975, 20.9598 },
                EmoteMoving = true, }},	
		["frappe"] = {"amb@code_human_wander_drinking@male@base", "static", "Frappe", AnimationOptions =
			{ Prop = 'brum_heartfrappe', PropBone = 28422, PropPlacement = {0.0, 0.0150, -0.0100, 0.0, -3.9999, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["teddy"] = {"impexp_int-0", "mp_m_waremech_01_dual-0", "Teddy", AnimationOptions =
			{ Prop = 'v_ilev_mr_rasberryclean', PropBone = 24817, PropPlacement = {-0.20, 0.46, -0.016, -180.0, -90.0, 0.0},				
			EmoteLoop = true, EmoteMoving = true, }},
		["mechanic2"] = {"mini@repair", "fixing_a_player", "Mechanic 2", AnimationOptions =
			{ Prop = 'v_ilev_mr_rasberryclean', PropBone = 24817, PropPlacement = {-0.20, 0.46, -0.016, -180.0, -90.0, 0.0},				
			EmoteLoop = true, EmoteMoving = true, }},
		["teddy2"] = {"impexp_int-0", "mp_m_waremech_01_dual-0", "Teddy 2 - Gremlin", AnimationOptions =
			{ Prop = 'gremlin_plush', PropBone = 57005, PropPlacement = {-0.2610, -0.1220, -0.0290, -96.2588, 62.8313, 9.2446},				
			EmoteLoop = true, EmoteMoving = true, }},																				
																																																		
		--Drugs
		["coke"] = { "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", "Coke", AnimationOptions =
			{ EmoteLoop = true, EmoteMoving = true, }},
		["oxy"] = { "mp_suicide", "pill", "Oxy", AnimationOptions =
			{ EmoteLoop = true, EmoteMoving = true, }},
				["cigar"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cigar", AnimationOptions =
			{ Prop = 'prop_cigar_02', PropBone = 47419, PropPlacement = {0.010, 0.0, 0.0, 50.0, 0.0, -80.0},
				EmoteMoving = true, EmoteDuration = 2600 }},
		["cigar2"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cigar 2", AnimationOptions =
			{ Prop = 'prop_cigar_01', PropBone = 47419, PropPlacement = {0.010, 0.0, 0.0, 50.0, 0.0, -80.0},
				EmoteMoving = true, EmoteDuration = 2600 }},
		["joint"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Joint", AnimationOptions =
			{ Prop = 'p_cs_joint_02', PropBone = 47419, PropPlacement = {0.015, -0.009, 0.003, 55.0, 0.0, 110.0},
				EmoteMoving = true, EmoteDuration = 2600 }},
		["cig"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cig", AnimationOptions =
			{ Prop = 'prop_amb_ciggy_01', PropBone = 47419, PropPlacement = {0.015, -0.009, 0.003, 55.0, 0.0, 110.0},
			EmoteMoving = true, EmoteDuration = 2600 }},		
	},
}
