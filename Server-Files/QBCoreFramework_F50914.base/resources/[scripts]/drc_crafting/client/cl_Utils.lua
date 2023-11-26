lib.locale()
local spawnedTables = {}


local function AutoDetectFramework()
    if GetResourceState("es_extended") == "started" then
        return "ESX"
    elseif GetResourceState("qb-core") == "started" then
        return "qbcore"
    else
        return "standalone"
    end
end

local function AutoDetectTarget()
    if GetResourceState("qtarget") == "started" then
        return "qtarget"
    elseif GetResourceState("qb-target") == "started" then
        return "qb-target"
    elseif GetResourceState("ox_target") == "started" then
        return "ox_target"
    end
end

if Config.Framework == "auto-detect" then
    Config.Framework = AutoDetectFramework()
end

if Config.Target == "auto-detect" then
    Config.Target = AutoDetectTarget()
end

if Config.Framework == "ESX" then
    if Config.NewESX then
        ESX = exports["es_extended"]:getSharedObject()
    else
        ESX = nil
        CreateThread(function()
            while ESX == nil do
                TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
                Wait(100)
            end
        end)
    end
elseif Config.Framework == "qbcore" then
    QBCore = nil
    QBCore = exports["qb-core"]:GetCoreObject()
elseif Config.Framework == "standalone" then
    -- ADD YOU FRAMEWORK
end
-- Your notification type settings
-- •» You can edit a type of notifications, with chaning type or triggering your own.


Notify = function(type, title, text)
    if Config.NotificationType == "ESX" then
        ESX.ShowNotification(text)
    elseif Config.NotificationType == "ox_lib" then
        if type == "info" then
            lib.notify({
                title = title,
                description = text,
                type = "inform"
            })
        elseif type == "error" then
            lib.notify({
                title = title,
                description = text,
                type = "error"
            })
        elseif type == "success" then
            lib.notify({
                title = title,
                description = text,
                type = "success"
            })
        end
    elseif Config.NotificationType == "qbcore" then
        if type == "success" then
            QBCore.Functions.Notify(text, "success", 5000)
        elseif type == "info" then
            QBCore.Functions.Notify(text, "primary", 5000)
        elseif type == "error" then
            QBCore.Functions.Notify(text, "error", 5000)
        end
    elseif Config.NotificationType == "custom" then
        print("add your notification system! in cl_Utils.lua")
        -- ADD YOUR NOTIFICATION | TYPES ARE info, error, success
    end
end

ProgressBar = function(duration, label)
    if Config.Progress == "ox" then
        lib.progressBar({
            duration = duration,
            label = label,
            useWhileDead = false,
            canCancel = false
        })
    elseif Config.Progress == "qbcore" then
        QBCore.Functions.Progressbar(label, label, duration, false, true, {
        }, {}, {}, {}, function()
        end)
        Wait(duration)
    elseif Config.Progress == "progressBars" then
        exports['progressBars']:startUI(duration, label)
        Wait(duration)
    end
end

Target = function()
    if Config.Target == "qtarget" then
        return exports['qtarget']
    end
    if Config.Target == "qb-target" then
        return exports['qb-target']
    end
end

Marker = function(k, v)
    CreateThread(function()
        local EnteredZone = false
        while true do
            local playerCoords = GetEntityCoords(PlayerPedId(), true)
            local sleep = 500
            local inZone = false
            local dist = #(playerCoords - vector3(v.Positions.coords))
            if dist < v.Marker.DrawDistance then
                sleep = 5
                DrawMarker(v.Marker.Type, v.Positions.coords, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Marker.Size.x,
                    v.Marker.Size.y, v.Marker.Size.z, v.Marker.Color.r, v.Marker.Color.g, v.Marker.Color.b,
                    v.Marker.Color.a, false, true, 2, false, false, false, false)
                if dist < 3.0 then
                    inZone = true
                    lib.showTextUI('[E] - ' .. v.Label)
                    if (IsControlJustReleased(1, 51)) then --Control E
                        TriggerEvent("drc_crafting:menus", { crafting = k })
                        lib.hideTextUI()
                    end
                end
                if inZone and not EnteredZone then
                    EnteredZone = true
                end

                if not inZone and EnteredZone then
                    EnteredZone = false
                    lib.hideTextUI()
                end
            end
            Wait(sleep)
        end
    end)
end

CircleZone = function(target, k, v)
    target:RemoveZone("Crafting" .. k)

    target:AddCircleZone("Crafting" .. k, v.Positions.coords, v.Positions.radius,
        { name = "Crafting" .. k, debugPoly = v.Positions.debug, useZ = true },
        { options = {
            { event = "drc_crafting:menus", icon = v.TargetIcon, label = v.Label,
                crafting = k },
        },
            distance = 3.5
        }
    )
end

Table = function(target, k, v)
    CreateThread(function()
        local EnteredZone = false
        while true do
            local playerCoords = GetEntityCoords(PlayerPedId(), true)
            local sleep = 500
            local inZone = false
            local dist = #(playerCoords - vector3(v.Positions.coords))
            if dist < v.Table.DrawDistance and not spawnedTables[k] then
                RequestModel(v.Table.Prop)

                while not HasModelLoaded(v.Table.Prop) do
                    Wait(100)
                end

                local Table = CreateObject(v.Table.Prop, v.Positions.coords, false, true, false)
                spawnedTables[k] = { Table = Table }
                if v.Table.Type == "target" then
                    target:AddTargetEntity(Table, {
                        options = {
                            { event = "drc_crafting:menus", icon = v.TargetIcon, label = v.Label,
                                crafting = k },
                        },
                        distance = 3.5

                    })
                end

                PlaceObjectOnGroundProperly(Table)
                SetEntityHeading(Table, v.Table.Heading)
                FreezeEntityPosition(Table, true)
            elseif dist >= v.Table.DrawDistance and spawnedTables[k] then
                DeleteEntity(spawnedTables[k].Table)
                spawnedTables[k] = nil
            end
            if dist < v.Table.DrawDistance and spawnedTables[k] and v.Table.Type == "help" then
                if dist < 3.0 then
                    sleep = 5
                    inZone = true
                    lib.showTextUI('[E] - ' .. v.Label)

                    if (IsControlJustReleased(1, 51)) then
                        TriggerEvent("drc_crafting:menus", { crafting = k })
                        lib.hideTextUI()
                    end
                end
                if inZone and not EnteredZone then
                    EnteredZone = true
                end

                if not inZone and EnteredZone then
                    EnteredZone = false
                    lib.hideTextUI()
                end
            end
            Wait(sleep)
        end
    end)
end

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        for k, v in pairs(Config.Craftings) do
            if spawnedTables[k] then
                DeleteEntity(spawnedTables[k].Table)
            end
        end
    end
end)

function CheckJob(crafting)
    if crafting.job then
        if crafting.job.name then
            if Config.Framework == "ESX" then
                if crafting.job.name == ESX.GetPlayerData().job.name then
                    if crafting.job.grade then
                        if crafting.job.grade <= ESX.GetPlayerData().job.grade then
                            return true
                        end
                    else
                        return true
                    end
                end
            elseif Config.Framework == "qbcore" then
                if crafting.job.name == QBCore.Functions.GetPlayerData().job.name or crafting.job.name == 
                    QBCore.Functions.GetPlayerData().gang.name then
                    if crafting.job.grade then
                        if crafting.job.grade <= QBCore.Functions.GetPlayerData().job.grade.level or
                            crafting.job.grade <= QBCore.Functions.GetPlayerData().gang.grade.level then
                            return true
                        end
                    else
                        return true
                    end
                end
            end
        else
            return true
        end
    else
        return true
    end
end
