if Config.esxSettings.enabled then
    ESX = nil
    
    if Config.esxSettings.useNewESXExport then
        ESX = exports['es_extended']:getSharedObject()
    else
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    end
    
    ESX.RegisterUsableItem(Config.items.towingRope, function(source)
        if Config.jobWhitelist.towing.enabled then
            if not IsPlayerJobWhitelisted(source, Config.jobWhitelist.towing.jobs) then
                return TriggerClientEvent('kq_towing:client:notify', source, L('~r~You may not use this item'))
            end
        end
        TriggerClientEvent('kq_towing:client:startRope', source, false, true)
    end)

    ESX.RegisterUsableItem(Config.items.winch, function(source)
        if Config.jobWhitelist.winch.enabled then
            if not IsPlayerJobWhitelisted(source, Config.jobWhitelist.winch.jobs) then
                return TriggerClientEvent('kq_towing:client:notify', source, L('~r~You may not use this item'))
            end
        end
        TriggerClientEvent('kq_towing:client:startRope', source, true, true)
    end)
    
    function IsPlayerJobWhitelisted(player, jobs)
        local xPlayer = ESX.GetPlayerFromId(player)
        if not xPlayer then
            return false
        end
        local job = xPlayer.getJob()
        
        return Contains(jobs, job.name)
    end

    function RemovePlayerItem(player, item, amount)
        local xPlayer = ESX.GetPlayerFromId(tonumber(player))
        xPlayer.removeInventoryItem(item, amount or 1)
    end

    function AddPlayerItem(player, item, amount)
        local xPlayer = ESX.GetPlayerFromId(tonumber(player))

        -- Support for old esx which didn't use weight for inventory size but rather item limit per item type
        if Config.esxSettings.oldEsx then
            local esxItem = xPlayer.getInventoryItem(item)

            if esxItem.limit == -1 or (esxItem.count + amount) <= esxItem.limit then
                xPlayer.addInventoryItem(item, amount or 1)
                return true
            else
                return false
            end
        else
            if xPlayer.canCarryItem(item, amount or 1) then
                xPlayer.addInventoryItem(item, amount or 1)
                return true
            else
                return false
            end
        end
    end
end
