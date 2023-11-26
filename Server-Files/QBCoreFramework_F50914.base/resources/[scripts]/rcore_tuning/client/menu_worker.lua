CurrentlyTuningVehNetId = nil
WorkerTuningModifier = nil


ServerOrderedTuning = {}
TuningInProgress = {}
local HoveringPart = nil

RegisterNetEvent('rcore_tuning:setOrderedTuning')
AddEventHandler('rcore_tuning:setOrderedTuning', function(netId, data)
    ServerOrderedTuning[netId] = data
end)

RegisterNetEvent('rcore_tuning:setTuningInProgress')
AddEventHandler('rcore_tuning:setTuningInProgress', function(netId, modName)
    if not TuningInProgress[netId] then
        TuningInProgress[netId] = {}
    end

    TuningInProgress[netId][modName] = true
end)

RegisterNetEvent('rcore_tuning:unsetTuningInProgress')
AddEventHandler('rcore_tuning:unsetTuningInProgress', function(netId, modName)
    if TuningInProgress[netId] then
        if TuningInProgress[netId][modName] then
            TuningInProgress[netId][modName] = nil
        end
        
        local cnt = 0

        for _, __ in pairs(TuningInProgress[netId]) do
            cnt = cnt + 1
        end

        if cnt == 0 then
            TuningInProgress[netId] = nil
        end
    end
end)



Citizen.CreateThread(function()
    Wait(500)

	WarMenu.SetTitleSizing(0.04, 0.6)
    WarMenu.CreateMenu('tuningWorkerMenu')
    WarMenu.SetSubTitle('tuningWorkerMenu', _U("install_tuning"))
    WarMenu.SetTitleBackgroundSprite('tuningWorkerMenu', "tuning_ui", "rcore_tuning_template_menu")
    WarMenu.SetTitleBackgroundColor('tuningWorkerMenu', 0, 0, 0, 255) -- Benny's colors
    WarMenu.SetSubTitleColor('tuningWorkerMenu', 227, 162, 33, 255)
    WarMenu.SetTitleColor('tuningWorkerMenu', 255, 255, 255, 200)

    WarMenu.SetMenuWidth('tuningWorkerMenu', 0.3)
    WarMenu.SetMenuX('tuningWorkerMenu', 0.685)

	while true do
        Citizen.Wait(0)
        local totalPrice = 0
        if WarMenu.IsMenuOpened('tuningWorkerMenu') then
            if not CurrentlyTuningVehNetId or not IsInsideShop or not IsControllingCurrentShop then
                WarMenu.CloseMenu()
                UnsetCurrentMinigame()
            else
                DrawMenuLine()

                local isVehDamaged, isLightlyDamaged = IsVehicleDamaged(CurrentlyTuningVehNetId)
                local dirtLevel = GetVehicleDirtLevel(NetToVeh(CurrentlyTuningVehNetId))

                if dirtLevel > 1.0 and WarMenu.Button(_U("clean_vehicle")) then
                    CleanCar(CurrentlyTuningVehNetId)
                    WarMenu.CloseMenu()
                end

                if isVehDamaged and ((Config.ForceVehicleRepair == nil and true) or Config.ForceVehicleRepair) then -- is veh damaged
                    local price = ComputeCurrentPrice(CurrentShop, GetVehicleType() == 8 and 'motorBikesRepair' or 'repair', WorkerTuningModifier, 1, -1, GetEntityModel(NetToVeh(CurrentlyTuningVehNetId)), true)

                    if isLightlyDamaged then
                        price = 0
                    end

                    if WarMenu.Button(_U("repair_vehicle"), FormatPrice(price), function() HoveringPart = 'repair' end) then
                        if isLightlyDamaged then
                            TriggerServerEvent('rcore_tuning:performVehicleAction', CurrentlyTuningVehNetId, 'repair')
                        else
                            if PlayerHasMoney(price) then
                                if GetVehicleType() == 8 then
                                    SelectCurrentInstallPart('motorBikesRepair', 1)
                                else
                                    SelectCurrentInstallPart('repair', 1)
                                end
                            else
                                ShowNotification(BuyTuningPriceError(price))
                            end
                        end
                    end
                elseif ServerOrderedTuning[CurrentlyTuningVehNetId] then
                    for _, name in pairs(WorkerMenuOrder) do
                        local idx = ServerOrderedTuning[CurrentlyTuningVehNetId].tuning[name]
                        
                        if idx or (extraToId[name] and idx == false) then
                            local display = true

                            if Config.Menus[name].modType and Config.Menus[name].modType == 'modCustomWheels' then
                                if GetVehicleMod(NetToVeh(CurrentlyTuningVehNetId), 23) == -1 then
                                    display = false
                                end
                            end

                            if display and not IsThisTuningInProgress(name) then
                                local price = ComputeCurrentPrice(CurrentShop, name, WorkerTuningModifier, idx, TuningInstalled[name] or -1, GetEntityModel(NetToVeh(CurrentlyTuningVehNetId)), true)
                                if price then
                                    totalPrice += price
                                end
                                if WarMenu.Button(GetTuningItemLabel(name, idx), FormatPrice(price), function() HoveringPart = name end) then
                                    if PlayerHasMoney(price) then
                                        SelectCurrentInstallPart(name, idx)
                                    else
                                        ShowNotification(BuyTuningPriceError(price))
                                    end
                                end
                             end
                        end
                    end
                end

                if totalPrice ~= 0 then
                    local totalPriceLabel = "~g~Total price: ~s~"
                    if Locales[Config.Locale]['worker_total_price'] then
                        totalPriceLabel = _U('worker_total_price')
                    end
                    WarMenu.SpecialButton(totalPriceLabel, FormatPrice(totalPrice), function() end)
                end

                if Entity(NetToVeh(CurrentlyTuningVehNetId)).state.rcoreHasNitrous and Entity(NetToVeh(CurrentlyTuningVehNetId)).state.rcoreNitrous < 95 then
                    local price = ComputeCurrentPrice(CurrentShop, 'modNitrousRefill', WorkerTuningModifier, 1, -1, GetEntityModel(NetToVeh(CurrentlyTuningVehNetId)), true)

                    if WarMenu.Button(_U('refill_nitrous'), FormatPrice(price), function() HoveringPart = 'repair' end) then
                        SelectCurrentInstallPart('modNitrousRefill', 1)
                    end
                end

                WarMenu.Display()
            end
        else
            CurrentlyTuningVehNetId = nil
            Wait(250)
        end
    end
end)

function GetVehicleType()
    local currentVeh = NetToVeh(CurrentlyTuningVehNetId)
    local vehClass = GetVehicleClass(currentVeh)

    if vehClass then
        return vehClass
    end

    return nil
end

function IsThisTuningInProgress(name)
    if not TuningInProgress[CurrentlyTuningVehNetId] then
        return false
    end

    if name == 'primaryRespray' or name == 'secondaryRespray' or name == 'pearlescentRespray' then
        local ptr = TuningInProgress[CurrentlyTuningVehNetId]

        return ptr['primaryRespray'] or ptr['secondaryRespray'] or ptr['pearlescentRespray']
    else
        return TuningInProgress[CurrentlyTuningVehNetId][name]
    end
end

function OpenCatalogForPlayer(serverId)
    local player = GetPlayerFromServerId(serverId)
    local ped = GetPlayerPed(player)
    local veh = GetVehiclePedIsIn(ped)
    
    local shopConfig = TuningShops[CurrentShop]

    if shopConfig then
        if shopConfig.motorcycleOnly and not IsBike(veh) then
            ShowNotification(_U('shop_motorcycle_only'))
            return
        end
        
        if shopConfig.carOnly and IsBike(veh) then
            ShowNotification(_U('shop_car_only'))
            return
        end

        TriggerServerEvent('rcore_tuning:openCatalogForPlayer', serverId)
    else
        print("ERROR: cant find current shop")
    end
end

RegisterCommand(Config.OpenTuningMenuCommand, function(_, args)
    if IsInsideShop and IsControllingCurrentShop then
        if not args[1] or not tostring(args[1]) then
            TriggerEvent('chat:addMessage', {
                color = { 255, 0, 0},
                multiline = true,
                args = {"Use: /" .. Config.OpenTuningMenuCommand .. " <id>"}
            })
            return
        end

        local targetServerId = tonumber(args[1])
        local targetPlayer = GetPlayerFromServerId(targetServerId)

        if targetPlayer and targetPlayer > 0 then
            local targetPed = GetPlayerPed(targetPlayer)

            if targetPed and targetPed > 0 then
                if #(GetEntityCoords(targetPed) - GetEntityCoords(PlayerPedId())) < 10.0 then
                    local targetVeh = GetVehiclePedIsIn(targetPed, false) 

                    if targetVeh and targetVeh > 0 then
                        if GetPedInVehicleSeat(targetVeh, -1) == targetPed then
                            OpenCatalogForPlayer(targetServerId)
                        else
                            ShowNotification(_U("catalog_customer_not_driver"))
                        end
                    else
                        ShowNotification(_U("catalog_customer_not_in_car"))
                    end
                else
                    ShowNotification(_U("catalog_customer_too_far"))
                end
            end
        end
    else
        ShowNotification(_U("catalog_you_are_not_in_workshop"))
    end
end, false)

Citizen.CreateThread(function()
    AddTextEntry('RC_CANC_TUN', '~' .. Config.Keys.CANCEL.label .. '~ '.._U("catalog_tuning_cancel"))
    AddTextEntry('RC_CANC_CATALOG', '~' .. Config.Keys.MENU_MODIFIER.label .. '~ + ~' .. Config.Keys.MENU_KEY.label .. '~ '.._U("catalog_open")..'~n~~' .. Config.Keys.CANCEL.label .. '~ '.._U("catalog_tuning_cancel"))
    AddTextEntry('RC_CAT_PAS', '~' .. Config.Keys.MENU_MODIFIER.label .. '~ + ~' .. Config.Keys.MENU_KEY.label .. '~ '.._U("catalog_show_to_customer"))
    AddTextEntry('RC_CAT_DRI', '~' .. Config.Keys.MENU_MODIFIER.label .. '~ + ~' .. Config.Keys.MENU_KEY.label .. '~ '.._U("catalog_tuning_open"))
    AddTextEntry('RC_SHOW_ORDERED_TUNING', '~'.. Config.Keys.MENU_KEY.label .. '~ '.._U("catalog_tuning_open_ordered_tuning") or 'Open ordered tuning')
    while not Config.TargetResourceName do
        if IsInsideShop and IsControllingCurrentShop then
            Wait(0)

            local ped = PlayerPedId()
            local veh = GetVehiclePedIsIn(ped, false)

            local isDriver = GetPedInVehicleSeat(veh, -1) == ped
            local isShotgun = GetPedInVehicleSeat(veh, 0) == ped

            local realDriverPed = GetPedInVehicleSeat(veh, -1)

            if not TemporarilySuspended then
                if not IsNearStageCheckpoint then
                    if isDriver then
                        if CurrentMinigamePart then
                            DisplayHelpTextThisFrame('RC_CANC_CATALOG')
                        else
                            DisplayHelpTextThisFrame('RC_CAT_DRI')
                        end
                    elseif isShotgun and realDriverPed > 0 then
                        DisplayHelpTextThisFrame('RC_CAT_PAS')
                    elseif not IsNearStageCheckpoint and not IsNearLift and CurrentMinigamePart then
                        DisplayHelpTextThisFrame('RC_CANC_TUN')
                    end
                end

                local isShiftPressed = IsControlPressed(0, Config.Keys.MENU_MODIFIER.code) or IsDisabledControlPressed(0, Config.Keys.MENU_MODIFIER.code)
                local isLJustPressed = IsControlJustPressed(0, Config.Keys.MENU_KEY.code) or IsDisabledControlJustPressed(0, Config.Keys.MENU_KEY.code)
                local isCancelJustPressed = IsControlJustPressed(0, Config.Keys.CANCEL.code) or IsDisabledControlJustPressed(0, Config.Keys.CANCEL.code)

                if isCancelJustPressed and CurrentMinigamePart then
                    UnsetCurrentMinigame(false)
                end

                if not isShiftPressed and isLJustPressed then
                    if not CurrentMinigamePart then
                        DisplayTuningWorkerMenu()
                    end
                end
                
                local veh = GetTuningVehicleInFront()

                if veh and veh > 0 and not CurrentMinigamePart then
                    DisplayHelpTextThisFrame('RC_SHOW_ORDERED_TUNING')
                end
                
                if isShiftPressed and isLJustPressed then
                    if IsBike(veh) or CurrentShop ~= 'EAST_V' then
                        if isDriver then
                            OpenTuningMenu()
                        elseif isShotgun and realDriverPed > 0 and IsPedAPlayer(realDriverPed) then
                            local driverPlayer = NetworkGetEntityOwner(realDriverPed)
                            local driverServerId = GetPlayerServerId(driverPlayer)

                            OpenCatalogForPlayer(driverServerId)
                        end
                    else
                        ShowNotification(_U("catalog_bikes_only"))
                    end
                end
            end
        else
            if CurrentMinigamePart then
                UnsetCurrentMinigame(false)
            end
            Wait(2000)
        end
    end
end)

function DrawMenuLine()
    local veh = NetToVeh(CurrentlyTuningVehNetId)
    
    local menuPoint = ScreenRelToWorld(
        GetFinalRenderedCamCoord(), 
        GetFinalRenderedCamRot(2), 
        vector2(0.85, 0.1),
        2.0
    )

    local custom, carPoint = GetCorrectCarPoint(veh)

    if #(menuPoint - carPoint) > 10.0 then
        WarMenu.CloseMenu()
        UnsetCurrentMinigame()
    end

    DrawLine(
        menuPoint.x, menuPoint.y, menuPoint.z, 
        carPoint.x, carPoint.y, carPoint.z, 
        255, 255, 255, 200
    )
end

function GetCorrectCarPoint(veh)
    local menuPtr = Config.Menus[HoveringPart]

    if menuPtr and menuPtr.bones then
        for _, boneName in pairs(menuPtr.bones) do
            local idx = GetEntityBoneIndexByName(veh, boneName)

            if idx then
                local finalCoords = GetWorldPositionOfEntityBone(veh, idx)

                if #(finalCoords - vector3(0.0, 0.0, 0.0)) > 10.0 then
                    return true, finalCoords
                end
            end
        end
    end

    return false, GetEntityCoords(veh)
end

function DisplayTuningWorkerMenu()
    local veh = GetTuningVehicleInFront()

    if veh and veh > 0 then
        DisplayTuningWorkerMenuForVehicle(veh)
    else
        ShowNotification(_U("catalog_no_car_in_front"))
    end
end

function DisplayTuningWorkerMenuForVehicle(veh, doNotUnsetMinigame)
    if not VehicleCategories[GetEntityModel(veh)] and (not Config.DefaultCategory or (Config.DefaultCategory and not ClassToModifierTable[Config.DefaultCategory])) then
		ShowNotification(_U('vehicle_no_category'))
		return
	end

    WorkerTuningModifier = GetCarClassPriceMultiplier()
    CurrentlyTuningVehNetId = VehToNet(veh)

    local modelName = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(veh)))

    if modelName == 'NULL' then
        modelName = 'Tuning'
    end

    -- WarMenu.SetTitle('tuningWorkerMenu', modelName)

    ComputeInstalledUpgrades(veh)
    if not doNotUnsetMinigame then
        UnsetCurrentMinigame()
    end
    WarMenu.OpenMenu('tuningWorkerMenu')
end

function GetTuningVehicleInFront()
    local offsets = {
        vector3(0.0, 2.0, -0.75),
        vector3(0.5, 2.0, -0.75),
        vector3(-0.5, 2.0, -0.75),

        vector3(0.0, 2.0, 0.5),
        vector3(0.5, 2.0, 0.5),
        vector3(-0.5, 2.0, 0.5),

        vector3(0.0, 0.0, 2.0),
    }

    local foundVehicle = nil

    for _, f in pairs(offsets) do
        local result = GetVehicleRayOffset(f.x, f.y, f.z)

        if result and result > 0 then
            foundVehicle = result
            break
        end
    end

    if foundVehicle then
        if NetworkGetEntityIsNetworked(foundVehicle) then
            return foundVehicle
        end

        for idx, data in pairs(Lifts) do
            if data.vehCopy == foundVehicle then
                return NetToVeh(NetLifts[idx].vehNetId)
            end
        end
    end
end

function GetVehicleRayOffset(x,y,z)
    local player = PlayerPedId()
    local pos = GetEntityCoords(player)
    local entityWorld = GetOffsetFromEntityInWorldCoords(player, x, y, z)
    local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 2, player, 2)
    local _, hit, _, _, result = GetRaycastResult(rayHandle)

    if hit == 1 then
        return result
    end

    return nil
end

function ScreenRelToWorld(camPos, camRot, coord, camDist)
    local camForward = RotationToDirection(camRot)
    local rotUp = camRot + vector3(camDist, 0.0, 0.0)
    local rotDown = camRot + vector3(-camDist, 0.0, 0.0)
    local rotLeft = camRot + vector3(0.0, 0.0, -camDist)
    local rotRight = camRot + vector3(0.0, 0.0, camDist)

    local camRight = RotationToDirection(rotRight) - RotationToDirection(rotLeft)
    local camUp = RotationToDirection(rotUp) - RotationToDirection(rotDown)

    local rollRad = -math.rad(camRot.y)

    local camRightRoll = camRight * math.cos(rollRad) - camUp * math.sin(rollRad)
    local camUpRoll = camRight * math.sin(rollRad) + camUp * math.cos(rollRad)

    local point3D = camPos + camForward * camDist + camRightRoll + camUpRoll

    local found, x, y = GetScreenCoordFromWorldCoord(point3D.x, point3D.y, point3D.z)
    if not found then
        return camPos + camForward * camDist
    end

    local point2D = vector2(x,y)

    local point3DZero = camPos + camForward * camDist
    local foundZero, xZero, yZero = GetScreenCoordFromWorldCoord(point3DZero.x, point3DZero.y, point3DZero.z)
    if not foundZero then
        return camPos + camForward * camDist
    end
    local point2DZero = vector2(xZero, yZero)

    local eps = 0.001
    if (math.abs(point2D.x - point2DZero.x) < eps or math.abs(point2D.y - point2DZero.y) < eps) then
        return camPos + camForward * camDist
    end

    local scaleX = (coord.x - point2DZero.x) / (point2D.x - point2DZero.x)
    local scaleY = (coord.y - point2DZero.y) / (point2D.y - point2DZero.y)
    local point3Dret = camPos + camForward * camDist + camRightRoll * scaleX + camUpRoll * scaleY

    return point3Dret
end

function RotationToDirection(rotation)
    local z = math.rad(rotation.z)
    local x = math.rad(rotation.x)
    local num = math.abs(math.cos(x))
    return vector3(
        (-math.sin(z) * num),
        (math.cos(z) * num),
         math.sin(x)
    )
end

function GetTuningItemLabel(modName, idx, maybeVeh)
    local menuPtr = Config.Menus[modName]
    local base = menuPtr.label

    if modName == 'primaryRespray' or modName == 'secondaryRespray' or modName == 'pearlescentRespray' or modName == 'modFrontWheelsColor' or modName == 'interiorRespray' or modName == 'dashboardRespray' then
        local col = DirectColors[idx]

        return base .. ' - ' .. col
    end


    if menuPtr.isNumbered then
        return base .. ' - ' .. menuPtr.upgrades[idx]
    elseif menuPtr.modType == 14 then -- horns
        return base .. ' - ' .. GetHornName(idx)
    elseif menuPtr.modType == 18 then -- turbo
        if idx then
            return base .. ' - ' .. _U("menu_upgrades_turbo")
        else
            return base .. ' - ' .. _U("catalog_none")
        end
    elseif menuPtr.modType == 22 then -- xenon
        if idx then
            return base .. ' - ' .. _U("catalog_lights_xenon")
        else
            return base .. ' - ' .. _U("catalog_lights_stock")
        end
    elseif menuPtr.modType == 'plateIndex' then
        return base .. ' - ' .. GetPlatesName(idx)
    elseif menuPtr.modType == 'modRoofLivery' then
        return base .. ' - ' .. idx
    elseif menuPtr.modType == 'modLivery2' then
        return _U("menu_cosmetics_livery_single") .. " #" .. idx
    elseif extraToId[menuPtr.modType] then
        return _U("menu_extras_single") .. " #" .. extraToId[menuPtr.modType]
    elseif menuPtr.modType == 'neonLayout' then
        return base .. ' - ' .. menuPtr.layouts[idx].label
    elseif menuPtr.modType == 'neonColor' or menuPtr.modType == 'tyreSmokeColor' then -- neons
        return base .. ' - ' .. (TuningNeonColors)[idx].label
    elseif menuPtr.modType == 'modCustomWheels' then
        if idx then
            return base .. ' - ' .. _U("catalog_tires_atomic")
        else
            return base .. ' - ' .. _U("catalog_tires_stock")
        end
    elseif menuPtr.modType == 'modXenonColor' then
        return base .. ' - ' .. XenonColorsInverse[idx].label
    elseif menuPtr.modType == 'modTireEnhancements' then
        if idx == 0 then
            return base .. ' - ' .. _U("catalog_enhancement_stock")
        elseif idx == 1 then
            return base .. ' - ' .. _U("catalog_enhancement_drift")
        elseif idx == 2 then
            return base .. ' - ' .. _U("catalog_enhancement_bulletproof")
        end
    elseif menuPtr.modType == 'windowTint' then
        if idx == 0 then
            return base .. ' - ' .. _U("catalog_none")
        else
            return base .. ' - ' .. GetWindowName(idx)
        end
    elseif menuPtr.modType == 'modCamber' then
        return base .. ' - ' .. idx .. '°'
    elseif menuPtr.modType == 'modSpacer' then
        return base .. ' - ' .. (math.floor(idx*1000)) .. ' mm'
    elseif menuPtr.modType == 'modNitrous' then
        if idx == 0 or idx == -1 then
            return base .. ' - ' .. _U('catalog_none')
        elseif idx == 1 then
            return _U('menu_upgrades_nitrous')
        end
    else
        if idx == -1 then
            return base .. ' - ' .. _U("catalog_stock")
        else
            local veh = NetToVeh(CurrentlyTuningVehNetId or CurrentMinigameVehicle or maybeVeh)
            local modName = GetModTextLabel(veh, menuPtr.modType, idx)

            local modLabel = ''
            if modName == '' then
                modLabel, found = GetCustomOverrideMod(GetEntityModel(veh), menuPtr.modType, idx)

                if not found then
                    modLabel = '???'
                end
            else
                modLabel = GetLabelText(modName)
            end

            return base .. ' - ' .. modLabel
        end
    end
end

function GetPartStockpile(modName)
    return TuningShops[CurrentShop].stockpiles[modName]
end

local boneParts = {
    'bonnet',
    'handle_dside_f',
    'handle_dside_r',
    'handle_pside_f',
    'handle_pside_r',
}

function IsVehicleDamaged(vehNetId)
    local veh = NetToVeh(vehNetId)

    for _, boneName in pairs(boneParts) do

        local idx = GetEntityBoneIndexByName(veh, boneName)
        local rotation = GetEntityBoneRotation(veh, idx)

        if idx then
            if not DoesEntityExist(idx) and idx >= 0 then
                if rotation == vector3(0, 0, 0) then
                    return true, false
                end
            end
        end
    end

    local engineHp = GetVehicleEngineHealth(veh)

    if engineHp < 1000.0 then
        return true, engineHp >= 950
    end

    local bodyHp = GetVehicleBodyHealth(veh)

    if bodyHp < 1000.0 then
        return true, bodyHp >= 950
    end

    local tires = {0, 1, 4, 5}

    for _, tire in pairs(tires) do
        if IsVehicleTyreBurst(veh, tire, false) then
            return true, false
        end
    end

    return false, false
end

function CleanCar(vehNetId)
    local ped = PlayerPedId()

    local dist = 'timetable@maid@cleaning_window@idle_a'
    local name = 'idle_a'

    local ragProp = CreateCleanCarProp(ped)

    CancellableProgress(
        15000, 
        _U("cleaning_vehicle_event_message"), 
        dist, 
        name, 
        0, 
        function()
            RemoveCleanCarProp(ragProp)
            TriggerServerEvent('rcore_tuning:cleanCar', vehNetId)
        end, 
        function()
            RemoveCleanCarProp(ragProp)
        end, 
        {}
    )
end

RegisterNetEvent('rcore_tuning:setCarClean')
AddEventHandler('rcore_tuning:setCarClean', function(netId)
    if NetworkDoesNetworkIdExist(netId) then
        local veh = NetToVeh(netId)

        SetVehicleDirtLevel(veh, 0.0)
    end
end)

RegisterNetEvent('rcore_tuning:fixWindows')
AddEventHandler('rcore_tuning:fixWindows', function(netId)
    if NetworkDoesNetworkIdExist(netId) then
        local veh = NetToVeh(netId)

        for i = 0, 7 do
            FixVehicleWindow(veh, i)
        end
    end
end)

function CreateCleanCarProp(ped)
    local ragProp = CreateObject(
        `p_loose_rag_01_s`, --`prop_ecola_can`,
        0.0, 0.0, 0.0,
        true, false, false
    )

    AttachEntityToEntity(ragProp, ped, GetPedBoneIndex(ped, 28422), x, y, z, ax, ay, az, true, true, false, true, 1, true)

    return ragProp
end

function RemoveCleanCarProp(ent)
    if NetworkGetEntityOwner(ent) ~= PlayerId() then
        debugMessage("ERROR: Rag prop has migrated! Need to delete serverside")
    end

    DeleteEntity(ent)
end
