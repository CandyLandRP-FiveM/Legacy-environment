local QBCore = exports['qb-core']:GetCoreObject()
local SpawnVehicle = false

-- Vehicle Rentals

local comma_value = function(n) -- credit http://richard.warburton.it
    local left,num,right = string.match(n,'^([^%d]*%d)(%d*)(.-)$')
    return left..(num:reverse():gsub('(%d%d%d)','%1,'):reverse())..right
end

RegisterNetEvent('qb-rental:client:LicenseCheck', function(data)
    license = data.LicenseType
    if license == "driver" then
        QBCore.Functions.TriggerCallback("qb-rentals:server:getDriverLicenseStatus", function(hasLicense)
            if hasLicense  then
                TriggerEvent('qb-rental:client:openMenu', data)
                MenuType = "vehicle"
            else
                QBCore.Functions.Notify(Lang:t("error.no_driver_license"), "error", 4500)
            end
        end)
    end
end)        

RegisterNetEvent('qb-rental:client:openMenu', function(data)
    menu = data.MenuType

    local vehMenu = {
        [1] = {
            header = "Rental Vehicles",
            isMenuHeader = true,
        },
    
        [2] = {
            id = 1,
            header = "Return Vehicle ",
            txt = Lang:t("task.return_veh"),
            params = {
                event = "qb-rental:client:return",
            }
        }
    }
    
    if menu == "boat" then
        for k=1, #Config.Vehicles.sea do
            local veh = QBCore.Shared.Vehicles[Config.Vehicles.sea[k].model]
            local name = veh and ('%s %s'):format(veh.brand, veh.name) or Config.Vehicles.sea[k].model:sub(1,1):upper()..Config.Vehicles.sea[k].model:sub(2)
            vehMenu[#vehMenu+1] = {
                id = k+1,
                header = name,
                txt = ("$%s"):format(comma_value(Config.Vehicles.sea[k].money)),
                params = {
                    event = "qb-rental:client:spawncar",
                    args = {
                        model = Config.Vehicles.sea[k].model,
                        money = Config.Vehicles.sea[k].money,
                    }
                }
            }
        end
    end
    exports['qb-menu']:openMenu(vehMenu)
end)

local CreateNPC = function()
    -- Boat Rentals
    created_ped = CreatePed(5, Config.Locations.boat.pedhash, Config.Locations.boat.coords.x, Config.Locations.boat.coords.y, Config.Locations.boat.coords.z, Config.Locations.boat.coords.w, false, true)
    FreezeEntityPosition(created_ped, true)
    SetEntityInvincible(created_ped, true)
    SetBlockingOfNonTemporaryEvents(created_ped, true)
    TaskStartScenarioInPlace(created_ped, 'WORLD_HUMAN_CLIPBOARD', 0, true)
end

local SpawnNPC = function()
    CreateThread(function()
        -- Boat Rentals
        RequestModel(Config.Locations.boat.pedhash)
        while not HasModelLoaded(Config.Locations.boat.pedhash) do
            Wait(1)
        end
        CreateNPC() 
    end)
end

CreateThread(function()
    SpawnNPC()
end)

RegisterNetEvent('qb-rental:client:spawncar', function(data)
    local player = PlayerPedId()
    local money = data.money
    local model = data.model
    local label = Lang:t("error.not_enough_space", {vehicle = menu:sub(1,1):upper()..menu:sub(2)})
    if menu == "boat" then
        if IsAnyVehicleNearPoint(Config.Locations.boat.spawnpoint.x, Config.Locations.boat.spawnpoint.y, Config.Locations.boat.spawnpoint.z, 10.0) then 
            QBCore.Functions.Notify(label, "error", 4500)
            return
        end  
    end

    QBCore.Functions.TriggerCallback("qb-rental:server:CashCheck",function(money)
        if money then
            if menu == "boat" then
                QBCore.Functions.SpawnVehicle(model, function(vehicle)
                    SetEntityHeading(vehicle, Config.Locations.boat.spawnpoint.w)
                    TaskWarpPedIntoVehicle(player, vehicle, -1)
                    TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(vehicle))
                    SetVehicleEngineOn(vehicle, true, true)
                    SetVehicleDirtLevel(vehicle, 0.0)
                    exports[Config.FuelExport]:SetFuel(vehicle, 100)
                    SpawnVehicle = true
                end, Config.Locations.boat.spawnpoint, true)
            end 
            Wait(1000)
            local vehicle = GetVehiclePedIsIn(player, false)
            local vehicleLabel = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
            vehicleLabel = GetLabelText(vehicleLabel)
            local plate = GetVehicleNumberPlateText(vehicle)
            TriggerServerEvent('qb-rental:server:rentalpapers', plate, vehicleLabel)
        else
            QBCore.Functions.Notify(Lang:t("error.not_enough_money"), "error", 4500)
        end
    end, money)
end)

Citizen.CreateThread(function()
    for _, info in pairs(Config.Blips) do
    info.blip = AddBlipForCoord(info.x, info.y, info.z)
    SetBlipSprite(info.blip, info.id)
    SetBlipDisplay(info.blip, 4)
    SetBlipScale(info.blip, 0.65)
    SetBlipColour(info.blip, info.colour)
    SetBlipAsShortRange(info.blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(info.title)
    EndTextCommandSetBlipName(info.blip)
    end
end)
