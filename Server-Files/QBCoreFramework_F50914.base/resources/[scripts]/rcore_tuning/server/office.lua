RegisterNetEvent('rcore_tuning:purchaseShopUpgrade')
AddEventHandler('rcore_tuning:purchaseShopUpgrade', function(upgrade)
    local Source = source
    IsPlayersControllingShop(
        Source,
        function(player, zone)
            if not IsUpgradePurchased(zone, upgrade) then
                PurchaseUpgrade(Source, zone, upgrade)
            end
        end
    )
end)

RegisterNetEvent('rcore_tuning:sellShopUpgrade')
AddEventHandler('rcore_tuning:sellShopUpgrade', function(upgrade)
    local Source = source
    IsPlayersControllingShop(
        Source,
        function(player, zone)
            if IsUpgradePurchased(zone, upgrade) then
                SellUpgrade(Source, zone, upgrade)
            end
        end
    )
end)


RegisterNetEvent('rcore_tuning:setPriceMargin')
AddEventHandler('rcore_tuning:setPriceMargin', function(margin)
    local Source = source
    IsPlayersControllingShop(
        Source,
        function(player, zone)
            GlobalState['TUNING_MARGIN_' .. zone] = margin

            local marginsFile = LoadResourceFile(GetCurrentResourceName(), 'margins.json')
            local marginsJson = json.decode(marginsFile)

            if not marginsJson then
                marginsJson = {}
            end

            marginsJson[zone] = margin

            SaveResourceFile(GetCurrentResourceName(), 'margins.json', json.encode(marginsJson))
        end
    )
end)

Citizen.CreateThread(function()
    Wait(2000)
    local marginsFile = LoadResourceFile(GetCurrentResourceName(), 'margins.json')
    local marginsJson = json.decode(marginsFile)
    if not marginsJson then
        marginsJson = {}
    end

    for zone, margin in pairs(marginsJson) do
        GlobalState['TUNING_MARGIN_' .. zone] = margin
    end
end)
