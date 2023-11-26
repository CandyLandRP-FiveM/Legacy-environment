--███████╗██████╗  █████╗ ███╗   ███╗███████╗██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗
--██╔════╝██╔══██╗██╔══██╗████╗ ████║██╔════╝██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝
--█████╗  ██████╔╝███████║██╔████╔██║█████╗  ██║ █╗ ██║██║   ██║██████╔╝█████╔╝ 
--██╔══╝  ██╔══██╗██╔══██║██║╚██╔╝██║██╔══╝  ██║███╗██║██║   ██║██╔══██╗██╔═██╗ 
--██║     ██║  ██║██║  ██║██║ ╚═╝ ██║███████╗╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗
--╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝ ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝


ESX, QBCore, vRP = nil, nil, nil

if Config.Framework == 'esx' then
    pcall(function() ESX = exports[Config.FrameworkTriggers.resource_name]:getSharedObject() end)
    if ESX == nil then
        TriggerEvent(Config.FrameworkTriggers.main, function(obj) ESX = obj end)
    end

elseif Config.Framework == 'qbcore' then
    TriggerEvent(Config.FrameworkTriggers.main, function(obj) QBCore = obj end)
    if QBCore == nil then
        QBCore = exports[Config.FrameworkTriggers.resource_name]:GetCoreObject()
    end

elseif Config.Framework == 'vrp' then
    local Proxy = module('vrp', 'lib/Proxy')
    vRP = Proxy.getInterface('vRP')
    
elseif Config.Framework == 'other' then
    --Add your own code here.
end

function GetIdentifier(source)
    if Config.Framework == 'esx' then 
        local xPlayer = ESX.GetPlayerFromId(source)
        return xPlayer.identifier

    elseif Config.Framework == 'qbcore' then
        local xPlayer = QBCore.Functions.GetPlayer(source)
        return xPlayer.PlayerData.citizenid

    elseif Config.Framework == 'vrp' then
        local user_id = vRP.getUserId({source})
        return user_id

    elseif Config.Framework == 'standalone' then
        return GetPlayerIdentifiers(source)[2]
        
    elseif Config.Framework == 'other' then
        return GetPlayerIdentifiers(source)[2] --return the players identifier here (string).

    end
end


--██████╗ ███████╗██████╗ ███╗   ███╗███████╗     ██████╗██╗  ██╗███████╗ ██████╗██╗  ██╗███████╗
--██╔══██╗██╔════╝██╔══██╗████╗ ████║██╔════╝    ██╔════╝██║  ██║██╔════╝██╔════╝██║ ██╔╝██╔════╝
--██████╔╝█████╗  ██████╔╝██╔████╔██║███████╗    ██║     ███████║█████╗  ██║     █████╔╝ ███████╗
--██╔═══╝ ██╔══╝  ██╔══██╗██║╚██╔╝██║╚════██║    ██║     ██╔══██║██╔══╝  ██║     ██╔═██╗ ╚════██║
--██║     ███████╗██║  ██║██║ ╚═╝ ██║███████║    ╚██████╗██║  ██║███████╗╚██████╗██║  ██╗███████║
--╚═╝     ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝     ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚══════╝


local function GetAllFivemIdentifiers(source)
    local temp_table = {}
    for c, d in pairs(GetPlayerIdentifiers(source)) do
        temp_table[#temp_table+1] = {full = d, trimmed = d:sub(d:find(':')+1, #d)}
    end
    return temp_table
end
local function PermsCheck_Identifiers(source, data, perms_type)
    local identifier = GetIdentifier(source)
    for c, d in pairs(data) do
        for cc, dd in pairs(GetAllFivemIdentifiers(source)) do
            if (dd.full == d:lower()) or (dd.trimmed == d:lower()) then
                return true
            end
        end
        if (perms_type == 'admin_perms' and Config.AdminAccess.Framework.ENABLE) or (perms_type == 'door_perms' and Config.DoorAccessPerms.Framework) then
            if d:lower() == identifier:lower() then
                return true
            end
        end
    end
    return false
end

local function PermsCheck_AcePerms(source, data)
    for c, d in pairs(data) do
        if IsPlayerAceAllowed(source, d) then
            return true
        end
    end
    return false
end

local function GetAllDiscordRoles(source)
    return exports.Badger_Discord_API:GetDiscordRoles(source)
end
local function PermsCheck_Discord(source, data)
    local discord_roles = GetAllDiscordRoles(source)
    for c, d in pairs(data) do
        for cc, dd in pairs(discord_roles) do
            if d == dd then
                return true
            end
        end
    end
    return false
end

local function PermsCheck_Items(source, data)    
    if Config.Framework == 'esx' then
        for c, d in pairs(data) do
            local xPlayer = ESX.GetPlayerFromId(source)
            local get_item = xPlayer.getInventoryItem(d)
            if get_item then
                local count = get_item.count
                if count > 0 then
                    return true                    
                end
            else
                E('6034 - ['..d..'] is not a valid item.')
            end
        end

    elseif Config.Framework == 'qbcore' then
        for c, d in pairs(data) do
            if QBCore.Functions.HasItem(source, d, 1) then
                return true
            end
        end

    elseif Config.Framework == 'other' then
        --add your own framework item checks here.
    end

    if GetResourceState('ox_inventory') == 'started' then
        for c, d in pairs(data) do
            if exports.ox_inventory:GetItem(source, d, false, true) >= 1 then
                return true
            end
        end
    end
    return false
end

function CheckAdminPerms(source)
    if Config.AdminAccess.Framework.ENABLE then
        if Config.Framework == 'esx' then 
            local perms = ESX.GetPlayerFromId(source).getGroup()
            for c, d in pairs(Config.AdminAccess.Framework[Config.Framework]) do
                if perms == d then
                    return true
                end
            end
        elseif Config.Framework == 'qbcore' then
            local perms = QBCore.Functions.GetPermission(source)
            for c, d in pairs(Config.AdminAccess.Framework[Config.Framework]) do
                if type(perms) == 'string' then
                    if perms == d then
                        return true
                    end
                elseif type(perms) == 'table' then
                    if perms[d] then
                        return true
                    end
                end
            end
        elseif Config.Framework == 'vrp' then
            local perms = vRP.getUserAdminLevel(vRP.getUserId({source}))
            for c, d in pairs(Config.AdminAccess.Framework[Config.Framework]) do
                if perms == d then
                    return true
                end
            end
        elseif Config.Framework == 'other' then
            --Add your own permissions check here (boolean).
            return true
        end
    end
    if Config.AdminAccess.Identifiers.ENABLE then
        local perms = PermsCheck_Identifiers(source, Config.AdminAccess.Identifiers.identifier_list, 'admin_perms')
        if perms then return true end
    end
    if Config.AdminAccess.AcePerms.ENABLE then
        local perms = PermsCheck_AcePerms(source, Config.AdminAccess.AcePerms.aceperms_list)
        if perms then return true end
    end
    if Config.AdminAccess.Discord.ENABLE then
        local perms = PermsCheck_Discord(source, Config.AdminAccess.Discord.discord_list)
        if perms then return true end
    end
    return false
end

function CheckDoorPerms_All(source, door_perms_data)
    if Config.DoorAccessPerms.Identifiers and door_perms_data.identifier and #door_perms_data.identifier > 0 then
        local perms = PermsCheck_Identifiers(source, door_perms_data.identifier, 'door_perms')
        if perms then return true end
    end
    if Config.DoorAccessPerms.AcePerms and door_perms_data.ace and #door_perms_data.ace > 0 then
        local perms = PermsCheck_AcePerms(source, door_perms_data.ace)
        if perms then return true end
    end
    if Config.DoorAccessPerms.Discord and door_perms_data.discord and #door_perms_data.discord > 0 then
        local perms = PermsCheck_Discord(source, door_perms_data.discord)
        if perms then return true end
    end
    if Config.DoorAccessPerms.Items and door_perms_data.items and #door_perms_data.items > 0 then
        local perms = PermsCheck_Items(source, door_perms_data.items)
        if perms then return true end
    end
    return false
end


--██╗      ██████╗  ██████╗██╗  ██╗██████╗ ██╗ ██████╗██╗  ██╗
--██║     ██╔═══██╗██╔════╝██║ ██╔╝██╔══██╗██║██╔════╝██║ ██╔╝
--██║     ██║   ██║██║     █████╔╝ ██████╔╝██║██║     █████╔╝ 
--██║     ██║   ██║██║     ██╔═██╗ ██╔═══╝ ██║██║     ██╔═██╗ 
--███████╗╚██████╔╝╚██████╗██║  ██╗██║     ██║╚██████╗██║  ██╗
--╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝╚═╝  ╚═╝


if Config.LockpickItems.ENABLE and Config.LockpickItems.usable_lockpick_item then
    for c, d in pairs(Config.LockpickItems.lockpick_items) do
        if Config.Framework == 'esx' then
            ESX.RegisterUsableItem(d, function(source)
                TriggerClientEvent('cd_doorlock:LockpickDoor_usableitem', source)
            end)

        elseif Config.Framework == 'qbcore' then
            QBCore.Functions.CreateUseableItem(d, function(source, item)
                TriggerClientEvent('cd_doorlock:LockpickDoor_usableitem', source)
            end)

        elseif Config.Framework == 'other' then
            --add your own framework code here.
        end
    end
end

function RemoveLockpickItem(source)
    if Config.Framework == 'esx' then
        for c, d in pairs(Config.LockpickItems.lockpick_items) do
            local xPlayer = ESX.GetPlayerFromId(source)
            local get_item = xPlayer.getInventoryItem(d)
            if get_item then
                local count = get_item.count
                if count > 0 then
                    xPlayer.removeInventoryItem(d, 1)
                    return true
                end
            else
                E('6035 - "'..d..'" is not a valid item.')
            end
        end

    elseif Config.Framework == 'qbcore' then
        local xPlayer = QBCore.Functions.GetPlayer(source)
        for c, d in pairs(Config.LockpickItems.lockpick_items) do
            if xPlayer.Functions.RemoveItem(d, 1) then
                return true
            end
        end

    elseif Config.Framework == 'other' then
        --add your own framework checks here.
    end

    if GetResourceState('ox_inventory') == 'started' then
        for c, d in pairs(data) do
            if exports.ox_inventory:GetItem(source, d, false, true) >= 1 then
                if Config.Framework == 'esx' then
                    local xPlayer = ESX.GetPlayerFromId(source)
                    xPlayer.removeInventoryItem(d, 1)
                    return true
                    
                elseif Config.Framework == 'qbcore' then
                    local xPlayer = QBCore.Functions.GetPlayer(source)
                    xPlayer.Functions.RemoveItem(d, 1)
                    return true

                elseif Config.Framework == 'other' then
                    --add your own framework code here.
                end
            end
        end
    end
    return false
end


--███████╗██╗   ██╗███╗   ██╗ ██████╗████████╗██╗ ██████╗ ███╗   ██╗███████╗
--██╔════╝██║   ██║████╗  ██║██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
--█████╗  ██║   ██║██╔██╗ ██║██║        ██║   ██║██║   ██║██╔██╗ ██║███████╗
--██╔══╝  ██║   ██║██║╚██╗██║██║        ██║   ██║██║   ██║██║╚██╗██║╚════██║
--██║     ╚██████╔╝██║ ╚████║╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║███████║
--╚═╝      ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝


local function GetDoorPerms_Ideitifier_Discord(source)
    local temp_table = {}
    if Config.DoorAccessPerms.Identifiers then
        temp_table.identifiers = GetAllFivemIdentifiers(source)
    end
    if Config.DoorAccessPerms.Discord then
        temp_table.discord = GetAllDiscordRoles(source)
    end
    return temp_table
end

local function CheckDoorPerms_Vrp(source, door_perms_data)
    local user_id = vRP.getUserId(source)
    for c, d in pairs(door_perms_data) do
        if vRP.getUserFaction(user_id) == d.name and vRP.getFactionRank(faction) >= d.grade then
            return true
        end
    end
    return false
end

local function CheckDoorPerms_Ace(source, data)
    local temp_table = {}
    for c, d in pairs(data) do
        if IsPlayerAceAllowed(source, d) then
            temp_table[#temp_table+1] = d
        end
    end
    return temp_table
end


-- ██████╗ █████╗ ██╗     ██╗     ██████╗  █████╗  ██████╗██╗  ██╗███████╗
--██╔════╝██╔══██╗██║     ██║     ██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔════╝
--██║     ███████║██║     ██║     ██████╔╝███████║██║     █████╔╝ ███████╗
--██║     ██╔══██║██║     ██║     ██╔══██╗██╔══██║██║     ██╔═██╗ ╚════██║
--╚██████╗██║  ██║███████╗███████╗██████╔╝██║  ██║╚██████╗██║  ██╗███████║
-- ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝


RegisterServerEvent('cd_doorlock:Callback')
AddEventHandler('cd_doorlock:Callback', function(id, action, data)
    local _source = source
    if action == 'check_admin_perms' then
        TriggerClientEvent('cd_doorlock:Callback', _source, id, CheckAdminPerms(_source))

    elseif action == 'get_door_perms_identifier_discord' then
        TriggerClientEvent('cd_doorlock:Callback', _source, id, GetDoorPerms_Ideitifier_Discord(_source))

    elseif action == 'check_door_perms_all' then
        TriggerClientEvent('cd_doorlock:Callback', _source, id, CheckDoorPerms_All(_source, data))

    elseif action == 'check_door_perms_vrp' then
        TriggerClientEvent('cd_doorlock:Callback', _source, id, CheckDoorPerms_Vrp(_source, data))

    elseif action == 'check_door_perms_ace' then
        TriggerClientEvent('cd_doorlock:Callback', _source, id, CheckDoorPerms_Ace(_source, data))
    
    elseif action == 'remove_lockpick_item' then
        TriggerClientEvent('cd_doorlock:Callback', _source, id, RemoveLockpickItem(_source))

    end
end)


--███╗   ██╗ ██████╗ ████████╗██╗███████╗██╗ ██████╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗███████╗
--████╗  ██║██╔═══██╗╚══██╔══╝██║██╔════╝██║██╔════╝██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
--██╔██╗ ██║██║   ██║   ██║   ██║█████╗  ██║██║     ███████║   ██║   ██║██║   ██║██╔██╗ ██║███████╗
--██║╚██╗██║██║   ██║   ██║   ██║██╔══╝  ██║██║     ██╔══██║   ██║   ██║██║   ██║██║╚██╗██║╚════██║
--██║ ╚████║╚██████╔╝   ██║   ██║██║     ██║╚██████╗██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║███████║
--╚═╝  ╚═══╝ ╚═════╝    ╚═╝   ╚═╝╚═╝     ╚═╝ ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝


function Notification(source, notif_type, message)
    if source and notif_type and message then
        if Config.Notification == 'esx' then
            TriggerClientEvent('esx:showNotification', source, message)
        
        elseif Config.Notification == 'qbcore' then
            if notif_type == 1 then
                TriggerClientEvent('QBCore:Notify', source, message, 'success')
            elseif notif_type == 2 then
                TriggerClientEvent('QBCore:Notify', source, message, 'primary')
            elseif notif_type == 3 then
                TriggerClientEvent('QBCore:Notify', source, message, 'error')
            end
        
        elseif Config.Notification == 'cd_notifications' then
            if notif_type == 1 then
                TriggerClientEvent('cd_notifications:Add', source, {title =  L('doorlock'), message = message, type = 'success', options = {duration = 5}})
            elseif notif_type == 2 then
                TriggerClientEvent('cd_notifications:Add', source, {title =  L('doorlock'), message = message, type = 'inform', options = {duration = 5}})
            elseif notif_type == 3 then
                TriggerClientEvent('cd_notifications:Add', source, {title =  L('doorlock'), message = message, type = 'error', options = {duration = 5}})
            end

        elseif Config.Notification == 'okokNotify' then
            if notif_type == 1 then
                TriggerClientEvent('okokNotify:Alert', source, L('doorlock'), message, 5000, 'success')
            elseif notif_type == 2 then
                TriggerClientEvent('okokNotify:Alert', source, L('doorlock'), message, 5000, 'info')
            elseif notif_type == 3 then
                TriggerClientEvent('okokNotify:Alert', source, L('doorlock'), message, 5000, 'error')
            end

        elseif Config.Notification == 'ps-ui' then
            if notif_type == 1 then
                TriggerClientEvent('ps-ui:Notify', source, message, 'success')
            elseif notif_type == 2 then
                TriggerClientEvent('ps-ui:Notify', source, message, 'primary')
            elseif notif_type == 3 then
                TriggerClientEvent('ps-ui:Notify', source, message, 'error')
            end

        elseif Config.Notification == 'ox_lib' then
            if notif_type == 1 then
                lib.notify({title = L('doorlock'), description = message, type = 'success'})
            elseif notif_type == 2 then
                lib.notify({title = L('doorlock'), description = message, type = 'inform'})
            elseif notif_type == 3 then
                lib.notify({title = L('doorlock'), description = message, type = 'error'})
            end

        elseif Config.Notification == 'chat' then
                TriggerClientEvent('chatMessage', source, message)

        elseif Config.Notification == 'other' then
            --add your own notification.

        end
    end
end


-- ██████╗ ████████╗██╗  ██╗███████╗██████╗ 
--██╔═══██╗╚══██╔══╝██║  ██║██╔════╝██╔══██╗
--██║   ██║   ██║   ███████║█████╗  ██████╔╝
--██║   ██║   ██║   ██╔══██║██╔══╝  ██╔══██╗
--╚██████╔╝   ██║   ██║  ██║███████╗██║  ██║
-- ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝


RegisterServerEvent('cd_doorlock:Debug')
AddEventHandler('cd_doorlock:Debug', function()
    local _source = source
    print('^6-----------------------^0')
    print('^1CODESIGN DEBUG^0')
    print(string.format('^6Framework Identifier:^0 %s', GetIdentifier(_source)))
    if Config.DoorAccessPerms.Identifiers or Config.AdminAccess.Identifiers.ENABLE then
        for c, d in pairs(GetAllFivemIdentifiers(_source)) do
            print(string.format('^6Fivem Identifier: [Full: ^0%s^6] [Trimmed: ^0%s^6]', d.full, d.trimmed))
        end
    end

    if Config.DoorAccessPerms.Discord or Config.AdminAccess.Discord.ENABLE then
        if GetResourceState('cd_devtools') == 'started' then
            print('^6Devtools debug table sent to client.^0')
            TriggerClientEvent('table', _source, GetAllDiscordRoles(_source))
        else
            print('^6cd_devtools is not started.^0')
        end
    end
    print('^6-----------------------^0')
end)
