Config = {}

-------------------------
--DEPENDENCY PROPERTIES--
-------------------------

    Config.CoreEx = "qb-core"
    Config.TargetEx = "qb-target"
    Config.UIEx = "ps-ui"
    Config.DispatchEx = "qs-dispatch"
    Config.MenuEx = 'qb-menu'
    Config.InputEx = 'qb-input'

-------------
--MZ-DIVING--
-------------

-------------------------
--GENERAL CONFIGURATION--
-------------------------

    Config.NotifyType = 'okok'              -- Change to 'qb-core' for standard qb-core style notifications, or to "okok" for oKoKNotify style notifications 

    Config.MinimumLoot = 6                  -- Minimum number of loot points (noting that the maximum is 6)

    Config.AddZOffset = true                -- Increase the prop placement by a factor of 1 GTA units in height

    Config.ZOffsetamount = 0                -- Amount of zOffset applied

    Config.DivingCooldown = 0               -- Server wide cooldown (in minutes) (set to 0 to disable)

    Config.blipSprite = 459                 -- No need to change (creates a map radius when at diving spawn locations).

    Config.radius = 75.0                    -- Search radius size (no need to touch this - each location props have been configured to this).

    Config.distance = 150                   -- Distance away before player is alerted that they are approaching their search destination.

    Config.missionFailedtimer = 30          -- Time (in minutes) until mission fails and clears

    Config.waypoint = true                  -- Do not recommend changing this unless you want to hide the dive spots. 

----------------
--NEW MISSIONS--
----------------

-- if "Config.MinimumLoot = 6" then you may set the following option to "true" to cause the server to auto-start a new mission upon completing one.

    Config.AutoNewMission = true            -- Change to "false" to require player to obtain a new mission every time.

    Config.MissionNumber = 4                -- Maximum number of subsequent new missions.

---------
--BLIPS--
---------

    Config.StartBlipName = "Neeks' Diving"
    Config.StartBlipSprite = 455
    Config.StartBlipColour = 8
    Config.StartBlipDisplay = 4
    Config.StartBlipScale = 0.50

    Config.StartLocation = {                -- Please note, the below coordinates will only change where blip appears, 
                                            -- please ensure you change the boxzone in client.lua to match.
            [1] = {
                    coords = vector3(-1507.73, 1505.29, 115.29),
                },
            }

    Config.SellBlipName = "Master's Dive Salvage"
    Config.SellBlipSprite = 371
    Config.SellBlipColour = 8
    Config.SellBlipDisplay = 4
    Config.SellBlipScale = 0.85

    Config.SellLocation = {                 -- Please note, the below coordinates will only change where blip appears, 
                                            -- please ensure you change the boxzone in client.lua to match.
            [1] = {
                    coords = vector3(-201.61, 6354.31, 31.49),
                },
            }


----------------
--LOOT OPTIONS--
----------------

    Config.skillcheck = true                -- Set to "false" to disable any skillcheck when looting salvage.
-- if "Config.skillcheck = true", then the following parameters apply:
    Config.skillparseLow = 2                -- Number of parses of ps-ui circle skillcheck
    Config.skillparseHigh = 3               -- Number of parses of ps-ui circle skillcheck
    Config.skilltimeLow = 11                -- Time for player to complete ps-ui circle skillcheck
    Config.skilltimeHigh = 13               -- Time for player to complete ps-ui circle skillcheck

    Config.Salvagedistance = 9              -- How far a player can be away from an object to loot it (set to 5+ to avoid alt-eye difficulties with swimming mechanics)


    Config.loottimelow = 3                  -- Lowest time (in seconds) to loot 
    Config.loottimehigh = 6                 -- Highest time (in seconds) to loot

------------------------
--DIVING_GEAR SETTINGS--
------------------------

    Config.WetsuitOn = 5                    -- Time (in seconds) for player to put on wetsuit.
    Config.WetsuitOff = 5                   -- Time (in seconds) for player to take off wetsuit.
    Config.RemoveCommand = "removescuba"    -- Change this to change the command to whatever phrase/reference you like
    Config.SecondsUnderwater = 1500         -- Number of seconds a player has underwater once they are in a dive suit.

-------------
--MZ-SKILLS--
-------------
    Config.mzskills = true                  -- Change to "false" if you wish to use this resource without using mz-skills for "Diving" XP. (Make sure your mz-skills is up to date)

-- if Config.mzskills = true, then the following parameters apply:
    -- XP Requirements
    Config.DiveXPskill = "Diving"           -- Change to the name of the skill you wish to use (must be the same as mz-skills/config.lua)

    Config.DiveXPlvl8 = 12800
    Config.DiveXPlvl7 = 6400 
    Config.DiveXPlvl6 = 3200
    Config.DiveXPlvl5 = 1600
    Config.DiveXPlvl4 = 800
    Config.DiveXPlvl3 = 400
    Config.DiveXPlvl2 = 200
    Config.DiveXPlvl1 = 100
    Config.DiveXPlvl0 = 0

-- XP modifiers
    Config.diverXPlow = 1                   -- Lowest amount of "Diving" XP player will get for salvage diving.
    Config.diverXPhigh = 3                  -- Highest amount of "Diving" XP player will get for salvage diving.
    Config.diverXPloss = 1                  -- Amount of "Diving" XP lost for failing skillcheck (if skillcheck is enabled) 

----------
--OUTPUT--
----------

-- Configure the items capable of being found from diving

    Config.item1 = "metalscrap"         -- Item found 30% of the time a player salvages diving refuge. 
    Config.item2 = "driftwood"              -- Item found 25% of the time a player salvages diving refuge. 
    Config.item3 = "shipwreck_crockery"     -- Item found 20% of the time a player salvages diving refuge. 
    Config.item4 = "diving_antiques"        -- Item found 15% of the time a player salvages diving refuge. 
    Config.item5 = "abandoned_valuables"    -- Item found 5% of the time a player salvages diving refuge. 
    Config.item6 = "blankusb"               -- Item found 2% of the time a player salvages diving refuge. 
    Config.item7 = "lockpick"               -- Item found 2% of the time a player salvages diving refuge. 
    Config.item8 = "armor"                  -- Item found 1% of the time a player salvages diving refuge. 
    Config.item9 = "plastic"                -- Item found 30% of the time a player salvages diving refuge. 
    Config.item10 = "copper"                 -- Item found 30% of the time a player salvages diving refuge. 
    Config.item11 = "aluminum"               -- Item found 30% of the time a player salvages diving refuge. 
    Config.item12 = "iron"                   -- Item found 30% of the time a player salvages diving refuge. 
    Config.item13 = "steel"                  -- Item found 30% of the time a player salvages diving refuge. 
    Config.item14 = "rubber"                 -- Item found 30% of the time a player salvages diving refuge. 
    Config.item15 = "glass"                  -- Item found 30% of the time a player salvages diving refuge. 
    Config.item16 = "coke_bag"                  -- Item found 30% of the time a player salvages diving refuge. 
    Config.item17 = "meth_bag"                  -- Item found 30% of the time a player salvages diving refuge. 
    Config.item18 = "weed_joint"                  -- Item found 30% of the time a player salvages diving refuge. 
    Config.item19 = "10kgoldchain"                  -- Item found 30% of the time a player salvages diving refuge. 
    Config.item20 = "diamond_necklace"                  -- Item found 30% of the time a player salvages diving refuge. 
    Config.item21 = "diamond_ring"                  -- Item found 30% of the time a player salvages diving refuge. 
    Config.item22 = "emerald_ring"                  -- Item found 30% of the time a player salvages diving refuge. 

    Config.rareitem1 = "hydrochloric_acid"  -- Rare item - found 1% of the time a player salvages diving refuge. 
    Config.rareitem2 = "acetone"            -- Rare item - found 1% of the time a player salvages diving refuge. 
    Config.rareitem3 = "ephedrine"          -- Rare item - found 1% of the time a player salvages diving refuge. 

---------------
--SELL VALUES--
---------------

    Config.DiveItems = { -- Items capable of being sold for $
        [1] = {
            item = "driftwood",
            price = 3
        },
        [2] = {
            item = "shipwreck_crockery",
            price = 3
        },
        [3] = {
            item = "diving_antiques",
            price = 3
        },
        [4] = {
            item = "abandoned_valuables",
            price = 3
        },
    }

-- Searchable loot props
    Config.boxProp0 = "sm_prop_smug_crate_s_antiques" 
    Config.boxProp1 = "sm_prop_smug_crate_s_bones" 
    Config.boxProp2 = "sm_prop_smug_crate_s_tobacco" 
    Config.boxProp3 = "sm_prop_smug_crate_s_jewellery" 
    Config.boxProp4 = "sm_prop_smug_crate_s_narc" 
    Config.boxProp5 = "sm_prop_smug_rsply_crate02a" 

-- Prop images
    Config.Prop1Image = "https://i.imgur.com/mmlu5ul.png"
    Config.Prop2Image = "https://i.imgur.com/D54wE6w.png"
    Config.Prop3Image = "https://i.imgur.com/mkLvj6k.png"
    Config.Prop4Image = "https://i.imgur.com/4TKMeOn.png"
    Config.Prop5Image = "https://i.imgur.com/jQDwZ5B.png"
    Config.Prop6Image = "https://i.imgur.com/iovBge5.png"
    Config.NightImage = "https://i.imgur.com/LFo7HBC.png"

-- Dive spot locations
Config.locations = {
    [1] = { 
		addBlip = vector3(-1035.96, 6572.6, 0.63),			        -- Location of the blip on the map	
		divespot = vector3(-1035.96, 6572.6, 0.63),				    -- General vicinity of dive spot
		crate = vector4(-1022.31, 6562.67, -26.69, 228.56),		        -- 
        crate1 = vector4(-1005.56, 6533.65, -29.46, 133.56),		    -- 
        crate2 = vector4(-1025.99, 6515.32, -27.38, 242.45),		    -- 
        crate3 = vector4(-1061.51, 6537.52, -25.5, 127.43),	        -- 
        crate4 = vector4(-1042.01, 6480.46, -17.01, 238.18),		    -- 
        crate5 = vector4(-1027.4, 6482.3, -22.06, 195.89),		        -- 
		active = false,										        -- Don't touch this		
	},
    [2] = { 
		addBlip = vector3(-1035.96, 6572.6, 0.63),			        -- Location of the blip on the map	
		divespot = vector3(-1035.96, 6572.6, 0.63),				    -- General vicinity of dive spot
		crate = vector4(-996.01, 6380.21, -14.65, 206.96),		        -- 
        crate1 = vector4(-965.93, 6391.38, -8.7, 238.51),		    -- 
        crate2 = vector4(-994.5, 6365.64, -16.13, 56.81),		    -- 
        crate3 = vector4(-1052.32, 6390.94, -17.49, 338.34),	        -- 
        crate4 = vector4(-1031.23, 6427.77, -24.54, 270.04),		    -- 
        crate5 = vector4(-1045.0, 6441.92, -19.19, 91.99),		        -- 
		active = false,										        -- Don't touch this		
	},
    [3] = { 
		addBlip = vector3(758.13, 7395.41, -114.0),			        -- Location of the blip on the map	
		divespot = vector3(758.13, 7395.41, -114.0),				    -- General vicinity of dive spot
		crate = vector4(758.13, 7395.42, -113.74, 218.24),		        -- 
        crate1 = vector4(777.06, 7377.34, -117.86, 288.61),		    -- 
        crate2 = vector4(788.31, 7404.92, -122.88, 28.36),		    -- 
        crate3 = vector4(758.08, 7404.33, -131.66, 185.09),	        -- 
        crate4 = vector4(753.07, 7409.18, -128.91, 54.14),		    -- 
        crate5 = vector4(735.88, 7371.78, -124.29, 56.05),		        -- 
		active = false,										        -- Don't touch this		
	},
    [4] = { 
		addBlip = vector3(3397.27, 6323.41, -47.4),			    -- Location of the blip on the map	
		divespot = vector3(3397.27, 6323.41, -47.4),				-- General vicinity of dive spot
		crate = vector4(3391.92, 6328.61, -54.15, 73.58),		    -- 
        crate1 = vector4(3400.58, 6325.36, -57.76, 196.15),		    -- 
        crate2 = vector4(3422.15, 6300.74, -54.67, 216.71),		    -- 
        crate3 = vector4(3405.08, 6313.28, -53.64, 349.17),		-- 
        crate4 = vector4(3373.96, 6340.6, -54.73, 83.6),		    -- 
        crate5 = vector4(3425.13, 6351.39, -68.32, 254.31),		    -- 
		active = false,										        -- Don't touch this		
	}, 
    [5] = { 
		addBlip = vector3(-2938.53, 2449.73, -17.27),			    -- Location of the blip on the map	
		divespot = vector3(-2938.53, 2449.73, -17.27),				-- General vicinity of dive spot
		crate = vector4(-2994.89, 2449.58, -31.31, 18.05),		    -- 
        crate1 = vector4(-2978.21, 2492.73, -23.63, 178.34),		    -- 
        crate2 = vector4(-2952.64, 2501.34, -26.27, 307.07),		    -- 
        crate3 = vector4(-2940.97, 2516.4, -19.39, 283.7),		-- 
        crate4 = vector4(-2920.0, 2500.71, -20.22, 243.84),		    -- 
        crate5 = vector4(-2930.99, 2486.19, -17.0, 132.72),		    -- 
		active = false,										        -- Don't touch this		
	}, 
    [6] = { 
		addBlip = vector3(-2938.53, 2449.73, -17.27),			    -- Location of the blip on the map	
		divespot = vector3(-2938.53, 2449.73, -17.27),				-- General vicinity of dive spot
		crate = vector4(-2951.88, 2463.6, -26.62, 133.82),		    -- 
        crate1 = vector4(-2972.67, 2432.83, -23.33, 170.75),		    -- 
        crate2 = vector4(-2938.15, 2426.32, -20.44, 285.67),		    -- 
        crate3 = vector4(-2898.89, 2425.09, -10.24, 184.35),		-- 
        crate4 = vector4(-2876.42, 2450.94, -10.57, 346.1),		    -- 
        crate5 = vector4(-2898.91, 2493.75, -11.4, 52.02),		    -- 
		active = false,										        -- Don't touch this		
	}, 
    [7] = { 
		addBlip = vector3(4146.03, 3560.93, -33.04),			        -- Location of the blip on the map	
		divespot = vector3(4146.03, 3560.93, -33.04),				-- General vicinity of dive spot
		crate = vector4(4140.69, 3576.32, -42.8, 51.87),		    -- 
        crate1 = vector4(4178.57, 3574.72, -50.38, 233.79),		    -- 
        crate2 = vector4(4156.8, 3500.48, -33.15, 315.96),		    -- 
        crate3 = vector4(4145.53, 3515.33, -35.43, 81.55),		    -- 
        crate4 = vector4(4128.07, 3526.22, -28.66, 358.55),		    -- 
        crate5 = vector4(4125.32, 3536.57, -31.74, 315.72),		    -- 
		active = false,										        -- Don't touch this		
	},
    [8] = { 
		addBlip = vector3(-2835.28, 2935.33, -2.9),			        -- Location of the blip on the map	
		divespot = vector3(-2835.28, 2935.33, -2.9),				-- General vicinity of dive spot
		crate = vector4(-2826.74, 2914.94, -3.67, 278.62),		    -- 
        crate1 = vector4(-2831.06, 2990.42, -1.65, 76.75),		    -- 
        crate2 = vector4(-2878.01, 2971.51, -3.77, 83.04),		    -- 
        crate3 = vector4(-2905.03, 2935.84, -6.65, 156.92),		    -- 
        crate4 = vector4(-2852.51, 2885.91, -11.65, 228.3),		    -- 
        crate5 = vector4(-2827.46, 2878.79, -8.17, 188.09),		    -- 
		active = false,										        -- Don't touch this		
	},
    [9] = { 
		addBlip = vector3(-2835.28, 2935.33, -2.9),			        -- Location of the blip on the map	
		divespot = vector3(-2835.28, 2935.33, -2.9),				-- General vicinity of dive spot
		crate = vector4(-2831.93, 2894.12, -7.39, 34.1),		    -- 
        crate1 = vector4(-2856.46, 2926.48, -5.16, 26.57),		    -- 
        crate2 = vector4(-2893.34, 2961.58, -4.83, 41.59),		    -- 
        crate3 = vector4(-2837.31, 2995.01, -2.0, 274.47),		    -- 
        crate4 = vector4(-2825.74, 2874.4, -6.93, 121.32),		    -- 
        crate5 = vector4(-2864.74, 2891.6, -11.67, 108.24),		    -- 
		active = false,										        -- Don't touch this		
	},
    [10] = { 
		addBlip = vector3(3174.97, -356.16, -8.02),			    -- Location of the blip on the map	
		divespot = vector3(3174.97, -356.16, -8.02),				-- General vicinity of dive spot
		crate = vector4(3199.71, -378.08, -16.21, 41.49),		    -- 
        crate1 = vector4(3169.55, -342.95, -29.49, 338.51),		    -- 
        crate2 = vector4(3153.14, -304.43, -25.94, 358.5),		    -- 
        crate3 = vector4(3160.18, -285.66, -7.18, 357.08),		    -- 
        crate4 = vector4(3176.51, -312.94, -13.55, 29.5),		    -- 
        crate5 = vector4(3183.48, -332.36, -29.98, 202.65),		-- 
		active = false,										        -- Don't touch this		
	},
    [11] = { 
		addBlip = vector3(-3057.03, 3076.37, -8.78),			    -- Location of the blip on the map	
		divespot = vector3(-3057.03, 3076.37, -8.78),				-- General vicinity of dive spot
		crate = vector4(-3079.21, 3093.71, -8.41, 59.14),		    -- 
        crate1 = vector4(-3101.59, 3126.25, -5.3, 7.07),		    -- 
        crate2 = vector4(-3064.26, 3132.93, -2.7, 249.56),		    -- 
        crate3 = vector4(-3018.23, 3106.67, -8.18, 256.97),		    -- 
        crate4 = vector4(-3001.02, 3062.27, -5.59, 225.73),		    -- 
        crate5 = vector4(-3036.97, 3036.63, -15.33, 134.33),		-- 
		active = false,										        -- Don't touch this		
	},
    [12] = { 
		addBlip = vector3(-3057.03, 3076.37, -8.78),			    -- Location of the blip on the map	
		divespot = vector3(-3057.03, 3076.37, -8.78),				-- General vicinity of dive spot
		crate = vector4(-3044.79, 3011.7, -17.95, 142.2),		    -- 
        crate1 = vector4(-3081.49, 3016.37, -21.72, 77.16),		    -- 
        crate2 = vector4(-3108.86, 3040.54, -21.33, 38.76),		    -- 
        crate3 = vector4(-3098.43, 3083.49, -13.67, 323.6),		    -- 
        crate4 = vector4(-3074.01, 3114.72, -6.78, 337.04),		    -- 
        crate5 = vector4(-3041.52, 3078.31, -13.1, 135.53),		-- 
		active = false,										        -- Don't touch this		
	},
    [13] = { 
		addBlip = vector3(-2848.92, -425.73, -35.2),			    -- Location of the blip on the map	
		divespot = vector3(-2848.92, -425.73, -35.2),				-- General vicinity of dive spot
		crate = vector4(-2848.92, -425.73, -35.2, 303.24),		    -- 
        crate1 = vector4(-2840.23, -450.17, -20.13, 310.3),		-- 
        crate2 = vector4(-2836.56, -414.92, -26.11, 51.12),		-- 
        crate3 = vector4(-2851.75, -396.61, -40.43, 55.3),		    -- 
        crate4 = vector4(-2851.39, -451.17, -41.81, 186.08),		-- 
        crate5 = vector4(-2848.06, -499.16, -67.77, 313.35),		    -- 
		active = false,										        -- Don't touch this		
	},
    [14] = { 
		addBlip = vector3(-3268.3, 3464.98, -25.62),			    -- Location of the blip on the map	
		divespot = vector3(-3268.3, 3464.98, -25.62),				-- General vicinity of dive spot
		crate = vector4(-3307.2, 3471.9, -49.67, 167.49),		    -- 
        crate1 = vector4(-3305.72, 3426.82, -42.28, 234.95),		-- 
        crate2 = vector4(-3274.33, 3421.83, -27.39, 312.59),		-- 
        crate3 = vector4(-3251.79, 3402.26, -15.03, 211.96),		    -- 
        crate4 = vector4(-3226.05, 3427.54, -12.38, 330.49),		-- 
        crate5 = vector4(-3244.63, 3455.77, -19.41, 87.01),		    -- 
		active = false,										        -- Don't touch this		
	},
    [15] = { 
		addBlip = vector3(-3268.3, 3464.98, -25.62),			    -- Location of the blip on the map	
		divespot = vector3(-3268.3, 3464.98, -25.62),				-- General vicinity of dive spot
		crate = vector4(-3245.47, 3484.79, -19.0, 0.61),		    -- 
        crate1 = vector4(-3270.9, 3507.34, -27.95, 64.62),		-- 
        crate2 = vector4(-3297.73, 3496.48, -44.07, 127.14),		-- 
        crate3 = vector4(-3295.34, 3417.82, -33.45, 131.18),		    -- 
        crate4 = vector4(-3263.85, 3428.85, -25.43, 292.87),		-- 
        crate5 = vector4(-3228.58, 3441.48, -14.36, 300.89),		    -- 
		active = false,										        -- Don't touch this		
	},
    [16] = { 
		addBlip = vector3(-2771.42, 3694.08, -10.11),			    -- Location of the blip on the map	
		divespot = vector3(-2771.42, 3694.08, -10.11),				-- General vicinity of dive spot
		crate = vector4(-2742.88, 3704.45, -16.55, 254.68),		    -- 
        crate1 = vector4(-2768.9, 3676.97, -9.04, 149.12),		    -- 
        crate2 = vector4(-2790.87, 3640.68, -3.25, 102.41),		    -- 
        crate3 = vector4(-2806.45, 3695.87, -10.2, 250.64),		    -- 
        crate4 = vector4(-2757.08, 3738.4, -17.02, 264.59),		    -- 
        crate5 = vector4(-2724.12, 3729.87, -19.01, 176.87),		-- 
		active = false,										        -- Don't touch this		
	},
    [17] = { 
		addBlip = vector3(-2771.42, 3694.08, -10.11),			    -- Location of the blip on the map	
		divespot = vector3(-2771.42, 3694.08, -10.11),				-- General vicinity of dive spot
		crate = vector4(-2755.28, 3721.07, -18.3, 104.27),		    -- 
        crate1 = vector4(-2788.45, 3698.56, -11.18, 160.39),		    -- 
        crate2 = vector4(-2811.96, 3675.22, -6.04, 82.86),		    -- 
        crate3 = vector4(-2779.22, 3640.99, -3.64, 233.51),		    -- 
        crate4 = vector4(-2701.6, 3690.73, -7.8, 291.89),		    -- 
        crate5 = vector4(-2727.03, 3732.26, -21.22, 40.17),		-- 
		active = false,										        -- Don't touch this		
	},
    [18] = { 
		addBlip = vector3(-2771.42, 3694.08, -10.11),			    -- Location of the blip on the map	
		divespot = vector3(-2771.42, 3694.08, -10.11),				-- General vicinity of dive spot
		crate = vector4(-2735.28, 3694.48, -12.19, 196.9),		    -- 
        crate1 = vector4(-2759.98, 3690.47, -8.99, 339.58),		    -- 
        crate2 = vector4(-2820.6, 3692.95, -6.9, 47.57),		    -- 
        crate3 = vector4(-2813.4, 3748.07, -6.94, 348.8),		    -- 
        crate4 = vector4(-2713.79, 3721.72, -16.64, 167.88),		    -- 
        crate5 = vector4(-2730.34, 3685.24, -6.8, 130.33),		-- 
		active = false,										        -- Don't touch this		
	},
    [19] = { 
		addBlip = vector3(-2810.41, 4151.66, -45.58),			    -- Location of the blip on the map	
		divespot = vector3(-2810.41, 4151.66, -45.58),				-- General vicinity of dive spot
		crate = vector4(-2787.51, 4143.31, -34.43, 243.58),		    -- 
        crate1 = vector4(-2806.97, 4118.58, -34.6, 68.97),		    -- 
        crate2 = vector4(-2806.2, 4148.29, -46.01, 315.65),		    -- 
        crate3 = vector4(-2773.08, 4195.93, -29.02, 278.99),	    -- 
        crate4 = vector4(-2810.42, 4199.72, -52.67, 16.47),		    -- 
        crate5 = vector4(-2836.9, 4166.12, -53.21, 314.51),		    -- 
		active = false,										        -- Don't touch this		
	}, 
    [20] = { 
		addBlip = vector3(-2810.41, 4151.66, -45.58),			    -- Location of the blip on the map	
		divespot = vector3(-2810.41, 4151.66, -45.58),				-- General vicinity of dive spot
		crate = vector4(-2822.23, 4192.33, -61.34, 317.62),		    -- 
        crate1 = vector4(-2772.51, 4167.29, -29.55, 216.83),		    -- 
        crate2 = vector4(-2817.89, 4118.13, -36.95, 20.47),		    -- 
        crate3 = vector4(-2869.99, 4164.34, -66.54, 290.81),	    -- 
        crate4 = vector4(-2838.13, 4180.54, -68.9, 278.33),		    -- 
        crate5 = vector4(-2787.14, 4111.45, -28.67, 324.68),		    -- 
		active = false,										        -- Don't touch this		
	},
    [21] = { 
		addBlip = vector3(-2810.41, 4151.66, -45.58),			    -- Location of the blip on the map	
		divespot = vector3(-2810.41, 4151.66, -45.58),				-- General vicinity of dive spot
		crate = vector4(-2768.37, 4128.26, -25.38, 32.34),		    -- 
        crate1 = vector4(-2758.28, 4175.12, -22.98, 336.94),		    -- 
        crate2 = vector4(-2782.7, 4213.35, -31.73, 56.5),		    -- 
        crate3 = vector4(-2859.1, 4182.22, -78.8, 46.22),	    -- 
        crate4 = vector4(-2876.58, 4161.36, -66.08, 229.06),		    -- 
        crate5 = vector4(-2851.09, 4140.06, -52.28, 232.13),		    -- 
		active = false,										        -- Don't touch this		
	},
    [22] = { 
		addBlip = vector3(-2552.79, 4460.51, -16.86),			    -- Location of the blip on the map	
		divespot = vector3(-2552.79, 4460.51, -16.86),				-- General vicinity of dive spot
		crate = vector4(-2558.46, 4496.87, -16.44, 89.82),		    -- 
        crate1 = vector4(-2608.51, 4496.2, -33.78, 108.57),		    -- 
        crate2 = vector4(-2617.89, 4463.21, -35.77, 170.13),		-- 
        crate3 = vector4(-2557.68, 4518.83, -16.21, 295.69),	        -- 
        crate4 = vector4(-2606.27, 4457.09, -36.14, 257.84),		-- 
        crate5 = vector4(-2574.22, 4451.55, -25.43, 256.71),		-- 
		active = false,										        -- Don't touch this		
	},
    [23] = { 
		addBlip = vector3(-2552.79, 4460.51, -16.86),			    -- Location of the blip on the map	
		divespot = vector3(-2552.79, 4460.51, -16.86),				-- General vicinity of dive spot
		crate = vector4(-2492.23, 4442.54, -2.49, 147.1),		    -- 
        crate1 = vector4(-2557.69, 4402.04, -18.13, 35.38),		    -- 
        crate2 = vector4(-2593.89, 4450.39, -34.49, 177.43),		-- 
        crate3 = vector4(-2570.84, 4502.16, -16.46, 274.44),	        -- 
        crate4 = vector4(-2501.6, 4490.59, -8.73, 182.71),		-- 
        crate5 = vector4(-2591.16, 4428.89, -18.45, 242.16),		-- 
		active = false,										        -- Don't touch this		
	},
    [24] = { 
		addBlip = vector3(-2552.79, 4460.51, -16.86),			    -- Location of the blip on the map	
		divespot = vector3(-2552.79, 4460.51, -16.86),				-- General vicinity of dive spot
		crate = vector4(-2594.44, 4501.04, -28.25, 348.93),		    -- 
        crate1 = vector4(-2557.8, 4402.53, -18.59, 208.85),		    -- 
        crate2 = vector4(-2509.11, 4487.08, -7.93, 101.14),		-- 
        crate3 = vector4(-2565.97, 4515.86, -18.31, 84.44),	        -- 
        crate4 = vector4(-2574.25, 4471.05, -24.37, 259.4),		-- 
        crate5 = vector4(-2612.72, 4431.35, -15.3, 235.46),		-- 
		active = false,										        -- Don't touch this		
	},
    [25] = { 
		addBlip = vector3(-2090.39, 5124.69, -14.55),			    -- Location of the blip on the map	
		divespot = vector3(-2090.39, 5124.69, -14.55),				-- General vicinity of dive spot
		crate = vector4(-2086.15, 5109.7, -12.03, 195.79),		    -- 
        crate1 = vector4(-2047.3, 5079.73, -6.53, 154.97),		    -- 
        crate2 = vector4(-2092.26, 5119.84, -14.9, 17.83),		    -- 
        crate3 = vector4(-2122.23, 5130.45, -10.49, 332.47),	    -- 
        crate4 = vector4(-2129.48, 5084.92, -4.9, 294.06),		    -- 
        crate5 = vector4(-2096.56, 5075.54, -6.81, 202.78),		    -- 
		active = false,										        -- Don't touch this		
	},
    [26] = { 
		addBlip = vector3(-2090.39, 5124.69, -14.55),			    -- Location of the blip on the map	
		divespot = vector3(-2090.39, 5124.69, -14.55),				-- General vicinity of dive spot
		crate = vector4(-2104.0, 5190.56, -15.08, 200.75),		    -- 
        crate1 = vector4(-2153.97, 5113.01, -11.38, 215.55),		    -- 
        crate2 = vector4(-2114.09, 5079.49, -5.74, 339.34),		    -- 
        crate3 = vector4(-2041.4, 5098.87, -7.31, 229.34),	    -- 
        crate4 = vector4(-2043.93, 5168.77, -8.79, 192.42),		    -- 
        crate5 = vector4(-2068.88, 5122.58, -7.18, 180.58),		    -- 
		active = false,										        -- Don't touch this		
	},
    [27] = { 
		addBlip = vector3(-2090.39, 5124.69, -14.55),			    -- Location of the blip on the map	
		divespot = vector3(-2090.39, 5124.69, -14.55),				-- General vicinity of dive spot
		crate = vector4(-2060.17, 5101.72, -8.05, 205.25),		    -- 
        crate1 = vector4(-2086.68, 5067.5, -8.63, 156.48),		    -- 
        crate2 = vector4(-2119.17, 5067.81, -6.68, 7.16),		    -- 
        crate3 = vector4(-2139.69, 5120.95, -11.63, 82.29),	    -- 
        crate4 = vector4(-2096.27, 5143.99, -15.34, 11.11),		    -- 
        crate5 = vector4(-2078.16, 5132.67, -8.27, 246.0),		    -- 
		active = false,										        -- Don't touch this		
	},
    [28] = { 
		addBlip = vector3(-1557.49, 5319.41, -3.77),			    -- Location of the blip on the map	
		divespot = vector3(-1557.49, 5319.41, -3.77),				-- General vicinity of dive spot
		crate = vector4(-1548.66, 5320.41, -4.07, 255.89),		    -- 
        crate1 = vector4(-1556.05, 5348.33, -5.15, 29.19),		    -- 
        crate2 = vector4(-1584.85, 5351.54, -6.01, 138.67),		    -- 
        crate3 = vector4(-1596.27, 5327.65, -5.63, 164.22),	        -- 
        crate4 = vector4(-1589.5, 5302.29, -4.07, 206.0),		    -- 
        crate5 = vector4(-1567.56, 5296.02, -3.0, 299.06),		    -- 
		active = false,										        -- Don't touch this		
	},
    [29] = { 
		addBlip = vector3(-1557.49, 5319.41, -3.77),			    -- Location of the blip on the map	
		divespot = vector3(-1557.49, 5319.41, -3.77),				-- General vicinity of dive spot
		crate = vector4(-1602.0, 5345.04, -5.64, 101.61),		    -- 
        crate1 = vector4(-1620.0, 5320.15, -6.45, 173.88),		    -- 
        crate2 = vector4(-1594.98, 5283.32, -3.82, 215.9),		    -- 
        crate3 = vector4(-1565.64, 5268.99, -2.19, 257.55),	        -- 
        crate4 = vector4(-1545.59, 5279.38, -1.97, 313.48),		    -- 
        crate5 = vector4(-1531.3, 5308.1, -3.29, 355.77),		    -- 
		active = false,										        -- Don't touch this		
	},
    [30] = { 
		addBlip = vector3(-1557.49, 5319.41, -3.77),			    -- Location of the blip on the map	
		divespot = vector3(-1557.49, 5319.41, -3.77),				-- General vicinity of dive spot
		crate = vector4(-1512.45, 5278.34, -2.26, 136.3),		    -- 
        crate1 = vector4(-1563.07, 5291.21, -2.94, 84.37),		    -- 
        crate2 = vector4(-1590.93, 5313.88, -4.59, 89.76),		    -- 
        crate3 = vector4(-1600.5, 5355.96, -7.38, 20.55),	        -- 
        crate4 = vector4(-1573.66, 5375.83, -6.32, 287.56),		    -- 
        crate5 = vector4(-1541.13, 5341.59, -4.52, 227.66),		    -- 
		active = false,										        -- Don't touch this		
	},
    [31] = { 
		addBlip = vector3(-1262.71, 5531.98, -3.67),			    -- Location of the blip on the map	
		divespot = vector3(-1262.71, 5531.98, -3.67),				-- General vicinity of dive spot
		crate = vector4(-1248.57, 5543.5, -4.72, 306.82),		    -- 
        crate1 = vector4(-1275.32, 5542.04, -4.58, 125.66),		    -- 
        crate2 = vector4(-1279.63, 5516.66, -3.57, 180.65),		    -- 
        crate3 = vector4(-1292.69, 5511.21, -3.67, 37.34),	        -- 
        crate4 = vector4(-1287.4, 5540.26, -4.43, 356.12),		    -- 
        crate5 = vector4(-1244.59, 5561.29, -5.32, 347.85),		    -- 
		active = false,										        -- Don't touch this		
	},
    [32] = { 
		addBlip = vector3(-1262.71, 5531.98, -3.67),			    -- Location of the blip on the map	
		divespot = vector3(-1262.71, 5531.98, -3.67),				-- General vicinity of dive spot
		crate = vector4(-1224.77, 5563.49, -5.79, 161.19),		    -- 
        crate1 = vector4(-1205.12, 5528.27, -6.44, 185.67),		    -- 
        crate2 = vector4(-1238.49, 5503.54, -3.59, 91.96),		    -- 
        crate3 = vector4(-1282.77, 5507.63, -3.67, 52.11),	        -- 
        crate4 = vector4(-1313.26, 5527.2, -3.8, 62.92),		    -- 
        crate5 = vector4(-1315.43, 5567.95, -5.63, 312.77),		    -- 
		active = false,										        -- Don't touch this		
	},
    [33] = { 
		addBlip = vector3(-1262.71, 5531.98, -3.67),			    -- Location of the blip on the map	
		divespot = vector3(-1262.71, 5531.98, -3.67),				-- General vicinity of dive spot
		crate = vector4(-1284.61, 5563.2, -5.46, 264.16),		    -- 
        crate1 = vector4(-1261.59, 5568.31, -5.96, 283.43),		    -- 
        crate2 = vector4(-1245.76, 5553.06, -5.35, 211.97),		    -- 
        crate3 = vector4(-1239.32, 5511.68, -3.6, 194.32),	        -- 
        crate4 = vector4(-1260.63, 5489.6, -3.06, 132.84),		    -- 
        crate5 = vector4(-1298.78, 5485.03, -2.76, 89.5),		    -- 
		active = false,										        -- Don't touch this		
	},
    [34] = { 
		addBlip = vector3(352.25, 3728.28, 24.4),			        -- Location of the blip on the map	
		divespot = vector3(352.25, 3728.28, 24.4),				    -- General vicinity of dive spot
		crate = vector4(368.33, 3724.06, 24.24, 181.43),		    -- 
        crate1 = vector4(348.08, 3725.62, 23.84, 53.65),		    -- 
        crate2 = vector4(347.31, 3753.0, 22.62, 276.13),		    -- 
        crate3 = vector4(364.9, 3736.6, 23.52, 216.69),	            -- 
        crate4 = vector4(336.11, 3710.37, 26.52, 115.1),		    -- 
        crate5 = vector4(322.49, 3719.86, 27.19, 27.64),		    -- 
		active = false,										        -- Don't touch this		
	},
    [35] = { 
		addBlip = vector3(352.25, 3728.28, 24.4),			        -- Location of the blip on the map	
		divespot = vector3(352.25, 3728.28, 24.4),				    -- General vicinity of dive spot
		crate = vector4(308.95, 3744.06, 24.54, 22.7),		        -- 
        crate1 = vector4(321.2, 3782.4, 17.57, 271.39),		        -- 
        crate2 = vector4(367.59, 3774.99, 16.45, 254.14),		    -- 
        crate3 = vector4(401.53, 3758.51, 19.31, 218.97),	        -- 
        crate4 = vector4(379.78, 3686.6, 25.93, 228.98),		    -- 
        crate5 = vector4(335.71, 3666.87, 27.7, 90.4),		        -- 
		active = false,										        -- Don't touch this		
	},
    [36] = { 
		addBlip = vector3(352.25, 3728.28, 24.4),			        -- Location of the blip on the map	
		divespot = vector3(352.25, 3728.28, 24.4),				    -- General vicinity of dive spot
		crate = vector4(303.64, 3691.14, 26.7, 50.68),		    -- 
        crate1 = vector4(297.14, 3725.83, 25.0, 4.52),		    -- 
        crate2 = vector4(297.56, 3769.14, 19.54, 25.14),		    -- 
        crate3 = vector4(358.88, 3743.08, 23.74, 163.02),	            -- 
        crate4 = vector4(384.05, 3719.53, 23.62, 232.46),		    -- 
        crate5 = vector4(320.65, 3710.51, 26.04, 6.97),		    -- 
		active = false,										        -- Don't touch this		
	},
    [37] = { 
		addBlip = vector3(356.92, 4160.08, 25.23),			        -- Location of the blip on the map	
		divespot = vector3(356.92, 4160.08, 25.23),				    -- General vicinity of dive spot
		crate = vector4(371.35, 4142.07, 22.31, 251.98),		    -- 
        crate1 = vector4(375.48, 4116.06, 18.13, 177.84),		    -- 
        crate2 = vector4(353.64, 4109.83, 17.43, 67.81),		    -- 
        crate3 = vector4(314.79, 4132.94, 14.97, 40.22),	        -- 
        crate4 = vector4(331.9, 4149.12, 20.73, 318.43),		    -- 
        crate5 = vector4(368.63, 4155.29, 23.28, 267.56),		    -- 
		active = false,										        -- Don't touch this		
	},
    [38] = { 
		addBlip = vector3(356.92, 4160.08, 25.23),			        -- Location of the blip on the map	
		divespot = vector3(356.92, 4160.08, 25.23),				    -- General vicinity of dive spot
		crate = vector4(397.17, 4114.77, 22.09, 246.52),		    -- 
        crate1 = vector4(393.27, 4126.87, 23.51, 62.8),		    -- 
        crate2 = vector4(373.02, 4157.18, 24.83, 23.93),		    -- 
        crate3 = vector4(363.89, 4194.94, 26.89, 0.18),	        -- 
        crate4 = vector4(338.41, 4219.51, 27.59, 60.52),		    -- 
        crate5 = vector4(305.57, 4204.2, 27.62, 147.1),		    -- 
		active = false,										        -- Don't touch this		
	},
    [39] = { 
		addBlip = vector3(356.92, 4160.08, 25.23),			        -- Location of the blip on the map	
		divespot = vector3(356.92, 4160.08, 25.23),				    -- General vicinity of dive spot
		crate = vector4(289.73, 4171.13, 19.37, 169.15),		    -- 
        crate1 = vector4(333.32, 4173.26, 21.62, 301.08),		    -- 
        crate2 = vector4(416.86, 4157.86, 24.89, 338.24),		    -- 
        crate3 = vector4(377.15, 4185.49, 25.93, 68.17),	        -- 
        crate4 = vector4(315.47, 4187.46, 21.65, 98.24),		    -- 
        crate5 = vector4(301.74, 4137.28, 11.96, 281.39),		    -- 
		active = false,										        -- Don't touch this		
	},
    [40] = { 
		addBlip = vector3(998.35, 3782.67, 20.2),			        -- Location of the blip on the map	
		divespot = vector3(998.35, 3782.67, 20.2),				    -- General vicinity of dive spot
		crate = vector4(995.94, 3798.54, 14.52, 45.37),		        -- 
        crate1 = vector4(1026.82, 3806.88, 13.39, 308.94),		    -- 
        crate2 = vector4(1037.23, 3790.3, 15.49, 173.83),		    -- 
        crate3 = vector4(1058.41, 3798.48, 14.56, 338.88),	        -- 
        crate4 = vector4(1032.62, 3823.67, 10.41, 79.31),		    -- 
        crate5 = vector4(994.9, 3834.97, 2.99, 96.65),		        -- 
		active = false,										        -- Don't touch this		
	},
    [41] = { 
		addBlip = vector3(998.35, 3782.67, 20.2),			        -- Location of the blip on the map	
		divespot = vector3(998.35, 3782.67, 20.2),				    -- General vicinity of dive spot
		crate = vector4(1040.26, 3823.59, 10.67, 199.71),		        -- 
        crate1 = vector4(1049.35, 3796.48, 14.6, 185.67),		    -- 
        crate2 = vector4(1032.72, 3762.84, 22.97, 113.97),		    -- 
        crate3 = vector4(1007.89, 3743.11, 26.21, 157.44),	        -- 
        crate4 = vector4(977.31, 3722.87, 27.19, 120.7),		    -- 
        crate5 = vector4(955.94, 3742.4, 26.84, 31.15),		        -- 
		active = false,										        -- Don't touch this		
	},
    [42] = { 
		addBlip = vector3(998.35, 3782.67, 20.2),			        -- Location of the blip on the map	
		divespot = vector3(998.35, 3782.67, 20.2),				    -- General vicinity of dive spot
		crate = vector4(949.56, 3767.72, 22.37, 5.82),		        -- 
        crate1 = vector4(954.22, 3798.57, 17.9, 23.24),		    -- 
        crate2 = vector4(970.14, 3815.45, 12.49, 270.91),		    -- 
        crate3 = vector4(991.02, 3803.4, 15.16, 215.45),	        -- 
        crate4 = vector4(1031.15, 3797.3, 16.71, 298.51),		    -- 
        crate5 = vector4(1060.83, 3788.59, 18.97, 208.66),		        -- 
		active = false,										        -- Don't touch this		
	},
    [43] = { 
		addBlip = vector3(-3221.34, 2043.31, -28.11),			    -- Location of the blip on the map	
		divespot = vector3(-3221.34, 2043.31, -28.11),				-- General vicinity of dive spot
		crate = vector4(-3241.42, 2028.54, -35.45, 145.35),		    -- 
        crate1 = vector4(-3268.92, 2050.81, -42.04, 40.53),		    -- 
        crate2 = vector4(-3259.8, 2086.59, -37.29, 288.22),		    -- 
        crate3 = vector4(-3220.92, 2092.33, -31.08, 293.0),	        -- 
        crate4 = vector4(-3199.87, 2079.93, -27.05, 232.74),		-- 
        crate5 = vector4(-3190.44, 2050.78, -16.43, 201.07),		-- 
		active = false,										        -- Don't touch this		
	},
    [44] = { 
		addBlip = vector3(-3221.34, 2043.31, -28.11),			    -- Location of the blip on the map	
		divespot = vector3(-3221.34, 2043.31, -28.11),				-- General vicinity of dive spot
		crate = vector4(-3175.32, 2014.63, -15.08, 12.91),		    -- 
        crate1 = vector4(-3222.04, 2019.42, -32.55, 138.04),		    -- 
        crate2 = vector4(-3258.9, 2031.02, -41.04, 13.86),		    -- 
        crate3 = vector4(-3275.86, 2067.37, -39.77, 17.25),	        -- 
        crate4 = vector4(-3258.18, 2093.64, -35.86, 280.3),		-- 
        crate5 = vector4(-3172.11, 2018.17, -14.4, 283.52),		-- 
		active = false,										        -- Don't touch this		
	},
    [45] = { 
		addBlip = vector3(-3221.34, 2043.31, -28.11),			    -- Location of the blip on the map	
		divespot = vector3(-3221.34, 2043.31, -28.11),				-- General vicinity of dive spot
		crate = vector4(-3168.91, 2059.9, -15.11, 26.95),		    -- 
        crate1 = vector4(-3185.05, 2081.48, -28.4, 23.96),		    -- 
        crate2 = vector4(-3209.98, 2101.26, -31.09, 56.68),		    -- 
        crate3 = vector4(-3239.27, 2094.96, -31.4, 119.02),	        -- 
        crate4 = vector4(-3252.07, 2054.81, -37.69, 131.31),		-- 
        crate5 = vector4(-3267.95, 2032.51, -42.2, 168.59),		-- 
		active = false,										        -- Don't touch this		
	},
    [46] = { 
		addBlip = vector3(-3158.57, 1559.46, -7.85),			    -- Location of the blip on the map	
		divespot = vector3(-3158.57, 1559.46, -7.85),				-- General vicinity of dive spot
		crate = vector4(-3174.0, 1557.1, -9.12, 98.63),		        -- 
        crate1 = vector4(-3189.03, 1577.87, -11.17, 16.66),		    -- 
        crate2 = vector4(-3179.61, 1618.74, -3.15, 339.23),		    -- 
        crate3 = vector4(-3194.34, 1606.13, -14.91, 252.52),	    -- 
        crate4 = vector4(-3216.79, 1584.06, -11.19, 60.72),		    -- 
        crate5 = vector4(-3207.61, 1550.48, -4.33, 194.85),		    -- 
		active = false,										        -- Don't touch this		
	},
    [47] = { 
		addBlip = vector3(-3158.57, 1559.46, -7.85),			    -- Location of the blip on the map	
		divespot = vector3(-3158.57, 1559.46, -7.85),				-- General vicinity of dive spot
		crate = vector4(-3190.64, 1526.14, -3.02, 206.53),		        -- 
        crate1 = vector4(-3178.45, 1544.93, -8.44, 317.08),		    -- 
        crate2 = vector4(-3212.75, 1601.38, -13.33, 241.77),		    -- 
        crate3 = vector4(-3127.72, 1586.6, -2.31, 165.4),	    -- 
        crate4 = vector4(-3153.07, 1571.69, -6.31, 137.65),		    -- 
        crate5 = vector4(-3190.15, 1555.59, -10.99, 153.07),		    -- 
		active = false,										        -- Don't touch this		
	},
    [48] = { 
		addBlip = vector3(-3158.57, 1559.46, -7.85),			    -- Location of the blip on the map	
		divespot = vector3(-3158.57, 1559.46, -7.85),				-- General vicinity of dive spot
		crate = vector4(-3182.93, 1538.38, -6.77, 222.35),		        -- 
        crate1 = vector4(-3158.14, 1551.85, -3.16, 312.94),		    -- 
        crate2 = vector4(-3147.19, 1576.15, -3.62, 347.93),		    -- 
        crate3 = vector4(-3156.16, 1601.24, -3.12, 21.28),	    -- 
        crate4 = vector4(-3203.13, 1595.93, -13.82, 116.63),		    -- 
        crate5 = vector4(-3226.11, 1556.4, -10.32, 167.38),		    -- 
		active = false,										        -- Don't touch this		
	},
    [49] = { 
		addBlip = vector3(-3359.42, 1282.59, -17.86),			    -- Location of the blip on the map	
		divespot = vector3(-3359.42, 1282.59, -17.86),				-- General vicinity of dive spot
		crate = vector4(-3371.7, 1270.49, -22.57, 131.85),		    -- 
        crate1 = vector4(-3401.85, 1246.75, -30.22, 123.32),		-- 
        crate2 = vector4(-3422.51, 1264.21, -36.54, 337.73),		    -- 
        crate3 = vector4(-3423.67, 1301.84, -38.09, 283.35),	        -- 
        crate4 = vector4(-3369.19, 1326.19, -20.33, 258.77),		    -- 
        crate5 = vector4(-3343.79, 1314.37, -14.19, 256.56),		    -- 
		active = false,										        -- Don't touch this		
	},
    [50] = { 
		addBlip = vector3(-3359.42, 1282.59, -17.86),			    -- Location of the blip on the map	
		divespot = vector3(-3359.42, 1282.59, -17.86),				-- General vicinity of dive spot
		crate = vector4(-3320.71, 1297.22, -2.34, 150.93),		    -- 
        crate1 = vector4(-3322.8, 1271.11, -3.18, 176.98),		-- 
        crate2 = vector4(-3331.84, 1238.51, -4.85, 150.5),		    -- 
        crate3 = vector4(-3364.87, 1230.91, -17.0, 95.02),	        -- 
        crate4 = vector4(-3391.92, 1265.48, -27.11, 34.26),		    -- 
        crate5 = vector4(-3376.25, 1301.3, -22.84, 327.43),		    -- 
		active = false,										        -- Don't touch this		
	},
    [51] = { 
		addBlip = vector3(-3359.42, 1282.59, -17.86),			    -- Location of the blip on the map	
		divespot = vector3(-3359.42, 1282.59, -17.86),				-- General vicinity of dive spot
		crate = vector4(-3373.3, 1330.7, -22.26, 353.22),		    -- 
        crate1 = vector4(-3343.17, 1339.22, -15.2, 230.84),		-- 
        crate2 = vector4(-3311.9, 1320.99, -4.24, 254.42),		    -- 
        crate3 = vector4(-3298.09, 1285.92, -3.35, 217.76),	        -- 
        crate4 = vector4(-3336.92, 1275.64, -6.91, 78.43),		    -- 
        crate5 = vector4(-3351.44, 1273.82, -18.12, 108.55),		    -- 
		active = false,										        -- Don't touch this		
	},
    [52] = { 
		addBlip = vector3(-3424.09, 853.87, -6.77),			        -- Location of the blip on the map	
		divespot = vector3(-3424.09, 853.87, -6.77),				-- General vicinity of dive spot
		crate = vector4(-3439.42, 874.67, -17.38, 57.02),		    -- 
        crate1 = vector4(-3459.97, 878.01, -17.71, 57.21),		    -- 
        crate2 = vector4(-3462.69, 852.66, -25.8, 203.28),		    -- 
        crate3 = vector4(-3435.33, 822.51, -20.52, 256.84),	        -- 
        crate4 = vector4(-3405.99, 812.96, -14.95, 290.67),		    -- 
        crate5 = vector4(-3396.76, 842.06, -4.59, 332.88),		    -- 
		active = false,										        -- Don't touch this		
	},
    [53] = { 
		addBlip = vector3(-3424.09, 853.87, -6.77),			        -- Location of the blip on the map	
		divespot = vector3(-3424.09, 853.87, -6.77),				-- General vicinity of dive spot
		crate = vector4(-3371.38, 816.55, -8.6, 183.2),		    -- 
        crate1 = vector4(-3406.7, 788.48, -16.62, 150.51),		    -- 
        crate2 = vector4(-3447.63, 805.06, -25.52, 53.19),		    -- 
        crate3 = vector4(-3481.99, 869.88, -26.93, 303.6),	        -- 
        crate4 = vector4(-3441.35, 892.09, -11.67, 294.41),		    -- 
        crate5 = vector4(-3417.98, 895.05, -2.12, 286.57),		    -- 
		active = false,										        -- Don't touch this		
	},
    [54] = { 
		addBlip = vector3(-3424.09, 853.87, -6.77),			        -- Location of the blip on the map	
		divespot = vector3(-3424.09, 853.87, -6.77),				-- General vicinity of dive spot
		crate = vector4(-3406.45, 917.63, -3.26, 331.06),		    -- 
        crate1 = vector4(-3392.74, 873.05, -5.14, 181.69),		    -- 
        crate2 = vector4(-3428.11, 805.77, -19.75, 180.22),		    -- 
        crate3 = vector4(-3461.22, 826.38, -24.97, 46.21),	        -- 
        crate4 = vector4(-3430.59, 838.86, -16.14, 296.6),		    -- 
        crate5 = vector4(-3386.01, 876.66, -4.63, 290.42),		    -- 
		active = false,										        -- Don't touch this		
	},
    [55] = { 
		addBlip = vector3(-3304.37, 544.38, -17.97),			    -- Location of the blip on the map	
		divespot = vector3(-3304.37, 544.38, -17.97),				-- General vicinity of dive spot
		crate = vector4(-3300.49, 573.02, -18.68, 358.22),		    -- 
        crate1 = vector4(-3313.39, 594.16, -16.54, 35.4),		    -- 
        crate2 = vector4(-3340.59, 575.57, -19.26, 152.54),		    -- 
        crate3 = vector4(-3319.29, 537.0, -19.13, 239.66),	        -- 
        crate4 = vector4(-3300.36, 528.93, -17.88, 292.83),		    -- 
        crate5 = vector4(-3275.09, 537.68, -19.09, 303.55),		    -- 
		active = false,										        -- Don't touch this		
	}, 
    [56] = { 
		addBlip = vector3(-3304.37, 544.38, -17.97),			    -- Location of the blip on the map	
		divespot = vector3(-3304.37, 544.38, -17.97),				-- General vicinity of dive spot
		crate = vector4(-3260.09, 550.98, -15.32, 309.11),		    -- 
        crate1 = vector4(-3242.07, 571.04, -11.43, 337.44),		    -- 
        crate2 = vector4(-3343.18, 528.96, -22.24, 116.2),		    -- 
        crate3 = vector4(-3331.25, 492.02, -23.9, 214.13),	        -- 
        crate4 = vector4(-3253.48, 498.77, -11.46, 315.05),		    -- 
        crate5 = vector4(-3350.45, 531.96, -22.91, 285.17),		    -- 
		active = false,										        -- Don't touch this		
	}, 
    [57] = { 
		addBlip = vector3(-3304.37, 544.38, -17.97),			    -- Location of the blip on the map	
		divespot = vector3(-3304.37, 544.38, -17.97),				-- General vicinity of dive spot
		crate = vector4(-3332.37, 529.29, -21.43, 254.55),		    -- 
        crate1 = vector4(-3301.85, 502.88, -22.45, 222.93),		    -- 
        crate2 = vector4(-3274.52, 491.49, -15.01, 276.25),		    -- 
        crate3 = vector4(-3263.55, 577.13, -15.28, 347.02),	        -- 
        crate4 = vector4(-3281.49, 610.28, -16.03, 60.39),		    -- 
        crate5 = vector4(-3323.19, 601.86, -16.51, 72.54),		    -- 
		active = false,										        -- Don't touch this		
	}, 
    [58] = { 
		addBlip = vector3(-3323.37, 181.47, -18.59),			    -- Location of the blip on the map	
		divespot = vector3(-3323.37, 181.47, -18.59),				-- General vicinity of dive spot
		crate = vector4(-3316.57, 156.9, -17.79, 144.11),		    -- 
        crate1 = vector4(-3324.22, 130.86, -22.41, 217.73),		    -- 
        crate2 = vector4(-3353.62, 129.37, -27.31, 45.65),		    -- 
        crate3 = vector4(-3380.11, 150.2, -30.93, 55.83),	        -- 
        crate4 = vector4(-3383.27, 179.42, -27.97, 308.42),		    -- 
        crate5 = vector4(-3360.01, 199.1, -27.53, 309.32),		    -- 
		active = false,										        -- Don't touch this		
	},
    [59] = { 
		addBlip = vector3(-3323.37, 181.47, -18.59),			    -- Location of the blip on the map	
		divespot = vector3(-3323.37, 181.47, -18.59),				-- General vicinity of dive spot
		crate = vector4(-3343.69, 175.37, -25.96, 312.2),		    -- 
        crate1 = vector4(-3373.74, 163.97, -30.8, 93.98),		    -- 
        crate2 = vector4(-3362.97, 131.95, -30.03, 193.01),		    -- 
        crate3 = vector4(-3323.52, 118.87, -23.31, 270.61),	        -- 
        crate4 = vector4(-3281.65, 177.59, -10.69, 49.82),		    -- 
        crate5 = vector4(-3295.73, 227.08, -6.3, 90.37),		    -- 
		active = false,										        -- Don't touch this		
	},
    [60] = { 
		addBlip = vector3(-3323.37, 181.47, -18.59),			    -- Location of the blip on the map	
		divespot = vector3(-3323.37, 181.47, -18.59),				-- General vicinity of dive spot
		crate = vector4(-3347.05, 220.94, -12.23, 97.53),		    -- 
        crate1 = vector4(-3338.37, 174.61, -25.37, 267.43),		    -- 
        crate2 = vector4(-3319.55, 117.5, -22.57, 241.02),		    -- 
        crate3 = vector4(-3265.91, 148.12, -9.38, 344.08),	        -- 
        crate4 = vector4(-3304.26, 186.8, -12.83, 63.14),		    -- 
        crate5 = vector4(-3308.78, 241.14, -10.1, 1.09),		    -- 
		active = false,										        -- Don't touch this		
	},
}


    -- [21] = { 
	-- 	addBlip = vector3(-2967.61, -215.4, -28.34),			    -- Location of the blip on the map	
	-- 	divespot = vector3(-2967.61, -215.4, -28.34),				-- General vicinity of dive spot
	-- 	crate = vector4(-2942.8, -211.11, -29.71, 308.32),		    -- 
    --     crate1 = vector4(-2924.62, -175.57, -13.81, 345.11),		-- 
    --     crate2 = vector4(-2948.26, -169.47, -6.93, 55.93),		    -- 
    --     crate3 = vector4(-2965.1, -183.45, -22.97, 224.53),	        -- 
    --     crate4 = vector4(-2996.32, -208.01, -26.62, 98.53),		    -- 
    --     crate5 = vector4(-2997.3, -233.39, -30.32, 198.3),		    -- 
	-- 	active = false,										        -- Don't touch this		
	-- },
    -- [22] = { 
	-- 	addBlip = vector3(-2598.48, -458.19, -27.86),			    -- Location of the blip on the map	
	-- 	divespot = vector3(-2598.48, -458.19, -27.86),				-- General vicinity of dive spot
	-- 	crate = vector4(-2596.92, -484.75, -30.92, 253.94),		    -- 
    --     crate1 = vector4(-2593.7, -521.02, -40.59, 191.91),		    -- 
    --     crate2 = vector4(-2573.99, -530.62, -36.86, 274.67),	    -- 
    --     crate3 = vector4(-2537.78, -542.53, -33.35, 231.9),	        -- 
    --     crate4 = vector4(-2517.83, -540.23, -32.56, 296.14),		-- 
    --     crate5 = vector4(-2518.56, -509.21, -29.47, 67.14),		    -- 
	-- 	active = false,										        -- Don't touch this		
	-- },
    -- [23] = { 
	-- 	addBlip = vector3(-2182.43, -852.04, -41.98),			    -- Location of the blip on the map	
	-- 	divespot = vector3(-2182.43, -852.04, -41.98),				-- General vicinity of dive spot
	-- 	crate = vector4(-2223.51, -827.3, -29.51, 83.32),		    -- 
    --     crate1 = vector4(-2219.39, -801.57, -36.12, 348.54),		-- 
    --     crate2 = vector4(-2191.53, -787.12, -28.71, 295.36),		-- 
    --     crate3 = vector4(-2163.48, -795.65, -28.9, 241.95),	        -- 
    --     crate4 = vector4(-2152.68, -826.53, -31.58, 178.18),		-- 
    --     crate5 = vector4(-2156.23, -864.43, -39.34, 167.9),		    -- 
	-- 	active = false,										        -- Don't touch this		
	-- },
    -- [24] = { 
	-- 	addBlip = vector3(-1962.77, -1048.74, -19.18),			    -- Location of the blip on the map	
	-- 	divespot = vector3(-1962.77, -1048.74, -19.18),				-- General vicinity of dive spot
	-- 	crate = vector4(-1986.23, -1068.32, -28.64, 140.51),		-- 
    --     crate1 = vector4(-2018.02, -1073.91, -35.83, 55.78),		-- 
    --     crate2 = vector4(-2036.86, -1043.1, -31.01, 13.93),		    -- 
    --     crate3 = vector4(-2018.08, -1013.82, -18.02, 297.25),	    -- 
    --     crate4 = vector4(-1992.71, -1011.7, -15.1, 277.03),		    -- 
    --     crate5 = vector4(-1955.82, -1027.64, -14.91, 221.13),		-- 
	-- 	active = false,										        -- Don't touch this		
	-- },