Citizen.CreateThread(function()
    if Config.Framework == 2 then
        AutoCategorizeQBCore()
    elseif Config.Framework == 1 then
        AutoCategorizeESX()
    end
end)

AddEventHandler('rcore_tuning:categorizeVehicles', function(vehicles)
    AutoCategorize(vehicles)
end)

function AutoCategorizeQBCore()
    local QBCore = Citizen.Await(GetSharedObjectSafe())
    local data = QBCore.Shared.Vehicles

    local vehicles = {}

    for _, vehData in pairs(data) do
        if vehData and vehData.model and vehData.price then
            table.insert(vehicles, {model = vehData.model, price = vehData.price})
        end
    end

    table.sort(vehicles, function(a, b)
        return a.price < b.price
    end)

    AutoCategorize(vehicles)
end

function AutoCategorizeESX()
    local dbVehicles = FetchFromESXTable()

    if dbVehicles and #dbVehicles > 0 then
        local vehicles = {}

        for _, vehData in pairs(dbVehicles) do
            if vehData and vehData.model and vehData.price then
                table.insert(vehicles, {model = vehData.model, price = vehData.price})
            end
        end
        table.sort(vehicles, function(a, b)
            return a.price < b.price
        end)

        AutoCategorize(vehicles)
    end
end

function FetchFromESXTable()
    local vehiclesToBuyTable = MySQL.Sync.fetchAll([[
        SHOW TABLES LIKE 'vehicles_to_buy';
    ]])

    if #vehiclesToBuyTable == 1 then
        return MySQL.Sync.fetchAll([[
            SELECT model, price
            FROM vehicles_to_buy
        ]])
    end

    local vehiclesTable = MySQL.Sync.fetchAll([[
        SHOW TABLES LIKE 'vehicles';
    ]])


    if #vehiclesTable == 1 then
        return MySQL.Sync.fetchAll([[
            SELECT model, price
            FROM vehicles
        ]])
    end

    return nil
end

function AutoCategorize(vehicles)
    Wait(0)
    local vehCount = #vehicles
    local vehsPerCategory = math.ceil(vehCount/(ClassToModifierTableMax+1))

    local categorizedVehicles = {}
    local stats = {}
    for i = 1, #vehicles do
        local cat = math.min(math.floor(i/vehsPerCategory), ClassToModifierTableMax)
        categorizedVehicles[vehicles[i].model] = cat
    end
    
    Wait(0)
    
    local cats = LoadVehicleCategories()
    local anythingChanged = false

    for model, class in pairs(categorizedVehicles) do
        local modelHash = GetHashKey(model)

        local newClass = class
        local oldClass = cats[modelHash]

        if not oldClass then
            cats[modelHash] = newClass
            anythingChanged = true
        end
    end

    if anythingChanged then
        SaveVehicleCategories(cats)
        VehicleCategories = cats
    end
end
