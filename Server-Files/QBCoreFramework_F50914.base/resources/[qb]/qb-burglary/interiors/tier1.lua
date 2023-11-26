-- T1 house interiors
Config.T1_Interiors = {
    --[[****************************INTERIOR ID #1***************************--]]
    --[[*********************IPL 266.19, -1007.61, -101.01*******************--]]
    [1] = {
        -- ipl_spawn: Interior spawn coords
        ["ipl_spawn"] = vector3(266.19, -1007.61, -101.01),
        -- locations: Search & pickup locations
        ["locations"] = {
            [1] =
            {
                ["name"] = { "cabinet" }, -- [1] = Display name, QB item name is not required for search locations
                ["spawn"] = { vector3(266.45, -999.45, -99.22) },
                ["searched"] = false,
                ["chance"] = { math.random(100), 50 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [2] =
            {
                ["name"] =  { "shelves" }, -- [1] = Display name, QB item name is not required for search locations
                ["spawn"] = { vector3(262.3109, -995.6337, -99.16458) },
                ["searched"] = false,
                ["chance"] = { math.random(100), 50 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [3] = {
                ["name"] = { "pills", "oxycontin_bottle" }, -- [1] = Display name, [2] = QB item name
                ["spawn"] = { vector3(258.6714, -996.748, -99.56231), },
                ["rotation"] = { vector3(0, 0, -54.5556), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 50 },
                ["model"] = "prop_cs_pills",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [4] = {
                ["name"] = { "pills", "oxycontin_bottle" }, -- [1] = Display name, [2] = QB item name
                ["spawn"] = { vector3(258.3714, -996.748, -99.56231), },
                ["rotation"] = { vector3(0, 0, -54.5556), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 50 },
                ["model"] = "prop_cs_pills",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [5] = {
                ["name"] = { "pills", "oxycontin_bottle" }, -- [1] = Display name, [2] = QB item name
                ["spawn"] = { vector3(258.6812, -996.7059, -99.56231), },
                ["rotation"] = { vector3(0, 0, -54.5556), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 50 },
                ["model"] = "prop_cs_pills",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [6] =
            {
                ["name"] = { "iPhone", "iphone" }, -- [1] = Display name, [2] = QB item name
                ["spawn"] = { vector3(262.0693, -1000.5631, -99.2871 - 0.072), },
                ["rotation"] = { vector3(-90, -179.99, 0.0), },
                ["searched"] = false,
                ["poly"] = false,
                ["chance"] = { math.random(100), 50 },
                ["model"] = "prop_phone_ing",
                ["create"] = true,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [7] = {
                ["name"] = { "coffee", "coffee" }, -- [1] = Display name, [2] = QB item name
                ["spawn"] = { vector3(264.0945, -994.9136, -99.03979), },
                ["rotation"] = { vector3(0, 0, 0), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 50 },
                ["model"] = "v_club_vu_coffeecup",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [8] = {
                ["name"] =  { "sandwich", "sandwich" }, -- [1] = Display name, [2] = QB item name
                ["spawn"] = { vector3(263.3691, -994.9681, -99.03979), },
                ["rotation"] = { vector3(0.0000, 0.0000, 174.7007), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 50 },
                ["model"] = "prop_sandwich_01",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [9] = {
                ["name"] = { "microwave", "microwave" }, -- [1] = Display name, [2] = QB item name
                ["spawn"] = { vector3(265.85, -995.38, -99.01), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 50 },
                ["model"] = "prop_micro_02",
                ["create"] = false,
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [10] = {
                ["name"] = { "countertop" }, -- [1] = Display name, QB item name is not required for search locations
                ["spawn"] = { vector3(265.62, -996.54, -99.01), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 50 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [11] = {
                ["name"] =  { "tablet", "tablet" }, -- [1] = Display name, [2] = QB item name
                ["spawn"] = { vector3(262.3495, -1002.12, -100.31), },
                ["rotation"] = { vector3(-89.0002, -0.0000, -154.7593), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 50 },
                ["model"] = "prop_cs_tablet",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [12] = {
                ["name"] = { "drawers" }, -- [1] = Display name, QB item name is not required for search locations
                ["spawn"] = { vector3(261.44, -1002.66, -99.01), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 50 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
        },
        -- security: Security panel locations
        ["security"] = {
            [1] = {
                ["spawn"] = { vector3(264.148, -1001.481, -98.41959), },
                ["rotation"] = { vector3(0, 0, 180.0), },
                ["disabled"] = false,
                ["model"] = "prop_ld_keypad_01",
                ["create"] = true,
                ["beeps"] = 25,
            },
        },
        -- residents: Homeowner ped locations
        ["residents"] = {
            [1] = {
                ["spawn"] = { vector4(264.59, -1003.48, -99.01 - 1.0, 314.02), },
                ["model"] = { "a_f_m_fatcult_01", },
                ["chance"] = { math.random(100), 75 },
                ["animation"] = { "idle_a" },
                ["animDict"] = { "amb@world_human_stand_guard@male@idle_a" },
                ["weapon"] = { "WEAPON_BAT", },
            },
        },
        -- sneaky: Hiding spot locations
        ["sneaky"] = {
            [1] = {
                ["spawn"] = { vector3(259.71, -1003.92, -99.01) },
                ["rotation"] = { vector3(0, 0, 0) },
                ["heading"] = { 185.71 },
                ["chance"] = { math.random(100), 75 },
                ["create"] = false,
            },
            [2] = {
                ["spawn"] = { vector3(265.76, -997.66, -99.01) },
                ["rotation"] = { vector3(0, 0, 0) },
                ["heading"] = { 278.48 },
                ["chance"] = { math.random(100), 75 },
                ["create"] = false,
            },
        },
        -- poly: Do not change
        ["poly"] = false,
    },
}