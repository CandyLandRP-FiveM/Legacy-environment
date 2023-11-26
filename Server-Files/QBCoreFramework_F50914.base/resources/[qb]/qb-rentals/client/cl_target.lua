CreateThread(function(data)
    
    exports['qb-target']:AddCircleZone("BoatPed", vector3(-803.34, -1495.75, 0.6), 0.4, { 
        name = "boatped", 
        debugPoly = false,
        }, {
        options = {
            {
                type = "client",
                event = "qb-rental:client:openMenu",
                icon = "fas fa-car",
                label = "Rent Boat",
                MenuType = "boat"
            },
        },
        distance = 3.0
        })
end)