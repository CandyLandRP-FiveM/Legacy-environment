lib.locale()


local function AutoDetectFramework()
    if GetResourceState("es_extended") == "started" then
        return "ESX"
    elseif GetResourceState("qb-core") == "started" then
        return "qbcore"
    else
        return "standalone"
    end
end

local function AutoDetectTarget()
    if GetResourceState("qtarget") == "started" then
        return "qtarget"
    elseif GetResourceState("qb-target") == "started" then
        return "qb-target"
    elseif GetResourceState("ox_target") == "started" then
        return "ox_target"
    end
end


local function AutoDetectClothing()
    if GetResourceState("esx_skin") == "started" and GetResourceState("illenium_appearance") ~= "started" and GetResourceState("ox_appearance") ~= "started" and GetResourceState("fivem-appearance") ~= "started" then
        return "esx_skin"
    elseif GetResourceState("qb-clothing") == "started" then
        return "qb-clothing"
    elseif GetResourceState("ox_appearance") == "started" then
        return "ox_appearance"
    elseif GetResourceState("fivem-appearance") == "started" then
        return "fivem-appearance"
    elseif GetResourceState("illenium-appearance") == "started" then
        return "illenium-appearance"
    end
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

if Config.Framework == "auto-detect" then
    Config.Framework = AutoDetectFramework()
end

if Config.Target == "auto-detect" then
    Config.Target = AutoDetectTarget()
end

if Config.Clothing == "auto-detect" then
    Config.Clothing = AutoDetectClothing()
end

OpenStash = function(house, stash)
    if Config.Inventory == "qb" or Config.Inventory == "quasar" then
        local data = nil
        for name, stashData in pairs(Config.Warehouses[house].MoneyWash.Stashes) do
            if name == stash then
                data = stashData
                break
            end
        end

        TriggerServerEvent("inventory:server:OpenInventory", "stash", house .. " " .. stash, {
            maxweight = data.Weight,
            slots = data.Slots,
        })
        TriggerEvent("inventory:client:SetCurrentStash", house .. " " .. stash)
    elseif Config.Inventory == "ox" then
        exports.ox_inventory:openInventory('stash', house .. " " .. stash)
    elseif Config.Inventory == "chezza" then
        TriggerEvent('inventory:openStorage', "Stash", "stash" .. house .. " " .. stash, 100, 1000, nil)
    end
end


local activatedDryers = {}

RegisterNetEvent("drc_moneywash:syncDryerActivation")
AddEventHandler("drc_moneywash:syncDryerActivation", function(place, players, source)
    local playerId = PlayerId()
    if (GetPlayerFromServerId(tonumber(source)) == playerId) or (players and IsPlayerInArray(players, playerId)) then
        if not activatedDryers[place] then
            if place == "dryer1" then
                BikerCounterfeit = exports['bob74_ipl']:GetBikerCounterfeitObject()
                BikerCounterfeit.Dryer1.Set(BikerCounterfeit.Dryer1.on, true)
                activatedDryers[place] = true
            elseif place == "dryer2" then
                BikerCounterfeit = exports['bob74_ipl']:GetBikerCounterfeitObject()
                BikerCounterfeit.Dryer2.Set(BikerCounterfeit.Dryer2.on, true)
                activatedDryers[place] = true
            elseif place == "dryer3" then
                BikerCounterfeit = exports['bob74_ipl']:GetBikerCounterfeitObject()
                BikerCounterfeit.Dryer3.Set(BikerCounterfeit.Dryer3.on, true)
                activatedDryers[place] = true
            elseif place == "dryer4" then
                BikerCounterfeit = exports['bob74_ipl']:GetBikerCounterfeitObject()
                BikerCounterfeit.Dryer4.Set(BikerCounterfeit.Dryer4.on, true)
                activatedDryers[place] = true
            end
        end
    end
end)

function IsPlayerInArray(array, player)
    for _, value in ipairs(array) do
        if GetPlayerFromServerId(tonumber(value)) == tonumber(player) then
            return true
        end
    end
    return false
end

RegisterNetEvent("drc_moneywash:syncDryerDeActivation")
AddEventHandler("drc_moneywash:syncDryerDeActivation", function(place, players, source)
    local playerId = PlayerId()
    if (GetPlayerFromServerId(tonumber(source)) == playerId) or (players and IsPlayerInArray(players, playerId)) then
        if activatedDryers[place] then
            if place == "dryer1" then
                BikerCounterfeit = exports['bob74_ipl']:GetBikerCounterfeitObject()
                BikerCounterfeit.Dryer1.Set(BikerCounterfeit.Dryer1.open, true)
                activatedDryers[place] = false
            elseif place == "dryer2" then
                BikerCounterfeit = exports['bob74_ipl']:GetBikerCounterfeitObject()
                BikerCounterfeit.Dryer2.Set(BikerCounterfeit.Dryer2.open, true)
                activatedDryers[place] = false
            elseif place == "dryer3" then
                BikerCounterfeit = exports['bob74_ipl']:GetBikerCounterfeitObject()
                BikerCounterfeit.Dryer3.Set(BikerCounterfeit.Dryer3.open, true)
                activatedDryers[place] = false
            elseif place == "dryer4" then
                BikerCounterfeit = exports['bob74_ipl']:GetBikerCounterfeitObject()
                BikerCounterfeit.Dryer4.Set(BikerCounterfeit.Dryer4.open, true)
                activatedDryers[place] = false
            end
        end
    end
end)

CreateThread(function()
    BikerCounterfeit = exports['bob74_ipl']:GetBikerCounterfeitObject()

    BikerCounterfeit.Ipl.Interior.Load()

-- Setting the printers
    BikerCounterfeit.Printer.Set(BikerCounterfeit.Printer.none)

-- Setting the security
    BikerCounterfeit.Security.Set(BikerCounterfeit.Security.upgrade)

-- Setting the dryers
    BikerCounterfeit.Dryer1.Set(BikerCounterfeit.Dryer1.open)
    BikerCounterfeit.Dryer2.Set(BikerCounterfeit.Dryer2.open)
    BikerCounterfeit.Dryer3.Set(BikerCounterfeit.Dryer3.open)
    BikerCounterfeit.Dryer4.Set(BikerCounterfeit.Dryer4.open)
    
-- Enabling details
    BikerCounterfeit.Details.Enable(BikerCounterfeit.Details.chairs, true)
    BikerCounterfeit.Details.Enable(BikerCounterfeit.Details.Cash10, false)
    BikerCounterfeit.Details.Enable(BikerCounterfeit.Details.Cash20, false)
    BikerCounterfeit.Details.Enable(BikerCounterfeit.Details.Cash100, false)
    BikerCounterfeit.Details.Enable(BikerCounterfeit.Details.cutter, true)
    BikerCounterfeit.Details.Enable(BikerCounterfeit.Details.furnitures, true)

-- Refreshing the interior to the see the result
    RefreshInterior(BikerCounterfeit.interiorId)
end)

OpenCloakRoomMenu = function()
    if Config.Clothing == "esx_skin" then
        ESX.TriggerServerCallback('drc_moneywash:getPlayerDressing', function(dressing)
            local elements = {}

            for i = 1, #dressing, 1 do
                table.insert(elements, {
                    label = dressing[i],
                    value = i
                })
            end

            ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'player_dressing', {
                title    = "CloakRoom",
                align    = 'top-left',
                elements = elements
            }, function(data, menu)
                TriggerEvent('skinchanger:getSkin', function(skin)
                    ESX.TriggerServerCallback('drc_moneywash:getPlayerOutfit', function(clothes)
                        TriggerEvent('skinchanger:loadClothes', skin, clothes)
                        TriggerEvent('esx_skin:setLastSkin', skin)

                        TriggerEvent('skinchanger:getSkin', function(skin)
                            TriggerServerEvent('esx_skin:save', skin)
                        end)
                    end, data.current.value)
                end)
            end, function(data, menu)
                menu.close()
            end)
        end)
    elseif Config.Clothing == "ox_appearance" then
        TriggerEvent("ox_appearance:wardrobe")
    elseif Config.Clothing == "fivem-appearance" then
        TriggerEvent("fivem-appearance:clothingShop")
    elseif Config.Clothing == "illenium-appearance" then
        TriggerEvent("illenium-appearance:client:openClothingShopMenu")
    elseif Config.Clothing == "qb-clothing" then
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "Clothes1", 0.4)
        TriggerEvent('qb-clothing:client:openOutfitMenu')
    end
end

if Config.Framework == "ESX" then
    if Config.NewESX then
        ESX = exports["es_extended"]:getSharedObject()
    else
        ESX = nil
        CreateThread(function()
            while ESX == nil do
                TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
                Wait(100)
            end
        end)
    end
elseif Config.Framework == "qbcore" then
    QBCore = nil
    QBCore = exports["qb-core"]:GetCoreObject()
elseif Config.Framework == "standalone" then
    -- ADD YOU FRAMEWORK
end

if Config.Framework == "ESX" then
    RegisterNetEvent('esx:playerLoaded') 
    AddEventHandler('esx:playerLoaded', function(xPlayer, isNew)
        ESX.PlayerData = xPlayer
        ESX.PlayerLoaded = true
        TriggerServerEvent("drc_moneywash:sync")
    end)
elseif Config.Framework == "qbcore" then
    RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
        PlayerData = QBCore.Functions.GetPlayerData()
        TriggerServerEvent("drc_moneywash:sync")
    end)
end

TriggerServerEvent("drc_moneywash:sync")


local HouseBlips = {}
RegisterNetEvent('drc_moneywash:createblip')
AddEventHandler('drc_moneywash:createblip', function(ownedHouses)
    if #ownedHouses > 0 then
        for _, house in ipairs(ownedHouses) do
            local houseData = Config.Warehouses[house]
            if houseData then
                HouseBlips[houseData.label] = AddBlipForCoord(houseData.Coords.x, houseData.Coords.y, houseData.Coords.z)
                SetBlipDisplay(HouseBlips[houseData.label], 4)
                SetBlipSprite(HouseBlips[houseData.label], 473)
                SetBlipColour(HouseBlips[houseData.label], 3)
                SetBlipAsShortRange(HouseBlips[houseData.label], true)
                SetBlipScale(HouseBlips[houseData.label], 0.7)
                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString(houseData.label)
                EndTextCommandSetBlipName(HouseBlips[houseData.label])
            end
        end
    end
end)

RegisterNetEvent('drc_moneywash:removeblip')
AddEventHandler('drc_moneywash:removeblip', function(house)
    RemoveBlip(HouseBlips[Config.Warehouses[house].label])
end)


-- Your notification type settings
-- •» You can edit a type of notifications, with chaning type or triggering your own.

RegisterNetEvent("drc_moneywash:notify")
AddEventHandler("drc_moneywash:notify", function(type, title, text)
    Notify(type, title, text)
end)

Notify = function(type, title, text)
    if Config.NotificationType == "ESX" then
        ESX.ShowNotification(text)
    elseif Config.NotificationType == "ox_lib" then
        if type == "info" then
            lib.notify({
                title = title,
                description = text,
                type = "inform",
                duration = 15000
            })
        elseif type == "error" then
            lib.notify({
                title = title,
                description = text,
                type = "error"
            })
        elseif type == "success" then
            lib.notify({
                title = title,
                description = text,
                type = "success"
            })
        end
    elseif Config.NotificationType == "qbcore" then
        if type == "success" then
            QBCore.Functions.Notify(text, "success", 10000)
        elseif type == "info" then
            QBCore.Functions.Notify(text, "primary", 15000)
        elseif type == "error" then
            QBCore.Functions.Notify(text, "error", 10000)
        end
    elseif Config.NotificationType == "custom" then
        print("add your notification system! in cl_Utils.lua")
        -- ADD YOUR NOTIFICATION | TYPES ARE info, error, success
    end
end

ProgressBar = function(duration, label)
    if Config.Progress == "ox_lib" then
        lib.progressBar({
            duration = duration,
            label = label,
            useWhileDead = false,
            canCancel = false
        })
    elseif Config.Progress == "qbcore" then
        QBCore.Functions.Progressbar(label, label, duration, false, true, {
        }, {}, {}, {}, function()
        end)
        Wait(duration)
    elseif Config.Progress == "progressBars" then
        exports['progressBars']:startUI(duration, label)
        Wait(duration)
    end
end

TextUIShow = function(text)
    if Config.TextUI == "ox_lib" then
        lib.showTextUI(text)
    elseif Config.TextUI == "esx" then
        exports["esx_textui"]:TextUI(text)
    elseif Config.TextUI == "luke" then
        TriggerEvent('luke_textui:ShowUI', text)
    elseif Config.TextUI == "custom" then
        print("add your textui system! in cl_Utils.lua")
        -- ADD YOUR TEXTUI | TO SHOW
    end
end

IsTextUIShowed = function()
    if Config.TextUI == "ox_lib" then
        return lib.isTextUIOpen()
    elseif Config.TextUI == "esx" then
        --exports["esx_textui"]:TextUI(text)
    elseif Config.TextUI == "luke" then
        --TriggerEvent('luke_textui:ShowUI', text)
    elseif Config.TextUI == "custom" then
        print("add your textui system! in cl_Utils.lua")
        -- ADD YOUR TEXTUI | TO SHOW
    end
end

TextUIHide = function()
    if Config.TextUI == "ox_lib" then
        lib.hideTextUI()
    elseif Config.TextUI == "esx" then
        exports["esx_textui"]:HideUI()
    elseif Config.TextUI == "luke" then
        TriggerEvent('luke_textui:HideUI')
    elseif Config.TextUI == "custom" then
        print("add your textui system! in cl_Utils.lua")
        -- ADD YOUR TEXTUI | TO HIDE
    end
end

--Blip creating
CreateThread(function()
    for _, v in pairs(Config.Blips) do
        local blip = AddBlipForCoord(v.BlipCoords)
        SetBlipSprite(blip, v.Sprite)
        SetBlipDisplay(blip, v.Display)
        SetBlipScale(blip, v.Scale)
        SetBlipColour(blip, v.Colour)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName(v.Name)
        EndTextCommandSetBlipName(blip)
    end
end)

Draw3DText = function(coords, text)
    local onScreen, _x, _y = World3dToScreen2d(coords.x, coords.y, coords.z)
    if onScreen then
        SetTextFont(Config.FontId)
        SetTextScale(0.33, 0.30)
        SetTextDropshadow(10, 100, 100, 100, 255)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
        local factor = (string.len(text)) / 350
        DrawRect(_x,_y+0.0135, 0.030+ factor, 0.03, 0, 0, 0, 50)
    end
end

--Exports
Target = function()
    if Config.Target == "qtarget" then
        return exports['qtarget']
    end
    if Config.Target == "ox_target" then
        return exports['qtarget']
    end
    if Config.Target == "qb-target" then
        return exports['qb-target']
    end
end

Dispatch = function(house, type)
    lib.callback('drc_moneywash:sendalarm', false, function(value)
        if value then

        end
    end, house)
end

function CheckJob()
    local HasJob = false
    for _, job in pairs(Config.PoliceJobs) do
        if GetJob() == job or job == nil or not job then
            HasJob = true
        end
    end
    if HasJob then
        return true
    else
        return false
    end
end

function GetJob()
    if Config.Framework == "ESX" then
        return ESX.GetPlayerData().job.name
    elseif Config.Framework == "qbcore" then
        return QBCore.Functions.GetPlayerData().job.name
    elseif Config.Framework == "standalone" then
        -- ADD YOU FRAMEWORK
    end
end

local function EnumerateEntitiesWithinDistance(entities, isPlayerEntities, coords, maxDistance)
    local nearbyEntities = {}

    if coords then
        coords = vector3(coords.x, coords.y, coords.z)
    else
        local playerPed = cache.ped
        coords = GetEntityCoords(playerPed)
    end

    for k, entity in pairs(entities) do
        local distance = #(coords - GetEntityCoords(entity))

        if distance <= maxDistance then
            nearbyEntities[#nearbyEntities + 1] = isPlayerEntities and k or entity
        end
    end

    return nearbyEntities
end

function GetAvailableVehicleSpawnPoint(SpawnPoints)
    local spawnPoints = SpawnPoints
    local found, foundSpawnPoint = false, nil

    for i = 1, #spawnPoints, 1 do
        if IsSpawnPointClear(spawnPoints[i].Coords, spawnPoints[i].Radius) then
            found, foundSpawnPoint = true, spawnPoints[i]
            break
        end
    end

    if found then
        return true, foundSpawnPoint
    else
        Notify("error", locale("error"), locale("FreeSpace"))
        return false
    end
end

function GetVehicles()
    return GetGamePool('CVehicle')
end

function GetVehiclesInArea(coords, maxDistance)
    return EnumerateEntitiesWithinDistance(GetVehicles(), false, coords, maxDistance)
end

function IsSpawnPointClear(coords, maxDistance)
    return #GetVehiclesInArea(coords, maxDistance) == 0
end

SpawnVehicle = function(model, coords, heading)
    if Config.Framework == "ESX" then
        ESX.Game.SpawnVehicle(model, coords, heading, function(vehicle)
            SetEntityHeading(vehicle, heading)
        end)
    elseif Config.Framework == "qbcore" then
        QBCore.Functions.SpawnVehicle(model, function(vehicle)
            SetEntityHeading(vehicle, heading)
            TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(vehicle))
        end, coords, true)
    elseif Config.Framework == "standalone" then
        -- ADD YOU FRAMEWORK
    end
end

GetClosestCar = function(coords)
    if Config.Framework == "ESX" then
        return ESX.Game.GetClosestVehicle(coords)
    elseif Config.Framework == "qbcore" then
        return QBCore.Functions.GetClosestVehicle()
    elseif Config.Framework == "standalone" then
        -- ADD YOU FRAMEWORK
    end
end

HackingMinigame = function()
    local success = exports['howdy-hackminigame']:Begin(3, 5000)
    return success
end

local minigamefinished = nil
DoorLockPickMinigame = function()
    if Config.QuasarLockpickMinigame then
        local success = false
        TriggerEvent('lockpick:client:openLockpick', function(s)
            success = s
            minigamefinished = true
        end)
        repeat
            Citizen.Wait(100)
        until minigamefinished ~= nil
        minigamefinished = nil
        return success
    else
        local success = exports['lockpick']:startLockpick()
        return success
    end
end


AlarmSound = function()
    TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "alarm", 0.35)
end

DoorSound = function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "houses_door_open", 0.25)
end

OnHouseEnter = function()
    if Config.TimeChange and Config.TimeSync == "realtime" then
        TriggerServerEvent("realtime:event")
    end
end

OnHouseLeave = function()
    if Config.TimeChange and Config.TimeSync == "realtime" then
        TriggerServerEvent("realtime:event")
    end
end

function verifyWebhookURL(url)
  local pattern = "discord.com/api/webhooks"
  local match = string.find(url, pattern)
  
  if match then
    return true
  else
    return false
  end
end

function GetPlayers(onlyOtherPlayers, returnKeyValue, returnPeds)
    local players, myPlayer = {}, PlayerId()

    for _, player in ipairs(GetActivePlayers()) do
        local ped = GetPlayerPed(player)

        if DoesEntityExist(ped) and ((onlyOtherPlayers and player ~= myPlayer) or not onlyOtherPlayers) then
            if returnKeyValue then
                players[player] = ped
            else
                players[#players + 1] = returnPeds and ped or player
            end
        end
    end

    return players
end

function GetClosestEntity(entities, isPlayerEntities, coords, modelFilter)
    local closestEntity, closestEntityDistance, filteredEntities = -1, -1, nil

    if coords then
        coords = vector3(coords.x, coords.y, coords.z)
    else
        local playerPed = cache.ped
        coords = GetEntityCoords(playerPed)
    end

    if modelFilter then
        filteredEntities = {}

        for _, entity in pairs(entities) do
            if modelFilter[GetEntityModel(entity)] then
                filteredEntities[#filteredEntities + 1] = entity
            end
        end
    end

    for k, entity in pairs(filteredEntities or entities) do
        local distance = #(coords - GetEntityCoords(entity)) 
        if closestEntityDistance == -1 or distance < closestEntityDistance then
            closestEntity, closestEntityDistance = isPlayerEntities and k or entity, distance
        end
    end

    return closestEntity, closestEntityDistance
end


--LOCATOR
local Blips = {}

RegisterNetEvent("drc_moneywash:localize")
AddEventHandler("drc_moneywash:localize", function()
    local count = 0
    for _ in pairs(Config.Warehouses) do
        count = count + 1
    end
    local randomIndex = math.random(1, count)
    local randomWarehouse = nil
    local currentIndex = 1
    for _, warehouse in pairs(Config.Warehouses) do
        if currentIndex == randomIndex then
            randomWarehouse = warehouse
            break
        end
        currentIndex = currentIndex + 1
    end
    house = randomWarehouse
    house = Config.Warehouses["Warehouse3"]
    local coords = house.Coords
    local Radius = math.random(50, 200) + 0.0
    local RadiusCoords = vec3(coords.x + math.random(10, 20), coords.y + math.random(10, 20), coords.z)
    local blip = AddBlipForRadius(RadiusCoords, Radius)
    SetBlipColour(blip, 1)
    SetBlipAlpha(blip, 128)

    local blip2 = AddBlipForCoord(RadiusCoords)
    SetBlipSprite(blip2, 492)
    SetBlipDisplay(blip2, 4)
    SetBlipScale(blip2, 0.9)
    SetBlipColour(blip2, 1)
    SetBlipAsShortRange(blip2, true)

    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName(locale("WarehouseArea"))
    EndTextCommandSetBlipName(blip2)

    table.insert(Blips, blip)
    table.insert(Blips, blip2)

    Notify('info', locale('info'), locale('MissionText'))
end)

RemoveRadius = function()
    if finding then
        for k,v in pairs(Blips) do
            RemoveBlip(v)
        end
        Blips = {}
    end
end

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        RemoveRadius()
    end
end)