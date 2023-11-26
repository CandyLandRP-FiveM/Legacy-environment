function GetPlayersClosestShop(serverId)
    local ped = GetPlayerPed(serverId)
    local pedCoords = GetEntityCoords(ped)

    local closestShop = nil
    local closestShopCoords = nil

    for name, shop in pairs(TuningShops) do
        if #(pedCoords - shop.coords) < 50.0 then
            closestShop = name
            closestShopCoords = shop.coords
        end
    end

    return closestShop
end

function IsPlayersControllingShop(serverId, cb)
    local zone = GetPlayersClosestShop(serverId)

    local playerJobName = GetPlayersJobName(serverId)
    local playerJobGrade = GetPlayersJobGrade(serverId)

    if (playerJobName and zone and TuningShops[zone] and playerJobName == TuningShops[zone].job and ((TuningShops[zone].minGrade and playerJobGrade >= TuningShops[zone].minGrade) or not TuningShops[zone].minGrade)) or (not Config.UseJobs) then
        return cb(serverId, zone)
    else
        ShowNotification(serverId, _U('NOT_CONTROLLING_SHOP'))
    end
end
