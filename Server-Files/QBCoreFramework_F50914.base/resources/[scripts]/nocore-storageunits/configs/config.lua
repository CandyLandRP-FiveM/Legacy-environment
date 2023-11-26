Shared = {
    Debug = false, -- activates prints for easier debugging and turning polyzones in debug
    Framework = 'qb', -- qb and esx available
    Inventory = 'qs-inventory', -- its only ox_inventory, qs-inventory and chezza for now [its used for registering and deleting storages you can still edit openInventory function below] leave it empty if you are not using any of these inventories
    CoreName = 'qb-core', -- folder name of the core [qb-core - qb, es_extended - esx]
    OnPlayerLoadedName = 'QBCore:Client:OnPlayerLoaded', -- event for player loaded [QBCore:Client:OnPlayerLoaded - qb, esx:playerLoaded - esx]
    TargetName = 'qb-target', -- folder name of the target [qb-target, qtarget, etc.]
    PlayersTable = 'players', -- name of the table where players are saved (for offline charging) [players - qb, users - esx]
    InventoryStashTable = 'stashes', -- name of the table where stashes are saved [only used for qb/qs-inventory]
    QBInputName = 'qb-input', -- folder name of the input
    UseOxLib = true, -- if its enabled it will use ox_lib for callback and dialog input, if its disabled it will use default QBCore/ESX callbacks and qb-input
    DeleteExpiredStorage = false, -- if this is enabled when storage expires it will automatically delete, if it's not enabled it will lock the storage and can be unlocked only from storages table in db when setting "expired" to false and restarting the resource 
    CheckForExpiredTime = 30, -- time to check all storages if there's an expired one [in minutes]
    CheckDistance = 5, -- distance check when renting storage, changing password, cancel rent [against exploiting] 
    PaymentAtemptInterval = 3, -- On how many days trys to charge the player
    PaymentFails = 3, -- After how many payment attempts it will lock the storage
    EnableBlips = false,
    Tiers = { -- you can add as many as you want but you need to edit "availableTiers" in Storages
        [1] = {
            name = 'Small',
            price = 5000,
            maxWeight = 10000000,
            slots = 30,
            rentDays = 7 -- For how many days is the storage rent [you still need to change "week" in the locales]
        },
        [2] = {
            name = 'Medium',
            price = 7500,
            maxWeight = 15000000,
            slots = 40,
            rentDays = 7 -- For how many days is the storage rent [you still need to change "week" in the locales]
        },
        [3] = {
            name = 'Big',
            price = 10000,
            maxWeight = 25000000,
            slots = 50,
            rentDays = 7 -- For how many days is the storage rent [you still need to change "week" in the locales]
        }
    },
    Storages = { -- all storages' polyzones for the eye
        [1] = {coords = vector3(-73.25, -1197.58, 27.67), heading = 0.0, width = 2.2, length = 5.0, minZ=26.67, maxZ=30.67, avaibleTiers = {1, 2, 3}},
        [2] = {coords = vector3(-67.8, -1199.76, 27.73), heading = 315.0, width = 2.2, length = 5.0, minZ=26.67, maxZ=30.67, avaibleTiers = {1, 2, 3}},
        [3] = {coords = vector3(-62.14, -1205.51, 28.29), heading = 312.0, width = 2.2, length = 5.0, minZ=26.67, maxZ=30.67, avaibleTiers = {1, 2, 3}},
        [4] = {coords = vector3(-56.76, -1210.8, 28.64), heading = 315.0, width = 2.2, length = 5.0, minZ=26.67, maxZ=30.67, avaibleTiers = {1, 2, 3}},
        [5] = {coords = vector3(-53.74, -1216.65, 28.7), heading = 270.0, width = 2.2, length = 5.0, minZ=26.67, maxZ=30.67, avaibleTiers = {1, 2, 3}},
        [6] = {coords = vector3(-78.53, -1203.43, 27.62), heading = 0.0, width = 2.2, length = 5.0, minZ=26.67, maxZ=30.67, avaibleTiers = {1, 2, 3}},
        [7] = {coords = vector3(-70.51, -1205.91, 27.88), heading = 315.0, width = 2.2, length = 5.0, minZ=26.67, maxZ=30.67, avaibleTiers = {1, 2, 3}},
        [8] = {coords = vector3(-65.3, -1211.12, 28.29), heading = 315.0, width = 2.2, length = 5.0, minZ=26.67, maxZ=30.67, avaibleTiers = {1, 2, 3}},
        [9] = {coords = vector3(-66.18, -1227.21, 28.85), heading = 52.0, width = 2.2, length = 5.0, minZ=26.67, maxZ=30.67, avaibleTiers = {1, 2, 3}},
        [10] = {coords = vector3(-71.84, -1234.27, 29.02), heading = 51.0, width = 2.2, length = 5.0, minZ=26.67, maxZ=30.67, avaibleTiers = {1, 2, 3}},
        [11] = {coords = vector3(-43.23, -1235.9, 29.34), heading = 270.0, width = 2.2, length = 5.0, minZ=26.67, maxZ=30.67, avaibleTiers = {1, 2, 3}},
        [12] = {coords = vector3(-43.04, -1242.23, 29.34), heading = 270.0, width = 2.2, length = 5.0, minZ=26.67, maxZ=30.67, avaibleTiers = {1, 2, 3}},
        [13] = {coords = vector3(-43.23, -1252.7, 29.28), heading = 270.0, width = 2.2, length = 5.0, minZ=26.67, maxZ=30.67, avaibleTiers = {1, 2, 3}},
        [14] = {coords = vector3(-57.23, -1228.45, 28.76), heading = 47.0, width = 2.5, length = 5.0, minZ=26.67, maxZ=30.67, avaibleTiers = {1, 2, 3}},
        [15] = {coords = vector3(-61.33, -1232.87, 28.87), heading = 47.0, width = 2.5, length = 5.0, minZ=26.67, maxZ=30.67, avaibleTiers = {1, 2, 3}},
        [16] = {coords = vector3(-66.72, -1238.76, 29.01), heading = 47.0, width = 2.5, length = 5.0, minZ=26.67, maxZ=30.67, avaibleTiers = {1, 2, 3}},
        [17] = {coords = vector3(-73.71, -1242.1, 29.08), heading = 0.0, width = 2.5, length = 5.0, minZ=26.67, maxZ=30.67, avaibleTiers = {1, 2, 3}},
        [18] = {coords = vector3(-2203.08, 4244.61, 47.45), heading = 38.0, width = 1.4, length = 2.4, minZ=46.23, maxZ=50.23, avaibleTiers = {1, 2, 3}},
        [19] = {coords = vector3(-2205.65, 4242.82, 47.5), heading = 38.0, width = 1.4, length = 2.4, minZ=46.23, maxZ=50.23, avaibleTiers = {1, 2, 3}},
        [20] = {coords = vector3(-2208.05, 4240.93, 47.43), heading = 38.0, width = 1.4, length = 2.4, minZ=46.23, maxZ=50.23, avaibleTiers = {1, 2, 3}},
        [21] = {coords = vector3(-2209.56, 4237.85, 47.45), heading = 38.0, width = 1.5, length = 2.4, minZ=46.23, maxZ=50.23, avaibleTiers = {1, 2, 3}},
        [22] = {coords = vector3(-2211.81, 4235.74, 47.36), heading = 38.0, width = 1.4, length = 2.4, minZ=46.23, maxZ=50.23, avaibleTiers = {1, 2, 3}},
        [23] = {coords = vector3(-2214.44, 4233.91, 47.18), heading = 38.0, width = 1.4, length = 2.4, minZ=46.23, maxZ=50.23, avaibleTiers = {1, 2, 3}},
        [24] = {coords = vector3(-2215.84, 4230.85, 47.09), heading = 38.0, width = 1.4, length = 2.4, minZ=46.23, maxZ=50.23, avaibleTiers = {1, 2, 3}},
        [25] = {coords = vector3(-2218.38, 4228.85, 46.94), heading = 38.0, width = 1.4, length = 2.4, minZ=46.23, maxZ=50.23, avaibleTiers = {1, 2, 3}},
        [26] = {coords = vector3(-2220.87, 4227.14, 46.9), heading = 38.0, width = 1.4, length = 2.4, minZ=46.23, maxZ=50.23, avaibleTiers = {1, 2, 3}},
        [27] = {coords = vector3(-1306.95, -1263.16, 4.54), heading = 20.0, width = 2.3, length = 3.2, minZ=2.69, maxZ=6.69, avaibleTiers = {1, 2, 3}},
        [28] = {coords = vector3(-1310.92, -1264.55, 4.56), heading = 20.0, width = 2.3, length = 3.2, minZ=2.69, maxZ=6.69, avaibleTiers = {1, 2, 3}},
        [29] = {coords = vector3(-1315.09, -1266.17, 4.58), heading = 20.0, width = 2.3, length = 3.2, minZ=2.69, maxZ=6.69, avaibleTiers = {1, 2, 3}},
        [30] = {coords = vector3(963.65, -1031.01, 40.98), heading = 0.0, width = 4.5, length = 2.2, minZ=39.78, maxZ=43.78, avaibleTiers = {1, 2, 3}},
        [31] = {coords = vector3(963.65, -1025.5, 41.05), heading = 0.0, width = 4.5, length = 2.2, minZ=39.78, maxZ=43.78, avaibleTiers = {1, 2, 3}},
        [32] = {coords = vector3(963.65, -1019.86, 40.91), heading = 0.0, width = 4.5, length = 2.2, minZ=39.78, maxZ=43.78, avaibleTiers = {1, 2, 3}},
        [33] = {coords = vector3(963.56, -1014.2, 40.96), heading = 0.0, width = 4.5, length = 2.2, minZ=39.78, maxZ=43.78, avaibleTiers = {1, 2, 3}},
        [34] = {coords = vector3(-2214.02, 3486.99, 30.17), heading = 0.0, width = 2.4, length = 2.8, minZ=29.17, maxZ=32.37, avaibleTiers = {1, 2, 3}},
        [35] = {coords = vector3(-2221.15, 3486.99, 30.17), heading = 0.0, width = 2.4, length = 2.8, minZ=29.17, maxZ=32.37, avaibleTiers = {1, 2, 3}},
        [36] = {coords = vector3(-2229.92, 3480.87, 30.29), heading = 0.0, width = 2.4, length = 2.8, minZ=29.17, maxZ=32.37, avaibleTiers = {1, 2, 3}},
        [37] = {coords = vector3(-1607.06, -829.68, 10.01), heading = 320.0, width = 2.2, length = 5.0, minZ=9.01, maxZ=13.01, avaibleTiers = {1, 2, 3}},
        [38] = {coords = vector3(-1611.5, -825.75, 10.01), heading = 320.0, width = 2.2, length = 5.0, minZ=9.01, maxZ=13.01, avaibleTiers = {1, 2, 3}},
        [39] = {coords = vector3(-1615.92, -821.83, 10.01), heading = 320.0, width = 2.2, length = 5.0, minZ=9.01, maxZ=13.01, avaibleTiers = {1, 2, 3}},
        [40] = {coords = vector3(-1620.43, -818.05, 10.01), heading = 320.0, width = 2.2, length = 5.0, minZ=9.01, maxZ=13.01, avaibleTiers = {1, 2, 3}},
        [41] = {coords = vector3(-1624.96, -814.22, 10.01), heading = 320.0, width = 2.2, length = 5.0, minZ=9.01, maxZ=13.01, avaibleTiers = {1, 2, 3}},
        [42] = {coords = vector3(-719.05, -1120.16, 10.66), heading = 304.0, width = 0.4, length = 3.2, minZ=9.76, maxZ=12.16, avaibleTiers = {1, 2, 3}},
        [43] = {coords = vector3(-700.0, -1143.5, 10.81), heading = 40.0, width = 0.4, length = 3.0, minZ=9.76, maxZ=12.16, avaibleTiers = {1, 2, 3}},
        [44] = {coords = vector3(-1361.85, -932.78, 9.71), heading = 304.0, width = 0.4, length = 4.4, minZ=8.86, maxZ=12.46, avaibleTiers = {1, 2, 3}},
        [45] = {coords = vector3(227.42, -1763.23, 28.68), heading = 320.0, width = 0.4, length = 3.0, minZ=27.88, maxZ=30.08, avaibleTiers = {1, 2, 3}},
    },
}