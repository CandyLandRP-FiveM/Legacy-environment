local bones = {}
local EXHAUST_FIRE_SCALE = 1.3
local particleAssets = {'core', 'veh_backfire'}

local particleData = {}
local particles = {}
local usingPurge
local purgeLoopRunning = false
local nitrousAmount = {}

local purgeStartTime = 0
local purgeUseTime = 0
local nitroStartTime = 0
local nitroUseTime = 0

local xOffset = 0.98
local yOffset = 0.85
local height = 0.08
local width = 0.008
local widthPadding = 0.003

local nitroYOffset = 0
local nitroHeight = 0

AddTextEntry('RC_NOS', "N~n~O~n~S")

for i = 1, 16 do
    if i == 1 then
        table.insert(bones, "exhaust")
    else
        table.insert(bones, "exhaust_"..tostring(i))
    end
end

function enableFireAtBackOfCar(vehicle)
    for _, boneName in ipairs(bones) do
        local boneIndex = GetEntityBoneIndexByName(vehicle, boneName)
        if boneIndex ~= -1 then
            local fireOffset = GetOffsetFromEntityGivenWorldCoords(vehicle, GetWorldPositionOfEntityBone(vehicle, boneIndex))
            UseParticleFxAssetNextCall(particleAssets[1])
            StartNetworkedParticleFxNonLoopedOnEntity(particleAssets[2], vehicle, fireOffset, 0.0, 0.0, 0.0, EXHAUST_FIRE_SCALE, false, false, false)
        end
    end
end

function DrawAdvancedText(x,y)
    SetTextFont(0)
    SetTextScale(0.0, 0.25)
    SetTextColour(255, 255, 255, 200)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextJustification(0)
    SetTextEntry("RC_NOS")
    AddTextComponentSubstringPlayerName("RC_NOS")
    DrawText(x, y)
end



function GetPurgeInfo(vehicle)
    local model = GetEntityModel(vehicle)

    local min, max = GetModelDimensions(model)

    local frontLeft = vector3(min.x, max.y, 0.0)
    local frontLeftBottom = frontLeft + vector3(0.2, -0.5, 0)
    
    local frontRight = vector3(max.x, max.y, 0.0)
    local frontRightBottom = frontRight + vector3(-0.2, -0.5, 0)
    particleData[frontLeftBottom] = {180.0, 45.0, 45.0}
    particleData[frontRightBottom] = {180.0, -45.0, -45.0}
end

function PlayPurgeEffect(vehicle)
    for particleCoords, rotationInfo in pairs(particleData) do
        UseParticleFxAssetNextCall('core')
        ptfx = StartNetworkedParticleFxLoopedOnEntity('ent_sht_steam', vehicle, particleCoords.x, particleCoords.y - 0.1, particleCoords.z, rotationInfo[1], rotationInfo[2], rotationInfo[3], 0.6, true, true, true)
        SetParticleFxLoopedColour(ptfx, 1.0, 1.0, 1.0, 0)
        table.insert(particles, {ptfx = ptfx, vehicle = vehicle})
    end
end

function StopPurgeEffect(vehicle)
    for _, ptfx in pairs(particles) do
        if vehicle == ptfx.vehicle then
            StopParticleFxLooped(ptfx.ptfx, 0)
        end
    end
end

function ResetVehicleNitrous()
    if GlobalVehicle == nitrousAmount[2] then return end
    nitrousAmount = {}
end

function DoesVehicleHaveNitrous()
    local returnVal = {}
    local hasNitrous = Entity(GlobalVehicle).state.rcoreHasNitrous
    if not hasNitrous then
        return false
    end
    local nitrousAmount = Entity(GlobalVehicle).state.rcoreNitrous
    
    if nitrousAmount then
        local newNitrousAmount = nitrousAmount - GetCurrentActiveNitroUsage()

        nitroYOffset = height * (((100-(newNitrousAmount))/100))/2
        nitroHeight = height * ((newNitrousAmount)/100)
        nitrousAmount = {newNitrousAmount, GlobalVehicle, hasNitrous}
    end
    return nitrousAmount
end

function GetCurrentActiveNitroUsage()
    if usingNitro or usingPurge then
        local usageStartedAt = nitroStartTime

        if not usageStartedAt or usageStartedAt <= 0 then
            usageStartedAt = purgeStartTime
        end

        return GetTotalNitrousUsage(GetGameTimer() - usageStartedAt, usingPurge)
    end

    return 0
end

function DecreaseVehicleNitrous(time, purge)
    TriggerServerEvent("rcore_tuning:setVehicleNitrous", VehToNet(GlobalVehicle), time, purge)
end

function UseNitro(nitrousAmount)
    SetVehicleEngineTorqueMultiplier(GlobalVehicle, Config.nitrousTorqueMultiplier)
	StartScreenEffect("RaceTurbo", 0, 0)
end

function StopNitroEffect()
    SetVehicleBoostActive(GlobalVehicle, 0, 0)
end

function initaliseNitro()
    nitroStartTime = GetGameTimer()
    usingNitro = true
    SetVehicleBoostActive(GlobalVehicle, 1, 0)
end

function DisablePurge()
    if usingPurge then
        Entity(GlobalVehicle).state:set('purgeOn', false, true)
        purgeUseTime = GetGameTimer() - purgeStartTime
        DecreaseVehicleNitrous(purgeUseTime, true)
        usingPurge = false
        purgeStartTime = 0
    end
end

function DisableNitro()
    if usingNitro then
        nitroUseTime = GetGameTimer() - nitroStartTime
        DecreaseVehicleNitrous(nitroUseTime, false)
        Entity(GlobalVehicle).state:set('nitrousOn', false, true)
        StopNitroEffect()
        usingNitro = false
        nitroStartTime = 0
    end
end


function StartPurgeLoop()
    if not Config.EnableNitrous then return end
    if purgeLoopRunning then return end
    purgeLoopRunning = true
    ResetVehicleNitrous()
    RequestStreamedTextureDict("tuning_ui")
    while not HasStreamedTextureDictLoaded("tuning_ui") do Wait(0) end
    while purgeLoopRunning do
        Wait(0)
        if GlobalVehicle > 0 and LastVehicle then
            if GetPedInVehicleSeat(GlobalVehicle, -1) == MyPed then
                local nitrousInfo = DoesVehicleHaveNitrous()
                if nitrousInfo and nitrousInfo[3] then
                    if Config.EnableNitrousUI then
                        DrawRect(xOffset, yOffset + height/2, width + widthPadding,  height + 0.005, 0, 0, 0, 100)
                        DrawRect(xOffset, yOffset + height/2 +nitroYOffset, width, nitroHeight, 8, 101, 173, 255)
                        DrawAdvancedText(xOffset, yOffset + 0.017)
                    end
                    if nitrousInfo[1] > 0 and (IsControlPressed(0, 21) or IsDisabledControlPressed(0, 21)) and GetEntitySpeed(GlobalVehicle) >= 2 * 3.6 then
                        if not usingNitro then
                            Entity(GlobalVehicle).state:set('nitrousOn', true, true)
                            initaliseNitro()
                        end
                        UseNitro(nitrousInfo[1])
                    elseif nitrousInfo[1] > 0 and (IsControlPressed(0, 36) or IsDisabledControlPressed(0, 36)) then
                        if not usingPurge then
                            purgeStartTime = GetGameTimer()
                            usingPurge = true
                            Entity(GlobalVehicle).state:set('purgeOn', true, true)
                        end
                    else
                        DisablePurge()
                        DisableNitro()
                    end
                end
            end
        else
            StopPurgeLoop()
        end
    end
end

function StopPurgeLoop()
    purgeLoopRunning = false
end


RegisterNetEvent("rcore_tuning:setVehicleNitrous", function(vehicleNet)
    if GlobalVehicle == NetToVeh(vehicleNet) then
        GetVehicleNitrous()
    end
end)

AddStateBagChangeHandler('nitrous', nil, function(bagName, key, value)
    if GlobalVehicle == GetEntityFromStateBagName(bagName) then
        nitrousAmount = {value, GlobalVehicle}
    end
end)

AddStateBagChangeHandler('purgeOn', nil, function(bagName, key, value)
    local entity = GetEntityFromStateBagName(bagName)
    
    if value then
        GetPurgeInfo(entity)
        PlayPurgeEffect(entity)
    else
        StopPurgeEffect(entity)
    end
end)

local nitrousOnCars = {}
AddStateBagChangeHandler('nitrousOn', nil, function(bagName, key, value)
    local entity = GetEntityFromStateBagName(bagName)
    if value then
        nitrousOnCars[entity] = value
    else
        nitrousOnCars[entity] = nil
    end
end)

Citizen.CreateThread(function()
    while true do
        for entity, _ in pairs(nitrousOnCars) do
            enableFireAtBackOfCar(entity)
        end
        Wait(250)
    end
end)

