QB = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
    for k, v in pairs(Config.itemTable) do
        cFunctions.createUseableItem(k, function(source)
            TriggerClientEvent('sm_effects:Client:useItem', source, k)
        end)
    end
end)

RegisterNetEvent('sm_effects:Server:removeItem', function(item)
    cFunctions.removePlayerItem(source, item)
end)