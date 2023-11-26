-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
if GetResourceState('es_extended') ~= 'started' then return end
ESX = exports['es_extended']:getSharedObject()
WSB = {}
WSB.framework, WSB.playerLoaded, WSB.playerData = 'esx', nil, {}
local isDead
---@diagnostic disable: duplicate-set-field

function WSB.getCore()
    return ESX
end

RegisterNetEvent('esx:playerLoaded', function(xPlayer)
    WSB.playerData = xPlayer
    WSB.playerLoaded = true
    TriggerEvent('wasabi_bridge:playerLoaded', xPlayer)
end)

AddEventHandler('esx:onPlayerSpawn', function(noAnim)
    if type(noAnim) ~= 'boolean' then noAnim = false end
    TriggerEvent('wasabi_bridge:onPlayerSpawn', noAnim)
    isDead = nil
end)

AddEventHandler('esx:onPlayerDeath', function(data)
    TriggerEvent('wasabi_bridge:onPlayerDeath', data)
    isDead = true
end)

RegisterNetEvent('esx:onPlayerLogout', function()
    TriggerEvent('wasabi_bridge:onPlayerLogout')
    table.wipe(WSB.playerData)
    WSB.playerLoaded = false
end)

RegisterNetEvent('esx:setJob', function(job)
    WSB.playerData.job = job
    TriggerEvent('wasabi_bridge:setJob', job)
end)

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName or not ESX.PlayerLoaded then return end
    WSB.playerData = ESX.GetPlayerData()
    WSB.playerLoaded = true
end)

AddEventHandler('esx:setPlayerData', function(key, value)
    if GetInvokingResource() ~= 'es_extended' then return end
    WSB.playerData[key] = value
    TriggerEvent('wasabi_bridge:setPlayerData', key, value)
end)

---@diagnostic disable: duplicate-set-field

function WSB.showNotification(msg, _type)
    ESX.ShowNotification(msg)
end

function WSB.serverCallback(name, cb, ...)
    ESX.TriggerServerCallback(name, cb,  ...)
end

function WSB.getClosestPlayer()
    return ESX.Game.GetClosestVehicle()
end

function WSB.hasGroup(filter)
    local type = type(filter)

    if type == 'string' then
        if WSB.playerData and WSB.playerData.job and WSB.playerData.job.name == filter then
            return WSB.playerData.job.name, WSB.playerData.job.grade
        end
    else
        local tabletype = table.type(filter)

        if tabletype == 'hash' then
            local grade
            if WSB.playerData and WSB.playerData.job then grade = filter[WSB.playerData.job.name] end
            if grade and grade <= WSB.playerData.job.grade then
                return WSB.playerData.job.name, WSB.playerData.job.grade
            end
        elseif tabletype == 'array' then
            for i = 1, #filter do
                if WSB.playerData and WSB.playerData.job and WSB.playerData.job.name == filter[i] then
                    return WSB.playerData.job.name, WSB.playerData.job.grade
                end
            end
        end
    end
end

function WSB.getGroup()
    if not WSB.playerData or not WSB.playerData.job then return end
    return WSB.playerData.job.name, WSB.playerData.job.grade
end

function WSB.isOnDuty()
    if not WSB.playerData or not WSB.playerData.job then return end
    if WSB.playerData.job.name:sub(0, 3) == 'off' then
        return false
    else
        return true
    end
end

function WSB.openBossMenu()
    if not WSB.playerData or not WSB.playerData.job then return end
    TriggerEvent('esx_society:openBossMenu', WSB.playerData.job.name, function(menu)
        --ESX.CloseContext()
    end, {wash = false})
end

function WSB.getGender()
    if not WSB.playerData and not WSB.playerData.sex then return end
    return WSB.playerData.sex
end

function WSB.isPlayerDead()
    return isDead
end
