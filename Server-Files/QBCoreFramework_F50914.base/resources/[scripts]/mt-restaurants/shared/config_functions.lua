function DrunkEffect()
    if not HasAnimSetLoaded("MOVE_M@DRUNK@VERYDRUNK") then
        RequestAnimSet("MOVE_M@DRUNK@VERYDRUNK")
        while not HasAnimSetLoaded("MOVE_M@DRUNK@VERYDRUNK") do
            Citizen.Wait(0)
        end
    end
    SetPedIsDrunk(GetPlayerPed(-1), true)
    ShakeGameplayCam("DRUNK_SHAKE", 1.0)
    SetPedConfigFlag(GetPlayerPed(-1), 100, true)
    SetPedMovementClipset(GetPlayerPed(-1), "MOVE_M@DRUNK@VERYDRUNK", 1.0)
    Wait(50000)
    SetPedIsDrunk(GetPlayerPed(-1), false)
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetPedConfigFlag(GetPlayerPed(-1), 100, false)
    ResetPedMovementClipset(GetPlayerPed(-1), 0)
    ClearPedTasks(PlayerPedId())
end

if Main.InventoryName == 'ox-inventory' then
    itemNames = {}
    for item, data in pairs(exports.ox-inventory:Items()) do
        itemNames[item] = data
    end
end

function playemote(emotename)
    exports["rpemotes"]:EmoteCommandStart(emotename) -- add your emote export here ("emotename" needs to be the same)
end