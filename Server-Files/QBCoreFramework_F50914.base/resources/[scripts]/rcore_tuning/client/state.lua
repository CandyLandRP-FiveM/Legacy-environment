TuningInstalled = {}
TuningOrdered = {}

CurrentShop = nil
IsControllingCurrentShop = false
IsInsideShop = false

local playerJobName = nil
local lastJobCheck = 0

Citizen.CreateThread(function()
    while true do
        if CurrentShop and IsControllingCurrentShop then
            Wait(100)
        else
            Wait(2000)
        end

        local nowTime = GetGameTimer()

        if nowTime - lastJobCheck > 1000 then
            lastJobCheck = nowTime
            playerJobName = GetPlayersJobName()
            playerJobGrade = GetPlayersJobGrade()
        end

        RecomputeShopZone()
    end
end)

function RecomputeShopZone()
    local ped = PlayerPedId()
    local interior = GetInteriorFromEntity(ped)
    local nowIsInShop = nil
    local closeZone = nil
    local isControlling = false

    local pedPos = GetEntityCoords(PlayerPedId())
    for n, shop in pairs(TuningShops) do
        if #(shop.coords - pedPos) < 100.0 then
            closeZone = n
            
            if not Config.UseJobs or (shop.job and playerJobName and shop.job == playerJobName) then
                if (shop.minGrade and playerJobGrade >= shop.minGrade) or (not shop.minGrade) then
                    isControlling = true
                end
            end
            
            if not shop.interiorByCoordsSet then
                local currentShopCoords = shop.coords
                local currentShopInterior = GetInteriorWithEntity(currentShopCoords)

                if currentShopInterior > 0 then
                    TuningShops[n].interiors[currentShopInterior] = true
                    shop.interiorByCoordsSet = true
                end
            end

            if TuningShops[n].interiors[interior] then
                nowIsInShop = true
            end

            break
        end
    end
    
    IsControllingCurrentShop = isControlling
    CurrentShop = closeZone
    IsInsideShop = nowIsInShop
end

function GetInteriorWithEntity(currentShopCoords)
    RequestModel(`prop_amb_phone`)
    while not HasModelLoaded(`prop_amb_phone`) do
        Wait(0)
    end

    local positionHelperObject = CreateObject(`prop_amb_phone`, currentShopCoords.x, currentShopCoords.y, currentShopCoords.z, false, false, false)
    
    Wait(0)

    local interiorId = GetInteriorFromEntity(positionHelperObject)

    DeleteEntity(positionHelperObject)

    return interiorId
end