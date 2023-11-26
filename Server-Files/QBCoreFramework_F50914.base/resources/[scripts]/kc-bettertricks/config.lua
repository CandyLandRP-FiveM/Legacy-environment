Config                             = Config or {}

Config.Eject                       = true       -- This value determines whether the player will be ejected if they land while doing a trick or not (The default value is true)
Config.InstantAnimStop             = true       -- This value determines whether the anim should instantly stopped, otherwise it will just go back to the sitting position gradually (The default value is true)
Config.TackledRagdollTime          = 5

Config.SpecificVehicle             = false      -- If set to true, you will be able to do tricks only on some specific bikes from the 'Config.StuntVehicles' & 'Config.GroundVehicles' list
Config.StuntVehicles               = {          -- Don't use "Model Name" since there is no native to get model name from vehicle in GTA, only use "Text Label Name(s)". You can found them here: https://gta.fandom.com/wiki/Category:Motorcycles
    "ENDURO",
    "MANCHEZ",
    "SANCHEZ01",
    "SANCHEZ02"
}
Config.GroundVehicles              = {          -- Don't use "Model Name" since there is no native to get model name from vehicle in GTA, only use "Text Label Name(s)". You can found them here: https://gta.fandom.com/wiki/Category:Motorcycles
    "ESSKEY",
    "BATI",
    "DOUBLE"
}

-- Tricks Key Config
Config.TricksOrganizeCommand       = 'tricksorganize'           -- If you ever feel the need to change the command, here's the option for it
Config.TricksToggleCommand         = 'trickstoggle'             -- If you ever feel the need to change the command, here's the option for it
Config.KeybindTable                = {
    Tricks = {
        CommandTitle               = 'Tricks',
        CommandName        		   = 'tricks',
        Inputs                     = {
            Controller = {
                CommandAlias = 'controller',
                CommandInputMapper = 'PAD_DIGITALBUTTON',
                CommandInputParameter = 'R1_INDEX'
            },
            MouseAndKeyboard = {
                CommandAlias = 'keyboard',
                CommandInputMapper = 'KEYBOARD',
                CommandInputParameter = 'SPACE'
            }
        }
    },
    GroundEmotes = {
        CommandTitle               = 'Ground Emotes',
        CommandName        		   = 'groundemotes',
        Inputs                     = {
            --[[ Controller = { -- I haven't yet found a good way to do it on controller, but maybe one day who knows.
                CommandAlias = 'controller',
                CommandInputMapper = 'PAD_DIGITALBUTTON',
                CommandInputParameter = 'R3_INDEX'
            }, ]]
            MouseAndKeyboard = {
                CommandAlias = 'keyboard',
                CommandInputMapper = 'MOUSE_BUTTON',
                CommandInputParameter = 'MOUSE_LEFT'
            }
        }
    }
}

Config.Stunts = {
    ['Nac-Nac (L)'] = {
        animDict = 'rcmextreme2atv',
        animName = 'idle_b',
        Start = 0.28,
        Loop = 0.50,
        Bone = 51826,
        Bone2 = 52301,
        flag = 32,
        StickToHandlebar = true,
        type = 'ga'
    },
    ['Nac-Nac (R)'] = {
        animDict = 'rcmextreme2atv',
        animName = 'idle_c',
        Start = 0.15,
        Loop = 0.46,
        Bone = 58271,
        Bone2 = 14201,
        flag = 32,
        StickToHandlebar = true,
        type = 'ga'
    },
    ['Side (L)'] = {
        animDict = 'rcmextreme2atv',
        animName = 'idle_d',
        Start = 0.47,
        Loop = 0.61,
        Bone = 0,
        Bone2 = 14201,
        flag = 32,
        StickToHandlebar = true,
        type = 'ga'
    },
    ['Side (R)'] = {
        animDict = 'rcmextreme2atv',
        animName = 'idle_d',
        Start = 0.18,
        Loop = 0.34,
        Bone = 31086,
        Bone2 = 14201,
        flag = 32,
        StickToHandlebar = true,
        type = 'ga'
    },
    ['Heel Clicker'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_heelclicker',
        flag = 32,
        StickToHandlebar = true,
        type = 'ga'
    },
    ['Slyger 1 (L)'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_slyger_1',
        flag = 34,
        StickToHandlebar = true,
        type = 'ga'
    },
    ['Slyger 1 (R)'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_slyger_1_r',
        flag = 34,
        StickToHandlebar = true,
        type = 'ga'
    },
    ['Footrest'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_footrest',
        flag = 34,
        StickToHandlebar = true,
        type = 'ga'
    },
    ['Slyger 2 (L)'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_slyger_2',
        flag = 34,
        StickToHandlebar = true,
        type = 'g'
    },
    ['Slyger 2 (R)'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_slyger_2_r',
        flag = 34,
        StickToHandlebar = true,
        type = 'g'
    },
    ['Timotei'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_timotei',
        flag = 34,
        StickToHandlebar = true,
        type = 'g'
    },
    ['Clap Back'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_clapback',
        flag = 32,
        StickToHandlebar = false,
        type = 'g'
    },
    ['Feet Handle'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_feet_handlebar',
        flag = 34,
        StickToHandlebar = true,
        type = 'g'
    },
    ['Superman'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_superman',
        flag = 32,
        StickToHandlebar = false,
        type = 'a'
    },
    ['Superman Double Grab'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_superman_double',
        Start = 0.0,
        Loop = 0.56,
        flag = 32,
        StickToHandlebar = false,
        type = 'a'
    },
    ['Holy Grab'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_holy_grab',
        flag = 34,
        StickToHandlebar = false,
        type = 'a'
    },
    ['Oxecutionner (L)'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_oxecutionner',
        flag = 34,
        StickToHandlebar = false,
        type = 'a'
    },
    ['Oxecutionner (R)'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_oxecutionner_r',
        flag = 34,
        StickToHandlebar = false,
        type = 'a'
    },
    ['On Top'] = {
        animDict = 'rcmextreme2atv',
        animName = 'idle_e',
        Start = 0.15,
        Loop = 0.47,
        flag = 32,
        StickToHandlebar = false,
        type = 'a'
    },
    ['Lay Back'] = {
        animDict = 'rcmextreme2atv',
        animName = 'idle_a',
        Start = 0.16,
        Loop = 0.80,
        flag = 32,
        StickToHandlebar = false,
        type = 'a'
    },
    ['90 Clock (L)'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_90',
        flag = 32,
        StickToHandlebar = true,
        type = 'a'
    },
    ['90 Clock (R)'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_90_r',
        flag = 32,
        StickToHandlebar = true,
        type = 'a'
    },
    ['Disco Can (L)'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_discocan',
        flag = 32,
        StickToHandlebar = false,
        type = 'a'
    },
    ['Disco Can (R)'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_discocan_r',
        flag = 32,
        StickToHandlebar = false,
        type = 'a'
    },
    ['Dead Body'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_deadbody',
        flag = 32,
        StickToHandlebar = true,
        type = 'a'
    },
    ['McMetz'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_mcmetz',
        flag = 32,
        StickToHandlebar = true,
        type = 'a'
    },
    ['Rock Solid'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_rocksolid',
        flag = 32,
        StickToHandlebar = false,
        type = 'a'
    },
    ['Rodeo (L)'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_rodeo',
        flag = 32,
        StickToHandlebar = false,
        type = 'a'
    },
    ['Rodeo (R)'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_rodeo_r',
        flag = 32,
        StickToHandlebar = false,
        type = 'a'
    },
    ['Superman Seat Grab (L)'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_superman_seat_grab',
        flag = 32,
        StickToHandlebar = false,
        type = 'a'
    },
    ['Superman Seat Grab (R)'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_superman_seat_grab_r',
        flag = 32,
        StickToHandlebar = false,
        type = 'a'
    },
    ['Light Taunt'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_light_taunt',
        flag = 32,
        StickToHandlebar = false,
        type = 'a'
    },
    ['Heavy Taunt'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_heavy_taunt',
        flag = 32,
        StickToHandlebar = false,
        type = 'a'
    },
    ['Bar Hop'] = {
        animDict = 'veh@bike@tricks',
        animName = 'tricks_barhop',
        flag = 32,
        StickToHandlebar = true,
        type = 'a'
    },
    --- You can add your own tricks under this
    ['Celebrate'] = {
        animDict = 'mini@racing@bike@',
        animName = 'celebrate_c',
        flag = 33,
        StickToHandlebar = true,
        type = 'g'
    },
    ['Finger'] = {
        animDict = 'anim@mp_player_intcelebrationmale@finger',
        animName = 'finger',
        flag = 48,
        StickToHandlebar = false,
        type = 'g'
    }
}

Config.KeyDirection = {
    ['up'] = {
        ['left'] = 'Light Taunt',
        ['right'] = 'Heavy Taunt',
        ['down'] = 'Lay Back'
    },
    ['left'] = {
        ['right'] = 'Nac-Nac (R)',
        ['up'] = 'Superman',
        ['down'] = 'Superman Double Grab'
    },
    ['right'] = {
        ['left'] = 'Nac-Nac (L)',
        ['up'] = 'Holy Grab',
        ['down'] = 'Bar Hop'
    },
    ['down'] = {
        ['right'] = 'Side (R)',
        ['left'] = 'Side (L)',
        ['up'] = 'On Top'
    }
}

Config.RadialMenu           = {
    style = {                               -- Wheel style settings
        sizePx = 360,                       -- Wheel size in pixels
        slices = {                          -- Slice style settings
            default = { ['fill'] = '#2c3e50', ['stroke'] = 'none', ['stroke-width'] = 0, ['opacity'] = 0.60 },
            hover = { ['fill'] = '#16a085', ['stroke'] = 'none', ['stroke-width'] = 0, ['opacity'] = 0.80 },
            selected = { ['fill'] = '#16a085', ['stroke'] = 'none', ['stroke-width'] = 0, ['opacity'] = 0.80 }
        },
        titles = {                          -- Text style settings
            default = { ['fill'] = '#ecf0f1', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
            hover = { ['fill'] = '#ecf0f1', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
            selected = { ['fill'] = '#ecf0f1', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
        },
        icons = {
            width = 64,
            height = 64
        }
    },
    wheel = {
        navAngle = 270,                 -- Orientation of wheel
        minRadiusPercent = 0.3,         -- Minimum radius of wheel in percentage
        maxRadiusPercent = 0.9,         -- Maximum radius of wheel in percentage
    }
}

-- Debug
Config.Debug        				        = false   	 -- If you think something is not working properly, you can set 'Config.Debug' to true. It will then print debug information in your console

-- Misc
Config.Language						        = 'en'		 -- Currently Available: fr, en
Config.UpdateChecker                        = false      -- Set to false if you don't want to check for resource update on start (No need to change this if you're using fivem-checker)
Config.ChangeLog					        = false		 -- Set to false if you don't want to display the changelog if new version is find (No need to change this if you're using fivem-checker)

-- Custom condition

---This function is called right after pressing the keybind
---@param type string       'Ground' or 'Air'
---@return boolean
function CanDoStunts(StuntType)
    return true -- Example: "return GetSelectedPedWeapon(PlayerPedId()) == GetHashKey('weapon_unarmed')" or "return QBCore.Functions.GetPlayerData().job.name == 'stuntman'"
end