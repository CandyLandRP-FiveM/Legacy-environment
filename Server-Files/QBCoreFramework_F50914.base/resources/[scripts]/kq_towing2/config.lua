Config = {}

Config.debug = false

-------------------------------------------------
--- FRAMEWORK SETTINGS
-------------------------------------------------
Config.esxSettings = {
    enabled = false,
    -- Whether or not to use the new ESX export method
    useNewESXExport = false,

    -- Enable this if you're using a very old version of ESX
    oldEsx = false,
}

Config.qbSettings = {
    enabled = true,
    -- Whether or not to use the new QBCore export method
    useNewQBExport = true,
}

-- Item config
Config.items = {
    enabled = true,
    towingRope = 'kq_tow_rope',
    winch = 'kq_winch',
}

-- Commands used to trigger rope placements
Config.commands = {
    towing = {
        enabled = false,
        command = 'towrope',
    },
    winch = {
        enabled = false,
        command = 'winch',
    }
}

-- Max speed (in MPH) of vehicles which are towing or being towed (set to -1 to disable speed limiting)
Config.maxTowingSpeed = 50

-- Time between each rope refreshing
-- Time in seconds
Config.ropeRefreshTime = 10

-- Makes towing a vehicle with no player in the back easier. The car will steer and brake automatically when towed
Config.toweeAutopilot = true

-- If script is used in standalone mode. Make sure to disable all the job whitelists!
-- Job whitelist
Config.jobWhitelist = {
    towing = {
        enabled = true,
        jobs = {
            'tow',
            
        },
    },
    winch = {
        enabled = true,
        jobs = {
            'tow',
            
        },
    },
}

-- The MAXIMUM length of a rope/winch
Config.ropeLength = 16.0

-- Props which will be visible in players hands upon usage of the rope/winch item (or command)
Config.ropeProps = {
    towing = {
        prop = 'prop_rope_family_3',
        bone = 4089,
        offset = vector3(0.26, -0.11, 0.0),
        rotation = vector3(0.0, -7.0, 200.0),
    },
    winch = {
        prop = 'prop_stag_do_rope',
        bone = 4089,
        offset = vector3(0.24, -0.11, 0.0),
        rotation = vector3(0.0, -7.0, 200.0),
    }
}

-- '3d-text', 'top-left', 'help-text'
Config.inputType = '3d-text'

-- Scale of the 3d text
Config.textScale = 1

-- Font used for the 3d text
Config.textFont = 4

-- Scale used for the 3d text
Config.textScale = 1.0

-- https://docs.fivem.net/docs/game-references/controls/
-- Use the input index for the "input" value
Config.keybinds = {
    confirm = {
        label = 'E',
        name = 'INPUT_PICKUP',
        input = 38,
    },
    winch = {
        label = 'Left Shift',
        name = 'INPUT_SPRINT',
        input = 21,
    },
    remove = {
        label = 'E',
        name = 'INPUT_PICKUP',
        input = 38,
        duration = 3000,
    },
    cancel = {
        label = 'X',
        name = 'INPUT_VEH_DUCK',
        input = 73,
    },
}

-- Classes of which vehicles may not be towed or tow another vehicle
Config.blacklistedClasses = {
    8, -- Motorcycles
    13, -- Cycles
    14, -- Boats
    15, -- Helicopters
    16, -- Planes
    21, -- Trains
}

--[[ All vehicle classes
    0: Compacts
    1: Sedans
    2: SUVs
    3: Coupes
    4: Muscle
    5: Sports Classics
    6: Sports
    7: Super
    8: Motorcycles
    9: Off-road
    10: Industrial
    11: Utility
    12: Vans
    13: Cycles
    14: Boats
    15: Helicopters
    16: Planes
    17: Service
    18: Emergency
    19: Military
    20: Commercial
    21: Trains
]]
