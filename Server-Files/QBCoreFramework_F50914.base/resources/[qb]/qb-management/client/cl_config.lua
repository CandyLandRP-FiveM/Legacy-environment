-- Zones for Menues
Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.BossMenus = {
    ['police'] = {
        vector3(485.84051513672, -988.46252441406, 36.593250274658),
    },
    ['realestate'] = {
        vector3(-716.11, 261.21, 84.14),
    },
    ['taxi'] = {
        vector3(907.24, -150.19, 74.17),
    },
    ['cardealer'] = {
        vector3(-27.47, -1107.13, 27.27),
    },
    ['mechanic'] = {
        vector3(-339.53, -156.44, 44.59),
    },
    ['floki'] = {
        vector3(271.5, -1163.97, 30.19),
    },
    ['toxicos'] = {
        vector3(834.67, -933.62, 33.14),
    },        
    ['coolbeans'] = {
        vector3(-1183.41, -1138.52, 7.74),
    },      
    ['upandatom'] = {
        vector3(80.61, 297.87, 109.96),
    },      
    ['pdm'] = {
        vector3(-27.32, -1107.41, 27.04),
    },
    ['nachodaddy'] = {
        vector3(978.07, -1387.21, 32.78),
    },
    ['pinkcage'] = {
        vector3(332.58, -199.46, 54.09),
    },
    ['phaq'] = {
        vector3(-146.81730651855, 295.72201538086, 98.872352600098),
    },
    ['tavern'] = {
        vector3(1234.9000244141, -416.98300170898, 72.469398498535),
    },
    ['petshop'] = {
        vector3(-662.87, -933.13, 21.83),
    },   
    ['pops'] = {
        vector3(1776.62, 3323.22, 41.42),
    },
    ['arcade'] = {
        vector3(2357.51, 3037.01, 33.26),
    }, 
    ['lawyer'] = {
        vector3(-521.52, -170.11, 43.64),
    }, 
    ['cityhall'] = {
        vector3(-574.49, -201.21, 47.52),
    },   
    ['autoexotics'] = {
        vector3(541.79, -200.64, 54.29),
    },  
    ['cyber'] = {
        vector3(684.64, -735.23, 29.08),
    },
    ['moore'] = {
        vector3(93.71, -1294.38, 30.06),
    },
    ['tow'] = {
        vector3(471.47, -1310.99, 29.24),
    },
    ['pawn'] = {
        vector3(165.84, -1317.04, 29.15),
    }, 
    ['rws'] = {
        vector3(153.91, -3211.73, 5.91),
    },         
}

Config.BossMenuZones = {
    ['police'] = {
        { coords = vector3(485.84051513672, -988.46252441406, 36.593250274658), length = 1.35, width = 1.45, heading = 351.0, minZ = 36.00, maxZ = 37.73 },    
    },
    ['realestate'] = {
        { coords = vector3(-716.11, 261.21, 84.14), length = 0.6, width = 1.0, heading = 25.0, minZ = 83.943, maxZ = 84.74 },
    },
    ['taxi'] = {
        { coords = vector3(907.24, -150.19, 74.17), length = 1.0, width = 3.4, heading = 327.0, minZ = 73.17, maxZ = 74.57 },
    },
    ['cardealer'] = {
        { coords = vector3(-27.47, -1107.13, 27.27), length = 2.4, width = 1.05, heading = 340.0, minZ = 27.07, maxZ = 27.67 },
    },
    ['mechanic'] = {
        { coords = vector3(-339.53, -156.44, 44.59), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },
    ['floki'] = {
        { coords = vector3(271.5, -1163.97, 30.19), length = 1.15, width = 2.6, heading = 353.0, minZ = 28.19, maxZ = 32.78 },
    },
    ['toxicos'] = {
        { coords =  vector3(834.67, -933.62, 33.14), length = 1.15, width = 2.6, heading = 353.0, minZ = 32.14, maxZ = 35.14 },
    },
    ['coolbeans'] = {
        { coords =  vector3(-1183.41, -1138.52, 7.74), length = 1.15, width = 2.6, heading = 353.0, minZ = 6.74, maxZ = 9.74 },
    },
    ['upandatom'] = {
        { coords =  vector3(80.61, 297.87, 109.96), length = 1.15, width = 2.6, heading = 353.0, minZ = 108.96, maxZ = 111.96 },
    },
    ['pdm'] = {
        { coords =  vector3(-27.32, -1107.41, 27.04), length = 1.15, width = 2.6, heading = 353.0, minZ = 26.04, maxZ = 29.04 },
    },
    ['nachodaddy'] = {
        { coords =  vector3(978.07, -1387.21, 32.78), length = 1.15, width = 2.6, heading = 353.0, minZ = 31.78, maxZ = 34.78 },
    },
    ['pinkcage'] = {
        { coords =  vector3(332.58, -199.46, 54.09), length = 1.15, width = 2.6, heading = 353.0, minZ = 53.09, maxZ = 56.09 },
    },
    ['phaq'] = {
        { coords =  vector3(-146.81730651855, 295.72201538086, 98.872352600098), length = 1.15, width = 2.6, heading = 353.0, minZ = 97.09, maxZ = 99.09 },
    },
    ['tavern'] = {
        { coords =  vector3(1234.9000244141, -416.98300170898, 72.469398498535), length = 1.15, width = 2.6, heading = 353.0, minZ = 71.09, maxZ = 74.09 },
    },
    ['petshop'] = {
        { coords =  vector3(-662.87, -933.13, 21.83), length = 1.15, width = 2.6, heading = 353.0, minZ = 20.09, maxZ = 22.09 },
    },
    ['pops'] = {
        { coords =  vector3(1776.62, 3323.22, 41.42), length = 1.15, width = 2.6, heading = 353.0, minZ = 40.42, maxZ = 42.42 },
    },
    ['arcade'] = {
        { coords =  vector3(2357.51, 3037.01, 33.26), length = 1.15, width = 2.6, heading = 353.0, minZ = 32.42, maxZ = 34.42 },
    },    
    ['cityhall'] = {
        { coords =   vector3(-574.49, -201.21, 47.52), length = 1.15, width = 2.6, heading = 353.0, minZ = 45.28, maxZ = 49.28 },
    },
    ['lawyer'] = {
        { coords =  vector3(-521.52, -170.11, 43.64), length = 1.15, width = 2.6, heading = 353.0, minZ = 42.14, maxZ = 44.14 },
    },
    ['autoexotics'] = {
        { coords =  vector3(541.79, -200.64, 54.29), length = 1.15, width = 2.6, heading = 353.0, minZ = 53.29, maxZ = 55.29 },
    },
    ['cyber'] = {
        { coords =  vector3(694.69, -741.98, 29.8), length = 1.15, width = 2.6, heading = 353.0, minZ = 28.14, maxZ = 30.8 },
    },
    ['moore'] = {
        { coords =  vector3(93.71, -1294.38, 30.06), length = 1.15, width = 2.6, heading = 353.0, minZ = 29.08, maxZ = 31.08 },
    },
    ['tow'] = {
        { coords =  vector3(471.47, -1310.99, 29.24), length = 1.15, width = 2.6, heading = 353.0, minZ = 26.00, maxZ = 31.24 },
    },
    ['pawn'] = {
        { coords =  vector3(165.84, -1317.04, 29.15), length = 1.15, width = 2.6, heading = 353.0, minZ = 27.15, maxZ = 31.24 },
    },
    ['rws'] = {
        { coords =  vector3(153.91, -3211.73, 5.91), length = 1.15, width = 2.6, heading = 353.0, minZ = 3.91, maxZ = 7.91 },
    },
}

Config.GangMenus = {
    ['bloods'] = {
        vector3(-59.61, 362.27, 114.09),
    },
    ['sons'] = {
        vector3(276.63, -1152.06, 29.11),
    },
    ['vagos'] = {
        vector3(0, 0, 0),
    },
    ['cartel'] = {
        vector3(0, 0, 0),
    },
    ['families'] = {
        vector3(0, 0, 0),
    },
}

Config.GangMenuZones = {
    ['sons'] = {
        { coords = vector3(276.63, -1152.06, 29.11), length = 1.15, width = 2.6, heading = 353.0, minZ = 27.11, maxZ = 31.24 },
    },
    ['bloods'] = {
        { coords = vector3(-59.61, 362.27, 114.09), length = 1.15, width = 2.6, heading = 353.0, minZ = 113.09, maxZ = 115.09 },
    },
}
