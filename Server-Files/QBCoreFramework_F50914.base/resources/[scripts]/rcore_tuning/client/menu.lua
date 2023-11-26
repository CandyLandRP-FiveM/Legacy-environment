MenuPosition = nil
PickedColorCategory = nil

AddEventHandler('rcore_tuning:onExitTuningVehicle', function(veh)
    local orderedCount = 0
    for _, __ in pairs(TuningOrdered) do
        orderedCount = orderedCount + 1
    end

    CatalogForZoneShop = nil

    if orderedCount then
        local upgradeList = {}
        for modName, idx in pairs(TuningOrdered) do
            table.insert(upgradeList, {upgrade = GetTuningItemLabel(modName, idx, VehToNet(veh)), price = SimpleGetPrice(modName, idx)})
        end
        TriggerServerEvent('rcore_tuning:setOrderedTuning', VehToNet(veh), GetVehicleNumberPlateText(veh), TuningOrdered, upgradeList)
    end

    ResetToInstalled()
    MenuPosition = nil
    PickedColorCategory = nil
    SetNuiFocus(false, false)
    SendNUIMessage({
        type = "hideui",
    })
end)


function HandleRoofLivery(menuPtr)
    local currentUpgradeIdx = TuningInstalled[MenuPosition]
    local currentOrderedIdx = TuningOrdered[MenuPosition]

    local options = {}

    for i = 0, GetVehicleRoofLiveryCount(CurrentVehicle) - 1 do
        local roofLiveryLabel = _U("menu_cosmetics_rooflivery") .. ' - ' .. i

        if i == 0 then
            roofLiveryLabel = _U("catalog_stock")
        end
        
        table.insert(
            options,
            {
                label = roofLiveryLabel,
                index = i,
                price = GetNuiPrice(menuPtr.itemIndex, i)
            }
        )
    end

    return options
end

function HandlePlateUpgrade(menuPtr)
    local currentUpgradeIdx = TuningInstalled[MenuPosition]
    local currentOrderedIdx = TuningOrdered[MenuPosition]

    local options = {}

    for i = 0, 4 do
        table.insert(
            options,
            {
                label = GetPlatesName(i),
                index = i,
                price = GetNuiPrice(menuPtr.itemIndex, i)
            }
        )
    end

    return options
end

function HandleModLivery2(menuPtr)
    local currentUpgradeIdx = TuningInstalled[MenuPosition]
    local currentOrderedIdx = TuningOrdered[MenuPosition]

    local options = {}

    local numLiveries = GetVehicleLiveryCount(CurrentVehicle)
    for i = 0, numLiveries do
        table.insert(
            options,
            {
                label = GetTuningItemLabel(menuPtr.itemIndex, i, VehToNet(CurrentVehicle)),
                index = i,
                price = GetNuiPrice(menuPtr.itemIndex, i)
            }
        )
    end

    return options
end

function HandleTyreBrand(menuPtr)
    return {
        {
            label = _U("catalog_tires_stock"),
            index = -1,
            price = GetNuiPrice(menuPtr.itemIndex, 0),
        },
        {
            label = _U("catalog_tires_atomic"),
            index = 1,
            price = GetNuiPrice(menuPtr.itemIndex, 1),
            wheelTypeDependant = true,
            allowedWheelTypes = {
                'modFrontWheelsType0',
                'modFrontWheelsType1',
                'modFrontWheelsType2',
                'modFrontWheelsType3',
                'modFrontWheelsType4',
                'modFrontWheelsType5',
                'modFrontWheelsType6',
                'modFrontWheelsType7',
                'modFrontWheelsType11',
                'modFrontWheelsType12',
            },
        },
        {
            label = _U("catalog_tires_atomic_yellow"),
            index = 2,
            price = GetNuiPrice(menuPtr.itemIndex, 1),
            wheelTypeDependant = true,
            allowedWheelTypes = {
                'modFrontWheelsType11',
                'modFrontWheelsType12',
            },
        },
        {
            label = _U("catalog_tires_fukaru"),
            index = 3,
            price = GetNuiPrice(menuPtr.itemIndex, 1),
            wheelTypeDependant = true,
            allowedWheelTypes = {
                'modFrontWheelsType11',
                'modFrontWheelsType12',
            },
        },
        {
            label = _U("catalog_tires_fukaru_red"),
            index = 4,
            price = GetNuiPrice(menuPtr.itemIndex, 1),
            wheelTypeDependant = true,
            allowedWheelTypes = {
                'modFrontWheelsType11',
                'modFrontWheelsType12',
            },
        },
        {
            label = _U("catalog_tires_chepalle_yellow"),
            index = 5,
            price = GetNuiPrice(menuPtr.itemIndex, 1),
            wheelTypeDependant = true,
            allowedWheelTypes = {
                'modFrontWheelsType11',
                'modFrontWheelsType12',
            },
        },
        {
            label = _U("catalog_tires_chepalle_green"),
            index = 6,
            price = GetNuiPrice(menuPtr.itemIndex, 1),
            wheelTypeDependant = true,
            allowedWheelTypes = {
                'modFrontWheelsType11',
                'modFrontWheelsType12',
            },
        },


        
        {
            label = _U("catalog_tires_2_thin_white"),
            index = 1,
            price = GetNuiPrice(menuPtr.itemIndex, 1),
            wheelTypeDependant = true,
            allowedWheelTypes = {
                'modFrontWheelsType8',
                'modFrontWheelsType9',
            },
        },
        {
            label = _U("catalog_tires_2_medium_white"),
            index = 2,
            price = GetNuiPrice(menuPtr.itemIndex, 1),
            wheelTypeDependant = true,
            allowedWheelTypes = {
                'modFrontWheelsType8',
                'modFrontWheelsType9',
            },
        },
        {
            label = _U("catalog_tires_2_full_white"),
            index = 3,
            price = GetNuiPrice(menuPtr.itemIndex, 1),
            wheelTypeDependant = true,
            allowedWheelTypes = {
                'modFrontWheelsType8',
                'modFrontWheelsType9',
            },
        },
        {
            label = _U("catalog_tires_2_red"),
            index = 4,
            price = GetNuiPrice(menuPtr.itemIndex, 1),
            wheelTypeDependant = true,
            allowedWheelTypes = {
                'modFrontWheelsType8',
                'modFrontWheelsType9',
            },
        },
        {
            label = _U("catalog_tires_2_blue"),
            index = 5,
            price = GetNuiPrice(menuPtr.itemIndex, 1),
            wheelTypeDependant = true,
            allowedWheelTypes = {
                'modFrontWheelsType8',
                'modFrontWheelsType9',
            },
        },
        {
            label = _U("catalog_tires_atomic"),
            index = 6,
            price = GetNuiPrice(menuPtr.itemIndex, 1),
            wheelTypeDependant = true,
            allowedWheelTypes = {
                'modFrontWheelsType8',
                'modFrontWheelsType9',
            },
        },
    }
end

function HandleNeonLayoutUpgrade(menuPtr)
    local currentUpgradeIdx = TuningInstalled[menuPtr.itemIndex]
    local currentOrderedIdx = TuningOrdered[menuPtr.itemIndex]

    local options = {}
    for idx, data in pairs(menuPtr.layouts) do
        local price = GetNuiPrice(menuPtr.itemIndex, idx)
        table.insert(
            options,
            {
                label = data.label,
                index = idx,
                price = price,
            }
        )
        -- if WarMenu.Button(data.label, GetRightSideModLabel(currentUpgradeIdx == idx, currentOrderedIdx == idx, idx), PreviewTuningModWrapper(menuPtr.itemIndex, 'neonLayout', idx)) then
        --     SelectUpgradeForPurchase(MenuPosition, 'neonLayout', idx)
        -- end
    end

    return options
end

function HandleColorPicker(menuPtr)
    local options = {}


    for _, colData in pairs(ColorCategories) do
        local isUnlocked = CurrentShop and PurchasedShopUpgrades[CurrentShop] and PurchasedShopUpgrades[CurrentShop]['paint_' .. colData.name]

        local colOptions = {}

        for _, colData in pairs(Colors[colData.name]) do

            table.insert(
                colOptions,
                {
                    label = colData.label,
                    index = colData.index,
                    price = GetNuiPrice(menuPtr.itemIndex, colData.index),
                }
            )
        end

        table.insert(
            options,
            {
                label = colData.label,
                unlocked = isUnlocked,
                modType = colData.name,
                modName = colData.name,
                items = colOptions,
            }
        )
    end

    if true then
        return options
    end





    if PickedColorCategory then
        local cols = Colors[PickedColorCategory]
        
        local currentUpgradeIdx = TuningInstalled[MenuPosition]
        local currentOrderedIdx = TuningOrdered[MenuPosition]

        for _, colData in pairs(cols) do
            local rs = GetRightSideModLabel(currentUpgradeIdx == colData.index, currentOrderedIdx == colData.index, colData.index)

            if WarMenu.Button(colData.label, rs, PreviewTuningModWrapper(menuPtr.itemIndex, menuPtr.modType, colData.index)) then
                SelectUpgradeForPurchase(MenuPosition, menuPtr.modType, colData.index)
            end
        end
    else
    end
end

function HandleExtras(menuPtr, extraId)
    local options = {}
            

    table.insert( 
        options,
        {
            label = "Disabled",
            index = false,
            price = GetNuiPrice(menuPtr.itemIndex, false),
        }
    )
    table.insert(
        options,
        {
            label = "Enabled",
            index = true,
            price = GetNuiPrice(menuPtr.itemIndex, true),
        }
    )
        
    return options
end

function ResetMenuPositions()
    for _, menu in pairs(Config.Menus) do
        menu.menuPos = nil
    end
end

function SetMenuPosition(pos)
    if MenuPosition and Config.Menus[MenuPosition] then
        local loc = WarMenu.GetOptionPosition('tuningMenu')
        Config.Menus[MenuPosition].menuPos = loc
    end

    MenuPosition = pos

    WarMenu.SetSubTitle('tuningMenu', Config.Menus[MenuPosition].label)

    -- must be set _next_ frame, after Display() where button click is handled
    Citizen.CreateThread(function()
        WarMenu.SetOptionPosition('tuningMenu', Config.Menus[MenuPosition].menuPos or 1)
    end)
end

function HandleModTireEnhancements(menuPtr)
    local enh = {
        {
            label = _U("catalog_enhancement_stock"),
            index = 0,
            price = GetNuiPrice(menuPtr.itemIndex, 0),
        },
    }

    if gameBuild >= 2372 then
        table.insert(
            enh,
            {
                label = _U("catalog_enhancement_drift"),
                index = 1,
                price = GetNuiPrice(menuPtr.itemIndex, 1),
            }
        )
    end

    if Config.AllowBulletproofTires then
        table.insert(enh,{
            label = _U("catalog_enhancement_bulletproof"),
            index = 2,
            price = GetNuiPrice(menuPtr.itemIndex, 2),
        })
    end

    return enh
end

function HandleNeonsUpgrade(menuPtr)
    local neons = TuningNeonColors

    local currentUpgradeIdx = TuningInstalled[MenuPosition]
    local currentOrderedIdx = TuningOrdered[MenuPosition]

    local options = {}

    for idx, data in pairs(neons) do
        local price = GetNuiPrice(menuPtr.itemIndex, idx)
        table.insert(
            options,
            {
                label = data.label,
                index = idx,
                price = price
            }
        )
    end

    return options
end

function HandleXenonColorUpgrade(menuPtr)
    local currentUpgradeIdx = TuningInstalled[MenuPosition]
    local currentOrderedIdx = TuningOrdered[MenuPosition]

    local options = {}

    for idx, data in pairs(XenonColors) do
        table.insert(
            options,
            {
                label = data.label,
                index = data.index,
                price = GetNuiPrice(menuPtr.itemIndex, data.index)
            }
        )
    end

    return options
end

function HandleXenonUpgrade(menuPtr)
    local hasXenons = TuningInstalled[MenuPosition]
    local isOrdered = TuningOrdered[MenuPosition]


    return {
        {
            label = _U("catalog_lights_stock"),
            index = -1,
            price = GetNuiPrice(menuPtr.itemIndex, -1),
        },
        {
            label = _U("catalog_lights_xenon"),
            index = 1,
            price = GetNuiPrice(menuPtr.itemIndex, 1),
        }
    }
end

function HandleHornUpgrade(menuPtr)
    local modCount = GetNumVehicleMods(CurrentVehicle, 14)

    local currentUpgradeIdx = TuningInstalled[MenuPosition]
    local currentOrderedIdx = TuningOrdered[MenuPosition]

    local options = {}
    for i = -1, modCount-1 do
        table.insert(
            options,
            {
                label = GetHornName(i),
                price = GetNuiPrice(menuPtr.itemIndex, i),
                index = i,
            }
        )
    end

    return options
end

function HandleWindowTint(menuPtr)
    local nums = GetNumVehicleWindowTints()

    local currentUpgradeIdx = TuningInstalled[MenuPosition]
    local currentOrderedIdx = TuningOrdered[MenuPosition]

    local windowTintOrder = {4, 0, 5, 3, 2, 1}

    local options = {}

    for _, i in pairs(windowTintOrder) do
        if i == 0 then
            table.insert(
                options,
                {
                    label = '10%',
                    price = GetNuiPrice(menuPtr.itemIndex, -1),
                    index = 0,
                }
            )
        else
            table.insert(
                options,
                {
                    label = GetWindowName(i),
                    price = GetNuiPrice(menuPtr.itemIndex, i),
                    index = i,
                }
            )
        end
    end

    return options
end

function HandleCamber(menuPtr)
    local currentUpgradeIdx = TuningInstalled[MenuPosition]
    local currentOrderedIdx = TuningOrdered[MenuPosition]

    local options = {}

    for i = 0, 12 do
        table.insert(
            options,
            {
                label = 'Negative camber ' .. i .. '°',
                price = GetNuiPrice(menuPtr.itemIndex, i),
                index = i,
            }
        )
    end

    return options
end

function HandleSpacer(menuPtr)
    local currentUpgradeIdx = TuningInstalled[MenuPosition]
    local currentOrderedIdx = TuningOrdered[MenuPosition]

    local options = {}

    for i = 0, 150, 10 do
        table.insert(
            options,
            {
                label = 'Spacer ' .. i .. ' mm',
                price = GetNuiPrice(menuPtr.itemIndex, i/1000),
                index = i/1000,
            }
        )
    end

    return options
end

function HandleTurboUpgrade(menuPtr)
    local hasTurbo = TuningInstalled[MenuPosition]
    local isOrdered = TuningOrdered[MenuPosition]

    return {
        {
            label = _U("catalog_none"),
            index = -1,
            price = GetNuiPrice(menuPtr.itemIndex, -1),
        },
        {
            label = _U("menu_upgrades_turbo"),
            index = 1,
            price = GetNuiPrice(menuPtr.itemIndex, 1),
        }
    }
end

function HandleNitrous(menuPtr)
    local hasTurbo = TuningInstalled[MenuPosition]
    local isOrdered = TuningOrdered[MenuPosition]

    return {
        {
            label = _U("catalog_none"),
            index = -1,
            price = GetNuiPrice(menuPtr.itemIndex, -1),
        },
        {
            label = _U("menu_upgrades_nitrous"),
            index = 1,
            price = GetNuiPrice(menuPtr.itemIndex, 1),
        }
    }
end

function HandleNumberedUpgrade(menuPtr)
    local modCount = GetNumVehicleMods(CurrentVehicle, menuPtr.modType)
    local currentUpgradeIdx = TuningInstalled[MenuPosition]
    local currentOrderedIdx = TuningOrdered[MenuPosition]

    local options = {}

    for j = -1, modCount-1 do
        local _label = _U("catalog_level")..' ' .. (j)

        if menuPtr.upgrades and menuPtr.upgrades[j] then
            _label = menuPtr.upgrades[j]
        end

        -- local isInstalled = currentUpgradeIdx == j
        
        -- if WarMenu.Button(_label, GetRightSideModLabel(isInstalled, currentOrderedIdx == j, j), PreviewTuningModWrapper(menuPtr.itemIndex, menuPtr.modType, j)) then
        --     SelectUpgradeForPurchase(MenuPosition, menuPtr.modType, j)
        -- end

        table.insert(
            options,
            {
                label = _label,
                index = j,
                price = GetNuiPrice(menuPtr.itemIndex, j),
            }
        )
    end

    return options
end

function HandleNamedUpgrade(menuPtr)
    local modCount = GetNumVehicleMods(CurrentVehicle, menuPtr.modType)

    if menuPtr.itemIndex == 'modFrontWheelsType8' or menuPtr.itemIndex == 'modFrontWheelsType9' or menuPtr.itemIndex == 'modFrontWheelsType11' or menuPtr.itemIndex == 'modFrontWheelsType12' then
        -- street/track tires have special tire designs (7 of them)
        modCount = tonumber(math.floor(modCount/7))-1
    end

    if modCount == 0 then
        -- debugMessage("ERROR: No mods for this category found", CurrentVehicle, menuPtr.modType, menuPtr.itemIndex)
    else
        local currentUpgradeIdx = TuningInstalled[MenuPosition]
        local currentOrderedIdx = TuningOrdered[MenuPosition]

        if WarMenu.Button(_U("catalog_stock"), GetRightSideModLabel(currentUpgradeIdx == -1, currentOrderedIdx == -1, -1), PreviewTuningModWrapper(menuPtr.itemIndex, menuPtr.modType, -1)) then
            SelectUpgradeForPurchase(MenuPosition, menuPtr.modType, -1)
        end

        local options = {
            {
                label = _U("catalog_stock"),
                index = -1,
                price = GetNuiPrice(menuPtr.itemIndex, -1),
            }
        }

        for i = 0, modCount do
            local modName = GetModTextLabel(CurrentVehicle, menuPtr.modType, i)

            if modName then
                local modLabel = ''
                if modName == '' then
                    modLabel, found = GetCustomOverrideMod(CurrentVehicleModel, menuPtr.modType, i)

                    if not found then
                        debugMessage("Unknown mod text", CurrentVehicleModel, menuPtr.modType, i)
                    end
                else
                    modLabel = GetLabelText(modName)
                end

                table.insert(
                    options,
                    {
                        label = modLabel,
                        index = i,
                        price = GetNuiPrice(menuPtr.itemIndex, i),
                    }
                )
            end
        end

        return options
    end
end

function GetRightSideModLabel(owned, installed, idx)
    if owned then
        return 'GARAGE'
    end

    if installed then
        return 'CHECKMARK'
    end

    local vehicleModel = CurrentVehicleModel

    if CurrentlyTuningVehNetId then
        vehicleModel = GetEntityModel(NetToVeh(CurrentlyTuningVehNetId))
    end

    local cost = ComputeCurrentPrice(CurrentShop, MenuPosition, VehicleTuningModifier, idx, TuningInstalled[MenuPosition], vehicleModel, true)

    return FormatPrice(cost)
end

function GetNuiPrice(modName, idx)
    return FormatPrice(SimpleGetPrice(modName, idx) )
end

function SimpleGetPrice(modName, idx) 
    local vehicleModel = CurrentVehicleModel

    if CurrentlyTuningVehNetId then
        vehicleModel = GetEntityModel(NetToVeh(CurrentlyTuningVehNetId))
    end

    return ComputeCurrentPrice(
        CurrentShop, 
        modName, 
        VehicleTuningModifier, 
        idx, 
        TuningInstalled[modName], 
        vehicleModel, 
        true
    )
end