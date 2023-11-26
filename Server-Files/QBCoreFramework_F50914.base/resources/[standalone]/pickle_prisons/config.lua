Config = {}

Config.Debug = true

Config.Language = "en" -- Language to use.

Config.RenderDistance = 50.0 -- Model Display Radius.

Config.InteractDistance = 5.0 -- Interact Radius

Config.UseTarget = true -- When set to true, it'll use targeting instead of key-presses to interact.

Config.NoModelTargeting = false -- When set to true and using Target, it'll spawn a small invisible prop so you can third-eye when no entity is defined.

Config.Marker = { -- This will only be used if enabled, not using target, and no model is defined in the interaction.
    enabled = false,
    id = 20,
    scale = 0.20, 
    color = {255, 133, 85, 255}
}

Config.NavigationDisplay = true -- This will only be used if enabled, this is used to help the user find the activity point.

Config.ServeTimeOffline = false -- When set to true, players can serve their time offline, lowering the time by how long they were gone.

Config.EnableSneakout = true -- When set to true, anytime the player is outside the prison without being part of a breakout, they are freed instead of being brought back.

Config.XPEnabled = false-- When set to true, this will enable Pickle's XP compatibility, and enable xp rewards.

Config.XPCategories = { -- Registered XP Types for Pickle's XP.
    ["strength"] = {
        label = "Strength", 
        xpStart = 1000, 
        xpFactor = 0.2, 
        maxLevel = 100
    },
    ["cooking"] = {
        label = "Cooking", 
        xpStart = 1000, 
        xpFactor = 0.2, 
        maxLevel = 100
    },
}

Config.Default = {
    permissions = { -- Permissions settings for jailing, unjailing, and other things.
        jail = {
            jobs = {["police"] = 0},  --["job_name"] = rank_number, ["job_name2"] = rank_number2
            groups = {"admin", "god"} -- "group1", "group2"
        },
        unjail = {
            jobs = {["police"] = 0},
            groups = {"admin", "god"}
        },
        alert = {
            jobs = {["police"] = 0},
            groups = {"admin", "god"}
        },
    },
    outfit = { -- Prisoner outfits to set when in jail. Please change this according to your server's clothing numbers.
        male = {
            ['arms'] = 0,
            ['tshirt_1'] = 57,
            ['tshirt_2'] = 0,
            ['torso_1'] = 494,
            ['torso_2'] = 0,
            ['bproof_1'] = 0,
            ['bproof_2'] = 0,
            ['decals_1'] = 0,
            ['decals_2'] = 0,
            ['chain_1'] = 0,
            ['chain_2'] = 0,
            ['pants_1'] = 11,
            ['pants_2'] = 0,
            ['shoes_1'] = 7,
            ['shoes_2'] = 0,
            ['helmet_1'] = 0,
            ['helmet_2'] = 0,
        },
        female = {
            ['arms'] = 11,
            ['tshirt_1'] = 1,
            ['tshirt_2'] = 0,
            ['torso_1'] = 518,
            ['torso_2'] = 0,
            ['bproof_1'] = 0,
            ['bproof_2'] = 0,
            ['decals_1'] = 0,
            ['decals_2'] = 0,
            ['chain_1'] = 0,
            ['chain_2'] = 0,
            ['pants_1'] = 13,
            ['pants_2'] = 0,
            ['shoes_1'] = 175,
            ['shoes_2'] = 0,
            ['helmet_1'] = 0,
            ['helmet_2'] = 0,
        }
    }
}

Config.Activities = {
    ["clean"] = {
        label = "Cleaning Prison", -- Will have Start / Stop in front of interaction.
        sections = { -- Sections for this activity.
            ["sweep"] = {
                label = "Sweep Floor",
                rewards = { -- Rewards for completing the section.
                    {type = "cash", amount = 05},
                },
                process = function(data) -- Section function. 
                    local ped = PlayerPedId()
                    FreezeEntityPosition(ped, true)
                    SetEntityCoords(ped, data.coords.x, data.coords.y, data.coords.z -1.0)
                    SetEntityHeading(ped, data.heading)
                    PlayAnim(ped, "anim@amb@drug_field_workers@rake@male_a@base", "base", -8.0, 8.0, -1, 1, 1.0)
                    local prop = CreateProp(`prop_tool_broom`, data.coords.x, data.coords.y, data.coords.z -1.0, true, true, false)
                    local off, rot = vector3(-0.01, 0.04, -0.03), vector3(0.0, 0.0, 0.0)
                    AttachEntityToEntity(prop, ped, GetPedBoneIndex(ped, 28422), off.x, off.y, off.z, rot.x, rot.y, rot.z, false, false, false, true, 2, true)
                    Wait(3000)
                    FreezeEntityPosition(ped, false)
                    ClearPedTasks(ped)
                    DeleteEntity(prop)
                    return true
                end
            },
        }
    },
    ["kitchen"] = {
        label = "Kitchen Job", -- Will have Start / Stop in front of interaction.
        sections = { -- Sections for this activity.
            ["clean"] = {
                label = "Clean The Table",
                rewards = nil, -- Rewards for completing the section.
                process = function(data) -- Section function. 
                    local ped = PlayerPedId()
                    FreezeEntityPosition(ped, true)
                    SetEntityCoords(ped, data.coords.x, data.coords.y, data.coords.z -1.0)
                    SetEntityHeading(ped, data.heading)
                    PlayAnim(ped, "timetable@floyd@clean_kitchen@base", "base", -8.0, 8.0, -1, 1, 1.0)
                    local prop = CreateProp(`prop_sponge_01`, data.coords.x, data.coords.y, data.coords.z + 1.0, true, true, false)
                    local off, rot = vector3(-0.01, 0.04, -0.03), vector3(0.0, 0.0, 0.0)
                    AttachEntityToEntity(prop, ped, GetPedBoneIndex(ped, 28422), off.x, off.y, off.z, rot.x, rot.y, rot.z, false, false, false, true, 2, true)
                    Wait(3000)
                    FreezeEntityPosition(ped, false)
                    ClearPedTasks(ped)
                    DeleteEntity(prop)
                    return true
                end
            },
            ["delivery"] = {
                label = "Deliver Food",
                rewards = {-- Rewards for completing the section.
                    {type = "cash", amount = 200},
                    {type = "xp", name = "cooking", amount = 1000},  
                },
                process = function(data) -- Section function. 
                    local ped = PlayerPedId()
                    local prop = GetActivityEntity("tray")
                    if not object then 
                        prop = CreateProp(`prop_food_tray_03`, data.coords.x, data.coords.y, data.coords.z + 1.0, true, true, false)
                        AddActivityEntity("tray", prop)
                        local off, rot = vector3(0.0, 0.0, 0.0), vector3(0.0, 0.0, 0.0)
                        AttachEntityToEntity(prop, ped, GetPedBoneIndex(ped, 28422), off.x, off.y, off.z, rot.x, rot.y, rot.z, false, false, false, true, 2, true)
                    end
                    FreezeEntityPosition(ped, true)
                    SetEntityHeading(ped, data.heading)
                    PlayAnim(ped, "mini@repair", "fixing_a_ped", -8.0, 8.0, -1, 1, 1.0)
                    Wait(500)
                    DetachEntity(prop, true, true)
                    FreezeEntityPosition(prop, true)
                    PlaceObjectOnGroundProperly(prop)
                    SetEntityHeading(prop, data.heading)
                    Wait(1000)
                    FreezeEntityPosition(ped, false)
                    ClearPedTasks(ped)
                    DeleteActivityEntity("tray")
                    return true
                end
            },
            ["sweep"] = {
                label = "Sweep The Floors",
                rewards = nil, -- Rewards for completing the section.
                process = function(data) -- Section function. 
                    local ped = PlayerPedId()
                    FreezeEntityPosition(ped, true)
                    SetEntityCoords(ped, data.coords.x, data.coords.y, data.coords.z -1)
                    SetEntityHeading(ped, data.heading)
                    PlayAnim(ped, "anim@amb@drug_field_workers@rake@male_b@base", "base", -8.0, 8.0, -1, 1, 1.0)
                    local prop = CreateProp(`prop_tool_broom`, data.coords.x, data.coords.y, data.coords.z -1.0, true, true, false)
                    local off, rot = vector3(-0.01, 0.04, -0.03), vector3(0.0, 0.0, 0.0)
                    AttachEntityToEntity(prop, ped, GetPedBoneIndex(ped, 28422), off.x, off.y, off.z, rot.x, rot.y, rot.z, false, false, false, true, 2, true)
                    Wait(3000)
                    FreezeEntityPosition(ped, false)
                    ClearPedTasks(ped)
                    DeleteEntity(prop)
                    return true
                end
            },
            ["garbage"] = {
                label = "Take Out The Garbage",
                rewards = nil, -- Rewards for completing the section.
                process = function(data) -- Section function. 
                    local ped = PlayerPedId()
                    FreezeEntityPosition(ped, true)
                    SetEntityCoords(ped, data.coords.x, data.coords.y, data.coords.z)
                    SetEntityHeading(ped, data.heading)
                    PlayAnim(ped, "missfbi4prepp1", "_idle_garbage_man",  0.0, 0.0400, -0.0200, 0.0)
                    local prop = CreateProp(`prop_cs_street_binbag_01`, data.coords.x, data.coords.y, data.coords.z, true, true, false)
                    local off, rot = vector3(-0.01, 0.04, -0.03), vector3(0.0, 0.0, 0.0)
                    AttachEntityToEntity(prop, ped, GetPedBoneIndex(ped, 28422), off.x, off.y, off.z, rot.x, rot.y, rot.z, false, false, false, true, 2, true)
                    Wait(3000)
                    FreezeEntityPosition(ped, false)
                    ClearPedTasks(ped)
                    DeleteEntity(prop)
                    return true
                end
            },
        }
    },
}

Config.UnrevokedItems = {} -- Items to skip when confiscating the player's inventory.


Config.Breakout = {
    alert = true, -- This will start the siren, and notify all law enforcement with permission.
    time = 20, -- In seconds, at the end of this time, the tunnel will close for other people to climb into.
    model = {modelType = "prop", hash = `prop_rock_1_i`, offset = vector3(0.0, 0.0, -0.2)},
    required = {
        {type = "item", name = "shovel", amount = 1},
    },
    process = function(data)
        local ped = PlayerPedId()
        FreezeEntityPosition(ped, true)
        SetEntityCoords(ped, data.coords.x, data.coords.y, data.coords.z - 1.0)
        SetEntityHeading(ped, data.heading)
        PlayAnim(ped, "random@burial", "a_burial", -8.0, 8.0, -1, 1, 1.0)
        local prop = CreateProp(`prop_tool_shovel`, data.coords.x, data.coords.y, data.coords.z, true, true, false)
        local off, rot = vector3(0.0, 0.0, 0.0), vector3(0.0, 0.0, 0.0)
        AttachEntityToEntity(prop, ped, GetPedBoneIndex(ped, 28422), off.x, off.y, off.z, rot.x, rot.y, rot.z, false, false, false, true, 2, true)
        local result
        for i=1, 3 do 
            result = lib.skillCheck({'easy', 'medium', 'easy'}, {'e'})
            if not result then
                FreezeEntityPosition(ped, false)
                ClearPedTasks(ped)
                DeleteEntity(prop)
                exports['ps-dispatch']:PrisonBreak()
                exports['qs-inventory']:RemoveItem(source, shovel, 1)
                break
            end
            Wait(1000)
            FreezeEntityPosition(ped, false)
            ClearPedTasks(ped)
            DeleteEntity(prop)
        end
        return result
    end
}

Config.Alerts = function(index, disabled)
    local prison = Config.Prisons[index]
    if (not disabled) then
        ShowNotification("The prison siren has been activated at " .. prison.label .. "!")
    else
        ShowNotification("The prison siren has been turned-off at " .. prison.label .. ".")
    end
end

Config.Prisons = {
    ["Default"] = { -- Default is used as the prison location for players when not defined otherwise.
        label = "Los Santos Prison", -- Prison label for notifications & texts.
        coords = vector3(685.4, 128.13, 80.75), -- Location of the prison.
        radius = 250.0, -- This is the radius that prisoners will be freed at when exceeding this number. 
        permissions = nil, -- When nil, defaults to Config.Default.permissions.  
        outfit = nil, -- When nil, defaults to Config.Default.outfit.  
        blip = {
            label = "Los Santos Prison",
            coords = vector3(679.51, 74.03, 83.21),
            id = 188,
            color = 44,
            scale = 0.85,
        },
        hospital = {
            coords = vector3(724.28, 160.84, 80.72),
            heading =  164.63,
        },
        release = {
            coords = vector3(679.53, 73.57, 83.22),
            heading = 235.61,
        },
        breakout = {
            start = {
                coords = vector3(705.24, 166.36, 78.86),
                heading = 250.75,
            }, 
            enter = {
                coords = vector3(-481.46, 1895.07, 119.67),
                heading = 92.11,
            },
            leave = {
                coords = vector3(-565.17, 1886.14, 123.04),
                heading = 295.75,
            },
            finish = {
                coords = vector3(947.88, -206.14, 73.21),
                heading = 293.3,
            },
        },
        activities = {
            {
                name = "workout",
                model = {hash = `u_m_y_prisoner_01`},
                coords = vector3(701.22, 91.86, 80.75),
                heading = 71.21,
                randomSection = true, -- Chooses random section when true, or top-to-bottom when false.
                sections = {
                    {
                        name = "lift",
                        coords = vector3(685.63, 91.82, 80.75),
                        heading = 327.74,
                    },
                    {
                        name = "situp",
                        coords = vector3(682.66, 95.02, 80.75),
                        heading =  274.04,
                    },
                    {
                        name = "pushup",
                        coords = vector3(691.18, 97.25, 80.75),
                        heading = 87.89,
                    },
                    {
                        name = "pullup",
                        coords = vector3(696.11, 94.1, 80.50),
                        heading = 325.45,
                    },
                    {
                        name = "yoga",
                        coords = vector3(682.69, 102.49, 80.75),
                        heading = 266.91,
                    },
                }
            },
            {
                name = "clean",
                model = {hash = `u_m_y_prisoner_01`},
                coords = vector3(671.518, 144.981, 80.752),
                heading = 111.6702,
                randomSection = true, -- Chooses random section when true, or top-to-bottom when false.
                sections = {
                    {
                        name = "sweep",
                        coords = vector3(668.84, 95.07, 80.72), -- Location of the gym
                        heading = 269.48, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords = vector3(665.47, 95.69, 83.94), -- Location of the mech shop.
                        heading = 353.67, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords = vector3(653.57, 97.68, 84.08), -- Location of trash.
                        heading = 358.27, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords = vector3(661.26, 96.57, 80.72), -- Location of laundry.
                        heading =  13.4, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords = vector3(648.96, 93.1, 80.72), -- Location of the gym
                        heading = 102.68, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords = vector3(652.59, 97.57, 80.72), -- Location of the gym
                        heading = 80.13, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords = vector3(657.73, 89.79, 80.72), -- Location of the gym
                        heading = 298.17, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords = vector3(652.22, 84.91, 82.27), -- Location of the gym
                        heading = 83.76, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords = vector3(652.93, 69.58, 83.1), -- Location of the gym
                        heading = 354.35, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords = vector3(684.3, 104.65, 80.75), -- Location of the gym
                        heading = 195.35, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords = vector3(698.71, 98.18, 80.75), -- Location of the gym
                        heading = 236.07, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords = vector3(711.61, 111.52, 80.75), -- Location of the gym
                        heading = 287.9, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords = vector3(723.01, 125.65, 80.75), -- Location of the gym
                        heading = 340.55, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords = vector3(727.35, 146.99, 80.75), -- Location of the gym
                        heading = 297.1, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords = vector3(718.13, 140.88, 80.75), -- Location of the gym
                        heading = 144.19, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords =  vector3(696.18, 160.18, 80.75), -- Location of the gym
                        heading = 19.61, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords =  vector3(668.65, 152.27, 80.75), -- Location of the gym
                        heading = 103.24, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords = vector3(684.39, 123.14, 80.75), -- Location of the gym
                        heading = 347.69, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords = vector3(696.72, 167.27, 80.74), -- Location of the gym
                        heading = 247.9, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords = vector3(677.22, 175.56, 80.74), -- Location of the gym
                        heading = 61.29, -- Direction to face the player upon spawn.
                    },
                }
            },
            {
                name = "kitchen",
                model = {hash = `s_m_y_chef_01`},
                coords = vector3(657.92, 126.84, 80.73),
                heading = 338.81,
                randomSection = true, -- Chooses random section when true, or top-to-bottom when false.
                sections = {
                    {
                        name = "clean",
                        coords = vector3(666.66, 144.48, 80.73), -- Location of the cell.
                        heading = 248.09, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "delivery",
                        coords = vector3(663.34, 140.8, 80.73), -- Location of the cell.
                        heading = 159.81, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords = vector3(666.07, 132.71, 80.73), -- Location of the cell.
                        heading = 247.36, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "garbage",
                        coords = vector3(667.89, 136.04, 80.73), -- Location of the cell.
                        heading = 243.68, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "sweep",
                        coords = vector3(664.63, 140.44, 80.73), -- Location of the cell.
                        heading = 339.64, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "clean",
                        coords = vector3(663.13, 137.35, 80.73), -- Location of the cell.
                        heading = 70.84, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "delivery",
                        coords = vector3(664.03, 144.35, 80.73), -- Location of the cell.
                        heading = 339.69, -- Direction to face the player upon spawn.
                    },
                    {
                        name = "garbage",
                        coords = vector3(663.95, 147.56, 80.73), -- Location of the cell.
                        heading = 339.65, -- Direction to face the player upon spawn.
                    },
                }
            },
        },
        cells = {
            {
                coords = vector3(665.486, 91.566, 80.718), -- Location of the cell 4. 
                heading = 353.998, -- Direction to face the player upon spawn.
                size = 1.5, -- Size to check to see if any players are inside the cell.
            },
            {
                coords = vector3(669.129, 91.918, 80.718), -- Location of the cell 5.
                heading = 354.515, -- Direction to face the player upon spawn.
                size = 1.5, -- Size to check to see if any players are inside the cell.
            },
            {
                coords = vector3(673.056, 91.863, 80.718), -- Location of the cell 6.
                heading = 5.745, -- Direction to face the player upon spawn.
                size = 1.5, -- Size to check to see if any players are inside the cell.
            },
            {
                coords = vector3(676.747, 92.141, 80.718), -- Location of the cell.
                heading = 358.19, -- Direction to face the player upon spawn.
                size = 1.5, -- Size to check to see if any players are inside the cell.
            },
            {
                coords = vector3(676.819, 92.071, 83.942), -- Location of the cell.
                heading = 2.692, -- Direction to face the player upon spawn.
                size = 1.5, -- Size to check to see if any players are inside the cell.
            },
            {
                coords = vector3(672.979, 92.045, 83.942), -- Location of the cell.
                heading = 341.275, -- Direction to face the player upon spawn.
                size = 1.5, -- Size to check to see if any players are inside the cell.
            },
            {
                coords = vector3(673.016, 92.164, 83.942), -- Location of the cell.
                heading = 347.879, -- Direction to face the player upon spawn.
                size = 1.5, -- Size to check to see if any players are inside the cell.
            },
            {
                coords = vector3(669.233, 91.933, 83.942), -- Location of the cell. 
                heading = 353.824, -- Direction to face the player upon spawn.
                size = 1.5, -- Size to check to see if any players are inside the cell.
            },
            {
                coords = vector3(665.745, 91.645, 83.942), -- Location of the cell.
                heading = 2.805, -- Direction to face the player upon spawn.
                size = 1.5, -- Size to check to see if any players are inside the cell.
            },
        },
        stores = {
            {
                label = "Prison Commissary",
                coords = vector3(661.4, 93.55, 80.72),
                heading = 357.4,
                model = {hash = `s_m_m_prisguard_01`},
                catalog = {
                    {
                        name = "burger",
                        description = "A great hamburger that is slightly edible.",
                        amount = 1,
                        required = {
                            {type = "cash", amount = 100},
                        }
                    },
                    {
                        name = "water_bottle",
                        description = "Refreshing sink water that'll quench your thirst.",
                        amount = 1,
                        required = {
                            {type = "cash", amount = 100},
                        }
                    },
                }
            },
            -- {
            --     label = "Prison Plug",
            --     coords = vector3(705.17, 163.79, 80.74),
            --     heading = 52.67,
            --     model = {hash = `s_m_y_prisoner_01`},
            --     catalog = {
            --         {
            --             name = "shovel",
            --             description = "Maybe I could use this to escape...",
            --             amount = 1,
            --             required = {
            --                 {type = "item", name = "wood", amount = 1},
            --                 {type = "item", name = "metal", amount = 1},
            --                 {type = "item", name = "rope", amount = 1},
            --             }
            --         },
            --     }
            -- },
        },
        lootables = {
            {
                label = "Wood", -- Lootable Label.
                coords = vector3(662.7, 148.06, 80.73),
                heading = 279.83,
                model = {modelType = "prop", hash = 'prop_boxcar5_handle'},
                regenTime = 5, -- Time after redemption it can be redeemed again.
                rewards = { -- Rewards for redeeming the lootable.
                    {type = "item", name = "wood", amount = 1},
                },
            },
            {
                label = "Metal",
                coords = vector3(737.26, 136.38, 82.39),
                heading = 59.83,
                model = {modelType = "prop", hash = 'v_ilev_out_serv_sign'},
                regenTime = 5, -- Time after redemption it can be redeemed again.
                rewards = { -- Rewards for redeeming the lootable.
                    {type = "item", name = "metal", amount = 1},
                },
            },
            {
                label = "Rope",
                coords = vector3(642.88, 93.02, 84.08),
                heading = 278.39,
                model = {modelType = "prop", hash = 'prop_ftowel_07'},
                regenTime = 5, -- Time after redemption it can be redeemed again.
                rewards = { -- Rewards for redeeming the lootable.
                    {type = "item", name = "rope", amount = 1},
                },
            },
        }
    }
}