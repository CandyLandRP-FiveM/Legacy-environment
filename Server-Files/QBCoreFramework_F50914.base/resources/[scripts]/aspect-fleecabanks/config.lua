Config = {}

--General Settings
Config.Debug = false --polyzone debug
Config.useLasers = false
Config.targetSystem = 'qb' --Use 'qb for qbcore target and ox for ox target'
Config.oxtargetDrawSprite = true

--Timers
Config.timer = 240 -- countdown to secure lock in seconds (time needed to pass to door to be closed back)
Config.cooldown = 7200 -- amount of time to do the heist again in seconds (15min)

--Cop Settings
Config.UsePSDispatch = true
Config.PoliceJob = "police"
Config.mincops = 2 -- minimum required cops to start mission

--Door Settings
Config.vaultdoor = "v_ilev_gb_vauldr"
Config.door = "v_ilev_gb_vaubar"
Config.office = "v_ilev_gb_teldr"

--Need Security Card or Need to Hack, need to be true to work both can't be false one of them need to be true or both need to be true
Config.needSecurityCard = false -- If Security card is false then you will need the security cards if false then you just need to hack
Config.needToHack = true
Config.SecurityCardDoor1 = 'security_card_01'
Config.SecurityCardDoor2 = 'security_card_01'
Config.hackingDevice = 'hackinglaptop'


Config.skillName = "Street Reputation"
Config.minSkillLevel = 0


--Rewards
Config.black = false -- enable this if you want blackmoney as a reward
Config.itemRewardBool = true 
Config.itemChance = 50 -- Percentage item chance
Config.maxcash = 2000 -- maximum amount of cash a pile can hold
Config.mincash = 1000 -- minimum amount of cash a pile holds
Config.itemReward = {
    [1] = {
        item = "silverbar",
        minAmount = 1,
        maxAmount = 5,
    },
    [2] = {
        item = "markedmoney",
        minAmount = 1,
        maxAmount = 5,
    },
    [3] = {
        item = "goldbar",
        minAmount = 1,
        maxAmount = 5,
    },
    [4] = {
        item = "10kgoldchain",
        minAmount = 1,
        maxAmount = 5,
    },
    [5] = {
        item = "blueprint",
        minAmount = 1,
        maxAmount = 1,
    },
    [5] = {
        item = "jewelkey",
        minAmount = 1,
        maxAmount = 1,
    },
    -- If you want different reward items follow this format
    --[2] = {
        --item = "diamond",
        --minAmount = 1,
        --maxAmount = 5,
    --}
}

Config.Banks = {
    F1 = {
        doors = {
            startloc = {x = 311.22, y = -284.34, z = 55.16, h = 160.32, animcoords = vector4(311.39, -284.04, 54.16, 160.51)},
            secondloc = {x = 312.92, y = -284.75, z = 55.16, h = 161.67, animcoords = vector4(312.95, -284.63, 54.16, 158.29)},
        },
        prop = {
            first = {coords = vector3(311.5481, -284.5114, 54.285), rot = vector3(90.0, 180.0, 21.0)},
            second = {coords = vector3(312.90, -284.95, 54.285), rot = vector3(90.0, 180.0, 110.0)}
        },
        trolley1 = {x = 313.45, y = -289.24, z = 53.14, h = -15},
        trolley2 = {x = 311.51, y = -288.54, z = 53.14, h = -15},
        trolley3 = {x = 314.49, y = -283.65, z = 53.14, h = 160},
        objects = {
            vector3(313.45, -289.24, 53.14),
            vector3(311.51, -288.54, 53.14),
            vector3(314.49, -283.65, 53.14)
        },
        loot1 = false,
        loot2 = false,
        loot3 = false,
        lasers = true,
        onaction = false,
        door1 = false,
        door2 = false,
        lastrobbed = 0
    },
    F2 = {
        doors = {
            startloc = {x = 146.84, y = -1045.99, z = 29.37, h = 158.1, animcoords = vector4(146.84, -1045.99, 30.37, 158.1)},
            secondloc = {x = 148.57, y = -1046.36, z = 29.37, h = 161.76, animcoords = vector4(148.57, -1046.36, 30.37, 161.76)}
        },
        prop = {
            first = {coords = vector3(147.22, -1046.148, 29.487), rot = vector3(90.0, 180.0, 20.0)},
            second = {coords = vector3(148.57, -1046.578, 29.487), rot = vector3(90.0, 180.0, 110.0)}
        },
        trolley1 = {x = 147.25, y = -1050.38, z = 28.35, h = -15},
        trolley2 = {x = 149.21, y = -1051.07, z = 28.35, h = -15},
        trolley3 = {x = 150.23, y = -1045.40, z = 28.35, h = 160},
        objects = {
            vector3(147.25, -1050.38, 28.35),
            vector3(149.21, -1051.07, 28.35),
            vector3(150.23, -1045.40, 28.35)
        },
        loot1 = false,
        loot2 = false,
        loot3 = false,
        lasers = true,
        onaction = false,
        door1 = false,
        door2 = false,
        lastrobbed = 0
    },
    F3 = {
        doors = {
            startloc = {x = -1210.84, y = -336.53, z = 37.78, h = 209.24, animcoords = vector4(-1211.03, -336.65, 37.78, 209.49)}, 
            secondloc = {x = -1209.39, y = -335.41, z = 37.78, h = 203.9, animcoords = vector4(-1209.39, -335.41, 37.78, 203.9)}
        },
        prop = {
            first = {coords = vector3(-1210.50, -336.37, 37.901), rot = vector3(-90.0, 0.0, 25.0)},
            second = {coords = vector3(-1209.27, -335.68, 37.90), rot = vector3(90.0, 180.0, 65.0)}
        },
        trolley1 = {x = -1207.50, y = -339.20, z = 36.76, h = 30},
        trolley2 = {x = -1205.61, y = -338.24, z = 36.76, h = 30},
        trolley3 = {x = -1209.10, y = -333.59, z = 36.76, h = 210},
        objects = {
            vector3(-1207.50, -339.20, 36.76),
            vector3(-1205.61, -338.24, 36.76),
            vector3(-1209.10, -333.59, 36.76)
        },
        loot1 = false,
        loot2 = false,
        loot3 = false,
        lasers = true,
        onaction = false,
        door1 = false,
        door2 = false,
        lastrobbed = 0
    },
    F4 = {
        doors = {
            startloc = {x = -2956.58, y = 481.67, z = 15.70, h = 269.05, animcoords = vector4(-2956.61, 481.45, 15.7, 267.44)},
            secondloc = {x = -2956.78, y = 483.44, z = 15.70, h = 268.25, animcoords = vector4(-2956.78, 483.44, 15.7, 268.25)}
        },
        prop = {
            first = {coords = vector3(-2956.59, 482.05, 15.815), rot = vector3(90.0, 180.0, -88.0)},
            second = {coords = vector3(-2956.60, 483.46, 15.815), rot = vector3(90.0, 180.0, 3.0)}
        },
        trolley1 = {x = -2952.69, y = 483.34, z = 14.68, h = 85},
        trolley2 = {x = -2952.57, y = 485.18, z = 14.68, h = 85},
        trolley3 = {x = -2958.35, y = 484.69, z = 14.68, h = 270},
        objects = {
            vector3(-2952.69, 483.34, 14.68),
            vector3(-2952.57, 485.18, 14.68),
            vector3(-2958.35, 484.69, 14.68)
        },
        loot1 = false,
        loot2 = false,
        loot3 = false,
        lasers = true,
        onaction = false,
        door1 = false,
        door2 = false,
        lastrobbed = 0
    },
    F5 = {
        doors = {
            startloc = {x = -353.89, y = -55.25, z = 49.04, h = 158.27, animcoords = vector4(-354.0, -55.21, 49.04, 161.67)},
            secondloc = {x = -352.13, y = -55.5, z = 49.04, h = 160.42, animcoords = vector4(-352.13, -55.5, 49.04, 160.42)}
        },
        prop = {
            first = {coords = vector3(-353.50, -55.37, 49.157), rot = vector3(90.0, 180.0, 20.0)},
            second = {coords = vector3(-352.15, -55.77, 49.157), rot = vector3(90.0, 180.0, 110.0)}
        },
        trolley1 = {x = -353.34, y = -59.48, z = 48.01, h = -15},
        trolley2 = {x = -351.57, y = -60.09, z = 48.01, h = -15},
        trolley3 = {x = -350.57, y = -54.45, z = 48.01, h = 160},
        objects = {
            vector3(-353.34, -59.48, 48.01),
            vector3(-351.57, -60.09, 48.01),
            vector3(-350.57, -54.45, 48.01)
        },
        loot1 = false,
        loot2 = false,
        loot3 = false,
        lasers = true,
        onaction = false,
        door1 = false,
        door2 = false,
        lastrobbed = 0
    },
    F6 = {
        doors = {
            startloc = {x = 1176.04, y = 2712.85, z = 38.09, h = 358.93, animcoords = vector4(1176.28, 2712.83, 38.09, 0.83)},
            secondloc = {x = 1174.34, y = 2712.54, z = 38.09, h = 1.04, animcoords = vector4(1174.34, 2712.54, 38.09, 1.04)}
        },
        prop = {
            first = {coords = vector3(1175.70, 2712.82, 38.207), rot = vector3(90.0, 180.0, 180.0)},
            second = {coords = vector3(1174.267, 2712.736, 38.207), rot = vector3(90.0, 180.0, -90.0)}
        },
        trolley1 = {x = 1174.24, y = 2716.69, z = 37.07, h = -180},
        trolley2 = {x = 1172.27, y = 2716.67, z = 37.07, h = -180},
        trolley3 = {x = 1173.23, y = 2711.02, z = 37.07, h = 0},
        objects = {
            vector3(1174.24, 2716.69, 37.07),
            vector3(1172.27, 2716.67, 37.07),
            vector3(1173.23, 2711.02, 37.07)
        },
        loot1 = false,
        loot2 = false,
        loot3 = false,
        lasers = true,
        onaction = false,
        door1 = false,
        door2 = false,
        lastrobbed = 0
    }
}