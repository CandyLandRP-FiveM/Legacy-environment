local QBCore = exports['qb-core']:GetCoreObject()

local function policeAlert()
    exports['ps-dispatch']:SuspiciousActivity()
end

local function delPmeter()
    local ply = PlayerPedId()
    local plyCoords = GetEntityCoords(ply, 0)
    for k, v in pairs(Config.ModelHashes) do
        local closestPark = GetClosestObjectOfType(plyCoords.x, plyCoords.y, plyCoords.z, 1.5, v, false, 0, 0)
        SetEntityAsMissionEntity(closestPark, true, true)
        DeleteEntity(closestPark)
    end    
end



local function main()
    local ped = PlayerPedId()
        if QBCore.Functions.HasItem('lockpick') then
            local time = math.random(7,10)
            local circles = math.random(2,4)
            local success = exports['qb-lock']:StartLockPickCircle(circles, time, success)
            if success then
                QBCore.Functions.Progressbar('rob_meter', 'Robbing Parking Meter', 15000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
                exports["mz-skills"]:UpdateSkill("Street Reputation", 1)
            }, {
                animDict = 'anim@gangops@facility@servers@',
                anim = 'hotwire',
                flags = 16,
            }, {}, {}, function() 
                TriggerServerEvent('tc-pmeter-payout')
                ClearPedTasks(ped)
                TriggerServerEvent("tc-pmeter:server:final", "lockpick", 1)
                TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["lockpick"], "remove")
                policeAlert()
                delPmeter()

                if Config.Cash then
                    TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10, "coins", 0.5)
                end

                if Config.BlackMoney then
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["markedbills"], "add")
                end

            end, function() 
                ClearPedTasks(ped)
            end)
        else
            QBCore.Functions.Notify('Lockpick Bent Out Of Shape', 'error', 7500)
            TriggerServerEvent("tc-pmeter:server:final", "lockpick", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["lockpick"], "remove")
            policeAlert()
        end
        else
            QBCore.Functions.Notify('You Need a lockpick', 'error', 7500)
        end
end



CreateThread(function()
    exports['qb-target']:AddTargetModel(Config.Models, {
        options = {
            { 
                action = function()
                    main()
                end,
                icon = "fas fa-screwdriver",
                label = "Rob Parking Meter",
            },
        },
        distance = 1.5 
    })
end)


