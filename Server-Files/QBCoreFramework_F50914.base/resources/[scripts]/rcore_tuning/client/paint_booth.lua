local PaintBoothDoors = {
    LMESA = {
        pos = vector3(735.55, -1075.85, 22.23),
        smokePos = vector3(735.79, -1072.15, 22.23),
        smokeRotation = vector3(0.0, 0.0, 0.0),
    },
    BURTON = {
        pos = vector3(-330.21, -143.62, 39.05),
        smokePos = vector3(-326.98, -144.63, 40.36),
        smokeRotation = vector3(0.0, 0.0, 0.0),
    },
    STRAW = {
        pos = vector3(-211.92, -1324.53, 30.89),
        smokePos = vector3(-211.92, -1324.53, 30.89),
        smokeRotation = vector3(0.0, 0.0, 0.0),
    },
    RANCHO = {
        pos = vector3(479.5, -1310.88, 29.23),
        smokePos = vector3(478.18, -1308.2, 29.23),
        smokeRotation = vector3(0.0, 0.0, 0.0),
    },
}

local SmokeColors = {
    black = {0, 0, 0},
    white = {255, 255, 255},
    blue = {18, 103, 222},
    brown = {107, 37, 2},
    green = {22, 191, 0},
    grey = {156, 156, 156},
    orange = {209, 146, 0},
    pink = {255, 0, 115},
    purple = {191, 0, 201},
    red = {255, 0, 0},
    yellow = {222, 195, 18},
    gold = {218,165,32},
    silver = {192,192,192},
}

RegisterNetEvent('rcore_tuning:performColorChangeEffects')
AddEventHandler('rcore_tuning:performColorChangeEffects', function(zone, idx)
    DoResprayEffect(zone, idx)
end)

function DoResprayEffect(zone, colorIdx)
    if not TuningShops[zone] then
        return
    end

    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)

    if #(coords - TuningShops[zone].smokePos) > 50.0 then
        return
    end

    Citizen.CreateThread(function()
        local doorData = TuningShops[zone]

        for i = 1, 5 do
            Wait(2000)

            local soundId = GetSoundId()
            
            PlaySoundFromCoord(soundId, 'SPRAY', doorData.smokePos.x, doorData.smokePos.y, doorData.smokePos.z, 'CARWASH_SOUNDS', 0, 10 , 0)
            RenderSpraySmoke(doorData.smokePos, doorData.smokeRotation, colorIdx)
            Citizen.Wait(1500)
            StopSound(soundId)
            ReleaseSoundId(soundId)
        end
    end)
end

function RenderSpraySmoke(coords, rotation, colorIdx)
    Citizen.CreateThread(function()
        local dict = "scr_recartheft"
        local name = "scr_wheel_burnout"

        RequestNamedPtfxAsset(dict)

        while not HasNamedPtfxAssetLoaded(dict) do
            Wait(0)
        end

        UseParticleFxAssetNextCall(dict)
        local particle = StartParticleFxLoopedAtCoord(
                name,
                coords.x, coords.y, coords.z,
                rotation.x, rotation.y, rotation.z,
                1.0,
                0,
                0,
                0,
                0
        )

        local color = SmokeColors[ColorIndexToCategory[colorIdx]]
        if not color then
            color = SmokeColors.white
        end
        
        SetParticleFxLoopedColour(particle, color[1]/255, color[2]/255, color[3]/255, 0)
        SetParticleFxLoopedAlpha(particle, 1.0)
        Wait(2000)
        RemoveParticleFx(particle, 1)

        RemoveParticleFx(dict, true)
    end)
end