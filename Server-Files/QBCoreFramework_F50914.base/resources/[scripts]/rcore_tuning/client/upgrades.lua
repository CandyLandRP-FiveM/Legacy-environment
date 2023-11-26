PurchasedShopUpgrades = {}
DowngradeTimeout = {}

for shopName, _ in pairs(TuningShops) do
    PurchasedShopUpgrades[shopName] = {}
    DowngradeTimeout[shopName] = 0
end

RegisterNetEvent('rcore_tuning:syncUpgrades')
AddEventHandler('rcore_tuning:syncUpgrades', function(zone, upgrades)
    PurchasedShopUpgrades[zone] = upgrades
end)

RegisterNetEvent('rcore_tuning:setDowngradeTimeouts')
AddEventHandler('rcore_tuning:setDowngradeTimeouts', function(timeouts)
    for name, timeLeft in pairs(timeouts) do
        DowngradeTimeout[name] = GetGameTimer() + timeLeft
    end
end)