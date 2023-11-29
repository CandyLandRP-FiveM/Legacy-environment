Config = {}

Config.Debug = false
--SERVER SETTINGS
Config.Framework = "auto-detect" -- Framework | types: auto-detect, qbcore, ESX, standalone

Config.NewESX = true

Config.Target = "auto-detect" -- Target | types: auto-detect, qb-target
Config.Menu = "ox_lib" -- ContextMenu | types: ox_lib, qb-menu
Config.NotificationType = "ox_lib" -- ESX, ox_lib, qbcore
Config.Progress = "ox" -- progressBars, ox, qbcore
Config.WeaponsAsItems = true -- if you are using old types of inventories which does not include weapons as items set this to false!

Config.Logs = { enabled = true, type = "webhook" } -- use webhook or ox_lib (datadog) Can be changed in server > sv_utils.lua
Config.DropPlayer = false -- Drop (Kick) Player if tries to cheat!
Config.AnticheatBan = false -- Change in server/sv_Utils.lua!!! WIll not work by default you need to add your custom trigger to ban player!

--Craftings
Config.Craftings = {
    Crafting_default_1 = { -- Crafting Station police expemple / Marker
        Occupied = false, -- Dont change
        Label = "Crafting table", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vector3(-278.91, 2203.78, 129.82), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 245.67,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 0.0, Type = 0, Size = { x = 0.0, y = 0.0, z = 0.0 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-wrench",
        CraftingItems = { -- Table for all craftable Items
            advancedlockpick = {
                Title = "Advanced Lockpick", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Scrap Metal", count = 10, remove = true }, 
                    { item = "plastic", label = "Plastic", count = 10, remove = true }, -- Which Items should are required
                    { item = "lockpick", label = "lockpick", count = 2, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "advancedlockpick", label = "Advanced Lockpick", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            toolkit = {
                Title = "Tool Kit", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 5, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Scrap Metal", count = 30, remove = true }, 
                    { item = "plastic", label = "Plastic", count = 42, remove = true }, -- Which Items should are required
                },
                AddItems = { -- Table for item add
                    { item = "toolkit", label = "Tool Kit", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            electronickit = {
                Title = "Electronic Kit", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 5, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "wiring", label = "Scrap Metal", count = 3, remove = true }, 
                    { item = "plastic", label = "Plastic", count = 5, remove = true }, -- Which Items should are required
                    { item = "aluminum", label = "Aluminum", count = 5, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "electronickit", label = "Electronic Kit", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            handcuffs = {
                Title = "Handcuffs", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 5, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Scrap Metal", count = 36, remove = true }, 
                    { item = "steel", label = "Steel", count = 24, remove = true }, -- Which Items should are required
                    { item = "aluminum", label = "Aluminum", count = 28, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "handcuffs", label = "Handcuffs", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            pistolparts = {
                Title = "Pistol Parts", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 5, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Scrap Metal", count = 15, remove = true }, 
                    { item = "steel", label = "Steel", count = 15, remove = true }, -- Which Items should are required
                    { item = "iron", label = "Iron", count = 15, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "pistolparts", label = "pistolparts", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            pistol_ammo = {
                Title = "Pistol Ammo", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 15, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                { item = "metalscrap", label = "Scrap Metal", count = 15, remove = true }, 
                { item = "steel", label = "Steel", count = 15, remove = true }, -- Which Items should are required
                { item = "copper", label = "Copper", count = 15, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "pistol_ammo", label = "Pistol Ammo", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            ironoxide = {
                Title = "Iron Powder", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 10, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "iron", label = "Iron", count = 60, remove = true }, 
                    { item = "glass", label = "Glass", count = 30, remove = true }, -- Which Items should are required
                },
                AddItems = { -- Table for item add
                    { item = "ironoxide", label = "Iron Powder", count = 3 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            aluminumoxide = {
                Title = "Aluminum Powder", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 10, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "aluminum", label = "Aluminum", count = 60, remove = true }, 
                    { item = "glass", label = "Glass", count = 30, remove = true }, -- Which Items should are required
                },
                AddItems = { -- Table for item add
                    { item = "aluminumoxide", label = "Aluminum Powder", count = 3 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            armor = {
                Title = "Armor", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 25, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "iron", label = "Iron", count = 22, remove = true }, 
                    { item = "steel", label = "Steel", count = 33, remove = true }, -- Which Items should are required
                    { item = "plastic", label = "Plastic", count = 44, remove = true }, -- Which Items should are required
                    { item = "aluminum", label = "Aluminum", count = 11, remove = true }, -- Which Items should are required
                },
                AddItems = { -- Table for item add
                    { item = "armor", label = "Armor", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            heavydrill = {
                Title = "Heavy Drill", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 10, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 20, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "iron", label = "Iron", count = 25, remove = true }, 
                    { item = "steel", label = "Steel", count = 25, remove = true }, -- Which Items should are required
                    { item = "toolkit", label = "Tool Kit", count = 1, remove = true }, -- Which Items should are required
                    { item = "advancedlockpick", label = "Advanced Lockpick", count = 1, remove = true }, -- Which Items should are required
                },
                AddItems = { -- Table for item add
                    { item = "hddrill", label = "Heavy Drill", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            draftingpencil = {
                Title = "Drafting Pencil", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 1000, Add = 5 }, -- Required exp and How much should be add after crafting.
                Duration = 20, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "wood", label = "Wood", count = 25, remove = true }, 
                    { item = "lead_ore", label = "Lead Ore", count = 25, remove = true }, -- Which Items should are required
                    { item = "rubber", label = "Rubber", count = 10, remove = true }, -- Which Items should are required
                },
                AddItems = { -- Table for item add
                    { item = "draftingpencil", label = "Drafting Pencil", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
        }
    },
    Crafting_default_2 = { -- Crafting BlackMarker expemple / Table - Target
        Occupied = false, -- Dont change
        Label = "Crafting", --display label on help or target
        job = { name = "police", grade = 0 }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vector3(457.80, -957.97, 22.2), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 450.38,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-wrench",
        CraftingItems = { -- Table for all craftable Items
            weapon_m9 = {
                Title = "PD Glock", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "iron", label = "Iron", count = 40, remove = true }, -- Which Items should are required
                    { item = "metalscrap", label = "Metal Scrap", count = 60, remove = true }, -- Which Items should are required
                    { item = "rubber", label = "Rubber", count = 10, remove = true }, -- Which Items should are required

                },
                AddItems = { -- Table for item add
                    { item = "weapon_m9", label = "PD Glock", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            weapon_m1 = {
                Title = "PD Shotgun", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "iron", label = "Iron", count = 60, remove = true }, -- Which Items should are required
                    { item = "metalscrap", label = "Metal Scrap", count = 60, remove = true }, -- Which Items should are required
                    { item = "rubber", label = "Rubber", count = 20, remove = true }, -- Which Items should are required
                    { item = "steel", label = "Steel", count = 40, remove = true }, -- Which Items should are required
                },
                AddItems = { -- Table for item add
                    { item = "weapon_m1", label = "PD Shotgun", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            weapon_baton = {
                Title = "PD Baton", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "iron", label = "Iron", count = 10, remove = true }, -- Which Items should are required
                    { item = "metalscrap", label = "Metal Scrap", count = 20, remove = true }, -- Which Items should are required
                    { item = "rubber", label = "Rubber", count = 10, remove = true }, -- Which Items should are required                
                },
                AddItems = { -- Table for item add
                    { item = "weapon_baton", label = "PD Baton", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
        }
    },
    Crafting_default_3 = { -- Crafting Station police expemple / Marker
        Occupied = false, -- Dont change
        Label = "Crafting table", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vector3(1658.07, -55.48, 166.17), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `prop_paints_bench01`, Heading = 250.83,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 0.0, Type = 0, Size = { x = 0.0, y = 0.0, z = 0.0 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fa-solid fa-gun",
        CraftingItems = { -- Table for all craftable Items
            weapon_g27 = {
                Title = "G27", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 40, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Scrap Metal", count = 65, remove = true }, 
                    { item = "rubber", label = "Rubber", count = 10, remove = true }, -- Which Items should are required
                    { item = "steel", label = "Steel", count = 50, remove = true },
                    { item = "pistolparts", label = "Pistol Parts", count = 3, remove = true },
                    { item = "g27blueprint", label = "G27 Blueprint", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_g27", label = "G27", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            weapon_snubrevolver = {
                Title = "Snubnose Revolver", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 200, Add = 2 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "iron", label = "Iron", count = 90, remove = true }, 
                    { item = "rubber", label = "Rubber", count = 50, remove = true }, -- Which Items should are required
                    { item = "steel", label = "Steel", count = 100, remove = true },
                    { item = "pistolparts", label = "Pistol Parts", count = 5, remove = true },
                    { item = "snubblueprint", label = "Snubnose Blueprint", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_snubrevolver", label = "Snubnose Revolver", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            weapon_eagle = {
                Title = "Desert Eagle", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 500, Add = 3 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "iron", label = "Iron", count = 120, remove = true }, 
                    { item = "rubber", label = "Rubber", count = 50, remove = true }, -- Which Items should are required
                    { item = "steel", label = "Steel", count = 110, remove = true },
                    { item = "pistolparts", label = "Pistol Parts", count = 15, remove = true },
                    { item = "deagleblueprint", label = "Deagle Blueprint", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_eagle", label = "Desert Eagle", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
        }
    },
    Crafting_default_4 = { -- Crafting Station police expemple / Marker
        Occupied = false, -- Dont change
        Label = "Crafting table", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vector3(-1053.57, -231.32, 43.99), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `prop_security_case_01`, Heading = 270.0,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 0.0, Type = 0, Size = { x = 0.0, y = 0.0, z = 0.0 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-wrench",
        CraftingItems = { -- Table for all craftable Items
            hackinglaptop = {
                Title = "Hacking Laptop", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 75, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "laptop", label = "Laptop", count = 1, remove = true }, 
                    { item = "electronickit", label = "Electronic Kit", count = 5, remove = true }, -- Which Items should are required
                    { item = "accesscard", label = "Bank Access Card", count = 1, remove = true },
                    { item = "hackingdevice", label = "Hacking Device", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "hackinglaptop", label = "Hacking Laptop", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            safecracker = {
                Title = "Safe Cracker", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 10, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "rubber", label = "Rubber", count = 25, remove = true }, 
                    { item = "iron", label = "Iron", count = 75, remove = true }, -- Which Items should are required
                    { item = "hddrill", label = "Heavy Drill", count = 1, remove = true },
                    { item = "toolkit", label = "Tool Kit", count = 3, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "safecracker", label = "Safe Cracker", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            thermite = {
                Title = "Thermite", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 300, Add = 5 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "aluminumoxide", label = "Aluminum Powder", count = 10, remove = true }, 
                    { item = "ironoxide", label = "Iron Powder", count = 10, remove = true }, -- Which Items should are required
                    { item = "Plastic", label = "Plastic", count = 180, remove = true },
                    { item = "electronickit", label = "Electonic Kit", count = 3, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "thermite", label = "Thermite", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            hackingdevice = {
                Title = "Hacking Device", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 15, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 15, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "trojan_usb", label = "Trojan USB", count = 2, remove = true }, 
                    { item = "copper", label = "Copper", count = 25, remove = true }, -- Which Items should are required
                    { item = "Plastic", label = "Plastic", count = 25, remove = true },
                    { item = "electronickit", label = "Electonic Kit", count = 5, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "hackingdevice", label = "Hacking Device", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            gpshackingdevice = {
                Title = "GPS Hacking Device", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 15, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 15, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "hackingdevice", label = "Hacking Device", count = 1, remove = true }, 
                    { item = "copper", label = "Copper", count = 10, remove = true }, -- Which Items should are required
                    { item = "Plastic", label = "Plastic", count = 25, remove = true },
                    { item = "electronickit", label = "Electonic Kit", count = 10, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "gpshackingdevice", label = "GPS Hacking Device", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
        }
    },
    Crafting_default_5 = { -- Crafting Station police expemple / Marker
        Occupied = false, -- Dont change
        Label = "Crafting table", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vector3(49.25, -2696.89, 6.01), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `prop_tool_bench02`, Heading = 25.47,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 0.0, Type = 0, Size = { x = 0.0, y = 0.0, z = 0.0 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-wrench",
        CraftingItems = { -- Table for all craftable Items
            weapon_butterfly = {
                Title = "Butterfly Knife", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "iron", label = "Iron", count = 35, remove = true }, 
                    { item = "metalscrap", label = "Metal Scrap", count = 35, remove = true }, -- Which Items should are required
                    { item = "rubber", label = "Rubber", count = 20, remove = true },
                    { item = "steel", label = "Steel", count = 90, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_butterfly", label = "Butterfly Knife", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            weapon_shadowdagger = {
                Title = "Shadow Dagger", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 3, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "iron", label = "Iron", count = 35, remove = true }, 
                    { item = "metalscrap", label = "Metal Scrap", count = 35, remove = true }, -- Which Items should are required
                    { item = "rubber", label = "Rubber", count = 20, remove = true },
                    { item = "steel", label = "Steel", count = 90, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_shadowdagger", label = "Shadow Dagger", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            weapon_nordicaxe = {
                Title = "Nordic Axe", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 5, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "iron", label = "Iron", count = 35, remove = true }, 
                    { item = "metalscrap", label = "Metal Scrap", count = 35, remove = true }, -- Which Items should are required
                    { item = "rubber", label = "Rubber", count = 20, remove = true },
                    { item = "steel", label = "Steel", count = 90, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_nordicaxe", label = "Nordic Axe", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            weapon_elecknuckle = {
                Title = "Jerry Rigged Knuckles", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 5, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "electronickit", label = "Electronic Kit", count = 2, remove = true }, 
                    { item = "wiring", label = "Wiring", count = 50, remove = true }, -- Which Items should are required
                    { item = "broken_plug", label = "Broken Plug", count = 3, remove = true },
                    { item = "metalscrap", label = "Metal Scrap", count = 120, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_elecknuckle", label = "Jerry Rigged Knuckles", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
        }
    },
    Crafting_default_6 = { -- Crafting Station police expemple / Marker
        Occupied = false, -- Dont change
        Label = "Crafting table", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vector3(-1528.33, 835.36, 181.59), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `prop_tablesaw_01`, Heading = 305.47,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 0.0, Type = 0, Size = { x = 0.0, y = 0.0, z = 0.0 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fa-solid fa-gun",
        CraftingItems = { -- Table for all craftable Items
            pistol_extendedclip = {
                Title = "Pistol Extended Clip", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 30, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 50, remove = true }, -- Which Items should are required
                    { item = "rubber", label = "Rubber", count = 60, remove = true },
                    { item = "steel", label = "Steel", count = 50, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "pistol_extendedclip", label = "Pistol Extended Clip", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            pistol_suppressor = {
                Title = "Pistol Surpressor", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 60, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 50, remove = true }, -- Which Items should are required
                    { item = "rubber", label = "Rubber", count = 75, remove = true },
                    { item = "steel", label = "Steel", count = 50, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "pistol_suppressor", label = "Pistol Surpressor", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
        }
    },
    Crafting_default_7 = { -- Crafting Station police expemple / Marker
        Occupied = false, -- Dont change
        Label = "Crafting table", --display label on help or target
        job = { name = "floki", grade = 0 }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vector3(301.07, -1167.09, 29.27), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_tool_draw_01a`, Heading = 900.58,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 0.0, Type = 0, Size = { x = 0.0, y = 0.0, z = 0.0 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-wrench",
        CraftingItems = { -- Table for all craftable Items
            workshop_cosmetics = {
                Title = "Mechanic Parts", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 25, remove = true }, -- Which Items should are required
                    { item = "rubber", label = "Rubber", count = 25, remove = true },
                    { item = "steel", label = "Steel", count = 25, remove = true },
                    { item = "iron", label = "Iron", count = 25, remove = true },
                    { item = "aluminum", label = "Aluminum", count = 25, remove = true },
                    { item = "plastic", label = "Plastic", count = 25, remove = true },

                },
                AddItems = { -- Table for item add
                    { item = "workshop_cosmetics", label = "Mechanic Parts", count = 40 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            lockpick = {
                Title = "Lockpick", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 5, remove = true }, -- Which Items should are required
                    { item = "aluminum", label = "Aluminum", count = 5, remove = true },

                },
                AddItems = { -- Table for item add
                    { item = "lockpick", label = "Lockpick", count = 20 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            toolkit = {
                Title = "toolkit", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 5, remove = true }, -- Which Items should are required
                    { item = "plastic", label = "Plastic", count = 5, remove = true },

                },
                AddItems = { -- Table for item add
                    { item = "toolkit", label = "Toolkit", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            }, 
            carplay = {
                Title = "Car Radio", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "copper", label = "Copper", count = 15, remove = true }, -- Which Items should are required
                    { item = "plastic", label = "Plastic", count = 15, remove = true },
                    { item = "glass", label = "Glass", count = 15, remove = true },

                },
                AddItems = { -- Table for item add
                    { item = "carplay", label = "Car Radio", count = 5 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },               
        }
    },
    Crafting_default_8 = { -- Crafting Station police expemple / Marker
        Occupied = false, -- Dont change
        Label = "Crafting table", --display label on help or target
        job = { name = "autoexotics", grade = 0 }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vector3(550.19, -170.43, 54.49), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_tool_draw_01a`, Heading = 990.58,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 0.0, Type = 0, Size = { x = 0.0, y = 0.0, z = 0.0 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-wrench",
        CraftingItems = { -- Table for all craftable Items
            workshop_cosmetics = {
                Title = "Mechanic Parts", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 25, remove = true }, -- Which Items should are required
                    { item = "rubber", label = "Rubber", count = 25, remove = true },
                    { item = "steel", label = "Steel", count = 25, remove = true },
                    { item = "iron", label = "Iron", count = 25, remove = true },
                    { item = "aluminum", label = "Aluminum", count = 25, remove = true },
                    { item = "plastic", label = "Plastic", count = 25, remove = true },

                },
                AddItems = { -- Table for item add
                    { item = "workshop_cosmetics", label = "Mechanic Parts", count = 40 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            lockpick = {
                Title = "Lockpick", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 5, remove = true }, -- Which Items should are required
                    { item = "aluminum", label = "Aluminum", count = 5, remove = true },

                },
                AddItems = { -- Table for item add
                    { item = "lockpick", label = "Lockpick", count = 20 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            carplay = {
                Title = "Car Radio", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "copper", label = "Copper", count = 15, remove = true }, -- Which Items should are required
                    { item = "plastic", label = "Plastic", count = 15, remove = true },
                    { item = "glass", label = "Glass", count = 15, remove = true },

                },
                AddItems = { -- Table for item add
                    { item = "carplay", label = "Car Radio", count = 5 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },    
        }
    },
    Crafting_default_9 = { -- Crafting Station police expemple / Marker
        Occupied = false, -- Dont change
        Label = "Crafting table", --display label on help or target
        job = { name = "cyber", grade = 0 }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vector3(694.64, -757.24, 24.99), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_tool_draw_01a`, Heading = 445.58,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 0.0, Type = 0, Size = { x = 0.0, y = 0.0, z = 0.0 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-wrench",
        CraftingItems = { -- Table for all craftable Items
            workshop_cosmetics = {
                Title = "Mechanic Parts", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 25, remove = true }, -- Which Items should are required
                    { item = "rubber", label = "Rubber", count = 25, remove = true },
                    { item = "steel", label = "Steel", count = 25, remove = true },
                    { item = "iron", label = "Iron", count = 25, remove = true },
                    { item = "aluminum", label = "Aluminum", count = 25, remove = true },
                    { item = "plastic", label = "Plastic", count = 25, remove = true },

                },
                AddItems = { -- Table for item add
                    { item = "workshop_cosmetics", label = "Mechanic Parts", count = 40 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            lockpick = {
                Title = "Lockpick", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 5, remove = true }, -- Which Items should are required
                    { item = "aluminum", label = "Aluminum", count = 5, remove = true },

                },
                AddItems = { -- Table for item add
                    { item = "lockpick", label = "Lockpick", count = 20 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            carplay = {
                Title = "Car Radio", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "copper", label = "Copper", count = 15, remove = true }, -- Which Items should are required
                    { item = "plastic", label = "Plastic", count = 15, remove = true },
                    { item = "glass", label = "Glass", count = 15, remove = true },

                },
                AddItems = { -- Table for item add
                    { item = "carplay", label = "Car Radio", count = 5 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },    
        }
    },
    Crafting_default_10 = { -- Crafting Station police expemple / Marker
        Occupied = false, -- Dont change
        Label = "Sons of Odin", --display label on help or target
        job = { name = "sons", grade = 0 }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vector3(167.24, -1320.99, 25.81), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 335.00,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 0.0, Type = 0, Size = { x = 0.0, y = 0.0, z = 0.0 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-wrench",
        CraftingItems = { -- Table for all craftable Items
            workshop_cosmetics = {
                Title = "Sons of Odin Axe", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 10, remove = true }, -- Which Items should are required
                    { item = "steel", label = "Steel", count = 10, remove = true },
                    { item = "plastic", label = "Plastic", count = 10, remove = true },

                },
                AddItems = { -- Table for item add
                    { item = "weapon_kratos", label = "Sons of Odin Axe", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            advancedlockpick = {
                Title = "Advanced Lockpick", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                { item = "metalscrap", label = "Scrap Metal", count = 10, remove = true }, 
                { item = "plastic", label = "Plastic", count = 10, remove = true }, -- Which Items should are required
                { item = "lockpick", label = "lockpick", count = 2, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "advancedlockpick", label = "Advanced Lockpick", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            armor = {
                Title = "Armor", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                { item = "iron", label = "Iron", count = 22, remove = true }, 
                { item = "steel", label = "Steel", count = 33, remove = true }, -- Which Items should are required
                { item = "plastic", label = "Plastic", count = 44, remove = true }, -- Which Items should are required
                { item = "aluminum", label = "Aluminum", count = 11, remove = true }, -- Which Items should are required
                },
                AddItems = { -- Table for item add
                    { item = "armor", label = "Armor", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            pistol_ammo = {
                Title = "Pistol Ammo", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                { item = "metalscrap", label = "Scrap Metal", count = 15, remove = true }, 
                { item = "steel", label = "Steel", count = 15, remove = true }, -- Which Items should are required
                { item = "copper", label = "Copper", count = 15, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "pistol_ammo", label = "Pistol Ammo", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
        }
    },
    Crafting_default_11 = { -- Crafting Station police expemple / Marker
        Occupied = false, -- Dont change
        Label = "Bloodstone Mafia", --display label on help or target
        job = { name = "bloods", grade = 0 }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vector3(-79.36, 370.65, 111.46), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 335.84,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 0.0, Type = 0, Size = { x = 0.0, y = 0.0, z = 0.0 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-wrench",
        CraftingItems = { -- Table for all craftable Items
            workshop_cosmetics = {
                Title = "Bloodstone Dagger", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 10, remove = true }, -- Which Items should are required
                    { item = "steel", label = "Steel", count = 10, remove = true },
                    { item = "plastic", label = "Plastic", count = 10, remove = true },

                },
                AddItems = { -- Table for item add
                    { item = "weapon_tridagger", label = "Bloodstone Dagger", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            advancedlockpick = {
                Title = "Advanced Lockpick", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                { item = "metalscrap", label = "Scrap Metal", count = 10, remove = true }, 
                { item = "plastic", label = "Plastic", count = 10, remove = true }, -- Which Items should are required
                { item = "lockpick", label = "lockpick", count = 2, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "advancedlockpick", label = "Advanced Lockpick", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            armor = {
                Title = "Armor", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                { item = "iron", label = "Iron", count = 22, remove = true }, 
                { item = "steel", label = "Steel", count = 33, remove = true }, -- Which Items should are required
                { item = "plastic", label = "Plastic", count = 44, remove = true }, -- Which Items should are required
                { item = "aluminum", label = "Aluminum", count = 11, remove = true }, -- Which Items should are required
                },
                AddItems = { -- Table for item add
                    { item = "armor", label = "Armor", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            pistol_ammo = {
                Title = "Pistol Ammo", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                { item = "metalscrap", label = "Scrap Metal", count = 15, remove = true }, 
                { item = "steel", label = "Steel", count = 15, remove = true }, -- Which Items should are required
                { item = "copper", label = "Copper", count = 15, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "pistol_ammo", label = "Pistol Ammo", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
        }
    }, 
    Crafting_default_12 = { -- Crafting Station police expemple / Marker
        Occupied = false, -- Dont change
        Label = "RWS", --display label on help or target
        job = { name = "rws", grade = 0 }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vector3(120.19, -3217.55, 5.02), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 450.45,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 0.0, Type = 0, Size = { x = 0.0, y = 0.0, z = 0.0 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-wrench",
        CraftingItems = { -- Table for all craftable Items
            copper = {
                Title = "Copper", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "wiring", label = "Wiring", count = 10, remove = true }, -- Which Items should are required

                },
                AddItems = { -- Table for item add
                    { item = "copper", label = "Copper", count = 5 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            glass = {
                Title = "Glass", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                { item = "bottle", label = "Bottle", count = 10, remove = true }, 
                },
                AddItems = { -- Table for item add
                    { item = "glass", label = "Glass", count = 5 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            aluminum = {
                Title = "Aluminum", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 10, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                { item = "can", label = "Can", count = 10, remove = true }, 
                },
                AddItems = { -- Table for item add
                    { item = "aluminum", label = "Aluminum", count = 5 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
        }
    },
     Crafting_default_13 = { -- Crafting Station police expemple / Marker
        Occupied = false, -- Dont change
        Label = "Drafting table", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vector3(3435.62, 5175.08, 7.38), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `prop_tool_bench02`, Heading = 375.5,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 0.0, Type = 0, Size = { x = 0.0, y = 0.0, z = 0.0 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fa-solid fa-gun",
        CraftingItems = { -- Table for all craftable Items
        g27blueprint = {
                Title = "G27 Blueprint", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 1300, Add = 3 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "printerpaper", label = "Printer Paper", count = 5, remove = true }, 
                    { item = "glue", label = "Glue", count = 2, remove = true }, -- Which Items should are required
                    { item = "draftingpencil", label = "Drafting Pencil", count = 1, remove = true },
                    { item = "scissors", label = "Scissors", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "g27blueprint", label = "G27 Blueprint", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            snubblueprint = {
                Title = "Snubnose Blueprint", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 1500, Add = 5 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "printerpaper", label = "Printer Paper", count = 10, remove = true }, 
                    { item = "glue", label = "Glue", count = 4, remove = true }, -- Which Items should are required
                    { item = "draftingpencil", label = "Drafting Pencil", count = 2, remove = true },
                    { item = "scissors", label = "Scissors", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "snubblueprint", label = "Snubnose Blueprint", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            deagleblueprint = {
                Title = "Desert Eagle Blueprint", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 1700, Add = 7 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "printerpaper", label = "Printer Paper", count = 15, remove = true }, 
                    { item = "glue", label = "Glue", count = 6, remove = true }, -- Which Items should are required
                    { item = "draftingpencil", label = "Drafting Pencil", count = 4, remove = true },
                    { item = "scissors", label = "Scissors", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_eagle", label = "Desert Eagle", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
        }
    },
    Crafting_default_14 = { -- Crafting Station police expemple / Marker
        Occupied = false, -- Dont change
        Label = "Drafting table", --display label on help or target
        job = { name = pawn, grade = 0, }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vector3(169.24, -1315.92, 29.34), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `prop_tool_bench02`, Heading = 345.88,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 0.0, Type = 0, Size = { x = 0.0, y = 0.0, z = 0.0 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fa-solid fa-gun",
        CraftingItems = { -- Table for all craftable Items
        cryptostick = {
                Title = "cryptostick", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "plastic", label = "Plastic", count = 5, remove = true }, 
                    { item = "wiring", label = "Wiring", count = 2, remove = true }, -- Which Items should are required
                    { item = "electronickit", label = "Electronic Kit", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "cryptostick", label = "Cryptostick", count = 3 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },

            electronickit = {
                Title = "Electronic Kit", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fas fa-wrench", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 5, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "wiring", label = "Wiring", count = 3, remove = true }, 
                    { item = "plastic", label = "Plastic", count = 5, remove = true }, -- Which Items should are required
                    { item = "aluminum", label = "Aluminum", count = 5, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "electronickit", label = "Electronic Kit", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
        }
    },                                                       
}                                                                                     

