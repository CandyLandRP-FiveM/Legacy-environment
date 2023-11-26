function GetTuningForNui(vehicle)
    local tuningOptions = {}
    for _, catName in pairs(Config.MenuOrder.main) do
        local catItems = {}
        if not TuningShops[CurrentShop].disabledCategories[catName] then
            for _, modName in pairs(Config.MenuOrder[catName]) do
                if not TuningShops[CurrentShop].disabledUpgrades[modName] then
                    if modName == 'primaryRespray' or modName == 'secondaryRespray' or modName == 'pearlescentRespray' or modName == 'modFrontWheelsColor' or modName == 'interiorRespray' or modName == 'dashboardRespray' then                        
                        table.insert(
                            catItems,
                            {
                                label = Config.Menus[modName].label,
                                modType = Config.Menus[modName].modType,
                                modName = modName,
                                items = HandleColorPicker(Config.Menus[modName]),
                            }
                        )
                    elseif extraToId[modName] then
                        
                        if DoesExtraExist(vehicle, extraToId[modName]) then
                            table.insert(
                                catItems,
                                {
                                    unlocked = true,
                                    label = "Extra " .. extraToId[modName],
                                    modType = Config.Menus[modName].modType,
                                    modName = modName,
                                    items = HandleExtras(Config.Menus[modName]),
                                }
                            )
                    
                        end
                        
                    
                    elseif Config.Menus[modName].modType then
                        if Config.Menus[modName].isNumbered then
                            local numberedItems = HandleNumberedUpgrade(Config.Menus[modName])

                            if #numberedItems > 1 then
                                table.insert(
                                    catItems,
                                    {
                                        label = Config.Menus[modName].label,
                                        modType = Config.Menus[modName].modType,
                                        modName = modName,
                                        items = numberedItems,
                                    }
                                )
                            end
                        elseif Config.Menus[modName].modType == 14 then -- horns
                            table.insert(
                                catItems,
                                {
                                    label = Config.Menus[modName].label,
                                    modType = Config.Menus[modName].modType,
                                    modName = modName,
                                    items = HandleHornUpgrade(Config.Menus[modName]),
                                }
                            )
                        elseif Config.Menus[modName].modType == 18 then -- turbo
                            table.insert(
                                catItems,
                                {
                                    label = Config.Menus[modName].label,
                                    modType = Config.Menus[modName].modType,
                                    modName = modName,
                                    items = HandleTurboUpgrade(Config.Menus[modName]),
                                }
                            )
                        elseif Config.Menus[modName].modType == 22 then -- xenon
                            table.insert(
                                catItems,
                                {
                                    label = _U('menu_lights'),
                                    modType = 'menu_lights',
                                    modName = 'menu_lights',
                                    items = {
                                        {
                                            label = Config.Menus[modName].label,
                                            modType = Config.Menus[modName].modType,
                                            modName = modName,
                                            items = HandleXenonUpgrade(Config.Menus[modName]),
                                        },
                                        {
                                            label = Config.Menus.modXenonColor.label,
                                            modType = Config.Menus.modXenonColor.modType,
                                            modName = Config.Menus.modXenonColor.modType,
                                            items = HandleXenonColorUpgrade(Config.Menus.modXenonColor),
                                        }
                                    }
                                }
                            )
                        elseif Config.Menus[modName].modType == 'neonLayout' then
                            if not IsBike(vehicle) then
                                table.insert(
                                    catItems,
                                    {
                                        label = Config.Menus[modName].label,
                                        modName = modName,
                                        items = HandleNeonLayoutUpgrade(Config.Menus[modName]),
                                    }
                                )
                            end
                        elseif Config.Menus[modName].modType == 'neonColor' or Config.Menus[modName].modType == 'tyreSmokeColor' then -- neons
                            if Config.Menus[modName].modType == 'tyreSmokeColor' or not IsBike(vehicle) then
                                table.insert(
                                    catItems,
                                    {
                                        label = Config.Menus[modName].label,
                                        modName = modName,
                                        items = HandleNeonsUpgrade(Config.Menus[modName]),
                                    }
                                )
                            end
                        elseif Config.Menus[modName].modType == 'plateIndex' then
                            table.insert(
                                catItems,
                                {
                                    label = Config.Menus[modName].label,
                                    modName = modName,
                                    items = HandlePlateUpgrade(Config.Menus[modName]),
                                }
                            )
                        elseif Config.Menus[modName].modType == 'modLivery2' then
                            if GetVehicleLiveryCount(CurrentVehicle) > 0 then
                                table.insert(
                                    catItems,
                                    {
                                        label = Config.Menus[modName].label,
                                        modName = modName,
                                        items = HandleModLivery2(Config.Menus[modName]),
                                    }
                                )
                            end
                        elseif Config.Menus[modName].modType == 'modRoofLivery' then
                            local roofLiveryOptions = HandleRoofLivery(Config.Menus[modName])

                            if #roofLiveryOptions > 0 then
                                table.insert(
                                    catItems,
                                    {
                                        label = Config.Menus[modName].label,
                                        modName = modName,
                                        items = roofLiveryOptions,
                                    }
                                )
                            end
                        elseif Config.Menus[modName].modType == 'modCustomWheels' then
                            table.insert(
                                catItems,
                                {
                                    label = Config.Menus[modName].label,
                                    modName = modName,
                                    items = HandleTyreBrand(Config.Menus[modName]),
                                }
                            )
                        elseif Config.Menus[modName].modType == 'modNitrous' then
                            if Config.EnableNitrous then
                                table.insert(
                                    catItems,
                                    {
                                        label = Config.Menus[modName].label,
                                        modName = modName,
                                        items = HandleNitrous(Config.Menus[modName]),
                                    }
                                )
                            end
                        elseif Config.Menus[modName].modType == 'modCamber' then
                            if Config.EnableCamberAndSpacers then
                                table.insert(
                                    catItems,
                                    {
                                        label = Config.Menus[modName].label,
                                        modName = modName,
                                        items = HandleCamber(Config.Menus[modName]),
                                    }
                                )
                            end
                        elseif Config.Menus[modName].modType == 'modSpacer' then
                            if Config.EnableCamberAndSpacers then
                                table.insert(
                                    catItems,
                                    {
                                        label = Config.Menus[modName].label,
                                        modName = modName,
                                        items = HandleSpacer(Config.Menus[modName]),
                                    }
                                )
                            end
                        elseif Config.Menus[modName].modType == 'windowTint' then
                            if not IsBike(vehicle) then
                                table.insert(
                                    catItems,
                                    {
                                        label = Config.Menus[modName].label,
                                        modName = modName,
                                        items = HandleWindowTint(Config.Menus[modName]),
                                    }
                                )
                            end
                        elseif Config.Menus[modName].modType == 'modTireEnhancements' then
                            table.insert(
                                catItems,
                                {
                                    label = Config.Menus[modName].label,
                                    modType = Config.Menus[modName].modType,
                                    modName = modName,
                                    items = HandleModTireEnhancements(Config.Menus[modName]),
                                }
                            )
                        else
                            local curItems = HandleNamedUpgrade(Config.Menus[modName])

                            if curItems and #curItems > 0 then
                                table.insert(
                                    catItems,
                                    {
                                        label = Config.Menus[modName].label,
                                        modType = Config.Menus[modName].modType,
                                        modName = modName,
                                        items = curItems,
                                    }
                                )
                            end
                        end
                    else
                        if modName == 'modFrontWheelsTypes' then
                            local carWheelType = GetVehicleWheelType(vehicle)
                            local wheelItems = {}

                            for _, wheelType in pairs(Config.MenuOrder[modName]) do
                                if Config.Menus[wheelType] then
                                    local isBike = IsBike(vehicle)
                                    if (Config.Menus[wheelType].isBike and isBike) or (not Config.Menus[wheelType].isBike and not isBike) then
                                        SetVehicleWheelType(vehicle, Config.Menus[wheelType].wheelType)
                                        table.insert(
                                            wheelItems,
                                            {
                                                label = Config.Menus[wheelType].label,
                                                modType = Config.Menus[wheelType].modType,
                                                wheelType = Config.Menus[wheelType].wheelType,
                                                modName = wheelType,
                                                items = HandleNamedUpgrade(Config.Menus[wheelType])
                                            }
                                        )
                                    end
                                end
                            end

                            SetVehicleWheelType(vehicle, carWheelType)
                            table.insert(
                                catItems,
                                {
                                    label = Config.Menus[modName].label,
                                    modName = modName,
                                    items = wheelItems,
                                }
                            )
                        else
                            print('Unknown', modName)
                        end
                    end
                end
            end

            if #catItems > 0 then
                table.insert(
                    tuningOptions,
                    {
                        name = catName,
                        label = Config.Menus[catName].label,
                        items = catItems,
                    }
                )
            end
        end
    end

    return tuningOptions
end

local camPitchBase = nil
RegisterNUICallback('startMousePan', function(data, cb)
    camPitchBase = GetGameplayCamRelativePitch()+2
    
    if cb then cb() end
end)

RegisterNUICallback('mousePan', function(data, cb)
    local xMove = data.x
    local yMove = data.y

    camPitchBase = camPitchBase - yMove*60;

    SetGameplayCamRelativeHeading(GetGameplayCamRelativeHeading() - xMove * 300)
    SetGameplayCamRelativePitch(camPitchBase, 1.0)

    if cb then cb() end
end)

RegisterNUICallback('previewTuning', function(data, cb)
    local modName = data.modName
    local modType = data.modType
    local index = data.index

    PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)

    PreviewTuningMod(modName, modType, index)
    if cb then cb() end
end)

RegisterNUICallback('unsetPreview', function(data, cb)
    ResetTuningPreview(CurrentVehicle)
    if cb then cb() end
end)

local timeout = 10
function tprint (tbl, indent)
    timeout = timeout - 1

    if timeout < 0 then
        Wait(0)
        timeout = 10
    end
    if not indent then indent = 0 end
    if type(tbl) == 'table' then
       for k, v in pairs(tbl) do
          formatting = string.rep("  ", indent) .. k .. ": "
          if type(v) == "table" then
             print(formatting)
             tprint(v, indent+1)
          elseif type(v) == 'boolean' then
             print(formatting .. tostring(v))      
          else
             print(formatting .. v)
          end
       end
    else
       print(tbl)
    end
end


RegisterNUICallback('close', function(data, cb)
    HandleUndoPreviewOpenDoor(CurrentVehicle, CurrentPreviewModName)
    PlaySoundFrontend(-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    SetNuiFocus(false, false)
    SendNUIMessage({
        type = "hideui",
    })

    SetVehicleLights(CurrentVehicle, 0)

    ResetToInstalled()

    CurrentVehicle = nil
    CurrentVehicleModel = nil
    VehicleTuningModifier = nil
    
    if cb then cb() end
end)

RegisterNUICallback('order', function(data, cb)
    PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    ShowNotification(_U("ordered_from_catalog"), true)
    TriggerEvent('rcore_tuning:onExitTuningVehicle', CurrentVehicle)
    if cb then cb() end
end)

RegisterNUICallback('upDownSound', function(data, cb)
    PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    if cb then cb() end
end)

RegisterNUICallback('changeCamera', function(data, cb)
    Citizen.CreateThread(function()
        SetControlNormal(0, 0, 1.0)
        Wait(0)
        SetControlNormal(0, 0, 0.0)
    end)
    
    if cb then cb() end
end)

local isHornOn = false

RegisterNUICallback('soundHorn', function(data, cb)
    Citizen.CreateThread(function()
        isHornOn = true

        while isHornOn do
            SetControlNormal(0, 86, 1.0)
            Wait(0)
        end
    end)
    if cb then cb() end
end)
RegisterNUICallback('stopHorn', function(data, cb)
    isHornOn = false
    if cb then cb() end
end)
RegisterNUICallback('clickLights', function(data, cb)
    Citizen.CreateThread(function()
        SetControlNormal(0, 74, 1.0)
        Wait(0)
        SetControlNormal(0, 74, 0.0)
    end)
    if cb then cb() end
end)





RegisterNUICallback('confirmSelection', function(data, cb)
    HandleUndoPreviewOpenDoor(CurrentVehicle, CurrentPreviewModName)
    SelectUpgradeForPurchase(CurrentPreviewModName, CurrentPreviewModType, CurrentPreviewModIndex)
    CurrentPreviewModName = nil
    CurrentPreviewModType = nil
    CurrentPreviewModIndex = nil
    PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)

    SendNUIMessage({
        type = "setOrderedTuning",
        orderedTuning = TuningOrdered,
        totalCost = FormatPrice(GetTotalOrderedCost()),
    })

    if cb then cb() end
end)

function GetTotalOrderedCost()
    local total = 0

    for modName, idx in pairs(TuningOrdered) do
        total = total + SimpleGetPrice(modName, idx)
    end

    return total
end

