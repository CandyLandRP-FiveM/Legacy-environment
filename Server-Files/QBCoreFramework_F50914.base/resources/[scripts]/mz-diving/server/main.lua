local QBCore = exports[Config.CoreEx]:GetCoreObject()

---------------
--DIVING GEAR--
---------------

QBCore.Functions.CreateUseableItem("diving_gear", function(source)
    TriggerClientEvent("mz-diving:client:setoxygenlevel", source)
    TriggerClientEvent("mz-diving:client:UseGear", source, true)
end)

RegisterNetEvent('mz-diving:server:RemoveGear', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then 
        return 
    end
    Player.Functions.RemoveItem("diving_gear", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["diving_gear"], "remove")
end)

----------
--OUTPUT--
----------

RegisterNetEvent('mz-diving:server:Outputlvl0', function(rewardProper)
    if not rewardProper then 
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local chance = math.random(1, 100)
        local chancerare = math.random(1, 100)
        if chance <= 30 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item1].name, 3)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item1], "add")
        elseif chance > 30 and chance <= 55 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item2].name, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item2], "add")
        elseif chance > 55 and chance <= 75 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item3].name, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item3], "add")
        elseif chance > 75 and chance <= 90 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item4].name, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item4], "add")
        elseif chance > 90 and chance <= 95 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item5].name, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item5], "add")
        elseif chance > 95 and chance <= 97 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item6].name, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item6], "add")
        elseif chance > 97 and chance <= 99 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item7].name, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item7], "add")
        elseif chance == 100 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item8].name, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item8], "add")
        elseif chance <= 30 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item9].name, 3)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item9], "add")
        elseif chance <= 30 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item10].name, 3)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item10], "add")
        elseif chance <= 30 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item11].name, 3)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item11], "add")
        elseif chance <= 30 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item12].name, 3)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item12], "add")
        elseif chance <= 30 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item13].name, 3)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item13], "add")
        elseif chance <= 30 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item14].name, 3)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item14], "add")
        elseif chance <= 30 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item15].name, 3)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item15], "add")
        elseif chance > 75 and chance <= 90 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item16].name, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item16], "add")
        elseif chance > 75 and chance <= 90 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item17].name, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item17], "add")
        elseif chance > 75 and chance <= 90 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item18].name, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item18], "add")
        elseif chance > 90 and chance <= 95 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item19].name, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item19], "add")
        elseif chance > 90 and chance <= 95 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item20].name, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item20], "add")
        elseif chance > 90 and chance <= 95 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item21].name, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item21], "add")
        elseif chance > 90 and chance <= 95 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.item22].name, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item22], "add")
        end
        if Config.NotifyType == 'qb' then
            TriggerClientEvent('QBCore:Notify', src, "This might be useful, nice!", 'success')
        elseif Config.NotifyType == "okok" then
            TriggerClientEvent('okokNotify:Alert', source, "YOU FOUND SOMETHING!", "This might be useful, nice!", 3500, 'success')
        end
        if chancerare == 1 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.rareitem1].name, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.rareitem1], "add")
        elseif chancerare == 2 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.rareitem2].name, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.rareitem2], "add")
        elseif chancerare == 3 then 
            Player.Functions.AddItem(QBCore.Shared.Items[Config.rareitem3].name, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.rareitem3], "add")
        end
    else 
        print("Someone has tried to execute 'mz-diving:server:Outputlvl0' externally")
    end 
end)

-- RegisterNetEvent('mz-diving:server:Outputlvl1', function()
-- 	local src = source
--     local Player = QBCore.Functions.GetPlayer(src)
--     local chance = math.random(1, 100)
--     local chancerare = math.random(1, 100)
--     if chance <= 30 then 
--         Player.Functions.AddItem(QBCore.Shared.Items[Config.item1].name, 1)
--         TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item1], "add")
--     elseif chance > 30 and chance <= 55 then 
--         Player.Functions.AddItem(QBCore.Shared.Items[Config.item2].name, 1)
--         TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item2], "add")
--     elseif chance > 55 and chance <= 75 then 
--         Player.Functions.AddItem(QBCore.Shared.Items[Config.item3].name, 1)
--         TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item3], "add")
--     elseif chance > 75 and chance <= 90 then 
--         Player.Functions.AddItem(QBCore.Shared.Items[Config.item4].name, 1)
--         TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item4], "add")
--     elseif chance > 90 and chance <= 95 then 
--         Player.Functions.AddItem(QBCore.Shared.Items[Config.item5].name, 1)
--         TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item5], "add")
--     elseif chance > 95 and chance <= 97 then 
--         Player.Functions.AddItem(QBCore.Shared.Items[Config.item6].name, 1)
--         TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item6], "add")
--     elseif chance > 97 and chance <= 99 then 
--         Player.Functions.AddItem(QBCore.Shared.Items[Config.item7].name, 1)
--         TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item7], "add")
--     elseif chance == 100 then 
--         Player.Functions.AddItem(QBCore.Shared.Items[Config.item8].name, 1)
--         TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.item8], "add")
--     end
--     if Config.NotifyType == 'qb' then
--         TriggerClientEvent('QBCore:Notify', src, "This might be useful, nice!", 'success')
--     elseif Config.NotifyType == "okok" then
--         TriggerClientEvent('okokNotify:Alert', source, "YOU FOUND SOMETHING!", "This might be useful, nice!", 3500, 'success')
--     end
--     if chance == 1 then 
--         Player.Functions.AddItem(QBCore.Shared.Items[Config.rareitem1].name, 1)
--         TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.rareitem1], "add")
--     elseif chance == 2 then 
--         Player.Functions.AddItem(QBCore.Shared.Items[Config.rareitem2].name, 1)
--         TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.rareitem2], "add")
--     elseif chance == 3 then 
--         Player.Functions.AddItem(QBCore.Shared.Items[Config.rareitem3].name, 1)
--         TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.rareitem3], "add")
--     end
-- end)

--------------
--SELL ITEMS--
--------------

QBCore.Functions.CreateCallback('mz-diving:server:getInv', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    local inventory = Player.PlayerData.items
    return cb(inventory)
end)

RegisterNetEvent("mz-diving:server:sellDiveItems", function(itemName, itemAmount, itemPrice)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local totalPrice = (tonumber(itemAmount) * itemPrice)
    if Player.Functions.RemoveItem(itemName, tonumber(itemAmount)) then
        Player.Functions.AddMoney("cash", totalPrice)
        if Config.NotifyType == "qb" then    
            TriggerClientEvent("QBCore:Notify", src, Lang:t('success.sold', {value = tonumber(itemAmount), value2 = QBCore.Shared.Items[itemName].label, value3 = totalPrice}), 'success')
        elseif Config.NotifyType == "okok" then
            TriggerClientEvent('okokNotify:Alert', source, "SOLD!", Lang:t('success.sold', {value = tonumber(itemAmount), value2 = QBCore.Shared.Items[itemName].label, value3 = totalPrice}), 3500, 'success')
        end
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[itemName], 'remove')
    else
        if Config.NotifyType == "qb" then    
            TriggerClientEvent("QBCore:Notify", src, Lang:t('error.no_items'), "error")
        elseif Config.NotifyType == "okok" then
            TriggerClientEvent('okokNotify:Alert', source, "WRONG ITEMS?", "You do not have the necessary items", 3500, 'error')
        end
    end
end)

----------------------
--COOLDOWN FUNCTIONS--
----------------------

local cooldowntime = Config.DivingCooldown 

local undercd = false

RegisterServerEvent('mz-diving:CooldownServer', function(bool)
    undercd = bool
	if bool then 
		cooldown()
	end	 
end)

RegisterServerEvent('mz-diving:CooldownNotify', function()
    if Config.NotifyType == 'qb' then
        TriggerClientEvent('QBCore:Notify', src, "No wrecks available yet. Try again in "..cooldowntime.." minutes!", 'primary')
    elseif Config.NotifyType == "okok" then
        TriggerClientEvent('okokNotify:Alert', source, "NO WRECKS", "No wrecks available yet. Try again in "..cooldowntime.." minutes!", 3500, 'info')
    end
end)

function cooldown()
	while true do 
        Citizen.Wait(60000)
        cooldowntime = cooldowntime - 1 
        if cooldowntime <= 0 then
            undercd = false
            break
        end
    end
end

QBCore.Functions.CreateCallback("mz-diving:GetCooldown",function(source,cb)
	cb(undercd)
end)