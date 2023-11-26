-- This function is responsible for drawing all the 3d texts ('Press [E] to take off the wheel' e.g)
function Draw3DText(coords, textInput, scaleX)
    scaleX = scaleX * Config.textScale
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px, py, pz, coords, true)
    local scale = (1 / dist) * 20
    local fov = (1 / GetGameplayCamFov()) * 100
    scale = scale * fov
    
    SetTextScale(scaleX * scale, scaleX * scale)
    SetTextFont(Config.textFont or 4)
    SetTextProportional(1)
    SetTextDropshadow(1, 1, 1, 1, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(coords, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

function KeybindTip(message)
    SetTextComponentFormat("STRING")
    AddTextComponentString(message)
    EndTextCommandDisplayHelp(0, 0, 0, 200)
end

function IsPlayerUnreachable()
    local playerPed = PlayerPedId()
    return IsPedInAnyVehicle(playerPed) or IsPedRagdoll(playerPed) or IsEntityDead(playerPed)
end

function RemoveHandWeapons()
    SetCurrentPedWeapon(PlayerPedId(), -1569615261, true)
end

function DisableInputs()
    -- https://docs.fivem.net/docs/game-references/controls/#controls
    local inputs = {14, 15, 16, 17, 23, 24, 25, 44, 45, 140, 141, 142, 143, 261, 262, 263, 264}

    for k, input in pairs(inputs) do
        DisableControlAction(0, input, true)
    end
end

function PlayAnim(dict, anim, flag, duration)
    Citizen.CreateThread(function()
        RequestAnimDict(dict)
        local timeout = 0
        while not HasAnimDictLoaded(dict) do
            Citizen.Wait(50)
            timeout = timeout + 1
            if timeout > 100 then
                return
            end
        end
        TaskPlayAnim(PlayerPedId(), dict, anim, 1.5, 1.0, duration or -1, flag or 1, 0, false, false, false)
        RemoveAnimDict(dict)
    end)
end


function ShowTooltip(message)
    SetTextComponentFormat("STRING")
    AddTextComponentString(message)
    EndTextCommandDisplayHelp(0, 0, 1, -1)
end


CURRENT_KEYBIND_TIP = nil

function SetKeybindTip(message)
    if CURRENT_KEYBIND_TIP == message then
        return
    end
    CURRENT_KEYBIND_TIP = message

    Citizen.CreateThread(function()
        while CURRENT_KEYBIND_TIP == message do
            local sleep = 100
            if CURRENT_KEYBIND_TIP then
                sleep = 1
                ShowKeybindTip(CURRENT_KEYBIND_TIP)
            end
            Citizen.Wait(sleep)
        end
    end)
end

function ResetKeybindTip()
    if CURRENT_KEYBIND_TIP ~= nil then
        CURRENT_KEYBIND_TIP = nil
    end
end

function ShowKeybindTip(message)
    SetTextComponentFormat("STRING")
    AddTextComponentString(message)

    EndTextCommandDisplayHelp(0, 0, 0, -1)
end

RegisterNetEvent('kq_towing:client:notify')
AddEventHandler('kq_towing:client:notify', function(message)
    Notify(message)
end)

function Notify(message)
    SetTextComponentFormat("STRING")
    AddTextComponentString(message)
    EndTextCommandDisplayHelp(0, 0, 0, 2000)
end


