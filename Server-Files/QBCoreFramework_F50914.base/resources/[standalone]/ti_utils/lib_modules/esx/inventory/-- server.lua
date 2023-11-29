-- server.lua

local onFire = {}

RegisterCommand("setonfire", function(source)
    local state

    if onFire[source] then
        onFire[source] = nil
        state = false
    else
        onFire[source] = true
        state = true
    end

    TriggerClientEvent("setOnFire", -1, source, state)
end, true)

-- client.lua

local pid = PlayerId()
local sid = GetPlayerServerId(pid)

local onFire
local trackingPlayers = {}

local function trackSelf(state)
    if state then
        onFire = true
    else
        onFire = false
    end
    
    while onFire do
        local ped = PlayerPedId()

        if not GetPlayerInvincible(pid) then
            SetPlayerInvincible(pid, true)
        end

        if not IsEntityOnFire(ped) then
            StartEntityFire(ped)
        end

        Wait(0)
    end
end

local function trackPlayer(target, state)
    if state then
        trackingPlayers[target] = true
    else
        trackingPlayers[target] = nil
    end

    local targetPlayer = GetPlayerFromServerId(target)

    while trackingPlayers[target] do
        local ped = GetPlayerPed(targetPlayer)

        if ped ~= 0 and DoesEntityExist(ped) then
            local plyPed = PlayerPedId()
            local plyPos = GetEntityCoords(plyPed)
            local targetPos = GetEntityCoords(ped)

            if #(plyPos - targetPos) <= 20 then
                if not IsEntityOnFire(ped) then
                    StartEntityFire(ped)
                end
            end
        end

        Wait(100)
    end
end

RegisterNetEvent("setOnFire", function(target, state)
    if sid == target then
        trackSelf(state)
    else
        trackPlayer(target, state)
    end
end)