local IsInOfficeCheckpoint = false
local areChairsDisabled = false

OfficeMenuType = nil -- up/down
OfficeMenuPosition = nil

Citizen.CreateThread(function()
    while true do
        local isInOfficeCheckpointThisFrame = false
        local areChairsDisabledThisFrame = false
        local playerJobName, isBoss = GetPlayersJobName()
        if CurrentShop and TuningShops[CurrentShop] and (playerJobName == TuningShops[CurrentShop].job and isBoss) then
            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)

            local dist = #(coords - TuningShops[CurrentShop].officeCoords)

            if dist < 1.5 then
                Wait(0)
                isInOfficeCheckpointThisFrame = true
                IsInOfficeCheckpoint = true

                if CurrentShop and TuningShops[CurrentShop] then
                    DrawOfficeCheckpoint(TuningShops[CurrentShop].officeCoords)
                    HandleInOfficeCheckpoint()
                end
                
                areChairsDisabledThisFrame = true
                
            elseif dist < 20.0 then
                Wait(0)
                
                areChairsDisabledThisFrame = false
                
                if CurrentShop and TuningShops[CurrentShop] then
                    DrawOfficeCheckpoint(TuningShops[CurrentShop].officeCoords)
                end
            else
                Wait(5000)
            end
        else
            Wait(5000)
        end

        if not isInOfficeCheckpointThisFrame and IsInOfficeCheckpoint then
            WarMenu.CloseMenu()
            IsInOfficeCheckpoint = false
        end
    end
end)

Citizen.CreateThread(function()
    AddTextEntry('TUN_OFFICE', '~INPUT_PICKUP~ Open')

    WarMenu.CreateMenu('tuningOfficeMenu', "")
    WarMenu.SetTitleBackgroundSprite('tuningOfficeMenu', "tuning_ui", "rcore_tuning_template_menu")
    WarMenu.SetSubTitle('tuningOfficeMenu', "~w~".._U("menu_options"))
    WarMenu.CreateSubMenu('tuningOfficeMenuUpgrades', 'tuningOfficeMenu', 'Tuning shop')
    WarMenu.CreateSubMenu('tuningOfficeMenuMargin', 'tuningOfficeMenu', 'Price margin')
    WarMenu.SetKeepOption('tuningOfficeMenu', true)

    local menus = {'tuningOfficeMenu', 'tuningOfficeMenuUpgrades'}

    for _, m in pairs(menus) do
        WarMenu.SetTitleBackgroundColor(m, 0, 0, 0, 255) -- Benny's colors
        WarMenu.SetSubTitleColor(m, 227, 162, 33, 255)
        WarMenu.SetTitleColor(m, 255, 255, 255, 200)
    end

end)

function DrawOfficeCheckpoint(coords)
    DrawMarker(
        27, 
        coords.x, coords.y, coords.z + 0.087, 
        0.0, 0.0, 0.0, 
        0.0, 0.0, 0.0, 
        1.0, 1.0, 1.0, 
        255, 0, 0, 255, 
        false, false, false, true, nil, nil, false
    )
end

function HandleInOfficeCheckpoint()
    DisplayHelpTextThisFrame('TUN_OFFICE')

    if not IsInOfficeCheckpoint and IsControlJustPressed(0, 38) or IsDisabledControlJustPressed(0, 38) then
        IsInOfficeCheckpoint = true
        OpenTuningOfficeMenu()
    end
end

function OpenTuningOfficeMenu()
    local currentMargin = GlobalState['TUNING_MARGIN_' .. CurrentShop]
    if not currentMargin then
        currentMargin = 0
    end
    WarMenu.SetSubTitle('tuningOfficeMenuMargin', "Price margin ("..currentMargin .. "%)")
    WarMenu.OpenMenu('tuningOfficeMenu')
    Citizen.CreateThread(function()
        while IsInOfficeCheckpoint do
            Wait(0)

            if WarMenu.IsMenuOpened('tuningOfficeMenu') then
                WarMenu.Button(_U("menu_workshop_effectivity"), tonumber(math.floor(1.0/TuningShops[CurrentShop].modifier*100)) .. '%')

                if IsControllingCurrentShop then
                    WarMenu.Button(_U("menu_repair_cost"), tonumber(math.floor((ComputeRepairEfficacy(CurrentShop)*100)+0.5)) .. '%')

                    local gameTime = GetGameTimer()

                    if WarMenu.MenuButton(_U("menu_workshop_upgrade_buy"), 'tuningOfficeMenuUpgrades') then
                        OfficeMenuType = 'up'
                        SelectUpgradeItem('main')
                    elseif (DowngradeTimeout[CurrentShop] <= gameTime) and WarMenu.MenuButton(_U("menu_workshop_upgrade_sell"), 'tuningOfficeMenuUpgrades') then
                        OfficeMenuType = 'down'
                        SelectUpgradeItem('main')
                    elseif (DowngradeTimeout[CurrentShop] > gameTime) and WarMenu.Button(_U("workshop_upgrade_sell"), FormatTime(tonumber(math.ceil((DowngradeTimeout[CurrentShop] - gameTime)/1000)))) then
                    elseif WarMenu.MenuButton(_U("menu_workshop_margin"), 'tuningOfficeMenuMargin') then
                    end
                end

                WarMenu.Display()
            elseif WarMenu.IsMenuOpened('tuningOfficeMenuMargin') then
                local currentMargin = GlobalState['TUNING_MARGIN_' .. CurrentShop]
                if not currentMargin then
                    currentMargin = 0
                end
                
                if WarMenu.Button("Custom %") then
                    -- only to make it locally more responsive
                    local selectedMargin = tonumber(KeyboardInput("Price margin:", "", 3))
                    if selectedMargin then
                        GlobalState['TUNING_MARGIN_' .. CurrentShop] = selectedMargin
                        WarMenu.SetSubTitle('tuningOfficeMenuMargin', "Price margin ("..selectedMargin .. "%)")

                        TriggerServerEvent('rcore_tuning:setPriceMargin', selectedMargin)
                    end
                end

                for i = 0, 10 do
                    local selectedMargin = i*10
                    if WarMenu.Button((selectedMargin) .. '%', (selectedMargin == currentMargin) and 'CURRENT' or '') then
                        -- only to make it locally more responsive
                        GlobalState['TUNING_MARGIN_' .. CurrentShop] = selectedMargin
                        WarMenu.SetSubTitle('tuningOfficeMenuMargin', "Price margin ("..selectedMargin .. "%)")

                        TriggerServerEvent('rcore_tuning:setPriceMargin', selectedMargin)
                    end
                end
                WarMenu.Display()
            elseif WarMenu.IsMenuOpened('tuningOfficeMenuUpgrades') then
                if OfficeMenuPosition == 'primaryRespray' or OfficeMenuPosition == 'secondaryRespray' or OfficeMenuPosition == 'pearlescentRespray' or OfficeMenuPosition == 'modFrontWheelsColor' then
                    for _, paintData in pairs(ColorCategories) do

                        local isUnlocked = CurrentShop and PurchasedShopUpgrades[CurrentShop] and PurchasedShopUpgrades[CurrentShop]['paint_' .. paintData.name]

                        if OfficeMenuType == 'down' then
                            isUnlocked = not isUnlocked
                        end

                        local paintRightSideLabel = nil

                        if isUnlocked then
                            paintRightSideLabel = 'CHECKMARK'

                            if OfficeMenuType == 'down' then
                                paintRightSideLabel = 'LOCK'
                            end
                        else
                            paintRightSideLabel = FormatPrice(ComputeShopUpgradeCost(CurrentShop, 'shopColorUpgrade', OfficeMenuType == 'down'))
                        end
                        if WarMenu.Button(paintData.label, paintRightSideLabel) then
                            if not isUnlocked then
                                if OfficeMenuType == 'down' then
                                    SellShopUpgrade('paint_' .. paintData.name)
                                else
                                    PurchaseShopUpgrade('paint_' .. paintData.name)
                                end
                            end
                        end
                    end
                else
                    for _, name in pairs(Config.MenuOrder[OfficeMenuPosition]) do

                        if CurrentShop and not TuningShops[CurrentShop].disabledCategories[name] and not TuningShops[CurrentShop].disabledUpgrades[name] then
                            local computedCost = ''
                            local isDirectUpgradeable = not Config.Menus[name].isPaint and Config.Menus[name].modType
                            
                            if isDirectUpgradeable then
                                computedCost = FormatPrice(ComputeShopUpgradeCost(CurrentShop, name, OfficeMenuType == 'down'))
                            end

                            local isUnlocked = CurrentShop and PurchasedShopUpgrades[CurrentShop] and PurchasedShopUpgrades[CurrentShop][name]

                            if OfficeMenuType == 'down' then
                                isUnlocked = not isUnlocked
                            end

                            if WarMenu.Button(Config.Menus[name].label, (isDirectUpgradeable and isUnlocked) and (OfficeMenuType == 'down' and 'LOCK' or 'CHECKMARK') or computedCost) then
                                if isDirectUpgradeable then
                                    if not isUnlocked then
                                        if OfficeMenuType == 'down' then
                                            SellShopUpgrade(name)
                                        else
                                            PurchaseShopUpgrade(name)
                                        end
                                    end
                                else
                                    print(name)
                                    SelectUpgradeItem(name)
                                end
                            end
                        end
                    end
                end

                WarMenu.Display()
                
                if OfficeMenuPosition and WarMenu.IsMenuOpened('tuningOfficeMenu') then
                    if Config.Menus[OfficeMenuPosition].parent then
                        SelectUpgradeItem(Config.Menus[OfficeMenuPosition].parent)
                        WarMenu.OpenMenu('tuningOfficeMenuUpgrades')
                    end
                end
            else
                IsInOfficeCheckpoint = false
            end
        end
    end)
end
-- Source: FiveM forums
function KeyboardInput(TextEntry, ExampleText, MaxStringLenght)
	AddTextEntry('FMMC_KEY_TIP1', TextEntry)
	DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLenght)
	blockinput = true

	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
		Citizen.Wait(0)
	end
		
	if UpdateOnscreenKeyboard() ~= 2 then
		local result = GetOnscreenKeyboardResult()
		Citizen.Wait(500)
		blockinput = false
		return result
	else
		Citizen.Wait(500)
		blockinput = false
		return nil
	end
end

function SelectUpgradeItem(name)
    if TuningShops[CurrentShop].disabledCategories[name] or TuningShops[CurrentShop].disabledUpgrades[name] then
        return
    end
    if name == 'resprays' then
        if OfficeMenuPosition == 'main' then
            name = 'primaryRespray'
        else
            name = 'main'
        end
    end

    if OfficeMenuPosition and Config.Menus[OfficeMenuPosition] then
        local loc = WarMenu.GetOptionPosition('tuningOfficeMenuUpgrades')
        Config.Menus[OfficeMenuPosition].menuPos = loc
    end

    OfficeMenuPosition = name

    local pref = _U("upgrade_buy")

    if OfficeMenuType == 'down' then
        pref = _U("upgrade_sell")
    end

    WarMenu.SetSubTitle('tuningOfficeMenuUpgrades', pref .. ' - ' .. Config.Menus[name].label)

    Citizen.CreateThread(function()
        WarMenu.SetOptionPosition('tuningOfficeMenuUpgrades', Config.Menus[OfficeMenuPosition].menuPos or 1)
    end)
end

function PurchaseShopUpgrade(name)
    TriggerServerEvent('rcore_tuning:purchaseShopUpgrade', name)
end

function SellShopUpgrade(name)
    TriggerServerEvent('rcore_tuning:sellShopUpgrade', name)
    WarMenu.CloseMenu()
end

RegisterNetEvent('rcore_tuning:upgradePurchased')
AddEventHandler('rcore_tuning:upgradePurchased', function()
    ShowNotification(_U("upgrade_buy_notification"), true)
    PlaySoundFrontend(-1, "PURCHASE", "HUD_LIQUOR_STORE_SOUNDSET", 1)
end)

RegisterNetEvent('rcore_tuning:upgradeSold')
AddEventHandler('rcore_tuning:upgradeSold', function()
    ShowNotification(_U("upgrade_sell_notification"), true)
    PlaySoundFrontend(-1, "PURCHASE", "HUD_LIQUOR_STORE_SOUNDSET", 1)
end)