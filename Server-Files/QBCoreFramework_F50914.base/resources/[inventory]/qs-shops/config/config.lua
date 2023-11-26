Config = {}
Locales = {}

--[[
    The first thing will be to choose our main language, here you can choose
    between the default languages that you will find within locales/*,
    if yours is not there, feel free to create it!
]]

Config.Language = 'en'

Config.Framework = 'qb' -- Set 'qb' or 'esx'

--[[
    Shop system based on qb-shops!
    Here you have a small configuration for the details of your stores,
    remember that UseTrucketJob is exclusive for qb-core!

    For the firearms license, you must use the item weaponlicense.
]]

Config.UseTruckerJob = false                            -- true = The shops stock is based on when truckers refill it | false = shop inventory never runs out (ONLY FOR QB)
Config.FirearmsLicenseCheck = true                     -- Whether a arms dealer checks for a firearms license (ONLY FOR QB)
Config.ShopsInvJsonFile = './json/shops-inventory.json' -- json file location (ONLY FOR QB)

--[[
    You can use the following targets by default:
        'qb-target'
        'ox_target'

        'none'
]]

Config.UseTarget = 'qb-target' -- Choose between 'qb-target' or 'ox_target'

--[[
    Stashing system!
    Here you can add your stashes, their blips or even add a license to them!

    Remember that the licenses are an item, so you must put the name of said item!
    Example:
        ['requiredLicense'] = 'weapon_license' -- item or nil
]]

Config.Stashes = {
    [1] = {
        ['coords'] = vector3(456.672516, -983.195618, 30.678345),
        ['targetLabel'] = 'Open Stash',
        ['size'] = {
            weight = 10000000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'police_stash',
        ['requiredJobs'] = { 'police', 'ambulance' }, -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4, 5, 6, 7 },
        ['requiredLicense'] = nil,                    -- nil or example 'itemname',
        ['personal'] = false
    },
    [2] = {
        ['coords'] = vector3(306.303284, -1457.709839, 29.953857),
        ['targetLabel'] = 'Open Stash',
        ['size'] = {
            weight = 10000000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'doctor_stash',
        ['requiredJobs'] = { 'ambulance' }, -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil,       -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil,          -- nil or example 'itemname',
        ['personal'] = false
    },
    [3] = {
        ['coords'] = vector3(237.481323, -1354.747192, 31.032227),
        ['targetLabel'] = 'Open Stash',
        ['size'] = {
            weight = 10000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'mysterious_shed',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil,    -- nil or example 'itemname',
        ['personal'] = true
    },    
    [4] = {
        ['coords'] = vector3(90.27, 285.77, 110.13),
        ['targetLabel'] = 'Open tray',
        ['size'] = {
            weight = 50000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'food_tray1',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil,    -- nil or example 'itemname',
        ['personal'] = false
    },
    [5] = {
        ['coords'] = vector3(89.74, 286.95, 110.13),
        ['targetLabel'] = 'Open tray',
        ['size'] = {
            weight = 50000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'food_tray2',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil,    -- nil or example 'itemname',
        ['personal'] = false
    },
    [6] = {
        ['coords'] = vector3(89.17, 288.15, 110.13),
        ['targetLabel'] = 'Open tray',
        ['size'] = {
            weight = 50000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'food_tray3',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil,    -- nil or example 'itemname',
        ['personal'] = false
    },
    [7] = {
        ['coords'] = vector3(88.22, 293.47, 111.02),
        ['targetLabel'] = 'Open Stash',
        ['size'] = {
            weight = 500000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'upandatom',
        ['requiredJobs'] = { 'upandatom' },       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4}, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil,    -- nil or example 'itemname',
        ['personal'] = false
    }, 
    [8] = {
        ['coords'] = vector3(-1196.23, -1145.43, 7.75),
        ['targetLabel'] = 'Open Stash',
        ['size'] = {
            weight = 500000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'coolbeans',
        ['requiredJobs'] = { 'coolbeans' },       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4}, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil,    -- nil or example 'itemname',
        ['personal'] = false
    }, 
    [9] = {
        ['coords'] = vector3(284.31, -1164.08, 29.38),
        ['targetLabel'] = 'Employee Stash',
        ['size'] = {
            weight = 10000000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'floki',
        ['requiredJobs'] = { 'floki' }, -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4},       -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil,          -- nil or example 'itemname',
        ['personal'] = true
    },
    [10] = {
        ['coords'] = vector3(985.42, -1383.42, 31.69),
        ['targetLabel'] = 'Employee Stash',
        ['size'] = {
            weight = 10000000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'coolbeans',
        ['requiredJobs'] = { 'coolbeans' }, -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4},       -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil,          -- nil or example 'itemname',
        ['personal'] = true
    },
    [11] = {
        ['coords'] = vector3(985.42, -1383.42, 31.69),
        ['targetLabel'] = 'Employee Stash',
        ['size'] = {
            weight = 10000000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'Beekeeper Stash',
        ['requiredJobs'] = { 'beekeeper' }, -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4},       -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil,          -- nil or example 'itemname',
        ['personal'] = true
    },
    [12] = {
        ['coords'] = vector3(2441.63, 4979.68, 46.81),
        ['targetLabel'] = 'Employee Stash',
        ['size'] = {
            weight = 10000000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'Farmer Stash',
        ['requiredJobs'] = { 'farmer' }, -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4},       -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil,          -- nil or example 'itemname',
        ['personal'] = true
    },
    [13] = {
        ['coords'] = vector3(462.0, -983.37, 28.04),
        ['targetLabel'] = 'Employee Stash',
        ['size'] = {
            weight = 10000000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'police',
        ['requiredJobs'] = { 'police' }, -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4, 5, 6},       -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil,          -- nil or example 'itemname',
        ['personal'] = true
    },
    [14] = {
        ['coords'] = vector3(302.34, -599.91, 43.81),
        ['targetLabel'] = 'Employee Stash',
        ['size'] = {
            weight = 10000000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'EMS',
        ['requiredJobs'] = { 'ambulance' }, -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4, 5, 6},       -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil,          -- nil or example 'itemname',
        ['personal'] = true
    },
    [15] = {
        ['coords'] = vector3(2441.63, 4979.68, 46.81),
        ['targetLabel'] = 'Employee Stash',
        ['size'] = {
            weight = 10000000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'tavern',
        ['requiredJobs'] = { 'tavern' }, -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4},       -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil,          -- nil or example 'itemname',
        ['personal'] = true
    },
    [16] = {
        ['coords'] = vector3(-173.58, 306.12, 100.92),
        ['targetLabel'] = 'Employee Stash',
        ['size'] = {
            weight = 10000000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'phaq',
        ['requiredJobs'] = { 'phaq' }, -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4},       -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil,          -- nil or example 'itemname',
        ['personal'] = true
    },
    [17] = {
        ['coords'] = vector3(335.22, -197.6, 54.09),
        ['targetLabel'] = 'Employee Stash',
        ['size'] = {
            weight = 10000000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'pinkcage',
        ['requiredJobs'] = { 'pinkcage' }, -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4, 5},       -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil,          -- nil or example 'itemname',
        ['personal'] = true
    },
    [18] = {
        ['coords'] = vector3(86.48, 293.55, 110.21),
        ['targetLabel'] = 'Employee Stash',
        ['size'] = {
            weight = 10000000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'upandatom',
        ['requiredJobs'] = { 'upandatom' }, -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4, 5},       -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil,          -- nil or example 'itemname',
        ['personal'] = true
    },
    [19] = {
        ['coords'] = vector3(2359.89, 3036.99, 33.26),
        ['targetLabel'] = 'Arcade Stash',
        ['size'] = {
            weight = 10000000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'arcade',
        ['requiredJobs'] = { 'arcade' }, -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4, 5},       -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil,          -- nil or example 'itemname',
        ['personal'] = false
    },
    [20] = {
        ['coords'] = vector3(548.93, -181.73, 54.49),
        ['targetLabel'] = 'Auto Exotics Employee',
        ['size'] = {
            weight = 10000000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'autoexotics',
        ['requiredJobs'] = { 'autoexotics' }, -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4},       -- nil or grade tables example { 2, 3, 4}, vector3(-532.81, -174.04, 42.84)
        ['requiredLicense'] = nil,          -- nil or example 'itemname',
        ['personal'] = true
    },
    [21] = {
        ['coords'] = vector3(167.46, -1318.87, 29.01),
        ['targetLabel'] = 'Njord Employee',
        ['size'] = {
            weight = 10000000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'pawn',
        ['requiredJobs'] = { 'pawn' }, -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4},       -- nil or grade tables example { 2, 3, 4}, vector3(-532.81, -174.04, 42.84)
        ['requiredLicense'] = nil,          -- nil or example 'itemname',
        ['personal'] = true
    },
    [22] = {
        ['coords'] = vector3(154.43, -3207.98, 5.93),
        ['targetLabel'] = 'RWS Employee',
        ['size'] = {
            weight = 10000000,
            slots = 50
        },
        ['blip'] = nil,
        ['label'] = 'rws',
        ['requiredJobs'] = { 'rws' }, -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4},       -- nil or grade tables example { 2, 3, 4}, vector3(-532.81, -174.04, 42.84)
        ['requiredLicense'] = nil,          -- nil or example 'itemname',
        ['personal'] = true
    },
}

--[[
    Store setup!
    Remember to add the items correctly, checking that they exist
    within your qb-core or your qs-inventory/shared/*.

    Below you can add these items to the desired stores.

    Remember that the licenses are an item, so you must put the name of said item!
    Example:
        ['requiredLicense'] = 'weapon_license' -- item or nil
]]

Config.Products = {
    ['normal'] = {
        [1] = {
            name = 'tosti',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 1,
        },
        [2] = {
            name = 'water_bottle',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 2,
        },
        [3] = {
            name = 'kurkakola',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 3,
        },
        [4] = {
            name = 'twerks_candy',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 4,
        },
        [5] = {
            name = 'snikkel_candy',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 5,
        },
        [6] = {
            name = 'sandwich',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 6,
        },
        [7] = {
            name = 'bandage',
            price = 100,
            amount = 50,
            info = {},
            type = 'item',
            slot = 7,
        },
        [8] = {
            name = 'lighter',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 8,
        },
        [9] = {
            name = 'aciggy',
            price = 10,
            amount = 5000,
            info = {},
            type = 'item',
            slot = 9,
        },
        [10] = {
            name = 'dumbbitch',
            price = 2,
            amount = 5000,
            info = {},
            type = 'item',
            slot = 10,
        },
        [11] = {
            name = 'wallet',
            price = 50,
            amount = 50,
            info = {},
            type = 'item',
            slot = 11,
        },
        [12] = {
            name = 'wallet2',
            price = 50,
            amount = 50,
            info = {},
            type = 'item',
            slot = 12,
        },
        [13] = {
            name = 'scrunchie',
            price = 50,
            amount = 50,
            info = {},
            type = 'item',
            slot = 13,
        },
    },
    ['liquor'] = {
        [1] = {
            name = 'tosti',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 1,
        },
        [2] = {
            name = 'water_bottle',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 2,
        },
        [3] = {
            name = 'kurkakola',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 3,
        },
        [4] = {
            name = 'twerks_candy',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 4,
        },
        [5] = {
            name = 'snikkel_candy',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 5,
        },
        [6] = {
            name = 'sandwich',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 6,
        },
        [10] = {
            name = 'bandage',
            price = 100,
            amount = 50,
            info = {},
            type = 'item',
            slot = 10,
        },
        [11] = {
            name = 'lighter',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 11,
        },
        [12] = {
            name = 'rolling_paper',
            price = 2,
            amount = 5000,
            info = {},
            type = 'item',
            slot = 12,
        },
        [13] = {
            name = 'dumbbitch',
            price = 2,
            amount = 5000,
            info = {},
            type = 'item',
            slot = 13,
        },
    },
    ['hardware'] = {
        [1] = {
            name = 'weapon_wrench',
            price = 250,
            amount = 50,
            info = {},
            type = 'item',
            slot = 1,
        },
        [2] = {
            name = 'kq_winch',
            price = 250,
            amount = 50,
            info = {},
            type = 'item',
            slot = 2,
        },
        [3] = {
            name = 'binoculars',
            price = 50,
            amount = 50,
            info = {},
            type = 'item',
            slot = 3,
        },
        [4] = {
            name = 'printerpaper',
            price = 5,
            amount = 50,
            info = {},
            type = 'item',
            slot = 4,
        },
        [5] = {
            name = 'pickaxe',
            price = 50,
            amount = 50,
            info = {},
            type = 'item',
            slot = 5,
        },
        [6] = {
            name = 'plastic_bag',
            price = 50,
            amount = 50,
            info = {},
            type = 'item',
            slot = 6,
        },
        [7] = {
            name = 'cleaningkit',
            price = 150,
            amount = 50,
            info = {},
            type = 'item',
            slot = 7,
        },
        [8] = {
            name = 'kq_tow_rope',
            price = 250,
            amount = 50,
            info = {},
            type = 'item',
            slot = 8,
        },
        [9] = {
            name = 'glue',
            price = 25,
            amount = 50,
            info = {},
            type = 'item',
            slot = 9,
        },
        [10] = {
            name = 'scissors',
            price = 25,
            amount = 50,
            info = {},
            type = 'item',
            slot = 10,
        },
    },
    ['gearshop'] = {
        [1] = {
            name = 'diving_gear',
            price = 2500,
            amount = 10,
            info = {},
            type = 'item',
            slot = 1,
        },
        [2] = {
            name = 'jerry_can',
            price = 200,
            amount = 50,
            info = {},
            type = 'item',
            slot = 2,
        },
        [3] = {
            name = 'fishingrod',
            price = 150,
            amount = 50,
            info = {},
            type = 'item',
            slot = 2,
        },
        [4] = {
            name = 'fishbait',
            price = 2,
            amount = 200,
            info = {},
            type = 'item',
            slot = 2,
        },
    },
    ['diving'] = {
        [1] = {
            name = 'parachute',
            price = 2500,
            amount = 10,
            info = {},
            type = 'item',
            slot = 1,
        },
        [2] = {
            name = 'binoculars',
            price = 50,
            amount = 50,
            info = {},
            type = 'item',
            slot = 2,
        },
        [3] = {
            name = 'diving_gear',
            price = 1500,
            amount = 10,
            info = {},
            type = 'item',
            slot = 3,
        },
        [4] = {
            name = 'diving_fill',
            price = 500,
            amount = 10,
            info = {},
            type = 'item',
            slot = 4,
        },
    },
    ['weapons'] = {
        [1] = {
            name = 'weapon_huntingknife',
            price = 250,
            amount = 250,
            info = {},
            type = 'item',
            slot = 1,
        },
        [2] = {
            name = 'weapon_bat',
            price = 250,
            amount = 250,
            info = {},
            type = 'item',
            slot = 2,
        },
        [3] = {
            name = 'weapon_hatchet',
            price = 250,
            amount = 250,
            info = {},
            type = 'item',
            slot = 3,
            requiredJob = { 'mechanic', 'police' }
        },
        [4] = {
            name = 'weapon_g27',
            price = 2500,
            amount = 5,
            info = {},
            type = 'item',
            slot = 4,
            requiresLicense = true
        },
        [5] = {
            name = 'pistol_ammo',
            price = 250,
            amount = 250,
            info = {},
            type = 'item',
            slot = 7,
            requiresLicense = true
        },
        [5] = {
            name = 'weapon_knife',
            price = 250,
            amount = 250,
            info = {},
            type = 'item',
            slot = 7,
            requiresLicense = true
        },
    },
    ['digital'] = {
        [1] = {
            name = 'classic_phone',
            price = 200,
            amount = 50,
            info = {},
            type = 'item',
            slot = 1,
        },
        [2] = {
            name = 'radio',
            price = 100,
            amount = 50,
            info = {},
            type = 'item',
            slot = 2,
        },
        [3] = {
            name = 'fitbit',
            price = 150,
            amount = 50,
            info = {},
            type = 'item',
            slot = 3,
        },
        [4] = {
            name = 'black_phone',
            price = 200,
            amount = 50,
            info = {},
            type = 'item',
            slot = 4,
        },
        [5] = {
            name = 'blue_phone',
            price = 200,
            amount = 50,
            info = {},
            type = 'item',
            slot = 5,
        },
        [6] = {
            name = 'gold_phone',
            price = 200,
            amount = 50,
            info = {},
            type = 'item',
            slot = 6,
        },
        [7] = {
            name = 'red_phone',
            price = 200,
            amount = 50,
            info = {},
            type = 'item',
            slot = 7,
        },
        [8] = {
            name = 'green_phone',
            price = 200,
            amount = 50,
            info = {},
            type = 'item',
            slot = 8,
        },
        [9] = {
            name = 'greenlight_phone',
            price = 200,
            amount = 50,
            info = {},
            type = 'item',
            slot = 9,
        },
        [10] = {
            name = 'pink_phone',
            price = 200,
            amount = 50,
            info = {},
            type = 'item',
            slot = 10,
        },
        [11] = {
            name = 'white_phone',
            price = 200,
            amount = 50,
            info = {},
            type = 'item',
            slot = 11,
        },
        [11] = {
            name = 'powerbank',
            price = 1000,
            amount = 50,
            info = {},
            type = 'item',
            slot = 11,
        },
        [12] = {
            name = 'boombox',
            price = 100,
            amount = 50,
            info = {},
            type = 'item',
            slot = 12,
        },
    },
    ['brewery'] = {
        [1] = {
            name = 'cookiemonster',
            price = 5,
            amount = 50,
            info = {},
            type = 'item',
            slot = 1,
        },
        [2] = {
            name = 'knockerup',
            price = 5,
            amount = 50,
            info = {},
            type = 'item',
            slot = 2,
        },
        [3] = {
            name = 'buenaveza',
            price = 5,
            amount = 50,
            info = {},
            type = 'item',
            slot = 3,
        },
        [4] = {
            name = 'hazyipa',
            price = 5,
            amount = 50,
            info = {},
            type = 'item',
            slot = 4,
        },
        [5] = {
            name = 'arrogant',
            price = 5,
            amount = 50,
            info = {},
            type = 'item',
            slot = 5,
        },
        [6] = {
            name = 'ironside',
            price = 5,
            amount = 50,
            info = {},
            type = 'item',
            slot = 6,
        },
        [7] = {
            name = 'elvisaf',
            price = 5,
            amount = 50,
            info = {},
            type = 'item',
            slot = 7,
        },
        [8] = {
            name = 'modelo',
            price = 5,
            amount = 50,
            info = {},
            type = 'item',
            slot = 8,
        },
        [9] = {
            name = 'michelada',
            price = 5,
            amount = 50,
            info = {},
            type = 'item',
            slot = 9,
        },
        [10] = {
            name = 'tequila',
            price = 5,
            amount = 50,
            info = {},
            type = 'item',
            slot = 10,
        },
        [11] = {
            name = 'jamison',
            price = 5,
            amount = 50,
            info = {},
            type = 'item',
            slot = 11,
        },
        [12] = {
            name = 'vodka',
            price = 5,
            amount = 50,
            info = {},
            type = 'item',
            slot = 12,
        },
        [13] = {
            name = 'baileys',
            price = 5,
            amount = 50,
            info = {},
            type = 'item',
            slot = 13,
        },
        [14] = {
            name = 'bitters',
            price = 5,
            amount = 50,
            info = {},
            type = 'item',
            slot = 14,
        },
        [15] = {
            name = 'whiskey',
            price = 5,
            amount = 50,
            info = {},
            type = 'item',
            slot = 15,
        },
    },
    ['huntingshop'] = {
        [1] = {
            name = 'weapon_musket',
            price = 1500,
            amount = 10,
            info = {},
            type = 'weapon',
            slot = 1,
            requiresLicense = true
        },
        [2] = {
            name = 'shotgun_ammo',
            price = 100,
            amount = 50,
            info = {},
            type = 'item',
            slot = 2,
            requiresLicense = true
        },
        [3] = {
            name = 'huntingbait',
            price = 150,
            amount = 150,
            info = {},
            type = 'item',
            slot = 3
        },
        [4] = {
            name = 'weapon_knife',
            price = 250,
            amount = 50,
            info = {},
            type = 'item',
            slot = 4
        }
    },
    ['petshop'] = {
        [1] = {
            name = 'keepcompanionwesty',
            price = 4000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 1
        },
        [2] = {
            name = 'keepcompanionshepherd',
            price = 10000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 2
        },
        [3] = {
            name = 'keepcompanionretriever',
            price = 7000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 3
        },
        [4] = {
            name = 'keepcompanionrottweiler',
            price = 10000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 4
        },
        [5] = {
            name = 'keepcompanionpug',
            price = 5000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 5
        },
        [6] = {
            name = 'keepcompanionpoodle',
            price = 5000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 6
        },
        [7] = {
            name = 'keepcompanionmtlion2',
            price = 50000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 7
        },
        [8] = {
            name = 'keepcompanioncat',
            price = 4000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 8
        },
        [9] = {
            name = 'keepcompanionmtlion',
            price = 50000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 9
        },
        [10] = {
            name = 'keepcompanionhusky',
            price = 7000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 10
        },
        [11] = {
            name = 'petfood',
            price = 50,
            amount = 100,
            info = {},
            type = 'item',
            slot = 11
        },
        [12] = {
            name = 'collarpet',
            price = 25,
            amount = 50,
            info = {},
            type = 'item',
            slot = 12
        },
        [13] = {
            name = 'firstaidforpet',
            price = 100,
            amount = 50,
            info = {},
            type = 'item',
            slot = 13
        },
        [14] = {
            name = 'petnametag',
            price = 50,
            amount = 50,
            info = {},
            type = 'item',
            slot = 14
        },
        [15] = {
            name = 'petwaterbottleportable',
            price = 50,
            amount = 50,
            info = {},
            type = 'item',
            slot = 15
        },
        [16] = {
            name = 'petgroomingkit',
            price = 30,
            amount = 50,
            info = {},
            type = 'item',
            slot = 16
        },
        [17] = {
            name = 'keepcompanionrabbit',
            price = 2000,
            amount = 50,
            info = {},
            type = 'item',
            slot = 17
        },
        [18] = {
            name = 'keepcompanionhen',
            price = 2000,
            amount = 50,
            info = {},
            type = 'item',
            slot = 18
        },
        [19] = {
            name = 'keepcompanioncoyote',
            price = 10000,
            amount = 50,
            info = {},
            type = 'item',
            slot = 19
        },
    },
    ['petstore'] = {
        [1] = {
            name = 'petfood',
            price = 50,
            amount = 1000,
            info = {},
            type = 'item',
            slot = 1
        },
        [2] = {
            name = 'collarpet',
            price = 25,
            amount = 50,
            info = {},
            type = 'item',
            slot = 2
        },
        [3] = {
            name = 'firstaidforpet',
            price = 100,
            amount = 50,
            info = {},
            type = 'item',
            slot = 3
        },
        [4] = {
            name = 'petnametag',
            price = 25,
            amount = 50,
            info = {},
            type = 'item',
            slot = 4
        },
        [5] = {
            name = 'petwaterbottleportable',
            price = 5,
            amount = 50,
            info = {},
            type = 'item',
            slot = 5
        },
        [6] = {
            name = 'petgroomingkit',
            price = 30,
            amount = 50,
            info = {},
            type = 'item',
            slot = 6
        },
    },
    ['doj'] = {
        [1] = {
            name = 'briefcase',
            price = 100,
            amount = 100,
            info = {},
            type = 'item',
            slot = 1
        },
        [2] = {
            name = 'printerpaper',
            price = 2,
            amount = 100,
            info = {},
            type = 'item',
            slot = 2
        },
        [3] = {
            name = 'document',
            price = 2,
            amount = 100,
            info = {},
            type = 'item',
            slot = 3
        },
        [4] = {
            name = 'emptydocuments',
            price = 2,
            amount = 100,
            info = {},
            type = 'item',
            slot = 4
        },
        [5] = {
            name = 'portablecopier',
            price = 500,
            amount = 100,
            info = {},
            type = 'item',
            slot = 5
        },
        [5] = {
            name = 'contract',
            price = 10,
            amount = 100,
            info = {},
            type = 'item',
            slot = 5
        },
    },
    ['sewerbar'] = {
        [1] = {
            name = 'elote',
            price = 5,
            amount = 100,
            info = {},
            type = 'item',
            slot = 1
        },
        [2] = {
            name = 'pinkbikini',
            price = 20,
            amount = 100,
            info = {},
            type = 'item',
            slot = 2
        },
        [3] = {
            name = 'velvetelvis',
            price = 20,
            amount = 100,
            info = {},
            type = 'item',
            slot = 3
        },
        [4] = {
            name = 'dumbbitch',
            price = 10,
            amount = 100,
            info = {},
            type = 'item',
            slot = 4
        },
        [5] = {
            name = 'ajoint',
            price = 50,
            amount = 100,
            info = {},
            type = 'item',
            slot = 5
        },
    },
    ['drivein'] = {
        [1] = {
            name = 'chips',
            price = 5,
            amount = 100,
            info = {},
            type = 'item',
            slot = 1
        },
        [2] = {
            name = 'pinkbikini',
            price = 5,
            amount = 100,
            info = {},
            type = 'item',
            slot = 2
        },
        [3] = {
            name = 'velvetelvis',
            price = 5,
            amount = 100,
            info = {},
            type = 'item',
            slot = 3
        },
        [4] = {
            name = 'dumbbitch',
            price = 5,
            amount = 100,
            info = {},
            type = 'item',
            slot = 4
        },
        [5] = {
            name = 'ajoint',
            price = 50,
            amount = 100,
            info = {},
            type = 'item',
            slot = 5
        },
    },
    ['mrpd'] = {
        [1] = {
            name = 'briefcase',
            price = 0,
            amount = 100,
            info = {},
            type = 'item',
            slot = 1
        },
        [2] = {
            name = 'printerpaper',
            price = 0,
            amount = 100,
            info = {},
            type = 'item',
            slot = 2
        },
        [3] = {
            name = 'document',
            price = 0,
            amount = 100,
            info = {},
            type = 'item',
            slot = 3
        },
        [4] = {
            name = 'emptydocuments',
            price = 0,
            amount = 100,
            info = {},
            type = 'item',
            slot = 4
        },
        [5] = {
            name = 'portablecopier',
            price = 0,
            amount = 100,
            info = {},
            type = 'item',
            slot = 5
        },
    },
    ['shady'] = {
        [1] = {
            name = 'head_bag',
            price = 100,
            amount = 100,
            info = {},
            type = 'item',
            slot = 1
        },
        [2] = {
            name = 'electronickit',
            price = 200,
            amount = 200,
            info = {},
            type = 'item',
            slot = 3
        },
        [3] = {
            name = 'racingtablet',
            price = 50000,
            amount = 1,
            info = {},
            type = 'item',
            slot = 4
        },
        [4] = {
            name = 'boostingtablet',
            price = 25000,
            amount = 1,
            info = {},
            type = 'item',
            slot = 5
        },
    },
    ['cortezbar'] = {
        [1] = {
            name = 'acigar',
            price = 50,
            amount = 100,
            info = {},
            type = 'item',
            slot = 1
        },
        [2] = {
            name = 'blanton',
            price = 20,
            amount = 100,
            info = {},
            type = 'item',
            slot = 2
        },
        [3] = {
            name = 'lighter',
            price = 20,
            amount = 100,
            info = {},
            type = 'item',
            slot = 3
        },
        [4] = {
            name = 'aciggy',
            price = 10,
            amount = 100,
            info = {},
            type = 'item',
            slot = 4
        },
        [5] = {
            name = 'ajoint',
            price = 50,
            amount = 100,
            info = {},
            type = 'item',
            slot = 5
        },
    },
    ['drivein'] = {
        [1] = {
            name = 'chips',
            price = 5,
            amount = 100,
            info = {},
            type = 'item',
            slot = 1
        },
        [2] = {
            name = 'pinkbikini',
            price = 5,
            amount = 100,
            info = {},
            type = 'item',
            slot = 2
        },
        [3] = {
            name = 'velvetelvis',
            price = 5,
            amount = 100,
            info = {},
            type = 'item',
            slot = 3
        },
        [4] = {
            name = 'dumbbitch',
            price = 5,
            amount = 100,
            info = {},
            type = 'item',
            slot = 4
        },
        [5] = {
            name = 'ajoint',
            price = 50,
            amount = 100,
            info = {},
            type = 'item',
            slot = 5
        },
    },
    ['nachodaddy'] = {
        [1] = {
            name = 'cookiemonster',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 1,
        },
        [2] = {
            name = 'knockerup',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 2,
        },
        [3] = {
            name = 'buenaveza',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 3,
        },
        [4] = {
            name = 'hazyipa',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 4,
        },
        [5] = {
            name = 'arrogant',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 5,
        },
        [6] = {
            name = 'ironside',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 6,
        },
        [7] = {
            name = 'elvisaf',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 7,
        },
        [8] = {
            name = 'modelo',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 8,
        },
        [9] = {
            name = 'michelada',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 9,
        },
        [10] = {
            name = 'tequila',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 10,
        },
        [11] = {
            name = 'jamison',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 11,
        },
        [12] = {
            name = 'vodka',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 12,
        },
        [13] = {
            name = 'baileys',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 13,
        },
        [14] = {
            name = 'bitters',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 14,
        },
        [15] = {
            name = 'whiskey',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 15,
        },
        [16] = {
            name = 'nachodaddy',
            price = 2,
            amount = 100,
            info = {},
            type = 'item',
            slot = 16
        },
        [17] = {
            name = 'printerpaper',
            price = 10,
            amount = 100,
            info = {},
            type = 'item',
            slot = 17
        },
        [18] = {
            name = 'water_bottle',
            price = 50,
            amount = 100,
            info = {},
            type = 'item',
            slot = 18
        },
        [19] = {
            name = 'kurkakola',
            price = 50,
            amount = 100,
            info = {},
            type = 'item',
            slot = 19
        },
    },                 
    ['tavern'] = {
        [1] = {
            name = 'cookiemonster',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 1,
        },
        [2] = {
            name = 'knockerup',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 2,
        },
        [3] = {
            name = 'buenaveza',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 3,
        },
        [4] = {
            name = 'hazyipa',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 4,
        },
        [5] = {
            name = 'arrogant',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 5,
        },
        [6] = {
            name = 'ironside',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 6,
        },
        [7] = {
            name = 'elvisaf',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 7,
        },
        [8] = {
            name = 'modelo',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 8,
        },
        [9] = {
            name = 'michelada',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 9,
        },
        [10] = {
            name = 'tequila',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 10,
        },
        [11] = {
            name = 'jamison',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 11,
        },
        [12] = {
            name = 'vodka',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 12,
        },
        [13] = {
            name = 'baileys',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 13,
        },
        [14] = {
            name = 'bitters',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 14,
        },
        [15] = {
            name = 'whiskey',
            price = 2,
            amount = 50,
            info = {},
            type = 'item',
            slot = 15,
        },
        [16] = {
            name = 'tavern',
            price = 2,
            amount = 100,
            info = {},
            type = 'item',
            slot = 16
        },
        [17] = {
            name = 'printerpaper',
            price = 50,
            amount = 100,
            info = {},
            type = 'item',
            slot = 17
        },
        [18] = {
            name = 'water_bottle',
            price = 2,
            amount = 100,
            info = {},
            type = 'item',
            slot = 18
        },
        [19] = {
            name = 'kurkakola',
            price = 2,
            amount = 100,
            info = {},
            type = 'item',
            slot = 19
        },
    },
    ['upnatom'] = {
        [1] = {
            name = 'atombag',
            price = 2,
            amount = 100,
            info = {},
            type = 'item',
            slot = 1
        },
        [2] = {
            name = 'printerpaper',
            price = 50,
            amount = 100,
            info = {},
            type = 'item',
            slot = 2
        },
        [3] = {
            name = 'water_bottle',
            price = 2,
            amount = 100,
            info = {},
            type = 'item',
            slot = 3
        },
        [4] = {
            name = 'kurkakola',
            price = 2,
            amount = 100,
            info = {},
            type = 'item',
            slot = 4
        },
    },
    ['pinkcage'] = {
        [1] = {
            name = 'modelo',
            price = 2,
            amount = 100,
            info = {},
            type = 'item',
            slot = 2
        },
        [2] = {
            name = 'cookiemonster',
            price = 2,
            amount = 100,
            info = {},
            type = 'item',
            slot = 2
        },
        [3] = {
            name = 'elvisaf',
            price = 2,
            amount = 100,
            info = {},
            type = 'item',
            slot = 3
        },
        [4] = {
            name = 'buenaveza',
            price = 2,
            amount = 100,
            info = {},
            type = 'item',
            slot = 4
        },
        [4] = {
            name = 'knockerup',
            price = 2,
            amount = 100,
            info = {},
            type = 'item',
            slot = 4
        },
        [4] = {
            name = 'dumbbitch',
            price = 2,
            amount = 100,
            info = {},
            type = 'item',
            slot = 4
        },
    },
    ['arcade'] = {
        [1] = {
            name = 'gizmo',
            price = 5,
            amount = 100,
            info = {},
            type = 'item',
            slot = 1
        },
    },                                                                                                                                                         
}

Config.Locations = {
    -- 24/7 Locations
    ['247supermarket'] = {
        ['label'] = '24/7 Supermarket',
        ['coords'] = vector4(24.47, -1346.62, 29.5, 271.66),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(26.45, -1315.51, 29.62, 0.07),
        ['distance'] = 2.0,
        ['account'] = 'bank',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['247supermarket2'] = {
        ['label'] = '24/7 Supermarket',
        ['coords'] = vector4(-3039.54, 584.38, 7.91, 17.27),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(-3047.95, 590.71, 7.62, 19.53),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['247supermarket3'] = {
        ['label'] = '24/7 Supermarket',
        ['coords'] = vector4(-3242.97, 1000.01, 12.83, 357.57),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(-3245.76, 1005.25, 12.83, 269.45),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['247supermarket4'] = {
        ['label'] = '24/7 Supermarket',
        ['coords'] = vector4(1728.07, 6415.63, 35.04, 242.95),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(1741.76, 6419.61, 35.04, 6.83),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['247supermarket5'] = {
        ['label'] = '24/7 Supermarket',
        ['coords'] = vector4(1959.82, 3740.48, 32.34, 301.57),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(1963.81, 3750.09, 32.26, 302.46),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['247supermarket6'] = {
        ['label'] = '24/7 Supermarket',
        ['coords'] = vector4(549.13, 2670.85, 42.16, 99.39),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(541.54, 2663.53, 42.17, 120.51),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['247supermarket7'] = {
        ['label'] = '24/7 Supermarket',
        ['coords'] = vector4(2677.47, 3279.76, 55.24, 335.08),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(2662.19, 3264.95, 55.24, 168.55),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['247supermarket8'] = {
        ['label'] = '24/7 Supermarket',
        ['coords'] = vector4(2556.66, 380.84, 108.62, 356.67),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(2553.24, 399.73, 108.56, 344.86),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['247supermarket9'] = {
        ['label'] = '24/7 Supermarket',
        ['coords'] = vector4(372.66, 326.98, 103.57, 253.73),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = false,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(379.97, 357.3, 102.56, 26.42),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    -- LTD Gasoline Locations
    ['ltdgasoline'] = {
        ['label'] = 'LTD Gasoline',
        ['coords'] = vector4(-47.02, -1758.23, 29.42, 45.05),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = false,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(-40.51, -1747.45, 29.29, 326.39),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['ltdgasoline2'] = {
        ['label'] = 'LTD Gasoline',
        ['coords'] = vector4(-706.06, -913.97, 19.22, 88.04),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = false,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(-702.89, -917.44, 19.21, 181.96),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['ltdgasoline3'] = {
        ['label'] = 'LTD Gasoline',
        ['coords'] = vector4(-1820.02, 794.03, 138.09, 135.45),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(-1829.29, 801.49, 138.41, 41.39),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['ltdgasoline4'] = {
        ['label'] = 'LTD Gasoline',
        ['coords'] = vector4(1164.71, -322.94, 69.21, 101.72),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = false,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(1160.62, -312.06, 69.28, 3.77),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['ltdgasoline5'] = {
        ['label'] = 'LTD Gasoline',
        ['coords'] = vector4(1697.87, 4922.96, 42.06, 324.71),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = false,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(1702.68, 4917.28, 42.22, 139.27),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    -- Rob's Liquor Locations
    ['robsliquor'] = {
        ['label'] = "Rob's Liqour",
        ['coords'] = vector4(-1221.58, -908.15, 12.33, 35.49),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['liquor'],
        ['showblip'] = false,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(-1226.92, -901.82, 12.28, 213.26),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['robsliquor2'] = {
        ['label'] = "Rob's Liqour",
        ['coords'] = vector4(-1486.59, -377.68, 40.16, 139.51),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['liquor'],
        ['showblip'] = false,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(-1468.29, -387.61, 38.79, 220.13),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['robsliquor3'] = {
        ['label'] = "Rob's Liqour",
        ['coords'] = vector4(-2966.39, 391.42, 15.04, 87.48),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['liquor'],
        ['showblip'] = false,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(-2961.49, 376.25, 15.02, 111.41),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['robsliquor4'] = {
        ['label'] = "Rob's Liqour",
        ['coords'] = vector4(1165.17, 2710.88, 38.16, 179.43),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['liquor'],
        ['showblip'] = false,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(1194.52, 2722.21, 38.62, 9.37),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['robsliquor5'] = {
        ['label'] = "Rob's Liqour",
        ['coords'] = vector4(1134.2, -982.91, 46.42, 277.24),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['liquor'],
        ['showblip'] = false,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(1129.73, -989.27, 45.97, 280.98),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    -- Hardware Store Locations
    ['hardware'] = {
        ['label'] = 'Hardware Store',
        ['coords'] = vector4(45.68, -1749.04, 29.61, 53.13),
        ['ped'] = 'mp_m_waremech_01',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-wrench',
        ['targetLabel'] = 'Open Hardware Store',
        ['products'] = Config.Products['hardware'],
        ['showblip'] = true,
        ['blipsprite'] = 402,
        ['blipscale'] = 0.8,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(89.15, -1745.29, 30.09, 315.25),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['hardware2'] = {
        ['label'] = 'Hardware Store',
        ['coords'] = vector4(2747.71, 3472.85, 55.67, 255.08),
        ['ped'] = 'mp_m_waremech_01',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-wrench',
        ['targetLabel'] = 'Open Hardware Store',
        ['products'] = Config.Products['hardware'],
        ['showblip'] = true,
        ['blipsprite'] = 402,
        ['blipscale'] = 0.8,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(2704.68, 3457.21, 55.54, 176.28),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['hardware3'] = {
        ['label'] = 'Hardware Store',
        ['coords'] = vector4(-421.83, 6136.13, 31.88, 228.2),
        ['ped'] = 'mp_m_waremech_01',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-wrench',
        ['targetLabel'] = 'Hardware Store',
        ['products'] = Config.Products['hardware'],
        ['showblip'] = true,
        ['blipsprite'] = 402,
        ['blipscale'] = 0.8,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-438.25, 6146.9, 31.48, 136.99),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    -- Ammunation Locations
    ['ammunation'] = {
        ['label'] = 'Ammunation',
        ['type'] = 'weapon',
        ['coords'] = vector4(23.28, -1105.7, 29.8, 164.31),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-660.61, -938.14, 21.83, 167.22),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['ammunation2'] = {
        ['label'] = 'Ammunation',
        ['type'] = 'weapon',
        ['coords'] = vector4(812.98, -2155.16, 29.62, 351.62),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(812.98, -2155.16, 29.62, 351.62),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['ammunation3'] = {
        ['label'] = 'Ammunation',
        ['type'] = 'weapon',
        ['coords'] = vector4(1692.67, 3761.38, 34.71, 227.65),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(1687.17, 3755.47, 34.34, 163.69),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['ammunation4'] = {
        ['label'] = 'Ammunation',
        ['type'] = 'weapon',
        ['coords'] = vector4(-331.23, 6085.37, 31.45, 228.02),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(-341.72, 6098.49, 31.32, 11.05),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['ammunation5'] = {
        ['label'] = 'Ammunation',
        ['type'] = 'weapon',
        ['coords'] = vector4(253.63, -51.02, 69.94, 72.91),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(249.0, -50.64, 69.94, 60.71),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['ammunation6'] = {
        ['label'] = 'Ammunation',
        ['type'] = 'weapon',
        ['coords'] = vector4(2567.48, 292.59, 108.73, 349.68),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(2578.77, 285.53, 108.61, 277.2),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['ammunation7'] = {
        ['label'] = 'Ammunation',
        ['type'] = 'weapon',
        ['coords'] = vector4(-1118.59, 2700.05, 18.55, 221.89),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(-1127.67, 2708.18, 18.8, 41.76),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['ammunation8'] = {
        ['label'] = 'Ammunation',
        ['type'] = 'weapon',
        ['coords'] = vector4(841.92, -1035.32, 28.19, 1.56),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(847.83, -1020.36, 27.88, 88.29),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['ammunation9'] = {
        ['label'] = 'Ammunation',
        ['type'] = 'weapon',
        ['coords'] = vector4(-1304.19, -395.12, 36.7, 75.03),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(-1302.44, -385.23, 36.62, 303.79),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['ammunation10'] = {
        ['label'] = 'Ammunation',
        ['type'] = 'weapon',
        ['coords'] = vector4(-3173.31, 1088.85, 20.84, 244.18),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(-3183.6, 1084.35, 20.84, 68.13),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    -- Weedshop Locations
    ['weedshop'] = {
        ['label'] = 'LD Organics',
        ['coords'] = vector4(-1219.94, -1488.89, 4.37, 41.01),
        ['ped'] = 'a_m_y_hippy_01',
        ['scenario'] = 'WORLD_HUMAN_AA_SMOKE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-cannabis',
        ['targetLabel'] = 'Open Weed Shop',
        ['products'] = Config.Products['weedshop'],
        ['showblip'] = false,
        ['blipsprite'] = 140,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(-1222.94, -1484.89, 4.37, 45.01),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    -- Sea Word Locations
    ['seaword'] = {
        ['label'] = 'Sea Word',
        ['coords'] = vector4(-1687.03, -1072.18, 13.15, 52.93),
        ['ped'] = 'a_m_y_beach_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_IMPATIENT',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-fish',
        ['targetLabel'] = 'Sea Word',
        ['products'] = Config.Products['gearshop'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(-1674.18, -1073.7, 13.15, 333.56),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    -- Leisure Shop Locations
    ['diving'] = {
        ['label'] = 'Diving',
        ['coords'] = vector4(-1505.91, 1511.95, 115.29, 257.13),
        ['ped'] = 'a_m_y_beach_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-leaf',
        ['targetLabel'] = 'Open Leisure Shop',
        ['products'] = Config.Products['diving'],
        ['showblip'] = true,
        ['blipsprite'] = 729,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(-1507.64, 1505.52, 115.29, 262.2),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname' -- or example 'itemname'
    },
    ['brewingco'] = {
        ['label'] = "The Brewing Co",
        ['coords'] = vector4(1152.9475097656, -325.20776367188, 69.205146789551, 284.51403808594),
        ['ped'] = 'a_m_m_farmer_01',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Brewery',
        ['products'] = Config.Products['brewery'],
        ['showblip'] = false,
        ['blipsprite'] = 93,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(1152.9475097656, -325.20776367188, 69.205146789551, 284.51403808594),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = {'nachodaddy', 'tavern', 'pinkcage'},       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4 }, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },  
    ['digitalden'] = {
        ['label'] = "Digital Den",
        ['coords'] = vector4(-1523.09, -408.01, 35.59, 223.1),
        ['ped'] = 'ig_stevehains',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Tech Shop',
        ['products'] = Config.Products['digital'],
        ['showblip'] = true,
        ['blipsprite'] = 772,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(-1523.09, -408.01, 35.59, 223.1),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    }, 
    ['huntingshop'] = {
        ['label'] = "huntingshop",
        ['coords'] = vector4(-679.83, 5833.81, 17.33, 134.0),
        ['ped'] = 'cs_hunter',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['huntingshop'],
        ['showblip'] = false,
        ['blipsprite'] = 772,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(-679.83, 5833.81, 17.33, 134.0),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['wags'] = {
        ['label'] = "wags",
        ['coords'] = vector4(-447.49591064453, -70.938652038574, 41.300006866455, 217.10554504395),
        ['ped'] = 'S_M_M_StrVend_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-paw',
        ['targetLabel'] = 'Open Pet Shop',
        ['products'] = Config.Products['petstore'],
        ['showblip'] = false,
        ['blipsprite'] = 267,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(-447.49591064453, -70.938652038574, 41.300006866455, 217.10554504395),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname'
    },
    ['DOJ'] = {
        ['label'] = "DOJ Supplies",
        ['coords'] = vector4(-556.54, -184.15, 47.66, 213.1),
        ['ped'] = 'a_m_y_business_02',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['doj'],
        ['showblip'] = false,
        ['blipsprite'] = 267,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(-556.54, -184.15, 47.66, 213.1),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = { 'lawyer', 'cityhall', 'pdm', 'floki'},       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4, 5, 6, }, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname' vector3(678.88, -1646.11, 12.73)
    },
    ['sewerbar'] = {
        ['label'] = "Sewer Bar",
        ['coords'] = vector4(678.88, -1646.11, 12.73, 5.33),
        ['ped'] = 'u_f_y_dancerave_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['sewerbar'],
        ['showblip'] = false,
        ['blipsprite'] = 267,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(678.88, -1646.11, 12.73, 5.33),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname' vector3(678.88, -1646.11, 12.73)
    },
    ['drivein'] = {
        ['label'] = "Drive In",
        ['coords'] = vector4(-1197.57, -1760.5, 7.24, 280.74),
        ['ped'] = 'u_f_y_dancerave_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['drivein'],
        ['showblip'] = true,
        ['blipsprite'] = 135,
        ['blipscale'] = 0.7,
        ['blipcolor'] = 15,
        ['delivery'] = vector4(-1197.57, -1760.5, 7.24, 280.74),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname' vector3(678.88, -1646.11, 12.73)
    },
    ['mrpd'] = {
        ['label'] = "PD Supplies",
        ['coords'] = vector4(452.95, -984.98, 30.88, 95.11),
        ['ped'] = 's_f_y_cop_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['mrpd'],
        ['showblip'] = false,
        ['blipsprite'] = 267,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(452.94, -985.19, 30.83, 104.57),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = { 'police'},       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4, 5, 6, 7,}, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname' vector3(678.88, -1646.11, 12.73)
    },
    ['parecobar'] = {
        ['label'] = "Sewer Bar",
        ['coords'] = vector4(4904.91, -4941.6, 3.38, 40.88),
        ['ped'] = 'u_f_y_dancerave_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['sewerbar'],
        ['showblip'] = false,
        ['blipsprite'] = 267,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(4904.91, -4941.6, 3.38, 40.88),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname' vector3(678.88, -1646.11, 12.73)
    },
    ['cyber'] = {
        ['label'] = "Cyber Bar",
        ['coords'] = vector4(701.65, -745.53, 29.0, 264.63),
        ['ped'] = 'u_f_y_dancerave_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['sewerbar'],
        ['showblip'] = false,
        ['blipsprite'] = 267,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(701.65, -745.53, 29.0, 264.63),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname' vector3(678.88, -1646.11, 12.73)
    },
    ['DOJ2'] = {
        ['label'] = "DOJ Supplies2",
        ['coords'] = vector4(-537.77, -179.77, 42.84, 316.62),
        ['ped'] = 'u_f_m_debbie_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['doj'],
        ['showblip'] = false,
        ['blipsprite'] = 267,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(-537.77, -179.77, 42.84, 316.62),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = { 'lawyer', 'cityhall', },       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4, 5, 6, }, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname' vector3(678.88, -1646.11, 12.73)
    },
    ['cemetary'] = {
        ['label'] = "Cemetary Bar",
        ['coords'] = vector4(-1625.37, -190.53, 55.64, 103.0),
        ['ped'] = 'u_f_y_dancerave_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['drivein'],
        ['showblip'] = false,
        ['blipsprite'] = 267,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(-1625.37, -190.53, 55.64, 103.0),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname' vector3(678.88, -1646.11, 12.73)
    },
    ['cemetary2'] = {
        ['label'] = "Cemetary Bar",
        ['coords'] = vector4(-1625.71, -188.17, 55.66, 111.39),
        ['ped'] = 'u_f_y_dancerave_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['drivein'],
        ['showblip'] = false,
        ['blipsprite'] = 267,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(-1625.71, -188.17, 55.66, 111.39),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname' vector3(678.88, -1646.11, 12.73)
    },
    ['shadydealer'] = {
        ['label'] = "Shady Dealer",
        ['coords'] = vector4(0.2, 310.18, 109.9, 331.07),
        ['ped'] = 'csb_grove_str_dlr',
        ['scenario'] = 'WORLD_HUMAN_AA_SMOKE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['shady'],
        ['showblip'] = false,
        ['blipsprite'] = 267,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(0.2, 310.18, 109.9, 334.07),
        ['distance'] = 2.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname' vector3(678.88, -1646.11, 12.73)
    },
    ['cortezbar'] = {
        ['label'] = "Cortez Bar Tender",
        ['coords'] = vector4(-312.23, 217.14, 91.75, 187.39),
        ['ped'] = 'cs_milton',
        ['scenario'] = 'WORLD_HUMAN_LEANING',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['cortezbar'],
        ['showblip'] = false,
        ['blipsprite'] = 267,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(-312.23, 217.14, 91.75, 187.39),
        ['distance'] = 3.0,
        ['account'] = 'money',
        ['requiredJobs'] = nil,       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = nil, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname' vector3(678.88, -1646.11, 12.73)
    },
    ['nachodaddy'] = {
        ['label'] = "Taco Takeout",
        ['coords'] = vector4(980.07, -1384.12, 31.55, 30.81),
        ['ped'] = 'a_m_m_farmer_01',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['nachodaddy'],
        ['showblip'] = false,
        ['blipsprite'] = 267,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(980.07, -1384.12, 31.55, 30.81),
        ['distance'] = 3.0,
        ['account'] = 'money',
        ['requiredJobs'] = {'nachodaddy'},       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4 }, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname' vector3(678.88, -1646.11, 12.73)
    },
    ['upandatom'] = {
        ['label'] = "up and atom",
        ['coords'] = vector4(89.19, 293.72, 110.21, 209.05),
        ['ped'] = 'a_m_m_farmer_01',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['upnatom'],
        ['showblip'] = false,
        ['blipsprite'] = 267,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(89.19, 293.72, 110.21, 209.05),
        ['distance'] = 3.0,
        ['account'] = 'money',
        ['requiredJobs'] = {'upandatom'},       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4 }, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname' vector3(678.88, -1646.11, 12.73)
    },
    ['tavern'] = {
        ['label'] = "Tavern",
        ['coords'] = vector4(1236.86, -417.14, 67.77, 162.68),
        ['ped'] = 'a_m_m_farmer_01',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['tavern'],
        ['showblip'] = false,
        ['blipsprite'] = 267,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(1236.86, -417.14, 67.77, 162.68),
        ['distance'] = 3.0,
        ['account'] = 'money',
        ['requiredJobs'] = {'tavern'},       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4 }, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname' vector3(678.88, -1646.11, 12.73)
    },
    ['pinkcage'] = {
        ['label'] = "Pink Cage",
        ['coords'] = vector4(328.23, -191.49, 54.21, 241.77),
        ['ped'] = 'u_f_y_dancerave_01',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['pinkcage'],
        ['showblip'] = false,
        ['blipsprite'] = 267,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(328.23, -191.49, 54.21, 241.77),
        ['distance'] = 3.0,
        ['account'] = 'money',
        ['requiredJobs'] = {'pinkcage'},       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4 }, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname' vector3(678.88, -1646.11, 12.73)
    },
    ['arcade'] = {
        ['label'] = "Arcade",
        ['coords'] = vector4(2370.98, 3039.13, 33.26, 354.55),
        ['ped'] = 'u_f_y_dancerave_01',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['arcade'],
        ['showblip'] = false,
        ['blipsprite'] = 267,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 5,
        ['delivery'] = vector4(2370.98, 3039.13, 33.26, 354.55),
        ['distance'] = 3.0,
        ['account'] = 'money',
        ['requiredJobs'] = {'arcade'},       -- nil or example { 'police', 'ambulance' }
        ['requiredJobsGrades'] = { 0, 1, 2, 3, 4 }, -- nil or grade tables example { 2, 3, 4},
        ['requiredLicense'] = nil     -- or example 'itemname' vector3(678.88, -1646.11, 12.73)
    },
}             