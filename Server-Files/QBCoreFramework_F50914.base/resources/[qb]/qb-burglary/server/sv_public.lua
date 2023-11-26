local Core = exports[Config.CoreResourceName]:GetCoreObject()

RegisterNetEvent("burglary:server:SetupRobbery", function()
    local src = source
    local player = Core.Functions.GetPlayer(src)
    if not player then return end
    TriggerClientEvent("burglary:client:SetupRobbery", src)
end)

RegisterNetEvent("burglary:server:SearchReward", function(tier)
    local src = source
    local player = Core.Functions.GetPlayer(src)
    if not player then return end
    local rewards = exports[GetCurrentResourceName()]:GetRewardTier(tier)
    if rewards == nil then return end
    for rarity, v in pairs(rewards) do
        if math.random(1, 100) <= rewards[rarity]["chance"] then
            local rng = math.random(1, #rewards[rarity])
            local item = rewards[rarity][rng]["item"]
            local amount = math.random(rewards[rarity][rng]["amount"][1], rewards[rarity][rng]["amount"][2])
            local itemInfo = Core.Shared.Items[item]
            player.Functions.AddItem(item, amount, false)
            TriggerClientEvent("inventory:client:ItemBox", src, itemInfo, "add")
            if Config.Reputation then
                local exp = rewards[rarity]["exp"]
                TriggerClientEvent("burglary:client:AddRep", src, exp)
            end
        end
    end
end)

RegisterNetEvent("burglary:server:SafeReward", function(keyItem, tier, cracked)
    local src = source
    local player = Core.Functions.GetPlayer(src)
    if not player then return end
    local rewards = exports[GetCurrentResourceName()]:GetSafeReward(tier)
    if rewards == nil then return end
    for rarity, v in pairs(rewards) do
        if math.random(1, 100) <= rewards[rarity]["chance"] then
            local rng = math.random(1, #rewards[rarity])
            local item = rewards[rarity][rng]["item"]
            local amount = math.random(rewards[rarity][rng]["amount"][1], rewards[rarity][rng]["amount"][2])
            local itemInfo = Core.Shared.Items[item]
            player.Functions.AddItem(item, amount)
            TriggerClientEvent("inventory:client:ItemBox", src, itemInfo, "add")
            if Config.Reputation then
                local exp = rewards[rarity]["exp"]
                TriggerClientEvent("burglary:client:AddRep", src, exp)
            end
        end
    end
    if not cracked then
        player.Functions.RemoveItem(keyItem, 1)
        TriggerClientEvent("inventory:client:ItemBox", src, Core.Shared.Items[keyItem], "remove")
    end
end)

RegisterNetEvent("burglary:server:PickupReward", function(item, tier, cash)
    local src = source
    local player = Core.Functions.GetPlayer(src)
    if not player then return end
    if cash then
        local reward = exports[GetCurrentResourceName()]:GetCashReward(tier)
        player.Functions.AddMoney("cash", reward)
        return
    end
    local itemInfo = Core.Shared.Items[item]
    player.Functions.AddItem(item, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, itemInfo, "add")
end)

RegisterNetEvent("burglary:server:PickupKey", function(keyItem)
    local src = source
    local player = Core.Functions.GetPlayer(src)
    if not player then return end
    local itemInfo = Core.Shared.Items[keyItem]
    player.Functions.AddItem(keyItem, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, itemInfo, "add")
end)

RegisterNetEvent("burglary:server:RemoveBreakIn", function(item)
    local src = source
    local player = Core.Functions.GetPlayer(src)
    if not player then return end
    local itemInfo = Core.Shared.Items[item]
    player.Functions.RemoveItem(item, 1)
    TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "remove")
end)

RegisterNetEvent("burglary:server:RemoveRequired", function(item)
    local src = source
    local player = Core.Functions.GetPlayer(src)
    if not player then return end
    local itemInfo = Core.Shared.Items[item]
    player.Functions.RemoveItem(item, 1)
    TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "remove")
end)

RegisterNetEvent("burglary:server:SellGoods", function(buyerEntity)
    local src = source
    local player = Core.Functions.GetPlayer(src)
    if not player then
        return
    end

    local buyersList = Config.BuyersList
    local falseCount = 0

    for i = 1, #buyersList do
        local buyer = buyersList[i]
        local itemName = buyer.itemName
        local dirtyCash = buyer.dirtyCash
        local itemWorth = buyer.itemWorth
        local dirtyCashName = buyer.dirtyCashName

        local item = player.Functions.GetItemByName(itemName)
        if item then
            player.Functions.RemoveItem(itemName, item.amount)
            TriggerClientEvent('inventory:client:ItemBox', src, Core.Shared.Items[itemName], "remove")
            
            local actualWorth = math.random(itemWorth[1], itemWorth[2]) * item.amount

            if not dirtyCash then
                player.Functions.AddMoney('cash', actualWorth)
            else
                local info = { worth = actualWorth }
                player.Functions.AddItem(dirtyCashName, 1, false, info)
                TriggerClientEvent('inventory:client:ItemBox', src, Core.Shared.Items[dirtyCashName], "add")
            end

            if Config.StaticBuyer then
                TriggerClientEvent("burglary:client:AttachToPed", src, itemName, buyerEntity)
            end
        else
            falseCount = falseCount + 1
        end
    end

    if falseCount == #buyersList then
        TriggerClientEvent("burglary:client:NoItemsToSell", src)
    end
end)

------------------------------------------------------------------------
------------------------------------------------------------------------
------------------------------------------------------------------------

-- Get a random ped from Config.Bossman
local serverBossID = 0

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() == resourceName) then
        if serverBossID == 0 then
            math.randomseed(os.time())
            serverBossID = math.random(1, #(Config.Bossman))
        end
    end
end)

-- We need to pass serverBossID to the client for spawning the ped
Core.Functions.CreateCallback("burglary:GetBossmanID", function(_, cb)
    cb(serverBossID)
end)

------------------------------------------------------------------------
------------------------------------------------------------------------
------------------------------------------------------------------------

-- Get a random ped from Config.Buyers
local serverBuyerID = 0

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() == resourceName) then
        if Config.StaticBuyer then
            if serverBuyerID == 0 then
                math.randomseed(os.time())
                serverBuyerID = math.random(1, #(Config.Buyers))
            end
        end
    end
end)

-- We need to pass serverBuyerID to the client for spawning the ped
Core.Functions.CreateCallback("burglary:GetBuyerID", function(_, cb)
    cb(serverBuyerID)
end)

------------------------------------------------------------------------
------------------------------------------------------------------------
------------------------------------------------------------------------

-- Temp method due to police:SetCopCount not updating
local function CurrentCopCount()
    local amount = 0
    local players = Core.Functions.GetQBPlayers()
    for k, player in pairs(players) do
        for id, job in pairs(Config.Departments) do
            if player.PlayerData.job.name == job then
                if player.PlayerData.job.onduty then
                    amount = amount + 1
                    break
                end
            end
        end
    end
    return amount
end

-- We need to pass the cop online status to the client
Core.Functions.CreateCallback("burglary:NotEnoughCopsOnline", function(_, cb)
    local currentCoppas = CurrentCopCount()
    local notEnoughCops = false
    if currentCoppas < Config.MinPolice then
        notEnoughCops = true
    end
    cb(notEnoughCops)
end)

-- Version check
local function CheckForUpdates()
    local currentVersion = GetResourceMetadata(GetCurrentResourceName(), "version", 0)
    PerformHttpRequest("https://pastebin.com/raw/r1yHUs5j", function(err, rText, headers)
        if err == 200 then
            local remoteVersion = rText
            if remoteVersion ~= currentVersion then
                print("A new update is available!" ..
                " | " .. "Current version: " .. currentVersion .. " | " .. "New version: " .. remoteVersion)
                return
            end
            print("No new update available!" .. " | " .. "Current version: " .. currentVersion)
        else
            print("Error checking for updates: " .. err)
        end
    end)
end

CreateThread(function()
    if Config.Check4Updates then CheckForUpdates() end
end)