local CategorizationAllowed = {}
VehicleCategories = nil

NewCategories = {}

Citizen.CreateThread(function()
    VehicleCategories = LoadVehicleCategories()
end)

RegisterCommand('tuningcategorize', function(source)
    CategorizationAllowed[source] = true

    TriggerClientEvent('rcore_tuning:startCategorization', source)
end, true)

RegisterNetEvent('rcore_tuning:categorizeVehicle', function(model, class)
    local source = source

    if not CategorizationAllowed[source] then
        return
    end

    CategorizationAllowed[source] = nil
    
    local cats = LoadVehicleCategories()

    cats[model] = class
    NewCategories[model] = class
    VehicleCategories[model] = class
    TriggerClientEvent('rcore_tuning:setVehicleCategory', -1, model, class)

    SaveVehicleCategories(cats)
end)

function SaveVehicleCategories(cats)
    SaveResourceFile(
        GetCurrentResourceName(), 
        'vehicles.json', 
        json.encode(cats)
    )
end

AddEventHandler('playerJoining', function()
    local source = source
    TriggerClientEvent('rcore_tuning:addNewCategories', source, NewCategories)
end)