lib.locale()
local ver = '1.0.0'
local onTimer = {}

CreateThread(function()
    if GetResourceState(GetCurrentResourceName()) == 'started' then
        print('drc_moneywash STARTED ON VERSION: ' .. ver)
    end
end)

local function AutoDetectFramework()
    if GetResourceState("es_extended") == "started" then
        return "ESX"
    elseif GetResourceState("qb-core") == "started" then
        return "qbcore"
    else
        return "standalone"
    end
end

if Config.Framework == "auto-detect" then
    Config.Framework = AutoDetectFramework()
end


local function AutoDetectInventory()
    if GetResourceState("ox_inventory") == "started" then
        return "ox"
    elseif GetResourceState("qb-inventory") == "started" or GetResourceState("lj-inventory") == "started" or GetResourceState("aj-inventory") == "started" then
        return "qb"
    elseif GetResourceState("qs-inventory") == "started" then
        return "quasar"
    elseif GetResourceState("inventory") == "started" then
        return "chezza"
    end
end

if Config.Inventory == "auto-detect" then
    Config.Inventory = AutoDetectInventory()
end

local MoneyTable = { "cash", "money" }

if Config.Framework == "ESX" then
    if Config.NewESX then
        ESX = exports["es_extended"]:getSharedObject()
        RegisterUsable = ESX.RegisterUsableItem
    else
        ESX = nil
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        RegisterUsable = ESX.RegisterUsableItem
    end
elseif Config.Framework == "qbcore" then
    QBCore = nil
    QBCore = exports['qb-core']:GetCoreObject()
    RegisterUsable = QBCore.Functions.CreateUseableItem
elseif Config.Framework == "standalone" then
    -- ADD YOU FRAMEWORK
end


RegisterUsable('warehouse_locator', function(source)
    local src = source
    if onTimer[src] and onTimer[src] > GetGameTimer() then
        TriggerClientEvent('drc_moneywash:notify', src, 'error', locale('moneywash'),
            locale('ItemCooldown', math.floor((onTimer[src] - GetGameTimer()) / 1000 + 0.5)))
        return
    end
    TriggerClientEvent('drc_moneywash:localize', src)

    onTimer[src] = GetGameTimer() + (Config.LocatorTimeout * 60 * 1000)
end)


function BanPlayer(source, message)
    if Config.AnticheatBan then
        --Example of usage for anticheat
        exports['youranticheat']:BanPlayer(source, message)
    end
end

AddEventHandler('onServerResourceStart', function(resourceName)
    if Config.Inventory == "ox" then
        if resourceName == 'ox_inventory' or resourceName == GetCurrentResourceName() then
            for houseKey, houseValue in pairs(Config.Warehouses) do
                for stashKey, v in pairs(Config.MoneyWash.Stashes) do
                    exports.ox_inventory:RegisterStash(houseKey .. " " .. stashKey, v.label, v.Slots, v.Weight, nil, nil,
                        v.coords)
                end
            end
        end
    end
end)

local webhook =
"https://discord.com/api/webhooks/1054730812127449150/3YWEN7VRZCQhijD7OVP4AwF5UK5TEjMoMAIuVo0OEhh59A73cNaWNu3gQVAffDq7iBtO"
function Logs(source, message)
    if message ~= nil then
        if Config.Logs.enabled then
            local license = nil
            for k, v in pairs(GetPlayerIdentifiers(source)) do
                if string.sub(v, 1, string.len("license:")) == "license:" then
                    license = v
                end
            end
            if Config.Logs.type == "ox_lib" then
                lib.logger(source, "moneywash", message)
            elseif Config.Logs.type == "webhook" then
                local embed = {
                    {
                        ["color"] = 2600155,
                        ["title"] = "Player: **" .. GetPlayerName(source) .. " | " .. license .. " **",
                        ["description"] = message,
                        ["footer"] = {
                            ["text"] = "Logs by DRC SCRIPTS for DRC HOUSE ROBBERY!",
                        },
                    }
                }
                PerformHttpRequest(webhook, function(err, text, headers) end, 'POST',
                    json.encode({
                        username = "DRC HOUSE ROBBERY",
                        embeds = embed,
                        avatar_url = "https://i.imgur.com/RclET8O.png"
                    })
                    , { ['Content-Type'] = 'application/json' })
            end
        end
    end
end

function GetJob(source)
    if Config.Framework == "ESX" then
        local xPlayer = ESX.GetPlayerFromId(source)
        return xPlayer.job.name
    elseif Config.Framework == "qbcore" then
        local xPlayer = QBCore.Functions.GetPlayer(source)
        return xPlayer.PlayerData.job.name
    elseif Config.Framework == "standalone" then
        -- ADD YOU FRAMEWORK
    end
end

function GetItem(name, count, source)
    if Config.Framework == "ESX" then
        local xPlayer = ESX.GetPlayerFromId(source)
        if xPlayer.getInventoryItem(name).count >= count then
            return true
        else
            return false
        end
    elseif Config.Framework == "qbcore" then
        local xPlayer = QBCore.Functions.GetPlayer(source)
        if xPlayer.Functions.GetItemByName(name) ~= nil then
            if xPlayer.Functions.GetItemByName(name).amount >= count then
                return true
            else
                return false
            end
        else
            return false
        end
    elseif Config.Framework == "standalone" then
        -- ADD YOUR FRAMEWORK
    end
end

function GetItemCount(name, source)
    if Config.Framework == "ESX" then
        local xPlayer = ESX.GetPlayerFromId(source)
        return xPlayer.getInventoryItem(name).count
    elseif Config.Framework == "qbcore" then
        local xPlayer = QBCore.Functions.GetPlayer(source)
        if xPlayer.Functions.GetItemByName(name) ~= nil then
            return xPlayer.Functions.GetItemByName(name).amount
        else
            return 0
        end
    elseif Config.Framework == "standalone" then
        -- ADD YOUR FRAMEWORK
    end
end

function AddMoney(count, source)
    if Config.Framework == "ESX" then
        local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.addMoney(count)
    elseif Config.Framework == "qbcore" then
        local xPlayer = QBCore.Functions.GetPlayer(source)
        xPlayer.Functions.AddMoney('cash', count)
    elseif Config.Framework == "standalone" then
        -- ADD YOUR FRAMEWORK
    end
end

function RemoveMoney(count, source)
    if Config.Framework == "ESX" then
        local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.removeMoney(count)
    elseif Config.Framework == "qbcore" then
        local xPlayer = QBCore.Functions.GetPlayer(source)
        xPlayer.Functions.RemoveMoney('cash', count)
    elseif Config.Framework == "standalone" then
        -- ADD YOUR FRAMEWORK
    end
end

function GetMoney(count, source)
    if Config.Framework == "ESX" then
        local xPlayer = ESX.GetPlayerFromId(source)
        if xPlayer.getMoney() >= count then
            return true
        else
            return false
        end
    elseif Config.Framework == "qbcore" then
        local xPlayer = QBCore.Functions.GetPlayer(source)
        if xPlayer.Functions.GetMoney('cash') >= count then
            return true
        else
            return false
        end
    elseif Config.Framework == "standalone" then
        -- ADD YOUR FRAMEWORK
    end
end

function CheckDirtyMoney(source, amount, remove)
    local cutItems = Config.MoneyWash.CutItems
    local percentageLost = cutItems.PercentageLost
    local src = source
    local cutAmount = math.max(math.floor(amount * percentageLost / 100), 1)
    if Config.Framework == "ESX" then
        local xPlayer = ESX.GetPlayerFromId(src)
        if xPlayer then
            if xPlayer.getAccount('black_money').money >= amount then
                if remove then
                    xPlayer.removeAccountMoney('black_money', amount)
                    AddItem(cutItems.AddItems.item, cutAmount, src)
                end
                return true
            else
                return false
            end
        end
    elseif Config.Framework == "qbcore" then

        if Config.QBdisablemarkedbills and Config.QBdisablemarkedbills.enabled then
            local xPlayer = QBCore.Functions.GetPlayer(src)
            if xPlayer then
                local blackMoneyItem = xPlayer.Functions.GetItemByName(Config.QBdisablemarkedbills.item)
                if blackMoneyItem ~= nil then
                    if blackMoneyItem.amount >= amount then
                        if remove then
                            xPlayer.Functions.RemoveItem(Config.QBdisablemarkedbills.item, amount)
                            AddItem(cutItems.AddItems.item, cutAmount, src)
                        end
                        return true
                    else
                        return false
                    end
                else
                    return false
                end
            else
                return false
            end
        else

            local xPlayer = QBCore.Functions.GetPlayer(src)
            local total_worth = 0
            local markedbills = xPlayer.Functions.GetItemByName('markedbills')

            for itemkey, item in pairs(xPlayer.PlayerData.items) do
                if item.name == 'markedbills' and type(item.info) ~= 'string' and tonumber(item.info.worth) then
                    total_worth = total_worth + tonumber(item.info.worth)
                end
            end
            if total_worth >= amount then
                if remove then
                local remaining_worth = amount

                for itemkey, item in pairs(xPlayer.PlayerData.items) do
                    if item.name == 'markedbills' and type(item.info) ~= 'string' then
                        local billWorth = tonumber(item.info.worth)

                        if billWorth <= remaining_worth then
                            -- Remove this bill entirely
                            xPlayer.Functions.RemoveItem('markedbills', 1, nil, item.slot)
                            remaining_worth = remaining_worth - billWorth
                        else
                            local newWorth = billWorth - remaining_worth
                            xPlayer.Functions.RemoveItem('markedbills', 1, nil, item.slot)
                            xPlayer.Functions.AddItem('markedbills', 1, nil, {worth = newWorth})
                            remaining_worth = 0
                        end

                        if remaining_worth <= 0 then
                            break
                        end
                    end
                end
                    AddItem(cutItems.AddItems.item, cutAmount, src)
                end
                return true
            else
                return false
            end
        end
    elseif Config.Framework == "standalone" then
        -- ADD YOUR FRAMEWORK
    end
end

function AddItem(name, count, source)
    local src = source
    local ismoney = false
    for _, v in pairs(MoneyTable) do
        if v == name then
            ismoney = true
            AddMoney(count, src)
        end
    end
    if not ismoney then
        if Config.Framework == "ESX" then
            local xPlayer = ESX.GetPlayerFromId(src)
            if xPlayer then
                if Config.WeaponsAsItems then
                    xPlayer.addInventoryItem(name, count)
                else
                    if string.find(name, 'WEAPON_') then
                        xPlayer.addWeapon(name, count)
                    else
                        xPlayer.addInventoryItem(name, count)
                    end
                end
            end
        elseif Config.Framework == "qbcore" then
            local xPlayer = QBCore.Functions.GetPlayer(src)
            if xPlayer then
                xPlayer.Functions.AddItem(name, count, nil, nil)
                TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items[name], "add", count)
            end
        elseif Config.Framework == "standalone" then
            -- ADD YOUR FRAMEWORK
        end
    end
end

function RemoveItem(name, count, source)
    if Config.Framework == "ESX" then
        local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.removeInventoryItem(name, count)
    elseif Config.Framework == "qbcore" then
        local xPlayer = QBCore.Functions.GetPlayer(source)
        xPlayer.Functions.RemoveItem(name, count, nil, nil)
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[name], "remove", count)
    elseif Config.Framework == "standalone" then
        -- ADD YOUR FRAMEWORK
    end
end

function CheckJob()
    local PoliceCount = 0
    if Config.Framework == "ESX" then
        local xPlayers = ESX.GetPlayers()
        for i = 1, #xPlayers do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
            for _, job in pairs(Config.PoliceJobs) do
                if xPlayer and xPlayer.job.name == job then
                    PoliceCount = PoliceCount + 1
                end
            end
        end
        return PoliceCount
    elseif Config.Framework == "qbcore" then
        local xPlayers = QBCore.Functions.GetPlayers()
        for i = 1, #xPlayers do
            local xPlayer = QBCore.Functions.GetPlayer(xPlayers[i])
            for _, job in pairs(Config.PoliceJobs) do
                if xPlayer and xPlayer.PlayerData.job.name == job then
                    PoliceCount = PoliceCount + 1
                end
            end
        end
        return PoliceCount
    elseif Config.Framework == "standalone" then
        -- ADD YOU FRAMEWORK
    end
end

function RegisterUsable()
    return RegisterUsable
end

function GetIdent(source)
    if Config.Framework == "ESX" then
        local xPlayer = ESX.GetPlayerFromId(source)
        if xPlayer then
            return xPlayer.getIdentifier()
        end
    elseif Config.Framework == "qbcore" then
        local Player = QBCore.Functions.GetPlayer(source)
        if Player then
            identifier = Player.PlayerData.citizenid
            return identifier
        end
    end
end

lib.callback.register('drc_moneywash:getident', function(source)
    return GetIdent(source)
end)

lib.callback.register('drc_moneywash:purchasewarehouse', function(source, house)
    local src = source
    local char = GetIdent(src)

    if Config.OnlyOne then
        local checkhouse = MySQL.Sync.fetchAll("SELECT * FROM owned_warehouse WHERE owner = @owner", {
            ['@owner'] = char
        })

        if #checkhouse > 0 then
            return "alreadyown"
        end
    end

    local query = MySQL.Sync.fetchAll("SELECT * FROM owned_warehouse WHERE name = @name", {
        ['@name'] = house
    })
    if #query > 0 then
        return false
    else
        if GetMoney(Config.Warehouses[house].price, src) then
            RemoveMoney(Config.Warehouses[house].price, src)
            local id = MySQL.insert.await("INSERT INTO owned_warehouse (owner, name)   VALUES (?, ?)", {
                char, house
            })


            local query = MySQL.Sync.fetchAll("SELECT name FROM owned_warehouse WHERE owner = @owner", {
                ['@owner'] = char
            })

            if #query > 0 then
                local ownedHouses = {}
                for _, result in ipairs(query) do
                    local house = result.name
                    table.insert(ownedHouses, house)
                end
                TriggerClientEvent('drc_moneywash:createblip', src, ownedHouses)
                TriggerClientEvent('drc_moneywash:setowner', src, ownedHouses)
            end
            return true
        else
            return false
        end
    end
end)

function verifyWebhookURL(url)
    local pattern = "discord.com/api/webhooks"
    local match = string.find(url, pattern)

    if match then
        return true
    else
        return false
    end
end

lib.callback.register('drc_moneywash:managewebhook', function(source, house, webhook)
    local src = source
    local char = GetIdent(src)

    MySQL.Async.execute('UPDATE owned_warehouse SET webhook = @webhook WHERE name = @name', {
        ['@webhook'] = webhook,
        ['@name'] = house,
    }, function(affectedRows)
    end)
end)


lib.callback.register('drc_moneywash:sendalarm', function(source, house, type)
    local src = source
    local webhook = GetWebhookByHouse(house)
    local char = GetIdent(src)
    local alarm = false
    local query = MySQL.Sync.fetchAll("SELECT * FROM owned_warehouse WHERE name = @name", {
        ['@name'] = house
    })

    if #query > 0 then
        if query[1].owner == char then
            return
        end
        alarm = tonumber(query[1].alarm) == 1
    end
    if alarm then
        if AlarmEnabled(house) then
            if webhook ~= nil and webhook ~= "nowebhook" then
                local embed = {
                    {
                        ["color"] = 16718876,
                        ["title"] = "WAREHOUSE ALARM! ID: " .. Config.Warehouses[house].label,
                        ["description"] = "Alarm was triggered in your warehouse.",
                        ["footer"] = {
                            ["text"] = "Time: " .. os.date("%Y-%m-%d %H:%M:%S"),
                        },
                    }
                }
                PerformHttpRequest(webhook, function(err, text, headers) end, 'POST',
                    json.encode({
                        username = "SECURITY SYSTEM",
                        embeds = embed,
                        avatar_url = "https://i.imgur.com/hxtNwu4.png"
                    })
                    , { ['Content-Type'] = 'application/json' })
                return true
            else
                return false
            end
        end
    end
end)


function GetWebhookByHouse(house)
    local webhook = nil

    MySQL.Async.fetchScalar('SELECT webhook FROM owned_warehouse WHERE name = @name', {
        ['@name'] = house,
    }, function(fetchedWebhook)
        if fetchedWebhook then
            webhook = fetchedWebhook
        else
            webhook = "nowebhook"
        end
    end)
    repeat
        Wait(0)
    until webhook ~= nil

    return webhook
end

local function DoesNicknameExist(wash_process, place)
    local wash_process_table = wash_process and json.decode(wash_process) or {}
    local place_data = wash_process_table[place]
    return place_data ~= nil and place_data.endtime ~= nil and place_data.money ~= nil
end


lib.callback.register('drc_moneywash:givekeys', function(source, house, player, nickname)
    local src = source
    local char = GetIdent(player)
    local access

    local char = GetIdent(src)
    local query = MySQL.Sync.fetchAll("SELECT name FROM owned_warehouse WHERE owner = @owner and name = @name", {
        ['@owner'] = char,
        ['@name'] = house
    })

    if #query > 0 then
        fetchResult = MySQL.Sync.fetchAll('SELECT access FROM owned_warehouse WHERE name = @name', {
            ['@name'] = house
        })

        if fetchResult[1] then
            if fetchResult[1].access then
                access = json.decode(fetchResult[1].access)
            else
                access = {}
            end

            access_table = access
            nickname_data = access_table[nickname]
            if access and nickname_data == nil then
                local charAlreadyExists = false
                for _, data in pairs(access) do
                    if data.player == char then
                        charAlreadyExists = true
                        break
                    end
                end

                if not charAlreadyExists then
                    access[nickname] = { player = char }
                    local access_json = json.encode(access)
                    MySQL.Async.execute('UPDATE owned_warehouse SET access = @access WHERE name = @name', {
                        ['@access'] = access_json,
                        ['@name'] = house,
                    })


                    local fetchResult = MySQL.Sync.fetchAll('SELECT access FROM owned_warehouse WHERE name = @name', {
                        ['@name'] = house
                    })

                    if fetchResult[1] then
                        if fetchResult[1].access then
                            access = json.decode(fetchResult[1].access)
                        else
                            access = {}
                        end
                        local ownedHouses = {}
                        for _, result in ipairs(fetchResult) do
                            local house = result.name
                            table.insert(ownedHouses, house)
                        end
                        TriggerClientEvent('drc_moneywash:createblip', src, ownedHouses)
                        TriggerClientEvent('drc_moneywash:setaccess', src, ownedHouses)
                    end


                    return true
                else
                    return false
                end
            else
                return false
            end
        else
            return false
        end
    else
        return false
    end
end)



lib.callback.register('drc_moneywash:getaccess', function(source, house)
    local src = source
    local char = GetIdent(src)
    local access

    local query = MySQL.Sync.fetchAll("SELECT name FROM owned_warehouse WHERE owner = @owner and name = @name", {
        ['@owner'] = char,
        ['@name'] = house
    })

    if #query > 0 then
        local fetchResult = MySQL.Sync.fetchAll('SELECT access FROM owned_warehouse WHERE name = @name', {
            ['@name'] = house
        })

        if fetchResult[1] then
            if fetchResult[1].access then
                access = json.decode(fetchResult[1].access)
            else
                access = {}
            end

            local access_table = access
            local existingNicknames = {}
            for nickname, _ in pairs(access_table) do
                table.insert(existingNicknames, nickname)
            end

            return existingNicknames
        end
    end
end)

lib.callback.register('drc_moneywash:removekeys', function(source, house, value, nickname)
    local src = source
    local access
    fetchResult = MySQL.Sync.fetchAll('SELECT access FROM owned_warehouse WHERE name = @name', {
        ['@name'] = house
    })

    if fetchResult[1] then
        if fetchResult[1].access then
            access = json.decode(fetchResult[1].access)
        else
            access = {}
        end

        access_table = access
        nickname_data = access_table[nickname]
        if access and nickname_data then
            access[nickname] = nil
            local access_json = json.encode(access)
            local affectedRows = MySQL.Sync.execute('UPDATE owned_warehouse SET access = @access WHERE name = @name', {
                ['@access'] = access_json,
                ['@name'] = house,
            })

            return affectedRows > 0
        end
    end

    return false
end)

lib.callback.register('drc_moneywash:sellwarehouse', function(source, house)
    local src = source
    local char = GetIdent(src)
    local query = MySQL.Sync.fetchAll("SELECT * FROM owned_warehouse WHERE name = @name AND owner = @owner", {
        ['@name'] = house,
        ['@owner'] = char
    })

    if #query > 0 then
        local success = nil
        local callbackDone = false

        MySQL.Async.execute("DELETE FROM owned_warehouse WHERE name = @name AND owner = @owner", {
            ['@name'] = house,
            ['@owner'] = char
        }, function(rowsAffected)
            if rowsAffected > 0 then
                AddMoney((Config.Warehouses[house].price * Config.ResellValue / 100), src)
                TriggerClientEvent('drc_moneywash:removeblip', src, house)
                success = true
            else
                success = false
            end
            callbackDone = true
        end)

        while not callbackDone do
            Wait(0)
        end

        return success
    else
        return false
    end
end)

if Config.Clothing == "esx_skin" then
    ESX.RegisterServerCallback('drc_moneywash:getPlayerDressing', function(source, cb)
        local xPlayer = ESX.GetPlayerFromId(source)

        TriggerEvent('esx_datastore:getDataStore', 'property', xPlayer.identifier, function(store)
            local count  = store.count('dressing')
            local labels = {}

            for i = 1, count, 1 do
                local entry = store.get('dressing', i)
                table.insert(labels, entry.label)
            end

            cb(labels)
        end)
    end)

    ESX.RegisterServerCallback('drc_moneywash:getPlayerOutfit', function(source, cb, num)
        local xPlayer = ESX.GetPlayerFromId(source)

        TriggerEvent('esx_datastore:getDataStore', 'property', xPlayer.identifier, function(store)
            local outfit = store.get('dressing', num)
            cb(outfit.skin)
        end)
    end)
end

lib.callback.register('drc_moneywash:upgrade', function(source, house, upgradeType, type)
    local src = source
    local char = GetIdent(src)
    local value = nil
    if type == "buy" then
        value = true
    else
        value = false
    end
    local query = MySQL.Sync.fetchAll("SELECT * FROM owned_warehouse WHERE name = @name AND owner = @owner", {
        ['@name'] = house,
        ['@owner'] = char
    })

    if #query > 0 then
        if value then
            if upgradeType ~= "alarm" and upgradeType ~= "laser" and upgradeType ~= "laundry" then
                local laundry = tonumber(query[1].laundry) == 1
                if not laundry then
                    return "needlaundry"
                end
            end
        end
        if tonumber(query[1][upgradeType]) == 1 then
            return "alreadybought"
        end


        if type == "buy" then
            if GetMoney(Config.UpgradeShop.Items[upgradeType].price, src) then
                RemoveMoney(Config.UpgradeShop.Items[upgradeType].price, src)
            else
                return "nomoney"
            end
        end
        local updateQuery = "UPDATE owned_warehouse SET " ..
            upgradeType .. " = @upgradeValue WHERE name = @name AND owner = @owner"

        local success = nil
        local callbackDone = false

        MySQL.Async.execute(updateQuery, {
            ['@upgradeValue'] = value,
            ['@name'] = house,
            ['@owner'] = char
        }, function(rowsAffected)
            if rowsAffected > 0 then
                success = true
            else
                success = false
            end
            callbackDone = true
        end)

        while not callbackDone do
            Wait(0)
        end

        return success
    else
        return false
    end
end)


lib.callback.register('drc_moneywash:getupgrades', function(source, house)
    local src = source

    local query = MySQL.Sync.fetchAll("SELECT * FROM owned_warehouse WHERE name = @name", {
        ['@name'] = house
    })

    if #query > 0 then
        local upgrades = {
            laundry = tonumber(query[1].laundry) == 1,
            laser = tonumber(query[1].laser) == 1,
            alarm = tonumber(query[1].alarm) == 1,
            printer = tonumber(query[1].printer) == 1,
            washing = tonumber(query[1].washing) == 1,
        }

        return upgrades
    else

    end
end)


lib.callback.register('drc_moneywash:checkhouses', function(source)
    local availableHouses = {}
    local query = MySQL.Sync.fetchAll("SELECT * FROM owned_warehouse")

    for house, houseData in pairs(Config.Warehouses) do
        local found = false

        for _, result in ipairs(query) do
            if result.name == house then
                found = true
                break
            end
        end

        if not found then
            table.insert(availableHouses, house)
        end
    end

    if #availableHouses > 0 then
        return availableHouses
    else
        return nil
    end
end)
