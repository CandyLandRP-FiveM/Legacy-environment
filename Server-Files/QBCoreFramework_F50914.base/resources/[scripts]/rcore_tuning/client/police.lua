local policeCount = 0

function EnoughPoliceForScrapyard()
    if Config.MinPoliceForScrapyard then
        return policeCount >= Config.MinPoliceForScrapyard
    end

    return true
end

RegisterNetEvent('rcore_tuning:setPoliceCount', function(pc)
    policeCount = pc
end)