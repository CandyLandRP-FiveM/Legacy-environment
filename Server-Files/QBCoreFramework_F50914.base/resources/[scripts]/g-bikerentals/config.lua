Config = {}

Config.Label = 'Bike Rental & Return'   -- Label for locations on map

Config.WalkUpRentalMenu = false         -- True == Walk up to display to open rental menu, False == Must manually press key at display to open rental menu

--[[
    For each Config.RentalLocations[x]:
    - label: Name of the location
        - Not currently in use, more so for knowing which location we're looking at in the
          config without having to go to the coordinates in game
    - rental_coords: The coordinates of the interactable bike rental display
        - Change to vector4, add w coordinate, and uncomment the SetEntityHeading() calls in
          client/main.lua if you want to configure the direction bike displays are facing
    - spawn_coords: The coordinates a player spawns at on bike when they rent a bike
    - default_veh: The default bike model displayed to players
    - chosen_veh: The current bike model displayed to players
        - Dynamic, changes for everyone when the player changes the bike display
    - active: If the location is active
        - Set to false to disable rentals at this location (location and display will not appear on map or to players at all)
]]
Config.RentalLocations = {
    [1] = {
        label = 'Alta Apartments',
        rental_coords = vector3(-266.0, -972.54, 30.21), spawn_coords = vector4(-262.5, -981.77, 31.22, 240.95),
        default_veh = 'bmx', chosen_veh = 'bmx',
        active = true
    },
    [2] = {
        label = 'Bus Station',
        rental_coords = vector3(452.93, -637.33, 27.50), spawn_coords = vector4(458.28, -634.23, 28.5, 351.08),
        default_veh = 'cruiser', chosen_veh = 'cruiser',
        active = true
    },
    [3] = {
        label = 'Harmoney Hotel',
        rental_coords = vector3(1145.46, 2669.35, 37.03), spawn_coords = vector4(1137.87, 2671.75, 38.08, 359.5),
        default_veh = 'fixter', chosen_veh = 'fixter',
        active = true
    },
    [4] = {
        label = 'Paleto Bus Station',
        rental_coords = vector3(-231.95, 6202.19, 30.72), spawn_coords = vector4(-239.25, 6184.55, 31.49, 136.95),
        default_veh = 'scorcher', chosen_veh = 'scorcher',
        active = true
    },
    [5] = {
        label = 'Del Perro Pier',
        rental_coords = vector3(-1845.72, -1213.11, 12.01), spawn_coords = vector4(-1845.72, -1213.11, 13.02, 237.19),
        default_veh = 'tribike', chosen_veh = 'tribike',
        active = true
    },
    [6] = {
        label = 'Floki',
        rental_coords = vector3(268.6, -1164.25, 28.18), spawn_coords = vector4(263.3, -1164.36, 29.17, 86.64),
        default_veh = 'tribike2', chosen_veh = 'tribike2',
        active = true
    }, 
}

--[[
    For each Config.Bikes[x]:
    - model: The bike model
    - label: The name of the bike as is displayed to the player
    - rental_cost: The cost to rent this bike
    - return_reimbursement: The amount of money they player gets if they return the bike
    - available: If the bike is available for rent
        - Set to false to remove this bike from available rentals
]]
Config.Bikes = {
    [1] = { model = 'bmx', label = 'BMX', rental_cost = 250, return_reimbursement = 150, available = true },
    [2] = { model = 'cruiser', label = 'Cruiser', rental_cost = 250, return_reimbursement = 150, available = true },
    [3] = { model = 'fixter', label = 'Fixter', rental_cost = 250, return_reimbursement = 150, available = true },
    [4] = { model = 'scorcher', label = 'Scorcher', rental_cost = 250, return_reimbursement = 150, available = true },
    [5] = { model = 'tribike', label = 'Tribike', rental_cost = 250, return_reimbursement = 150, available = true },
    [6] = { model = 'tribike2', label = 'Tribike 2', rental_cost = 250, return_reimbursement = 150, available = true },
    [7] = { model = 'tribike3', label = 'Tribike 3', rental_cost = 250, return_reimbursement = 150, available = true },
}