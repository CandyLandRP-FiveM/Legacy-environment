ShopPurchasedUpgrades = {
    
}

DowngradeTimeout = {
    LMESA = 0,
    RANCHO = 0,
    STRAW = 0,
    BURTON = 0,
    EAST_V = 0,
}

function IsUpgradePurchased(zone, upgrade)
    if not ShopPurchasedUpgrades[zone] then
        return false
    end

    if not ShopPurchasedUpgrades[zone][upgrade] then
        return false
    end

    return true
end

Citizen.CreateThread(function()
    Wait(500)

    local data = GetShopUpgrades()

    if data then
        for _, d in pairs(data) do
            if not ShopPurchasedUpgrades[d.zone] then
                ShopPurchasedUpgrades[d.zone] = {}
            end

            ShopPurchasedUpgrades[d.zone][d.name] = true
        end

        for shopName, shopData in pairs(TuningShops) do
            if not Config.UseJobs or not Config.UpgradesPurchasable then
                ShopPurchasedUpgrades[shopName] = {}
                for _, upgradeName in pairs(WorkerMenuOrder) do
                    ShopPurchasedUpgrades[shopName][upgradeName] = true
                end

                for _, colorInfo in pairs(ColorCategories) do
                    ShopPurchasedUpgrades[shopName]["paint_"..colorInfo.name] = true

                end
            end
        end

        for name, upgs in pairs(ShopPurchasedUpgrades) do
            TriggerClientEvent('rcore_tuning:syncUpgrades', -1, name, upgs)
        end
    end
end)

RegisterNetEvent('rcore_tuning:playerConnected')
AddEventHandler('rcore_tuning:playerConnected', function()
    local Source = source
    for name, upgs in pairs(ShopPurchasedUpgrades) do
        TriggerClientEvent('rcore_tuning:syncUpgrades', Source, name, upgs)
    end

    SyncDowngradeTimeouts(Source)
end)

function SetUpgradePurchased(shopName, name, cost)
    AddTuningUpgrade(shopName, name, cost)


    if not ShopPurchasedUpgrades[shopName] then
        ShopPurchasedUpgrades[shopName] = {}
    end

    ShopPurchasedUpgrades[shopName][name] = true
    TriggerClientEvent('rcore_tuning:syncUpgrades', -1, shopName, ShopPurchasedUpgrades[shopName])
end

function RemovePurchasedUpgrade(shopName, name, cost)
    RemoveTuningUpgrade(shopName, name)

    if ShopPurchasedUpgrades[shopName] then
        ShopPurchasedUpgrades[shopName][name] = nil
    end

    DowngradeTimeout[shopName] = GetGameTimer() + 5 * 60 * 1000
    
    TriggerClientEvent('rcore_tuning:syncUpgrades', -1, shopName, ShopPurchasedUpgrades[shopName])
    SyncDowngradeTimeouts(-1)
end

function SyncDowngradeTimeouts(target)
    local clData = {}

    for name, timeEnd in pairs(DowngradeTimeout) do
        clData[name] = timeEnd - GetGameTimer()
    end

    TriggerClientEvent('rcore_tuning:setDowngradeTimeouts', target, clData)
end

function PurchaseUpgrade(serverId, zone, upgrade)
    local cost = ComputeShopUpgradeCost(zone, upgrade)

    if(PlayerTakeMoney(serverId, cost)) then
        SetUpgradePurchased(zone, upgrade, cost)
        logToDiscord("Purchased upgrade at mechanic shop", serverId, nil, {{price = cost, upgrade = upgrade}})
        TriggerClientEvent('rcore_tuning:upgradePurchased', serverId)
    else
        ShowNotification(serverId, BuyUpgradePriceError(cost))
    end
end

function SellUpgrade(serverId, zone, upgrade)
    local cost = ComputeShopUpgradeCost(zone, upgrade, true)

    PlayerGiveMoney(serverId, cost, false)
    logToDiscord("Sold upgrade at mechanic shop", serverId, nil, {{price = cost, upgrade = upgrade}})
    RemovePurchasedUpgrade(zone, upgrade, cost)
    TriggerClientEvent('rcore_tuning:upgradeSold', serverId)
end