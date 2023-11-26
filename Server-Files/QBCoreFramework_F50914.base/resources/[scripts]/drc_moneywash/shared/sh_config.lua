Config = {}

Config.Debug = false

--SERVER SETTINGS
Config.InteractionType = "target"                                    -- target or textui or 3dtext | which type of interaction you want

Config.QuasarLockpickMinigame = true                                -- if you use lockpick resource from qusar set this to true

Config.Framework = "auto-detect"                                     -- Framework | types: auto-detect, qbcore, ESX, standalone
Config.NewESX = true                                                 -- if you use esx 1.1 set this to false
Config.Target = "qb-target"                                        -- Target | types: auto-detect, qb-target, qtarget, ox_target
Config.Dispatch = { enabled = false, script = "linden_outlawalert" } -- cd_dispatch, linden_outlawalert, ps-disptach, core-dispatch
Config.NotificationType = "qbcore"                                   -- Notifications | types: ESX, ox_lib, qbcore
Config.Progress = "ox_lib"                                           -- ProgressBars | types: progressBars, ox_lib, qbcore
Config.Clothing = "illenium-appearance"                                      -- Skin / Clothing | types: auto-detect, esx_skin, qb-clothing, fivem-appearance, ox_appearance, illenium-appearance
Config.TextUI = "ox_lib"                                             -- TextUIs | types: esx, ox_lib, luke
Config.Context = "ox_lib"                                            -- Context | types: ox_lib, qbcore
Config.Input = "ox_lib"                                              -- Input | types: ox_lib, qb-input
Config.TimeChange = true                                             -- for realistic interior night time, can cause error when you dont use correct time sync!
Config.TimeSync = "cd_easytime"                                             -- Time Sync | types: cd_easytime, none, realtime
Config.PoliceJobs = { 'police', 'sheriff' }                          -- jobs for police counting
--PLAYER CONTROL
Config.Logs = { enabled = true, type = "webhook" }                   --Change webhook in  use webhook or ox_lib (datadog) Can be changed in server > sv_utils.lua
Config.DropPlayer = false                                            -- Drop (Kick) Player if tries to cheat!
Config.AnticheatBan = false                                          -- Change in server/sv_Utils.lua!!! WIll not work by default you need to add your custom trigger to ban player!

Config.QBdisablemarkedbills = { enabled = false, item = "black_money" } -- yourt item (if you dont use markedbills this is for you!)

Config.OnlyOne = false                                                 -- One warehouse per one player

Config.CCTV = "disabled"           -- Camera | types: disabled, solo (Player can only access camera when he is alone in warehouse, will prevent invisible problem), multi (if multi then player will become invisble when in camera mode for players inside warehouse)

Config.ResetHousesAfterTime = true                     -- reset houses
Config.ResetTime = 120                                 -- in minutes

Config.Lockpick = { item = "laundrykey", remove = false } -- item for lockpicking house

Config.Inventory = "quasar"                       -- auto-detect, ox, quasar, chezza, qb

Config.ResellValue = 30 -- Player will get 50% back when selling already purchased warehouse

Config.LocatorTimeout = 30 -- Minutes

--BLIPS
Config.Blips = {
    Shop = { -- do not use same value twice (will result in overwriting of blip)
        BlipCoords = vec3(-697.9, 271.6, 82.11), -- Blip coords
        Sprite = 0, -- Blip Icon
        Display = 0, -- keep 4
        Scale = 0.0, -- Size of blip
        Colour = 0, -- colour
        Name = "Warehouses for sale" -- Blip name
    },
    Upgrades = {
        BlipCoords = vec3(-262.93, 202.72, 84.37),
        Sprite = 0,
        Display = 0,
        Scale = 0.0,
        Colour = 0,
        Name = "Upgrades for warehouses"
    },
    TechShop = {
        BlipCoords = vec3(132.06, -1510.09, 28.14),
        Sprite = 0,
        Display = 0,
        Scale = 0.0,
        Colour = 0,
        Name = "Illegal Tech Shop"
    },
}

Config.MoneyWash = {
    ReportChanceWhenEntering = 0, -- only if he has alarm
    NeedPoliceCount = 0,
    InsidePositions = {
        ["Exit"] = {
            coords = vector4(1137.99, -3199.13, -39.67, 0.83),
        },
    },
    HackDevice = {
        ["HackDevice"] = {
            Label = "Hack Alarm",
            NeedItem = true,
            Item = "hackinglaptop",
            Coords = vec3(1139.22, -3199.26, -39.23)
        }
    },

    Camera = vector3(1135.27, -3193.56, -40.43),

    Manage = vector3(1129.56, -3193.44, -40.51),

    LaserChance = 100,
    Lasers = {
        ["laser_low1"] = {
            FromCoords = vector3(1139.94, -3193.02, -36.66),
            ToCoords =  {vector3(1130.47, -3198.2, -40.65), vector3(1126.56, -3194.85, -41.32)},
            Visible = true,
            chance = 30,
            spawned = false
        },
    },
    Stashes = {
        ["stash"] = {
            coords = vector3(1138.5, -3193.24, -40.35),
            label = "Stash",
            TargetIcon = "fas fa-warehouse",
            TargetLabel = "Stash",
            Slots = 20,
            Weight = 50000, -- 50 KG
            radius = 0.5,
        },
    },
    CloakRoom = {
        Main = { coords = vector3(1116.45, -3192.88, -40.07), radius = 0.5 },
    },
    Count = {
        ["count1"] = {
            pos = vector3(1120.01, -3198.48, -40.56),
            animation = vector3(1119.58, -3197.85, -40.39),
            Visible = true,
            chance = 30,
            spawned = false
        },
        ["count2"] = {
            pos = vector3(1117.93, -3197.23, -40.59),
            animation = vector3(1117.37, -3196.95, -40.39),
            Visible = false,
            chance = 100,
            spawned = false
        },
    },
    CountItems = {
        RequiredItems = { item = "dry_money", minimum = 1, maximum = 50000 },
        AnimationDuration = 4000, -- Duration of animation
        PercentageLost = 0, -- 80% will not cut
        AddItems = { item = "money" },
    },
    Cut = {
        ["table1"] = {
            pos = vector3(1122.11, -3198.45, -40.53),
            animation = vector3(1122.29, -3197.84, -40.39),
            Visible = true,
            chance = 100,
            spawned = false
        },
    },
    CutItems = {
        -- required item can be changed in server / sv_utils.lua by default its working on markedbills/dirty_money function is called: CheckDirtyMoney
        RequiredItems = { minimum = 1, maximum = 50000 },
        AnimationDuration = 4000, -- Duration of animation (cooldown for timeout)
        PercentageLost = 0, -- 80% will not cut
        AddItems = { item = "unmarked_money" },
    },
    Wash = {
        ["dryer1"] = {
            pos = vector3(1122.33, -3193.8, -40.39),
            animation = vector3(1122.42, -3194.77, -40.4),
            Visible = true,
            chance = 100,
            spawned = false
        },
        ["dryer2"] = {
            pos = vector3(1123.77, -3193.66, -40.34),
            animation = vector3(1123.93, -3194.8, -40.4),
            Visible = false,
            chance = 100,
            spawned = false
        },
        ["dryer3"] = {
            pos = vector3(1125.54, -3193.79, -40.32),
            animation = vector3(1125.47, -3194.82, -40.4),
            Visible = false,
            chance = 100,
            spawned = false
        },
        ["dryer4"] = {
            pos = vector3(1126.94, -3193.68, -40.33),
            animation = vector3(1127.11, -3194.59, -40.4),
            Visible = false,
            chance = 100,
            spawned = false
        },
    },
    WashItems = {
        RequiredItems = { item = "unmarked_money", minimum = 1, maximum = 50000 },
        Cooldown = 0.2, -- how much seconds for each money
        UpgradeReduction = 50, -- % of time to be reduced
        AnimationDuration = 4000, -- Duration of animation
        PercentageLost = 20, -- 80% will not cut
        AddItems = { item = "wet_money" },
    },
    Dry = {
        Load = { pos = vector3(1133.18, -3198.13, -39.82), },
        Start =  { pos = vector3(1132.36, -3197.61, -39.27), },
        Collect = { pos = vector3(1126.12, -3197.78, -39.95), },
    },
    UpgradedDry = {
        Load = { pos = vector3(1136.11, -3198.03, -39.91), },
        Start =  { pos = vector3(1135.35, -3197.63, -39.27), },
        Collect = { pos = vector3(1126.12, -3197.78, -39.95), },
    },
    DryItems = {
        RequiredItems = { item = "wet_money", minimum = 1, maximum = 50000 },
        Cooldown = 0.2, -- how much seconds for each money
        UpgradeReduction = 50, -- % of time to be reduced
        AnimationDuration = 4000, -- Duration of animation
        PercentageLost = 0, -- 80% will not cut
        AddItems = { item = "dry_money" },
    },
}

Config.Warehouses = {
    ["Warehouse3"] = {
        Coords = vec3(448.65, -2761.5, 7.1),
        TeleportExit = vec3(448.65, -2761.5, 6.1),
        Camera = { 
            PropPos = vec3(449.693, -2760.644, 8.484),
            PropRot = vec3(5.58, 22.02, -94.96), 
            pos = vec3(449.14, -2760.46, 8.17), 
            rot = vec3(-40.0, 0.0, 142.8), 
            fov = 90.0 
        },
        label = "Warehouse #3",
        description = "Situated on Abattoir Avenue at the docks, perfect for marine trading. ",
        image = 'https://i.imgur.com/Y8kbRvn.png',
        MoneyWash = Config.MoneyWash,
        price = 22000,
    },
}


--Shop
Config.UpgradeShop = {
    enabled = false,
    Header = "Upgrade shop",
    Items = {
        ["laundry"] = { enabled = true, label = 'Buy Laundry Setup for your warehouse', description =
        "Buy upgrade for your warehouse for: $", price = 8000, image = "https://i.imgur.com/VC2KQdv.png", icon = "sack-dollar" },
        ["alarm"] = { enabled = true, label = 'Security Alarm Upgrade', description =
        "Buy upgrade for your warehouse for: $", price = 2000, image = "https://i.imgur.com/Qy4shWi.png", icon = "eye" },
        ["laser"] = { enabled = true, label = 'Security Laser Upgrade', description =
        "Buy upgrade for your warehouse for: $", price = 3000, image = "https://i.imgur.com/HEASryA.png", icon = "server" },
        ["printer"] = { enabled = true, label = 'Faster and better dryer Upgrade (Laundry needed)', description =
        "Buy upgrade for your warehouse for: $", price = 4000, image = "https://i.imgur.com/Rluafl0.png", icon = "print" },
        ["washing"] = { enabled = true, label = 'Faster and better washing Upgrade (Laundry needed)', description =
        "Buy upgrade for your warehouse for: $", price = 5000, image = "https://i.imgur.com/ZPM33Ef.png", icon = "hands-bubbles" },
    },
    Ped = {
        model = `s_m_y_waretech_01`,
        coords = vector4(744.92, 1306.29, 360.08, 193.51),
        scenario = "WORLD_HUMAN_AA_SMOKE",
        renderdistance = 100
    },
}

--Shop
Config.Shop = {
    enabled = false,   
    Header = "Illegal Tech Shop",
    Items = {
        { label = 'Hacking laptop', item = 'hack_laptop', description = "Buy Laptop for: $", price = 500, 
        MinAmount = 1, MaxAmount = 2, image = "https://i.imgur.com/ne0omnr.png" },
        { label = 'Lockpick', item = 'lockpick', description = "Buy Lockpick for: $", price = 10, 
        MinAmount = 1, MaxAmount = 20, image = "https://i.imgur.com/wvqfHdS.png" },
        { label = 'Warehouse Locator', item = 'warehouse_locator', description = "Buy Locator for: $", price = 100, 
        MinAmount = 1, MaxAmount = 20, image = "https://i.imgur.com/gYNsh2y.png" },
    },
    Ped = {
        model = `s_m_y_waretech_01`, 
        coords = vec4(132.03, -1510.07, 28.14, 231.38), 
        scenario = "WORLD_HUMAN_AA_SMOKE",
        renderdistance = 100
    },
}

--SellShop
Config.WarehouseShop = {
    enabled = false,
    Ped = {
        model = `a_m_y_business_03`,
        coords = vector4(743.08, 1305.86, 360.3, 189.27),
        scenario = "WORLD_HUMAN_AA_COFFEE",
        renderdistance = 100
    },
}
