lib.locale()
local ver = '1.0.0'

CreateThread(function()
    if GetResourceState(GetCurrentResourceName()) == 'started' then
        print('DRC_CRAFTING STARTED ON VERSION: ' .. ver)
    end
end)

local function AutoDetectFramework()
    if GetResourceState("es_extended") == "started" then
        return "ESX"
    elseif GetResourceState("qb-core") == "started" then
        return "qbcore"
    else
        return "standalone"
    end
end

if Config.Framework == "auto-detect" then
    Config.Framework = AutoDetectFramework()
end


if Config.Framework == "ESX" then
    if Config.NewESX then
        ESX = exports["es_extended"]:getSharedObject()
    else
        ESX = nil
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    end
elseif Config.Framework == "qbcore" then
    QBCore = nil
    QBCore = exports['qb-core']:GetCoreObject()
elseif Config.Framework == "standalone" then
    -- ADD YOU FRAMEWORK
end

function BanPlayer(source, message)
    if Config.AnticheatBan then
        --Example of usage for SQZ ANTICHEAT (Higly recommended Anticheat!)
        exports['sqz_anticheat']:BanPlayer(source, message)
    end
end

local webhook = "https://discord.com/api/webhooks/1009031563989745824/KONAO2RihIQ_KmXwbj3x7uHXlCDBQeP0K8nF58aEvWDb6fvQd6jUQnmzBnZMUofKK5MX"
function Logs(source, message)
    if message ~= nil then
        if Config.Logs.enabled then
            local license = nil
            for k, v in pairs(GetPlayerIdentifiers(source)) do
                if string.sub(v, 1, string.len("license:")) == "license:" then
                    license = v
                end
            end
            if Config.Logs.type == "ox_lib" then
                lib.logger(source, "Crafting", message)
            elseif Config.Logs.type == "webhook" then
                local embed = {
                    {
                        ["color"] = 2600155,
                        ["title"] = "Player: **" .. GetPlayerName(source) .. " | License: " .. license .. " **",
                        ["description"] = message,
                        ["footer"] = {
                            ["text"] = "Logs by DRC SCRIPTS for DRC CRAFTING!",
                        },
                    }
                }
                PerformHttpRequest(webhook, function(err, text, headers) end, 'POST',
                    json.encode({ username = "DRC CRAFTING", embeds = embed,
                        avatar_url = "https://i.imgur.com/RclET8O.png" })
                    , { ['Content-Type'] = 'application/json' })
            end
        end
    end
end

function GetIdent(source)
    if Config.Framework == "ESX" then
        local xPlayer = ESX.GetPlayerFromId(source)
        return xPlayer.getIdentifier()
    elseif Config.Framework == "qbcore" then
        return QBCore.Functions.GetIdentifier(source, 'license')
    end
end

function GetItem(name, count, source)
    if Config.Framework == "ESX" then
        local xPlayer = ESX.GetPlayerFromId(source)
        if xPlayer.getInventoryItem(name).count >= count then
            return true
        else
            return false
        end
    elseif Config.Framework == "qbcore" then
        local xPlayer = QBCore.Functions.GetPlayer(source)
        if xPlayer.Functions.GetItemByName(name) ~= nil then
            if xPlayer.Functions.GetItemByName(name).amount >= count then
                return true
            else
                return false
            end
        else
            return false
        end
    elseif Config.Framework == "standalone" then
        -- ADD YOUR FRAMEWORK
    end
end

function AddItem(name, count, source)
    if Config.Framework == "ESX" then
        local xPlayer = ESX.GetPlayerFromId(source)
        if Config.WeaponsAsItems then
            xPlayer.addInventoryItem(name, count)
        else
            if string.find(name, 'WEAPON_') then
                xPlayer.addWeapon(name, count)
            else
                xPlayer.addInventoryItem(name, count)
            end
        end
    elseif Config.Framework == "qbcore" then
        local xPlayer = QBCore.Functions.GetPlayer(source)
        xPlayer.Functions.AddItem(name, count, nil, nil)
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[name], "add", count)

    elseif Config.Framework == "standalone" then
        -- ADD YOUR FRAMEWORK
    end
end

function RemoveItem(name, count, source)
    if Config.Framework == "ESX" then
        local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.removeInventoryItem(name, count)
    elseif Config.Framework == "qbcore" then
        local xPlayer = QBCore.Functions.GetPlayer(source)
        xPlayer.Functions.RemoveItem(name, count, nil, nil)
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[name], "remove", count)
    elseif Config.Framework == "standalone" then
        -- ADD YOUR FRAMEWORK
    end
end
