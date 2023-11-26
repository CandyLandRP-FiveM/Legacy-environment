local QBCore = exports[Config.CoreEx]:GetCoreObject()

----------------
--START DIVING--
----------------

CreateThread(function()
    exports[Config.TargetEx]:AddBoxZone("startdiving", vector3(-1507.73, 1505.29, 115.29), 1, 1, {
        name = "startdiving",
        heading = 0,
        debugPoly = false,
        minZ = 113.29,
        maxZ = 117.29,
        }, {
            options = { 
            {
                type = "client",
                event = "mz-diving:client:GetDivingContract",
                icon = 'fas fa-laptop',
                label = ' Get Diving Contract'
            },
            {
                type = "client",
                event = "mz-diving:client:Tutorial",
                icon = 'fas fa-question',
                label = ' What am I looking for?'
            },
        },
        distance = 1.2,
     })
end)


------------
--TUTORIAL--
------------

----------------------
--GET DIVING MISSION--
----------------------

-------------------------
--MISSION RANDOMISATION--
-------------------------

-----------------
--FIND TREASURE--
-----------------

exports[Config.TargetEx]:AddTargetModel(Config.boxProp0, {
    options = {
        {
            type = "client",
            event = "mz-diving:client:GiveItemProp0",
            icon = "fas fa-archive",
            label = "Attempt to retrieve salvage...",
        },
    },
    distance = Config.Salvagedistance
})

exports[Config.TargetEx]:AddTargetModel(Config.boxProp1, {
    options = {
        {
            type = "client",
            event = "mz-diving:client:GiveItemProp1",
            icon = "fas fa-archive",
            label = "Attempt to retrieve salvage...",
        },
    },
    distance = Config.Salvagedistance
})

exports[Config.TargetEx]:AddTargetModel(Config.boxProp2, {
    options = {
        {
            type = "client",
            event = "mz-diving:client:GiveItemProp2",
            icon = "fas fa-archive",
            label = "Attempt to retrieve salvage...",
        },
    },
    distance = Config.Salvagedistance
})

exports[Config.TargetEx]:AddTargetModel(Config.boxProp3, {
    options = {
        {
            type = "client",
            event = "mz-diving:client:GiveItemProp3",
            icon = "fas fa-archive",
            label = "Attempt to retrieve salvage...",
        },
    },
    distance = Config.Salvagedistance
})

exports[Config.TargetEx]:AddTargetModel(Config.boxProp4, {
    options = {
        {
            type = "client",
            event = "mz-diving:client:GiveItemProp4",
            icon = "fas fa-archive",
            label = "Attempt to retrieve salvage...",
        },
    },
    distance = Config.Salvagedistance
})

exports[Config.TargetEx]:AddTargetModel(Config.boxProp5, {
    options = {
        {
            type = "client",
            event = "mz-diving:client:GiveItemProp5",
            icon = "fas fa-archive",
            label = "Attempt to retrieve salvage...",
        },
    },
    distance = Config.Salvagedistance
})

-----------------
--LOOT TREASURE--
-----------------

-------------------
--OUTPUT XP CHECK--
-------------------

------------
--TIME OUT--
------------

---------------
--DIVING GEAR--
---------------

--------------
--SELL ITEMS--
--------------

CreateThread(function()
    exports[Config.TargetEx]:AddBoxZone("selldivesalvage", vector3(-201.61, 6354.31, 31.49), 1.3, 0.8, {
        name = "selldivesalvage",
        heading = 65,
        debugPoly = false,
        minZ = 29.49,
        maxZ = 33.49,
        }, 
        {
            options = { 
            {
                type = "client",
                event = "mz-diving:client:menuSelect",
                icon = 'fas fa-dollar-sign',
                label = 'Sell Dive Salvage'
            },
        },
        distance = 2,
     })
end)