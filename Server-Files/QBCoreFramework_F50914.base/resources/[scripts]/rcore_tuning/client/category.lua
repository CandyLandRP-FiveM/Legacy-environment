VehicleCategories = nil

Citizen.CreateThread(function()
    Wait(0)
    
    WarMenu.CreateMenu('tuningCat', '')
    WarMenu.SetTitleBackgroundSprite('tuningCat', "tuning_ui", "rcore_tuning_template_menu")
    WarMenu.SetSubTitle('tuningCat', '~w~Select tuning cost modifier')

    VehicleCategories = LoadVehicleCategories()
    -- OpenCategorizationMenu()
end)

RegisterNetEvent('rcore_tuning:startCategorization', function()
    OpenCategorizationMenu()
end)

RegisterNetEvent('rcore_tuning:addNewCategories', function(newCats)
    while not VehicleCategories do
        Wait(500)
    end

    for a, b in pairs(newCats) do
        VehicleCategories[a] = b
    end
end)

RegisterNetEvent('rcore_tuning:setVehicleCategory', function(model, class)
    VehicleCategories[model] = class
end)

function OpenCategorizationMenu()
    local veh = GetVehiclePedIsIn(PlayerPedId())

    if veh > 0 then
        local modelName = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(veh)))
        local vehModel = GetEntityModel(veh)
        local currentCat = -1

        if VehicleCategories[vehModel] then
            currentCat = VehicleCategories[vehModel]
        end

        WarMenu.OpenMenu('tuningCat')
        -- WarMenu.SetTitle('tuningCat', modelName)
        while WarMenu.IsMenuOpened('tuningCat') do
            for i = 0, ClassToModifierTableMax do
                local modString = ClassToModifierTable[i] * 100
                modString = string.format('%s %% (%s)', tonumber(math.floor(modString)), ClassToModifierLabel[i])

                if WarMenu.Button(modString, currentCat == i and 'Current' or '') then
                    local model = GetEntityModel(veh)

                    TriggerServerEvent('rcore_tuning:categorizeVehicle', model, i)
                    WarMenu.CloseMenu()
                end
            end
            WarMenu.Display()

            Wait(0)
        end
    end
end