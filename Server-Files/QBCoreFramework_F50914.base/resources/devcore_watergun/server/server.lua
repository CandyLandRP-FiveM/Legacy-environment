QBCore = Config.QBExport()


STATE = {}


for k, v in pairs(Config.WaterGuns) do
	QBCore.Functions.CreateUseableItem(k, function(source)
        if (not STATE[source]) then
            STATE[source] = k
        TriggerClientEvent(GetCurrentResourceName()..':client:useWaterGun', source, k)
        end
    end)
end


RegisterServerEvent(GetCurrentResourceName()..':server:hideUsableItem')
AddEventHandler(GetCurrentResourceName()..':server:hideUsableItem', function()
    src = source
    if (STATE[src]) then
    STATE[src] = nil
    end
end)



RegisterServerEvent(GetCurrentResourceName()..':server:startSplashParticles')
AddEventHandler(GetCurrentResourceName()..':server:startSplashParticles', function(propid, scale)
     local src = source

        TriggerClientEvent(GetCurrentResourceName()..':client:splashParticles', -1, src, NetworkGetNetworkIdFromEntity(GetPlayerPed(src)), propid, scale)

end)

RegisterNetEvent(GetCurrentResourceName()..':server:stopSplashParticles')
AddEventHandler(GetCurrentResourceName()..':server:stopSplashParticles', function(propid)
    local src = source
    TriggerClientEvent(GetCurrentResourceName()..':client:stopParticles', -1, src, propid)
end)


RegisterServerEvent(GetCurrentResourceName()..':server:startHitPlayer')
AddEventHandler(GetCurrentResourceName()..':server:startHitPlayer', function(eCx, eCy, eCz)

        TriggerClientEvent(GetCurrentResourceName()..':client:hitPlayer', -1, eCx, eCy, eCz)
end)