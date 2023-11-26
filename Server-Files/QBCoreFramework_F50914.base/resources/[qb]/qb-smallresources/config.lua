Config = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add 'setr UseTarget true' to use this and just that from true to false or the other way around)

-- To make this simple. Everything you need is in the config, except for discord, weapon drops, vehicle classes for cruise, hands up disabled keys, and recoil

Config.AFK = {
    ignoredGroups = {
        ['mod'] = true,
        ['admin'] = true,
        ['god'] = true
    },
    secondsUntilKick = 1800, -- AFK Kick Time Limit (in seconds)
    kickInCharMenu = false -- Set to true if you want to kick players for being AFK even when they are in the character menu.
}

Config.HandsUp = {
    command = 'hu',
    keybind = 'X',
}

Config.Binoculars = {
    fov_max = 70.0,
    fov_min = 5.0, -- max zoom level (smaller fov is more zoom)
    zoomspeed = 10.0, -- camera zoom speed
    speed_lr = 8.0, -- speed by which the camera pans left-right
    speed_ud = 8.0, -- speed by which the camera pans up-down
    storeBinoclarKey = 177
}

-- Whether to enable or disable dispatch services
Config.DispatchServices = {
    [1] = false, -- Police Vehicles
    [2] = false, -- Police Helicopters
    [3] = true, -- Fire Department Vehicles
    [4] = false, -- Swat Vehicles
    [5] = false, -- Ambulance Vehicles
    [6] = false, -- Police Motorcycles
    [7] = false, -- Police Backup
    [8] = false, -- Police Roadblocks
    [9] = false, -- PoliceAutomobileWaitPulledOver
    [10] = false, -- PoliceAutomobileWaitCruising
    [11] = true, -- Gang Members
    [12] = false, -- Swat Helicopters
    [13] = false, -- Police Boats
    [14] = false, -- Army Vehicles
    [15] = true, -- Biker Backup
}

-- Enable or disable the wanted level
Config.EnableWantedLevel = false

-- To Set This Up visit https://forum.cfx.re/t/how-to-updated-discord-rich-presence-custom-image/157686
Config.Discord = {
    ["IsEnabled"] = false, -- If set to true, then discord rich presence will be enabled
    ["ApplicationId"] = '00000000000000000', -- The discord application id
    ["IconLarge"] = 'logo_name', -- The name of the large icon
    ["IconLargeHoverText"] = 'This is a Large icon with text', -- The hover text of the large icon
    ["IconSmall"] = 'small_logo_name', -- The name of the small icon
    ["IconSmallHoverText"] = 'This is a Small icon with text', -- The hover text of the small icon
    ["UpdateRate"] = 60000, -- How often the player count should be updated
    ["ShowPlayerCount"] = true, -- If set to true the player count will be displayed in the rich presence
    ["MaxPlayers"] = 48, -- Maximum amount of players
    ["Buttons"] = {
        {
            text = 'First Button!',
            url = 'fivem://connect/localhost:30120'
        },
        {
            text = 'Second Button!',
            url = 'fivem://connect/localhost:30120'
        }
    }
}

Config.Density = {
    ['parked'] = 0.5,
    ['vehicle'] = 0.5,
    ['multiplier'] = 0.5,
    ['peds'] = 1.5,
    ['scenario'] = 0.5,
}

Config.Stun = {
    active = false,
    min = 4000,
    max = 7000
}

Config.RemovePistolWhipping = true  -- Removes Pistol Whipping

Config.Cruise = 'mp/h'
Config.IdleCamera = true
Config.disableHandsupControls = {24, 25, 47, 58, 59, 63, 64, 71, 72, 75, 140, 141, 142, 143, 257, 263, 264}
Config.DisableAmbience = false -- Disabled distance sirens, distance car alarms, etc
Config.HarnessUses = 20
Config.DamageNeeded = 100.0 -- vehiclepush 0-1000
Config.EnableProne = false -- prone isnt recomended at this time
Config.MapText = "Server Name" -- This is the name / text shown above the map

Config.Disable = {
    ignoreWeapons = {
        [`WEAPON_SNIPERRIFLE`] = true,
        [`WEAPON_HEAVYSNIPER`] = true,
        [`WEAPON_HEAVYSNIPER_MK2`] = true,
        [`WEAPON_MARKSMANRIFLE`] = true,
        [`WEAPON_MARKSMANRIFLE_MK2`] = true,
    },
    disableHudComponents = { 1, 2, 3, 4, 7, 9, 13, 19, 20, 21, 22 }, -- Hud Components: https://docs.fivem.net/natives/?_0x6806C51AD12B83B8
    disableControls = { 37 }, -- Controls: https://docs.fivem.net/docs/game-references/controls/
    displayAmmo = false
}

Config.ConsumablesEat = {

    ["sandwich"] = math.random(35, 54),
    ["tosti"] = math.random(40, 50),
    ["twerks_candy"] = math.random(35, 54),
    ["snikkel_candy"] = math.random(40, 50),
    ["atomic"] = math.random(35, 54),
    ["atomicfry"] = math.random(35, 54),
    ["baconatom"] = math.random(35, 54),
    ["carnetaco"] = math.random(35, 54),
    ["shrimp_tacos"] = math.random(35, 54),
    ["doggy_treat"] = math.random(35, 54),
    ["quesadilla"] = math.random(35, 54),
    ["apple"] = math.random(10, 20),
    ["beef"] = math.random(35, 50),
    ["slicedpie"] = math.random(10, 20),
    ["corncob"] = math.random(25, 40),
    ["canofcorn"] = math.random(35, 50),
    ["grapes"] = math.random(10, 20),
    ["greenpepper"] = math.random(10, 20),
    ["chillypepper"] = math.random(10, 20),
    ["tomato"] = math.random(10, 20),
    ["tomatopaste"] = math.random(25, 40),
    ["cooked_bacon"] = math.random(35, 50),
    ["cooked_sausage"] = math.random(35, 50),
    ["cooked_pork"] = math.random(35, 50),
    ["cooked_ham"] = math.random(35, 50),
    ["grain"] = math.random(35, 50),
    ["driedrice"] = math.random(35, 50),
    ["rice"] = math.random(35, 50),
    ["doughnut"] = math.random(35, 50),
    ["chips"] = math.random(35, 50),
    ["chowyeekow"] = math.random(35, 50),
    ["jiaozi"] = math.random(35, 50),
    ["shrimprice"] = math.random(35, 50),
    ["chickenrice"] = math.random(35, 50),
    ["porkrice"] = math.random(35, 50),
    ["beefrice"] = math.random(35, 50),
    ["crispyflounder"] = math.random(35, 50),
    ["braisedpuffer"] = math.random(35, 50),

}


Config.ConsumablesDrink = {
    ["water_bottle"] = math.random(35, 54),
    ["kurkakola"] = math.random(35, 54),
    ["coffee"] = math.random(40, 50),
    ["dumbbitch"] = math.random(40, 50),
    ["apple_juice"] = math.random(25, 45),
    ["grapejuice"] = math.random(25, 45),
    ["hotsauce"] = math.random(10, 15),
    ["oolong"] = math.random(10, 15),
    ["yujatea"] = math.random(10, 15),
    ["kombucha"] = math.random(10, 15),

}

Config.ConsumablesAlcohol = {
    ["whiskey"] = math.random(20, 30),
    ["beer"] = math.random(30, 40),
    ["vodka"] = math.random(20, 40),
    ["modelo"] = math.random(20, 40),
    ["michelada"] = math.random(20, 40),
    ["mead"] = math.random(20, 40),
    ["mead_orange"] = math.random(20, 40),
    ["mead_lime"] = math.random(20, 40),
    ["mead_lemon"] = math.random(20, 40),
    ["mead_peach"] = math.random(20, 40),
    ["mead_apple"] = math.random(20, 40),
    ["greendragon"] = math.random(20, 40),


}

-- Custom Consumables hand bones
-- 18905 left hand
-- 57005 right hand
Config.ConsumablesCustom = {
    -- ['newitem'] = {
    --     ['progress'] = {
    --         label = 'Using Item...',
    --         time = 5000
    --     },
    --     ['animation'] = {
    --         animDict = "amb@prop_human_bbq@male@base",
    --         anim = "base",
    --         flags = 8,
    --     },
    --     ['prop'] = {
    --         model = false,
    --         bone = false,
    --         coords = false, -- vector 3 format
    --         rotation = false, -- vector 3 format
    --     },
    --     ['replenish'] = {
    --         type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
    --         replenish = math.random(20, 40),
    --         isAlcohol = false, -- if you want it to add alcohol count
    --         event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
    --         server = false -- if the event above is a server event
    --     }
    -- }
}

ConsumablesFireworks = {
    "firework1",
    "firework2",
    "firework3",
    "firework4"
}

Config.FireworkTime = 5 -- seconds before it goes off

Config.BlacklistedScenarios = {
    ['TYPES'] = {
        "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
        "WORLD_VEHICLE_MILITARY_PLANES_BIG",
        "WORLD_VEHICLE_AMBULANCE",
        "WORLD_VEHICLE_POLICE_NEXT_TO_CAR",
        "WORLD_VEHICLE_POLICE_CAR",
        "WORLD_VEHICLE_POLICE_BIKE",
    },
    ['GROUPS'] = {
        2017590552,
        2141866469,
        1409640232,
        'ng_planes',
    }
}

Config.BlacklistedVehs = {
    
    ['SHAMAL'] = true,
    ['LUXOR'] = true,
    ['LUXOR2'] = true,
    ['JET'] = true,
    ['LAZER'] = true,
    ['BUZZARD'] = true,
    ['BUZZARD2'] = true,
    ['ANNIHILATOR'] = true,
    ['SAVAGE'] = true,
    ['TITAN'] = true,
    ['RHINO'] = true,
    ['FIRETRUK'] = true,
    ['MULE'] = true,
    ['MAVERICK'] = true,
    ['BLIMP'] = true,
    ['AIRTUG'] = true,
    ['CAMPER'] = true,
    ['HYDRA'] = true,
    ['OPPRESSOR'] = true,
    ['insurgent3'] = true,
    ['tampa3'] = true,
    ['halftrack'] = true,
    ['akula'] = true,
    ['barrage'] = true,
    ['khanjali'] = true,
    ['caracara'] = true,
    ['blimp3'] = true,
    ['menacer'] = true,
    ['oppressor2'] = true,
    ['scramjet'] = true,
    ['strikeforce'] = true,
    ['cerberus'] = true,
    ['cerberus2'] = true,
    ['cerberus3'] = true,
    ['scarab'] = true,
    ['scarab2'] = true,
    ['scarab3'] = true,
    ['rrocket'] = true,
    ['ruiner2'] = true,
    ['deluxo'] = true,
    ['cargoplane2'] = true,
    ['voltic2'] = true,
    ['policeb'] = true,
    ['armytanker'] = true,
    ['barracks'] = true,
    ['barracks2'] = true,
    ['dune2'] = true,
    ['cargobob'] = true,
    ['cargobob2'] = true,
    ['cargobob3'] = true,
    ['cargobob4'] = true,
    ['miljet'] = true,
    ['besra'] = true,
    ['dune4'] = true,
    ['dune5'] = true, 
    ['phantom2'] = true,
    ['boxville5'] = true,
    ['technical2'] = true,
    ['technical3'] = true,
    ['apc'] = true,
    ['trailersmall2'] = true,
    ['vigilante'] = true,
    ['tula'] = true,
    ['hunter'] = true,
    ['rogue'] = true,
    ['pyro'] = true,
    ['molotok'] = true,
    ['nokota'] = true,
    ['starling'] = true,
    ['mogul'] = true,
    ['howard'] = true,
    ['barrage'] = true,
    ['volatol'] = true,
    ['akula'] = true,
    ['chernobog'] = true,
    ['avenger'] = true, 
    ['avenger2'] = true,
    ['minitank'] = true,
    ['annihilator2'] = true,
    ['alkonost'] = true,
    ['patrolboat'] = true,
}

Config.BlacklistedWeapons = {
    -- Melee
    ['weapon_dagger'] = true,
	['weapon_bat'] = true,
	['weapon_bottle'] = true,
	['weapon_crowbar'] = true,
	['weapon_flashlight'] = true,
	['weapon_golfclub'] = true,
	['weapon_hammer'] = true,
	['weapon_hatchet'] = true,
	['weapon_knuckle'] = true,
	['weapon_knife'] = true,
	['weapon_machete'] = true,
	['weapon_switchblade'] = true,
	['weapon_nightstick'] = true,
	['weapon_wrench'] = true,
	['weapon_battleaxe'] = true,
	['weapon_poolcue'] = true,
	['weapon_stone_hatchet'] = true,
	['weapon_candycane'] = true,
    -- Handguns
    ['weapon_pistol'] = true,
    ['weapon_pistol_mk2'] = true,
    ['weapon_combatpistol'] = true,
    ['weapon_appistol'] = true,
    ['weapon_pistol50'] = true,
    ['weapon_snspistol'] = true,
    ['weapon_snspistol_mk2'] = true,
    ['weapon_heavypistol'] = true,
    ['weapon_vintagepistol'] = true,
    ['weapon_flaregun'] = true,
    ['weapon_marksmanpistol'] = true,
    ['weapon_revolver'] = true,
    ['weapon_revolver_mk2'] = true,
    ['weapon_doubleaction'] = true,
    ['weapon_raypistol'] = true,
    ['weapon_ceramicpistol'] = true,
    ['weapon_navyrevolver'] = true,
    ['weapon_gadgetpistol'] = true,
    ['weapon_pistolxm3'] = true,
    -- Submachine Guns
    ['weapon_microsmg'] = true,
    ['weapon_smg'] = true,
    ['weapon_smg_mk2'] = true,
    ['weapon_assaultsmg'] = true,
    ['weapon_combatpdw'] = true,
    ['weapon_machinepistol'] = true,
    ['weapon_minismg'] = true,
    ['weapon_raycarbine'] = true,
    -- Shotguns
    ['weapon_pumpshotgun'] = true,
    ['weapon_pumpshotgun_mk2'] = true,
    ['weapon_sawnoffshotgun'] = true,
    ['weapon_assaultshotgun'] = true,
    ['weapon_bullpupshotgun'] = true,
    ['weapon_musket'] = true,
    ['weapon_heavyshotgun'] = true,
    ['weapon_dbshotgun'] = true,
    ['weapon_autoshotgun'] = true,
    ['weapon_combatshotgun'] = true,
    -- Assault Rifles
    ['weapon_assaultrifle'] = true,
    ['weapon_assaultrifle_mk2'] = true,
    ['weapon_carbinerifle'] = true,
    ['weapon_carbinerifle_mk2'] = true,
    ['weapon_advancedrifle'] = true,
    ['weapon_specialcarbine'] = true,
    ['weapon_specialcarbine_mk2'] = true,
    ['weapon_bullpuprifle'] = true,
    ['weapon_bullpuprifle_mk2'] = true,
    ['weapon_compactrifle'] = true,
    ['weapon_militaryrifle'] = true,
    ['weapon_heavyrifle'] = true,
    -- Light Machine Guns
    ['weapon_mg'] = true,
    ['weapon_combatmg'] = true,
    ['weapon_combatmg_mk2'] = true,
    ['weapon_gusenberg'] = true,		
    -- Sniper Rifles
    ['weapon_sniperrifle'] = true,
    ['weapon_heavysniper'] = true,
    ['weapon_heavysniper_mk2'] = true,
    ['weapon_marksmanrifle'] = true,
    ['weapon_marksmanrifle_mk2'] = true,
    ['weapon_remotesniper'] = true,
    -- Heavy Weapons
    ['weapon_rpg'] = true,
    ['weapon_grenadelauncher'] = true,
    ['weapon_grenadelauncher_smoke'] = true,
    ['weapon_minigun'] = true,
    ['weapon_firework'] = true,
    ['weapon_railgun'] = true,
    ['weapon_railgunxm3'] = true,
    ['weapon_hominglauncher'] = true,
    ['weapon_compactlauncher'] = true,
    ['weapon_rayminigun'] = true,
    ['weapon_emplauncher'] = true,
    -- Throwables
    ['weapon_grenade'] = true,
    ['weapon_bzgas'] = true,
    ['weapon_molotov'] = true,
    ['weapon_stickybomb'] = true,
    ['weapon_proxmine'] = true,
    ['weapon_pipebomb'] = true,
    ['weapon_ball'] = true,
    ['weapon_smokegrenade'] = true,
    ['weapon_flare'] = true

}

Config.BlacklistedPeds = {
    ['s_m_y_ranger_01'] = true,
    ['s_m_y_sheriff_01'] = true,
    ['s_m_y_cop_01'] = true,
    ['s_f_y_sheriff_01'] = true,
    ['s_f_y_cop_01'] = true,
    ['s_m_y_hwaycop_01'] = true,
}

Config.DisableVestDrawable = true -- Set to TRUE to disable the vest equipped when using heavy armor.
Config.HolsterVariant = {130,122,3,6,8}
Config.HolsterableWeapons = {
    'WEAPON_STUNGUN',
    'WEAPON_357',
    'WEAPON_G27',
    'WEAPON_M9'
}

Config.Objects = { -- for object removal
    {coords = vector3(266.09,-349.35,44.74), heading = 0, length = 200, width = 200, model = "prop_sec_barier_02b"},
    {coords = vector3(285.28,-355.78,45.13), heading = 0, length = 200, width = 200, model = "prop_sec_barier_02a"},
}

-- You may add more than 2 selections and it will bring up a menu for the player to select which floor be sure to label each section though
Config.Teleports = {
    --Elevator @ labs
    [1] = {
        [1] = { -- up label
            ['poly'] = {
                coords = vector3(3540.74, 3675.59, 20.99),
                heading = 167.5,
                length = 2,
                width = 2
            },
            ["AllowVehicle"] = false,
            label = false -- set this to a string for a custom label or leave it false to keep the default

        },
        [2] = { -- down label
            ['poly'] = {
                coords = vector3(3540.74, 3675.59, 28.11),
                heading = 172.5,
                length = 2,
                width = 2
            },
            ["AllowVehicle"] = false,
            label = false
        },
        -- [3] = {
        --     ['poly'] = {
        --         coords = vector3(0.0, 0.0, 0.0),
        --         heading = 0.0,
        --         length = 0,
        --         width = 0
        --     },
        --     ["AllowVehicle"] = false,
        --     label = 'be sure to label all sections if more than 2'
        -- },
    },
    --Coke Processing Enter/Exit
    --[2] = {
       -- [1] = {
           -- ['poly'] = {
               -- coords = vector3(909.49, -1589.22, 30.51),
                --heading = 92.24,
                --length = 2,
                --width = 2
           -- },
           -- ["AllowVehicle"] = false,
            --label = '[E] Enter Coke Processing'
       -- },
       -- [2] = {
           -- ['poly'] = {
               -- coords = vector3(1088.81, -3187.57, -38.99),
               -- heading = 181.7,
                --length = 2,
                --width = 2
           -- },
            --["AllowVehicle"] = false,
            --label = '[E] Leave'
        --}
   -- }
}

Config.DefaultPrice = 20 -- Default price for the carwash
Config.DirtLevel = 0.1 -- Threshold for the dirt level to be counted as dirty
Config.CarWash = { -- carwash
    [1] = {
        ["label"] = "Hands Free Carwash",
        ["poly"] = {
            coords = vector3(174.81, -1736.77, 28.87),
            length = 7.0,
            width = 8.8,
            heading = 359
        }
    },
    [2] = {
        ["label"] = "Hands Free Carwash",
        ["poly"] = {
            coords = vector3(25.2, -1391.98, 28.91),
            length = 6.6,
            width = 8.2,
            heading = 0
        }
    },
    [3] = {
        ["label"] = "Hands Free Carwash",
        ["poly"] = {
            coords = vector3(-74.27, 6427.72, 31.02),
            length = 9.4,
            width = 8,
            heading = 315
        }
    },
    [4] = {
        ["label"] = "Hands Free Carwash",
        ["poly"] = {
            coords = vector3(1362.69, 3591.81, 34.5),
            length = 6.4,
            width = 8,
            heading = 21
        }
    },
    [5] = {
        ["label"] = "Hands Free Carwash",
        ["poly"] = {
            coords = vector3(-699.84, -932.68, 18.59),
            length = 11.8,
            width = 5.2,
            heading = 0
        }
    }
}

Config.Props = {
    [1] = {
        model = "gr_prop_gr_bench_03b",
        coords = vector4(-2166.438, 5197.532, 16.88, 282),
        },
    [2] = {
        model = "prop_air_bench_02",
        coords = vector4(-317.06, -2782.3, 5.0, 264.71),
        },
    [3] = {
        model = "kt1_11_mp_door",
        coords = vector4(1964.74, 3749.09, 33.65, 27.04),
        },
}