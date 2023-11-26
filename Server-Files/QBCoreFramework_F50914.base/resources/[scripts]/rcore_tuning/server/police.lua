local policeCount = 0

Citizen.CreateThread(function()
    while true do
        local newPoliceCount = GetPoliceCount()

        if policeCount ~= newPoliceCount then
            policeCount = newPoliceCount
            TriggerClientEvent('rcore_tuning:setPoliceCount', -1, policeCount)
        end

        Wait(30000)
    end
end)

RegisterNetEvent('rcore_tuning:playerConnected', function()
    TriggerClientEvent('rcore_tuning:setPoliceCount', source, policeCount)
end)