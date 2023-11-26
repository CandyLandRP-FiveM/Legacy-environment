local vehicleZoneExportName = 'Vehicle'
local removeZoneExportName = "RemoveZone"
local openCatalogueFromInsideTargetName = '_rcore_tun_catalog'
local targetId = nil

if Config.UseQTarget then
	Config.TargetResourceName = 'qtarget'
end
if Config.UseBTTarget then
	Config.TargetResourceName = 'bt-target'
end
if Config.UseQBTarget then
	Config.TargetResourceName = 'qb-target'
    vehicleZoneExportName = 'AddGlobalVehicle'
end
if Config.UseOxTarget then
	Config.TargetResourceName = 'ox_target'
    vehicleZoneExportName = 'addGlobalVehicle'
    removeZoneExportName = "removeZone"
end

function GetTargetResource()
    return Config.TargetResourceName;
end


AddEventHandler('rcore_tuning:target:openCatalog', function(data)
    local veh = data.entity
    local driver = GetPedInVehicleSeat(veh, -1)

    if driver > 0 then
        local playerId = NetworkGetPlayerIndexFromPed(driver)
        local serverId = GetPlayerServerId(playerId)
        
        OpenCatalogForPlayer(serverId)
    end
end)

AddEventHandler('rcore_tuning:target:openOrderedTuning', function(data)
    if CurrentMinigamePart then
        UnsetCurrentMinigame(false)
    else
        DisplayTuningWorkerMenuForVehicle(data.entity)
    end
end)

AddEventHandler('rcore_tuning:target:openCatalogCurrentVehicle', function()
    TriggerEvent('rcore_tuning:target:openCatalog', {entity = GetVehiclePedIsIn(PlayerPedId())})
end)

AddEventHandler('rcore_tuning:target:openOrderedTuningCurrentVehicle', function()
    if CurrentMinigamePart then
        UnsetCurrentMinigame(false)
    else
        DisplayTuningWorkerMenuForVehicle(GetVehiclePedIsIn(PlayerPedId()))
    end
end)


if Config.UseQTarget or Config.UseBTTarget or Config.UseQBTarget or Config.UseOxTarget then
    Citizen.CreateThread(function()
        if Config.UseQTarget or Config.UseBTTarget or Config.UseQBTarget then
            exports[GetTargetResource()][vehicleZoneExportName](exports['qb-target'], {
                options = {
                    {
                        type = "client",
                        event = "rcore_tuning:target:openCatalog",
                        icon = "fas fa-box-circle-check",
                        label = "Open Catalogue For Driver",
                        canInteract = function(entity)
                            return IsControllingCurrentShop and IsInsideShop -- and GetPedInVehicleSeat(entity, -1) > 0
                        end,
                    },
                    {
                        type = "client",
                        event = "rcore_tuning:target:openOrderedTuning",
                        icon = "fas fa-box-circle-check",
                        label = "Ordered Tuning",
                        canInteract = function(entity)
                            return IsControllingCurrentShop and IsInsideShop -- and GetPedInVehicleSeat(entity, -1) > 0
                        end,
                    },
                },
                distance = 3.0,
            })
            
            exports[GetTargetResource()]:AddTargetBone({'seat_dside_f', 'seat_pside_f', 'seat_dside_r', 'seat_pside_r', 'bonnet', 'boot'}, {
                options = {
                    {
                        type = "client",
                        event = "rcore_tuning:target:openCatalog",
                        icon = "fas fa-box-circle-check",
                        label = "Open Catalogue For Driver",
                        canInteract = function(entity)
                            return IsControllingCurrentShop and IsInsideShop -- and GetPedInVehicleSeat(entity, -1) > 0
                        end,
                    },
                    {
                        type = "client",
                        event = "rcore_tuning:target:openOrderedTuning",
                        icon = "fas fa-box-circle-check",
                        label = "Ordered Tuning",
                        canInteract = function(entity)
                            return IsControllingCurrentShop and IsInsideShop -- and GetPedInVehicleSeat(entity, -1) > 0
                        end,
                    },
                },
                distance = 3.0,
            })
        else
            exports[GetTargetResource()][vehicleZoneExportName](exports[GetTargetResource()], {
                {
                    name = 'catalogue',
                    icon = 'fa-solid fa-car-side',
                    label = "Open Catalogue For Driver",
                    event = "rcore_tuning:target:openCatalog",
                    canInteract = function(entity, distance, coords, name)
                        return IsControllingCurrentShop and IsInsideShop
                    end,
                },
                {
                    name = 'catalogue',
                    icon = 'fa-solid fa-car-side',
                    label = "Ordered Tuning",
                    event = "rcore_tuning:target:openOrderedTuning",
                    canInteract = function(entity, distance, coords, name)
                        return IsControllingCurrentShop and IsInsideShop
                    end,
                }
            })
        end
        local doesEntityZoneExist = nil

        while true do
            Wait(1000)

            local ped = PlayerPedId()
            local veh = GetVehiclePedIsIn(ped, false)

            if CanOpenCatalogueFromInsideVehicle(veh) then
                if doesEntityZoneExist and doesEntityZoneExist ~= veh then
                    doesEntityZoneExist = nil
                    if Config.UseOxTarget then
                        exports[GetTargetResource()]:removeZone(targetId)
                        targetId = nil
                    else 
                        exports[GetTargetResource()][removeZoneExportName](openCatalogueFromInsideTargetName, openCatalogueFromInsideTargetName)
                    end
                end

                if not doesEntityZoneExist then
                    doesEntityZoneExist = veh
                    addTuningBoxZone(veh)
                end
            elseif doesEntityZoneExist then
                doesEntityZoneExist = nil
                if Config.UseOxTarget then
                    exports[GetTargetResource()]:removeZone(targetId)
                    targetId = nil
                else
                    exports[GetTargetResource()][removeZoneExportName](openCatalogueFromInsideTargetName)
                end
            end
        end
    end)
end

function addTuningBoxZone(veh)
    if Config.UseQTarget or Config.UseBTTarget or Config.UseQBTarget then
        exports[GetTargetResource()]:AddBoxZone(openCatalogueFromInsideTargetName, 
            GetEntityCoords(veh), 40.0, 40.0,
            {
                name=openCatalogueFromInsideTargetName,
                useZ = true,
                heading=11.0,
            }, 
            {
                options = {
                    {
                        event = "rcore_tuning:target:openCatalogCurrentVehicle",
                        icon = "fas fa-box-circle-check",
                        label = "Open Catalogue For Driver",
                    },
                    {
                        event = "rcore_tuning:target:openOrderedTuningCurrentVehicle",
                        icon = "fas fa-box-circle-check",
                        label = "Ordered Tuning",
                    },
                },
                distance = 2.5
            }
        )
    else
        targetId = exports[GetTargetResource()]:addBoxZone({
            coords = GetEntityCoords(veh),
            size = vector3(40.0, 40.0, 40.0),
            rotation = 11.0,
            debug = false,
            
            options = { 
                {
                    name = 'catalogue',
                    icon = 'fa-solid fa-car-side',
                    label = "Open Catalogue For Driver",
                    event = "rcore_tuning:target:openCatalogCurrentVehicle",
                    canInteract = function(entity, distance, coords, name)
                        return IsControllingCurrentShop and IsInsideShop
                    end,
                },
                {
                    name = 'catalogue',
                    icon = 'fa-solid fa-car-side',
                    label = "Ordered Tuning",
                    event = "rcore_tuning:target:openOrderedTuningCurrentVehicle",
                    canInteract = function(entity, distance, coords, name)
                        return IsControllingCurrentShop and IsInsideShop
                    end,
                }
            }
        })
    end
end

function CanOpenCatalogueFromInsideVehicle(veh)
    if not IsControllingCurrentShop or not IsInsideShop then
        return false
    end

    if veh <= 0 then
        return false
    end

    if GetPedInVehicleSeat(veh, -1) <= 0 then
        return false
    end

    if GetEntitySpeed(veh) > 5 then
        return false
    end

    return true
end


AddEventHandler('onResourceStop', function(name)
    if GetCurrentResourceName() == name then
        local resourceName = GetTargetResource()
        if resourceName then
            if Config.UseOxTarget then
                if targetId then
                    exports[resourceName]:removeZone(targetId)
                end
                return
            end
            exports[resourceName][removeZoneExportName](openCatalogueFromInsideTargetName)
        end
    end
end)