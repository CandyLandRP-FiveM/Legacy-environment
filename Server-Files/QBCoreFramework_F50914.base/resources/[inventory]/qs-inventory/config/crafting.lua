--[[
    Crafting system independent from the DLC,
    now qs-inventory includes an automated and
    friendly crafting system, configure it to
    your liking using the examples below!

    Don't forget to set a level of 1-100 chance to craft on each item!
]]

Config.Crafting = false -- Enable or disable crafting system!

--[[
    Reputation system (QBCore only)
    In case you want to use this system, you must add the type of
    reputation in the "rep" value, remember that it must be one of the
    previously created metadata of your server. Once you have selected
    this, you can add the corresponding amount of reputation in points.

    QBCore by default includes these:
        'craftingrep'
        'attachmentcraftingrep'
]]

Config.CraftingReputation = true -- Read above how to run and use
Config.ThresholdItems = false    -- Only for qbcore (You will only see items that are higher threshold than your crafting rep (rep >= threshold))

--[[
    Example to add items, you can also add more crafting
    points as shown in the examples below!

    [1] = {
        name = "weapon_pistol", -- item you craft
        amount = 50, -- quantity available, place what you want
        info = {}, -- ignore this if you don't know the qb info
        costs = {
            ["iron"] = 80, -- these are the dependency items for the craft
            ["metalscrap"] = 120,
            ["rubber"] = 8,
            ["steel"] = 133,
            ["lockpick"] = 5,
        },
        type = "weapon", -- put if it is 'item' or 'weapon'
        slot = 1, -- this is the slot inside crafting, keep order
        rep = 'attachmentcraftingrep', -- type of reputation, read above its configuration (qb only)
        points = 1,
                threshold = 0, -- points that you will receive when crafting, is reputation (qb only)
        time = 5500, -- progress bar time
        chance = 100 -- chance of breaking, 1-100 (100 imposible breaking)
    },
]]

Config.CraftingTables = {
    [1] = {
        name = 'Police Crafting',
        isjob = 'police', --job name or false
        grades = 'all',   -- 'all' to allow all grades, { 0 } to allow an specefic grade or { 0, 1, 2 } to a allow more than one grade.
        text = '[E] - Police Craft',
        blip = {
            enabled = false,
            title = 'Police Crafting',
            scale = 1.0,
            display = 4,
            colour = 0,
            id = 365
        },
        location = vec3(485.6, -985.29, 28.02),
        items = {
            [1] = {
                name = 'weapon_m9',
                amount = 1,
                info = {},
                costs = {
                    ['iron'] = 80,
                    ['metalscrap'] = 120,
                    ['rubber'] = 10,
                    ['steel'] = 65,
                },
                type = 'weapon',
                slot = 1,
                rep = 'craftingrep',
                points = 1,
                threshold = 0,
                time = 8500,
                chance = 100,
            },
            [2] = {
                name = 'weapon_smg',
                amount = 1,
                info = {},
                costs = {
                    ['iron'] = 80,
                    ['metalscrap'] = 120,
                    ['rubber'] = 10,
                    ['steel'] = 65,
                },
                type = 'weapon',
                slot = 2,
                rep = 'attachmentcraftingrep',
                points = 1,
                threshold = 0,
                time = 8500,
                chance = 100
            },
            [3] = {
                name = 'weapon_carbinerifle',
                amount = 1,
                info = {},
                costs = {
                    ['iron'] = 120,
                    ['metalscrap'] = 120,
                    ['rubber'] = 20,
                    ['steel'] = 90,
                },
                type = 'weapon',
                slot = 3,
                rep = 'craftingrep',
                points = 2,
                threshold = 0,
                time = 12000,
                chance = 100
            },
            [4] = {
                name = 'weapon_m1',
                amount = 1,
                info = {},
                costs = {
                    ['iron'] = 120,
                    ['metalscrap'] = 120,
                    ['rubber'] = 20,
                    ['steel'] = 90,
                },
                type = 'weapon',
                slot = 4,
                rep = 'craftingrep',
                points = 2,
                threshold = 0,
                time = 12000,
                chance = 100,
            },
            [5] = {
                name = 'weapon_baton',
                amount = 1,
                info = {},
                costs = {
                    ['iron'] = 120,
                    ['metalscrap'] = 120,
                    ['rubber'] = 20,
                    ['steel'] = 90,
                },
                type = 'weapon',
                slot = 5,
                rep = 'craftingrep',
                points = 2,
                threshold = 0,
                time = 12000,
                chance = 100,
            },
        }
    },
    [2] = {
        name = 'Police Attachment Crafting',
        isjob = 'police',
        grades = 'all',
        text = '[E] - Craft Attachment',
        blip = {
            enabled = false,
            title = 'Attachment Crafting',
            scale = 1.0,
            display = 4,
            colour = 0,
            id = 365
        },
        location = vector3(485.09, -983.78, 28.02),
        items = {
            [1] = {
                name = 'pistol_extendedclip',
                amount = 1,
                info = {},
                costs = {
                    ['metalscrap'] = 140,
                    ['steel'] = 250,
                    ['rubber'] = 60,
                },
                type = 'item',
                slot = 1,
                rep = 'attachmentcraftingrep',
                points = 1,
                threshold = 0,
                time = 8000,
                chance = 90
            },
            [2] = {
                name = 'pistol_suppressor',
                amount = 1,
                info = {},
                costs = {
                    ['metalscrap'] = 165,
                    ['steel'] = 285,
                    ['rubber'] = 75,
                },
                type = 'item',
                slot = 2,
                rep = 'attachmentcraftingrep',
                points = 1,
                threshold = 0,
                time = 8000,
                chance = 90
            },
            [3] = {
                name = 'pistol_flashlight',
                amount = 1,
                info = {},
                costs = {
                    ['metalscrap'] = 190,
                    ['steel'] = 305,
                    ['rubber'] = 85,
                    ['smg_extendedclip'] = 1,
                },
                type = 'item',
                slot = 3,
                rep = 'attachmentcraftingrep',
                points = 1,
                threshold = 0,
                time = 8000,
                chance = 90
            }
        }
    },
    [3] = {
        name = 'Crafting Table',
        isjob = false,
        grades = 'all',
        text = '[E] - Craft Items',
        blip = {
            enabled = false,
            title = 'Crafting Items',
            scale = 1.0,
            display = 4,
            colour = 0,
            id = 365
        },
        location = vec3(-278.1, 2209.45, 129.26),
        items = {
            [1] = {
                name = 'advancedlockpick',
                amount = 1,
                info = {},
                costs = {
                    ['metalscrap'] = 22,
                    ['plastic'] = 32,
                    ['lockpick'] = 5,
                },
                type = 'item',
                slot = 1,
                rep = 'craftingrep',
                points = 1,
                threshold = 0,
                time = 5000,
                chance = 90
            },
            [2] = {
                name = 'toolkit',
                amount = 1,
                info = {},
                costs = {
                    ['metalscrap'] = 30,
                    ['plastic'] = 42,
                },
                type = 'item',
                slot = 2,
                rep = 'craftingrep',
                points = 1,
                threshold = 0,
                time = 10000,
                chance = 90
            },
            [3] = {
                name = 'electronickit',
                amount = 5,
                info = {},
                costs = {
                    ['metalscrap'] = 30,
                    ['plastic'] = 45,
                    ['aluminum'] = 28,
                },
                type = 'item',
                slot = 3,
                rep = 'craftingrep',
                points = 1,
                threshold = 0,
                time = 15000,
                chance = 90
            },
            [4] = {
                name = 'handcuffs',
                amount = 1,
                info = {},
                costs = {
                    ['metalscrap'] = 36,
                    ['steel'] = 24,
                    ['aluminum'] = 28,
                },
                type = 'item',
                slot = 4,
                rep = 'craftingrep',
                points = 1,
                threshold = 0,
                time = 15000,
                chance = 90
            },
            [5] = {
                name = 'pistolparts',
                amount = 5,
                info = {},
                costs = {
                    ['metalscrap'] = 32,
                    ['steel'] = 43,
                    ['iron'] = 61,
                },
                type = 'item',
                slot = 5,
                rep = 'craftingrep',
                points = 1,
                threshold = 0,
                time = 8000,
                chance = 90,
            },
            [6] = {
                name = 'pistol_ammo',
                amount = 50,
                info = {},
                costs = {
                    ['metalscrap'] = 50,
                    ['steel'] = 37,
                    ['copper'] = 26,
                },
                type = 'item',
                slot = 6,
                rep = 'craftingrep',
                points = 1,
                threshold = 0,
                time = 7000,
                chance = 90,
            },
            [7] = {
                name = 'ironoxide',
                amount = 10,
                info = {},
                costs = {
                    ['iron'] = 60,
                    ['glass'] = 30,
                },
                type = 'item',
                slot = 7,
                rep = 'craftingrep',
                points = 1,
                threshold = 0,
                time = 5000,
                chance = 90,
            },
            [8] = {
                name = 'aluminumoxide',
                amount = 10,
                info = {},
                costs = {
                    ['aluminum'] = 60,
                    ['glass'] = 30,
                },
                type = 'item',
                slot = 8,
                rep = 'craftingrep',
                points = 1,
                threshold = 0,
                time = 4000,
                chance = 80,
            },
            [9] = {
                name = 'armor',
                amount = 5,
                info = {},
                costs = {
                    ['iron'] = 33,
                    ['steel'] = 44,
                    ['plastic'] = 55,
                    ['aluminum'] = 22,
                },
                type = 'item',
                slot = 9,
                rep = 'craftingrep',
                points = 1,
                threshold = 0,
                time = 17000,
                chance = 60,
            },
            [10] = {
                name = 'drill',
                amount = 50,
                info = {},
                costs = {
                    ['iron'] = 50,
                    ['steel'] = 50,
                    ['toolkit'] = 3,
                    ['advancedlockpick'] = 2,
                    ['diamond'] = 5,
                },
                type = 'item',
                slot = 10,
                rep = 'craftingrep',
                points = 1,
                threshold = 0,
                time = 35000,
                chance = 50,
            }
        }
    },
    [4] = {
        name = 'Firearms Crafting',
        isjob = false, --job name or false
        grades = 'all',   -- 'all' to allow all grades, { 0 } to allow an specefic grade or { 0, 1, 2 } to a allow more than one grade.
        text = '[E] - Firearms Crafting',
        blip = {
            enabled = false,
            title = 'Firearms Crafting',
            scale = 1.0,
            display = 4,
            colour = 0,
            id = 365
        },
        location = vec3(1658.55, -57.34, 166.13),
        items = {
            [1] = {
                name = 'weapon_g27',
                amount = 1,
                info = {},
                costs = {
                    ['metalscrap'] = 70,
                    ['rubber'] = 8,
                    ['steel'] = 60,
                    ['g27blueprint'] = 1,
                    ['pistolparts'] = 3,
                },
                type = 'weapon',
                slot = 1,
                rep = 'craftingrep',
                points = 1,
                threshold = 0,
                time = 5500,
                chance = 75,
            },
            [2] = {
                name = 'weapon_snubrevolver',
                amount = 1,
                info = {},
                costs = {
                    ['iron'] = 90,
                    ['rubber'] = 50,
                    ['steel'] = 100,
                    ['snubblueprint'] = 1,
                    ['pistolparts'] = 5,
                    
                },
                type = 'weapon',
                slot = 2,
                rep = 'craftingrep',
                points = 40,
                threshold = 50,
                time = 12000,
                chance = 75,
            },
            [3] = {
                name = 'weapon_eagle',
                amount = 1,
                info = {},
                costs = {
                    ['iron'] = 120,
                    ['rubber'] = 50,
                    ['steel'] = 110,
                    ['deagleblueprint'] = 1,
                    ['pistolparts'] = 15,
                    
                },
                type = 'item',
                slot = 3,
                rep = 'craftingrep',
                points = 75,
                threshold = 100,
                time = 8500,
                chance = 50,
            }
        }
    },
    [5] = {
        name = 'Electronics Crafting',
        isjob = false, --job name or false
        grades = 'all',   -- 'all' to allow all grades, { 0 } to allow an specefic grade or { 0, 1, 2 } to a allow more than one grade.
        text = '[E] - Electronics Crafting',
        blip = {
            enabled = false,
            title = 'Electronics Crafting',
            scale = 1.0,
            display = 4,
            colour = 0,
            id = 365
        },
        location = vec3(-1052.873, -230.875, 44.916),
        items = {
            [1] = {
                name = 'hackinglaptop',
                amount = 1,
                info = {},
                costs = {
                    ['laptop'] = 1,
                    ['electronickit'] = 5,
                    ['accesscard'] = 1,
                    ['hackingdevice'] = 1,
                },
                type = 'item',
                slot = 1,
                rep = 'craftingrep',
                points = 30,
                threshold = 25,
                time = 5500,
                chance = 80
            },
            [2] = {
                name = 'safecracker',
                amount = 1,
                info = {},
                costs = {
                    ['rubber'] = 80,
                    ['iron'] = 120,
                    ['hackingdevice'] = 1,
                    ['drill'] = 1,
                    ['toolkit'] = 5,
                },
                type = 'item',
                slot = 2,
                rep = 'craftingrep',
                points = 1,
                threshold = 0,
                time = 8500,
                chance = 80,
            },
            [3] = {
                name = 'thermite',
                amount = 1,
                info = {},
                costs = {
                    ['aluminumoxide'] = 80,
                    ['ironoxide'] = 80,
                    ['Plastic'] = 180,
                },
                type = 'item',
                slot = 3,
                rep = 'craftingrep',
                points = 1,
                threshold = 30,
                time = 8500,
                chance = 80,
            },
            [4] = {
                name = 'hackingdevice',
                amount = 1,
                info = {},
                costs = {
                    ['trojan_usb'] = 2,
                    ['copper'] = 80,
                    ['Plastic'] = 180,
                },
                type = 'item',
                slot = 4,
                rep = 'craftingrep',
                points = 1,
                threshold = 1,
                time = 8500,
                chance = 80,
            },
            [5] = {
                name = 'gpshackingdevice',
                amount = 1,
                info = {},
                costs = {
                    ['hackingdevice'] = 1,
                    ['copper'] = 150,
                    ['Plastic'] = 180,
                },
                type = 'item',
                slot = 5,
                rep = 'craftingrep',
                points = 1,
                threshold = 5,
                time = 8500,
                chance = 80,
            }
        }
    },
    [6] = {
        name = 'Candy Crafting',
        isjob = false, --job name or false
        grades = 'all',   -- 'all' to allow all grades, { 0 } to allow an specefic grade or { 0, 1, 2 } to a allow more than one grade.
        text = '[E] - Candy Crafting',
        blip = {
            enabled = false,
            title = 'Candy Crafting',
            scale = 1.0,
            display = 4,
            colour = 0,
            id = 365
        },
        location = vec3(49.27, -2699.19, 5.0),
        items = {
            [1] = {
                name = 'weapon_butterfly',
                amount = 1,
                info = {},
                costs = {
                    ['iron'] = 120,
                    ['metalscrap'] = 120,
                    ['rubber'] = 20,
                    ['steel'] = 90,
                },
                type = 'item',
                slot = 1,
                rep = 'craftingrep',
                points = 1,
                threshold = 0,
                time = 5500,
                chance = 100
            },
            [2] = {
                name = 'weapon_shadowdagger',
                amount = 1,
                info = {},
                costs = {
                    ['iron'] = 120,
                    ['metalscrap'] = 120,
                    ['rubber'] = 20,
                    ['steel'] = 90,
                },
                type = 'item',
                slot = 2,
                rep = 'craftingrep',
                points = 1,
                threshold = 0,
                time = 8500,
                chance = 100,
            },
            [3] = {
                name = 'weapon_nordicaxe',
                amount = 1,
                info = {},
                costs = {
                    ['iron'] = 120,
                    ['metalscrap'] = 120,
                    ['rubber'] = 20,
                    ['steel'] = 90,
                },
                type = 'item',
                slot = 3,
                rep = 'craftingrep',
                points = 1,
                threshold = 0,
                time = 8500,
                chance = 100,
            },
        }
    },
    [7] = {
        name = 'Attachment Crafting',
        isjob = false,
        grades = 'all',
        text = '[E] - Craft Attachment',
        blip = {
            enabled = false,
            title = 'Attachment Crafting',
            scale = 1.0,
            display = 4,
            colour = 0,
            id = 365
        },
        location = vec3(-1529.23, 837.26, 180.59),
        items = {
            [1] = {
                name = 'pistol_extendedclip',
                amount = 1,
                info = {},
                costs = {
                    ['metalscrap'] = 140,
                    ['steel'] = 250,
                    ['rubber'] = 60,
                },
                type = 'item',
                slot = 1,
                rep = 'attachmentcraftingrep',
                points = 1,
                threshold = 0,
                time = 8000,
                chance = 90
            },
            [2] = {
                name = 'pistol_suppressor',
                amount = 1,
                info = {},
                costs = {
                    ['metalscrap'] = 165,
                    ['steel'] = 285,
                    ['rubber'] = 75,
                },
                type = 'item',
                slot = 2,
                rep = 'attachmentcraftingrep',
                points = 10,
                threshold = 0,
                time = 8000,
                chance = 90
            },
        }
    },
}