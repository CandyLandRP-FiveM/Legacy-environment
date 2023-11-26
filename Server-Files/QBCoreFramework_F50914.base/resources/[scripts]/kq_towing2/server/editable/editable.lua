
if Config.commands.towing.enabled then
    RegisterCommand(Config.commands.towing.command, function(source)
        if Config.jobWhitelist.towing.enabled then
            if not IsPlayerJobWhitelisted(source, Config.jobWhitelist.towing.jobs) then
                return TriggerClientEvent('kq_towing:client:notify', source, L('~r~You may not use this item'))
            end
        end
        TriggerClientEvent('kq_towing:client:startRope', source, false, false)
    end)
end

if Config.commands.winch.enabled then
    RegisterCommand(Config.commands.winch.command, function(source)
        if Config.jobWhitelist.winch.enabled then
            if not IsPlayerJobWhitelisted(source, Config.jobWhitelist.winch.jobs) then
                return TriggerClientEvent('kq_towing:client:notify', source, L('~r~You may not use this item'))
            end
        end
        TriggerClientEvent('kq_towing:client:startRope', source, true, false)
    end)
end
