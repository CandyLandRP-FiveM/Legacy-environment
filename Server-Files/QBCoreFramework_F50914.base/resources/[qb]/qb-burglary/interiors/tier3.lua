-- T3 house interiors
Config.T3_Interiors = {
    --[[****************************INTERIOR ID #1***************************--]]
    --[[**********************IPL -859.92, 691.46, 152.86********************--]]
    [1] = {
        -- ipl_spawn: Interior spawn coords
        ["ipl_spawn"] = vector3(-859.92, 691.46, 152.86),
        -- locations: Search & pickup locations
        ["locations"] = {
            [1] = {
                ["name"] = { "storage" },
                ["spawn"] = { vector3(-859.52, 679.83, 152.65), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [2] = {
                ["name"] = { "iPhone", "iphone" },
                ["spawn"] = { vector3(-856.51, 685.41, 152.82  - 0.067) },
                ["rotation"] = { vector3(90.0, -0.01, 180.0) },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_phone_ing",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [3] = {
                ["name"] = { "microwave", "microwave" },
                ["spawn"] = { vector3(-852.32, 687.04, 152.85), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_micro_02",
                ["create"] = false,
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [4] = {
                ["name"] = { "sandwich", "sandwich" }, 
                ["spawn"] = { vector3(-852.7353, 686.0648, 152.8819 - 0.017), },
                ["rotation"] = { vector3(0.0000, 0.0000, 174.7007), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_sandwich_01",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [5] = {
                ["name"] = { "cappuccino", "coffee" }, 
                ["spawn"] = { vector3(-853.9167, 689.4418, 152.8222), },
                ["rotation"] = { vector3(0, 0, 0), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "v_club_vu_coffeecup",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [6] = {
                ["name"] = { "watch", "rolex" },
                ["spawn"] = { vector3(-856.6707, 686.1254, 152.8146), vector3(-854.9809, 689.309, 152.8222) },
                ["rotation"] = { vector3(0.0, -0.0, 168.09), vector3(0.0, -0.0, 168.09), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "p_watch_01",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [7] = {
                ["name"] = { "USB", "trojan_usb" },
                ["spawn"] = { vector3(-854.02, 674.35, 151.93), },
                ["rotation"] = { vector3(0.0, -0.0, 95.3), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "hei_prop_hst_usb_drive",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [8] = {
                ["name"] = { "laptop", "laptop" },
                ["spawn"] = { vector3(-853.5308, 674.425, 151.9259), },
                ["rotation"] = { vector3(0, 0, 165.3627), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_laptop_01a",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [9] = {
                ["name"] = { "tablet", "tablet" }, 
                ["spawn"] = { vector3(-855.9439, 672.8885, 151.9361), },
                ["rotation"] = { vector3(-89.0002, -0.0000, -154.7593), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_cs_tablet",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [10] = {
                ["name"] = { "USB", "trojan_usb" },
                ["spawn"] = { vector3(-850.46, 675.8, 152.14), },
                ["rotation"] = { vector3(0.0, 0.0, -48.69), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "hei_prop_hst_usb_drive",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [11] = {
                ["name"] = { "TV", "bigtv" },
                ["spawn"] = { vector3(-851.27, 674.36, 152.45), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_tv_flat_01",
                ["create"] = false,
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [12] = {
                ["name"] = { "shelves" },
                ["spawn"] = { vector3(-852.2, 677.68, 152.45), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [13] = {
                ["name"] = { "weird furniture" },
                ["spawn"] = { vector3(-859.21, 675.24, 152.45), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [14] = {
                ["name"] = { "wardrobe" },
                ["spawn"] = { vector3(-855.98, 680.22, 149.05), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [15] = { 
                ["name"] = { "bedside table" },
                ["spawn"] = { vector3(-851.31, 677.22, 149.08), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [16] = {
                ["name"] = { "HIFI", "stereo" },
                ["spawn"] = { vector3(-859.6796, 674.4585, 148.9362), },
                ["rotation"] = { vector3(0.0, 0.0, 0.0), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_hifi_01",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [17] = {
                ["name"] = { "cash" },
                ["spawn"] = { vector3(-858.2129, 696.7034, 145.5313), },
                ["rotation"] = { vector3(0, 0, 0), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_cash_pile_02",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [18] = {
                ["name"] = { "cash" },
                ["spawn"] = { vector3(-858.5319, 696.6987, 145.5313), },
                ["rotation"] = { vector3(0, 0, 0), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_cash_pile_02",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [19] = {
                ["name"] = { "cash" },
                ["spawn"] = { vector3(-862.2401, 701.6411, 144.9698), },
                ["rotation"] = { vector3(0, 0, 0), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_cash_pile_02",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [20] = {
                ["name"] = { "desktop computer", "computer" },
                ["spawn"] = { vector3(-863.3974, 697.0856, 144.9698), },
                ["rotation"] = { vector3(0.0, 0.0, -164), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_dyn_pc",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [21] = {
                ["name"] = { "kevlar vest", "armor" },
                ["spawn"] = { vector3(-859.0262, 696.6435, 145.1531), },
                ["rotation"] = { vector3(-4.9999, 1.9998, -156.8674), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_bodyarmour_03",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [22] = {
                ["name"] = { "pills?", "oxycontin_bottle" },
                ["spawn"] = { vector3(-863.3693, 699.218, 144.9698), },
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
            [23] = {
                ["name"] = { "pills?", "oxycontin_bottle" },
                ["spawn"] = { vector3(-863.4314, 699.7852, 144.9698), },
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
            [24] = {
                ["name"] = { "voddy", "vodka" },
                ["spawn"] = { vector3(-856.657, 701.5938, 144.9717), },
                ["rotation"] = { vector3(0.0, 0.0, 0), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_vodka_bottle",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [25] = {
                ["name"] = { "JD", "whiskey" },
                ["spawn"] = { vector3(-856.7162, 701.4103, 144.9717), },
                ["rotation"] = { vector3(0.0, 0.0, 0), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_whiskey_bottle",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [26] = {
                ["name"] = { "wine", "wine" },
                ["spawn"] = { vector3(-856.7162, 701.4103, 144.9717), },
                ["rotation"] = { vector3(0.0, 0.0, 0), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_wine_red",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [27] = { 
                ["name"] = { "shelves" },
                ["spawn"] = { vector3(-862.94, 692.8, 145.25), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
        },
        -- security: Security panel locations
        ["security"] = {
            [1] = {
                ["spawn"] = { 
                    vector3(-858.23, 688.847, 153.37), 
                    vector3(-854.7615, 677.5707, 153.0671), },
                ["rotation"] = { 
                    vector3(0, 0, 5.1), 
                    vector3(0, 0, 5.1), },
                ["disabled"] = false,
                ["model"] = "prop_ld_keypad_01",
                ["create"] = true,
                ["beeps"] = 28,
            },
        },
        -- safe: Safe box locations
        ["safe"] = {
            [1] = {
                ["name"] = "Safe",
                ["spawn"] = { 
                    vector3(-859.8477, 676.3964, 148.053), 
                    vector3(-854.1583, 671.1607, 151.4533), 
                    vector3(-852.002, 676.4015, 148.0786), 
                    vector3(-856.635, 700.6969, 144.9717)
                },
                ["rotation"] = { 
                    vector3(0, 0, 0), 
                    vector3(0, 0, 0), 
                    vector3(0, 0, 0), 
                    vector3(0, 0, 0), 
                },
                ["searched"] = false,
                ["model"] = "prop_box_guncase_01a",
                ["chance"] = { math.random(100), 100 },
                ["create"] = true,
                ["animation"] = "idle",
                ["animDict"] = "rcmextreme3",
                ["time"] = math.random(5500, 7500),
            },
        },
        -- key: Safe box key locations
        ["key"] = {
            [1] = {
                ["name"] = { "Key", "t3_safe_key" },
                ["spawn"] = { 
                    vector3(-850.8802, 677.4938, 148.4592),
                    vector3(-850.5626, 673.8212, 148.4592),
                    vector3(-857.3402, 696.8796, 145.1531),
                    vector3(-863.6867, 696.6702, 144.9698)
                },
                ["rotation"] = { 
                    vector3(0, 0, 0), 
                    vector3(0, 0, 0), 
                    vector3(0, 0, 0),
                    vector3(0, 0, 0),
                },
                ["model"] = "prop_cuff_keys_01",
                ["chance"] = { math.random(100), 100 },
                ["create"] = true,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
        },
        -- residents: Homeowner ped locations
        ["residents"] = {
            [1] = {
                ["spawn"] = { vector4(-851.91, 675.45, 149.79 - 1.0, 198.49), },
                ["model"] = { "a_f_y_fitness_01", },
                ["chance"] = { math.random(100), 75 },
                ["animation"] = { "idle_c" },
                ["animDict"] = { "timetable@tracy@sleep@" },
                ["weapon"] = { "", },
            },
            [2] = {
                ["spawn"] = { vector4(-852.93, 675.78, 152.48 - 1.0, 132.94), },
                ["model"] = { "a_m_m_beach_01", },
                ["chance"] = { math.random(100), 75 },
                ["animation"] = { "ig_5_p3_base" },
                ["animDict"] = { "timetable@ron@ig_5_p3" },
                ["weapon"] = { "WEAPON_BAT" }
            },
            [3] = {
                ["spawn"] = { vector4(-861.42, 698.82, 145.25 - 1.0, 263.68), },
                ["model"] = { "a_m_y_vinewood_01", },
                ["chance"] = { math.random(100), 75 },
                ["animation"] = { "b_atm_mugging" },
                ["animDict"] = { "random@atmrobberygen" },
                ["weapon"] = { "WEAPON_PISTOL", "WEAPON_BAT" }
            },
        },
        -- sneaky: Hiding spot locations
        ["sneaky"] = {
            [1] = {
                ["spawn"] = { vector3(-857.97, 691.35, 145.25) },
                ["rotation"] = { vector3(0, 0, 0) },
                ["heading"] = { 279.34 },
                ["chance"] = { math.random(100), 75 },
                ["create"] = false,
            },
            [2] = {
                ["spawn"] = { vector3(-857.09, 688.62, 152.85) },
                ["rotation"] = { vector3(0, 0, 0) },
                ["heading"] = { 6.31 },
                ["chance"] = { math.random(100), 75 },
                ["create"] = false,
            },
        },
        -- poly: Do not change
        ["poly"] = false,
    },
    --[[****************************INTERIOR ID #2***************************--]] 
    --[[**********************IPL -758.49, 619.46, 144.14********************--]]
    [2] = {
        -- ipl_spawn: Interior spawn coords
        ["ipl_spawn"] = vector3(-758.49, 619.46, 144.14),
        -- locations: Search & pickup locations
        ["locations"] = {
            [1] = {
                ["name"] = { "cabinet" },
                ["spawn"] = { vector3(-768.8595, 615.1875, 143.7218), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [2] = {
                ["name"] = { "shelves" },
                ["spawn"] = { vector3(-768.1434, 607.5606, 144.1416), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [3] = {
                ["name"] = { "drawers" },
                ["spawn"] = { vector3(-772.9838, 613.8564, 143.6837), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [4] = {
                ["name"] = { "rolex", "rolex" },
                ["spawn"] = { vector3(-773.2186, 614.0323, 143.6837) },
                ["rotation"] = { vector3(0, 0, 0), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["model"] = "p_watch_01",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [5] = {
                ["name"] = { "laptop", "laptop" },
                ["spawn"] = { vector3(-773.7954, 607.2896, 143.2087), },
                ["rotation"] = { vector3(0, 0, 165.3627), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["model"] = "prop_laptop_01a",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [6] = {
                ["name"] = { "TV", "bigtv" },
                ["spawn"] = { vector3(-771.76, 605.64, 143.73), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["model"] = "prop_tv_flat_01",
                ["create"] = false,
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [7] = {
                ["name"] = { "tablet", "tablet" },
                ["spawn"] = { vector3(-766.8987, 610.8671, 143.7299 - 0.10), },
                ["rotation"] = { vector3(-89.0002, -0.0000, -154.7593), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["model"] = "prop_cs_tablet",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [8] = {
                ["name"] = { "iPhone", "iphone" },
                ["spawn"] = { vector3(-762.1693, 613.6077, 144.0907 - 0.063), },
                ["rotation"] = { vector3(-90, -179.99, 0.0), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["model"] = "prop_phone_ing",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [9] = {
                ["name"] = { "sandwich", "sandwich" }, 
                ["spawn"] = { vector3(-760.893, 610.099, 144.177 - 0.024), },
                ["rotation"] = { vector3(0.0000, 0.0000, 174.7007), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["model"] = "prop_sandwich_01",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [10] = {
                ["name"] = { "microwave", "microwave" },
                ["spawn"] = { vector3(-759.81, 609.75, 144.14), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["model"] = "prop_micro_02",
                ["create"] = false,
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [11] = {
                ["name"] = { "cabinet" },
                ["spawn"] = { vector3(-773.6219, 613.7255, 140.2483), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [12] = {
                ["name"] = { "bedside table" },
                ["spawn"] = { vector3(-772.2634, 604.8488, 139.966), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [13] = {
                ["name"] = { "bedside table" },
                ["spawn"] = { vector3(-769.2024, 605.9734, 139.966), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [14] = {
                ["name"] = { "wardrobe" },
                ["spawn"] = { vector3(-766.6582, 611.1621, 140.639), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [15] = {
                ["name"] = { "pills?", "oxycontin_bottle" },
                ["spawn"] = { vector3(-758.7225, 610.5116, 140.05372 - 0.05), },
                ["rotation"] = { vector3(0, 0, -54.5556), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["model"] = "prop_cs_pills",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [16] = {
                ["name"] = { "pills?", "oxycontin_bottle" },
                ["spawn"] = { vector3(-772.4036, 604.8831, 139.9841 - 0.020), },
                ["rotation"] = { vector3(-90, -133.0258, 0), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["model"] = "prop_cs_pills",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [17] = {
                ["name"] = { "bookshelves" },
                ["spawn"] = { vector3(-754.9819, 618.0593, 136.2943), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [18] = {
                ["name"] = { "bookshelves" },
                ["spawn"] = { vector3(-766.3945, 619.4044, 136.2535), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [19] = {
                ["name"] = { "kevlar vest", "armor" },
                ["spawn"] = { vector3(-761.3388, 618.3026, 136.7457 - 0.363), },
                ["rotation"] = { vector3(-4.9999, 1.9998, -156.8674), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["model"] = "prop_bodyarmour_03",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [20] = {
                ["name"] = { "desktop computer", "computer" },
                ["spawn"] = { vector3(-760.7635, 614.0209, 136.2516), },
                ["rotation"] = { vector3(0.0, 0.0, -164), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["model"] = "prop_dyn_pc",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [21] = {
                ["name"] = { "cash" },
                ["spawn"] = { vector3(-765.3694, 613.958, 136.2516), },
                ["rotation"] = { vector3(0, 0, 0), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["model"] = "prop_cash_pile_02",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [22] = {
                ["name"] = { "cash" },
                ["spawn"] = { vector3(-761.9123, 613.7321, 136.2516), },
                ["rotation"] = { vector3(0, 0, 0), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["model"] = "prop_cash_pile_02",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [23] = {
                ["name"] = { "HIFI", "stereo" },
                ["spawn"] = { vector3(-766.4185, 619.4924, 136.2535), },
                ["rotation"] = { vector3(0.0, 0.0, 65.0), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 100 },
                ["model"] = "prop_hifi_01",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
        },
        -- security: Security panel locations
        ["security"] = {
            [1] = {
                ["spawn"] = { vector3(-764.8916, 617.0746, 144.5757 - 0.1), },
                ["rotation"] = { vector3(0, 0, 18.5), },
                ["disabled"] = false,
                ["model"] = "prop_ld_keypad_01",
                ["create"] = true,
                ["beeps"] = 28,
            },
        },
        -- safe: Safe box locations
        ["safe"] = {
            [1] = {
                ["name"] = "Safe",
                ["spawn"] = { 
                    vector3(-774.0643, 613.6247, 140.2468), 
                    vector3(-762.6234, 620.5295, 136.2987), 
                    vector3(-761.6882, 619.2484, 136.813), 
                    vector3(-755.0037, 618.9329, 136.7104) 
                },
                ["rotation"] = { 
                    vector3(0, 0, 0), 
                    vector3(0, 0, 0), 
                    vector3(0, 0, 0), 
                    vector3(0, 0, 0) 
                },
                ["searched"] = false,
                ["model"] = "prop_box_guncase_01a",
                ["chance"] = { math.random(100), 100 },
                ["create"] = true,
                ["animation"] = "idle",
                ["animDict"] = "rcmextreme3",
                ["time"] = math.random(5500, 7500),
            },
        },
        -- key: Safe box key locations
        ["key"] = {
            [1] = {
                ["name"] = { "Key", "t3_safe_key" },
                ["spawn"] = { 
                    vector3(-768.4772, 615.5705, 143.7218),
                    vector3(-760.8259, 618.7711, 136.1793),
                    vector3(-774.7861, 609.9194, 143.2094),
                    vector3(-757.2696, 609.5778, 144.0982)
                },
                ["rotation"] = { 
                    vector3(0, 0, 0), 
                    vector3(0, 0, 0), 
                    vector3(0, 0, 0), 
                    vector3(0, 0, 0), 
                },
                ["model"] = "prop_cuff_keys_01",
                ["chance"] = { math.random(100), 100 },
                ["create"] = true,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
        },
        -- residents: Homeowner ped locations
        ["residents"] = {
            [1] = {
                ["spawn"] = { vector4(-770.99, 606.32, 141.05 - 1.0, 101.68), },
                ["model"] = { "a_f_y_fitness_01", },
                ["chance"] = { math.random(100), 75 },
                ["animation"] = { "idle_c" },
                ["animDict"] = { "timetable@tracy@sleep@" },
                ["weapon"] = { "", },
            },
            [2] = {
                ["spawn"] = { vector4(-769.8, 609.4, 143.73 - 1.0, 17.53), },
                ["model"] = { "a_m_m_beach_01", },
                ["chance"] = { math.random(100), 75 },
                ["animation"] = { "idle_a" },
                ["animDict"] = { "amb@world_human_stand_guard@male@idle_a" },
                ["weapon"] = { "WEAPON_BAT" }
            },
            [3] = {
                ["spawn"] = { vector4(-762.3, 615.14, 136.53 - 1.0, 38.87), },
                ["model"] = { "a_m_y_vinewood_01", },
                ["chance"] = { math.random(100), 100 },
                ["animation"] = { "b_atm_mugging" },
                ["animDict"] = { "random@atmrobberygen" },
                ["weapon"] = { "WEAPON_PISTOL", "WEAPON_BAT" }
            },
        },
        -- sneaky: Hiding spot locations
        ["sneaky"] = {
            [1] = {
                ["spawn"] = { vector3(-769.43, 606.86, 143.75) },
                ["rotation"] = { vector3(0, 0, 0) },
                ["heading"] = { 50.45 },
                ["chance"] = { math.random(100), 75 },
                ["create"] = false,
            },
            [2] = {
                ["spawn"] = { vector3(-766.8, 610.49, 140.33) },
                ["rotation"] = { vector3(0, 0, 0) },
                ["heading"] = { 203.33 },
                ["chance"] = { math.random(100), 75 },
                ["create"] = false,
            },
        },
        -- poly: Do not change
        ["poly"] = false,
    },
}