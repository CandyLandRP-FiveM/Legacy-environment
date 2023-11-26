if Config.qbSettings.enabled then

    if Config.qbSettings.useNewQBExport then
        QBCore = exports['qb-core']:GetCoreObject()
    end
    
    QBCore.Functions.CreateUseableItem(Config.items.towingRope, function(source)
        if Config.jobWhitelist.towing.enabled then
            if not IsPlayerJobWhitelisted(source, Config.jobWhitelist.towing.jobs) then
                return TriggerClientEvent('kq_towing:client:notify', source, L('~r~You may not use this item'))
            end
        end
        TriggerClientEvent('kq_towing:client:startRope', source, false, true)
    end)

    QBCore.Functions.CreateUseableItem(Config.items.winch, function(source)
        if Config.jobWhitelist.winch.enabled then
            if not IsPlayerJobWhitelisted(source, Config.jobWhitelist.winch.jobs) then
                return TriggerClientEvent('kq_towing:client:notify', source, L('~r~You may not use this item'))
            end
        end
        TriggerClientEvent('kq_towing:client:startRope', source, true, true)
    end)

    
    function IsPlayerJobWhitelisted(player, jobs)
        local xPlayer = QBCore.Functions.GetPlayer(player)
        if not xPlayer then
            return false
        end
        
        local job = xPlayer.PlayerData.job
        
        return Contains(jobs, job.name)
    end

    function RemovePlayerItem(player, item, amount)
        local xPlayer = QBCore.Functions.GetPlayer(tonumber(player))
        xPlayer.Functions.RemoveItem(item, amount or 1)
    end

    function AddPlayerItem(player, item, amount)
        local xPlayer = QBCore.Functions.GetPlayer(tonumber(player))
        return xPlayer.Functions.AddItem(item, amount or 1)
    end
end
