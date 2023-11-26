Config = {}

-- QB --
Config.QBExport = function()
    return exports['qb-core']:GetCoreObject()
end

Config.ShowOnlyInfoMenu = false -- false if you want to see the buttons in the menu, true if you only want to see the tank and pumping status

------SETTING THE BUTTONS------
Config.Buttons = {
    Splash = 24,
    Reload = 80,
    Pump = 38,
    Hide = 73,
}

-------------
Config.Menu = { --Customisable menu
    ['MAIN'] = {
        TextFont = 4,
        TextColor = {255, 255, 255},
        Scale = 0.4,
        Position = {x = 0.50, y = 0.95},
        Background = {
            enable = true,
            color = { r = 35, g = 35, b = 35, alpha = 200 },
        },
    },
    ['PUMP'] = {
        TextFont = 4,
        TextColor = {255, 255, 255},
        Scale = 0.4,
        Position = {x = 0.94, y = 0.94},
        Background = {
            enable = true,
            color = { r = 35, g = 35, b = 35, alpha = 200 },
        },
    },
    ['TANK'] = {
        TextFont = 4,
        TextColor = {255, 255, 255},
        Scale = 0.4,
        Position = {x = 0.94, y = 0.90},
        Background = {
            enable = true,
            color = { r = 35, g = 35, b = 35, alpha = 200 },
        },
        
    },
}

------NOTIFY------
Config.Notify = function(message, type) --Insert a trigger or export for your notification system into this function
    QBCore.Functions.Notify(message, type)

end

------WATER GUN ITEMS------
Config.WaterGuns = {
    ['watergun'] = { -- Item name for water gun
        max_size = 100, -- Maximum tank capacity
        pumping = {min = 20, max = 30}, -- range of pressure addition to the water gun during pumping 
        reloding = {min = 25, max = 35}, -- range of adding water to the water gun tank
        remove_pumping = {min = 2, max = 3}, -- range of pressure removal when firing a water gun
        remove_water = {min = 1, max = 2}, -- the extent of water removal from the tank when firing the water pistol
        Anims = {
            Reload = {
                dict = 'anim@mp_snowball',
                anim = 'pickup_snowball',
                time = 1500,
            },
            Pump = {
                dict = 'missmic4',
                anim = 'michael_tux_fidget',
                time = 1500,
            }
        },
    Prop = {
            Model = 'watergun',
            BoneID = 18905,
            Offset = vector3(0.12, 0.06, -0.01),
            Rot = vector3(-114.0, -4.0, 1.0),
        }, -- position for placing the water gun in the hand with which the player is aiming
    },
}


Translations = {
    ['MENU'] = {
        ['WATERGUN'] = '~g~[M1]~w~ USE ~g~[R]~w~ RELOAD ~g~[E]~w~ PUMP ~g~[X]~w~ HIDE',
        ['PUMP'] = 'PUMP: ~o~',
        ['TANK'] = 'TANK: ~b~',
    },
    ['TEXT'] = {
        ['not_in_water'] = 'You have to stand in the water to charge the tank.',
        ['empty_tank'] = 'The water tank is empty. Go to the water and fill it up.',
    }
}