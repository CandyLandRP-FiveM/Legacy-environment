extraToId = {}

for i = 0, 50 do
    extraToId["extra_" .. i] = i
end


function trimWhitespace(input)
    return input:match("^%s*(.-)%s*$")
end


function tablelength(table)
    local count = 0
    for _ in pairs(table) do
        count = count + 1
    end
    return count
end

function debugMessage(...)
    local resourceName = GetCurrentResourceName()
    local args = {...}
 
    for idx, val in pairs(args) do
       if val == nil then
          args[idx] = 'nil'
       else
          args[idx] = tostring(val)
       end
    end
 
    print(("^2[%s] ^3%s^7"):format(resourceName, table.concat(args, "\t")))
end

function GetCarClassPriceMultiplier()
    return 1.0
end

function FormatPrice(price)
    if Config.Components then
        return price.." ".._U("tuning_component_abbreviation")
    else   
        return "$"..price
    end
end

function BuyTuningPriceError(price)
    if Config.Components then
        return _U("buy_tuning_price_error_components", FormatPrice(price))
    else   
        return _U("buy_tuning_price_error_money", FormatPrice(price))
    end
end
function BuyUpgradePriceError(price)
    if Config.Components then
        return _U("buy_upgrade_price_error_components", FormatPrice(price))
    else
        return _U("buy_upgrade_price_error_money", FormatPrice(price))
    end
end

ClassToModifierTableMax = 4
ClassToModifierTable = {
    [0] = Config.ClassModifier.CHEAP,
    [1] = Config.ClassModifier.MEDIUM,
    [2] = Config.ClassModifier.NORMAL,
    [3] = Config.ClassModifier.HIGH,
    [4] = Config.ClassModifier.HIGHEST,
}

ClassToModifierLabel = {
    [0] = 'Cheap',
    [1] = 'Medium',
    [2] = 'Normal',
    [3] = 'High',
    [4] = 'Highest',
}

function ClassToModifier(class)
    if not class then
        class = 4
    end

    if class < 0 then
        class = 0
    end

    if class > 4 then
        class = 4
    end

	return ClassToModifierTable[class]
end

function ComputeCurrentPrice(shop, modName, vehTuningModifier, idxToInstall, idxInstalled, vehicleModel, withMargin)
    if extraToId[modName] then
        if idxToInstall == false then
            return 0
        end

        idxToInstall = 1
    end
    if not idxToInstall or idxToInstall == -1 then
        return 0
    end

    if Config.Menus[modName].isContinuous and idxToInstall and idxInstalled and idxInstalled >= 0 and idxInstalled >= idxToInstall then
        return 0
    end

    local toInstallCost = Config.Cost[modName] * vehTuningModifier

    if idxToInstall and Config.Menus[modName] and Config.Menus[modName].modifier and Config.Menus[modName].modifier[idxToInstall] then
        toInstallCost = toInstallCost * Config.Menus[modName].modifier[idxToInstall]
    end

    local installedCost = 0
    if idxInstalled and Config.Menus[modName] and Config.Menus[modName].modifier and Config.Menus[modName].modifier[idxInstalled] then
        installedCost = Config.Cost[modName] * vehTuningModifier
        installedCost = installedCost * Config.Menus[modName].modifier[idxInstalled]
    end

    if (modName == 'repair' or modName == 'motorBikesRepair') then
        toInstallCost = toInstallCost * ComputeRepairEfficacy(shop)
    end

    local vehCategory = VehicleCategories[vehicleModel] or Config.DefaultCategory
    if not vehCategory or not ClassToModifierTable[vehCategory] then
        print("ERROR: Could not get class modifier", vehicleModel, vehCategory)
    end

    local finalBasePrice = math.max(0, toInstallCost - installedCost)
    local componentOrMoneyModifier = Config.Components and 1 or Config.MoneyCostMultiplier
    local baseCost = tonumber(math.ceil(finalBasePrice * TuningShops[shop].modifier * componentOrMoneyModifier))
    local classModifier = ClassToModifierTable[vehCategory]


    --- chameleon paint mod
    if modName == 'primaryRespray' or modName == 'secondaryRespray' or modName == 'pearlescentRespray' or modName == 'interiorRespray' or modName == 'dashboardRespray' then
        if DirectColors[idxToInstall] and ChameleonPaints[idxToInstall] then
            if Config.ChameleonPaintCostMultiplier then
                baseCost = baseCost * Config.ChameleonPaintCostMultiplier
            end
        end
    end
    --- end chameleon paint mod



    local currentMargin = GlobalState['TUNING_MARGIN_' .. shop]

    if not withMargin or not currentMargin then
        currentMargin = 0
    end

    currentMargin = (currentMargin + 100)/100

    -- spacer workaround (its non-int <1)
    if idxToInstall < 1 then
        idxToInstall = 1
    end

    local deterministicRandomizer = GetRandomDeterministicUpgradeCost(idxToInstall)

    if Config.Menus[modName].nonRandomPrices then
        deterministicRandomizer = 1
    end

    return tonumber(math.ceil(baseCost * classModifier * currentMargin * deterministicRandomizer))
end

function ComputeShopUpgradeCost(shop, name, isDowngrade)
    if InversePaintUpgradeCategories[name] then
        name = 'shopColorUpgrade'
    end

    local roughCost = Config.Cost[name] * 20 * TuningShops[shop].modifier

    if isDowngrade then
        roughCost = roughCost / 5
    end

    return tonumber(math.floor(roughCost * (Config.Components and 1 or Config.MoneyCostMultiplier)))
end

function ComputeRepairEfficacy(zone)
    local upgTbl = PurchasedShopUpgrades or {}

    if IsDuplicityVersion() then
        upgTbl = ShopPurchasedUpgrades
    end

    local upgradeCount = tablelength(upgTbl[zone] or {})

    local t = upgradeCount/67
    return 0.2 * (1-t) + 5.0 * t
end

function debugMessage(...)
    local resourceName = GetCurrentResourceName()
    local args = {...}
 
    for idx, val in pairs(args) do
       if val == nil then
          args[idx] = 'nil'
       else
          args[idx] = tostring(val)
       end
    end
 
    print(("^2[%s] ^3%s^7"):format(resourceName, table.concat(args, "\t")))
 end
 
 function netDebugMessage(msg)
     local inf = debug.getinfo(3)
 
     local line = inf.currentline
     local source = inf.source
 
     debugMessage(msg .. '(' .. string.gsub(source, "@@", "@") .. ':' .. line .. ')')
 end
 
 if not IsDuplicityVersion() then
     OGNetToVeh = NetToVeh
     function NetToVeh(serverId)
         if serverId then
             if NetworkDoesEntityExistWithNetworkId(serverId) then
                 return OGNetToVeh(serverId)
             else
                 netDebugMessage('(NetToVeh) Entity with netId #' .. serverId .. ' not found')
             end
         else
             netDebugMessage('(NetToVeh) Trying to get entity from nil!')
         end
    end
    
     OGNetToPed = NetToPed
     function NetToPed(serverId)
         if serverId then
             if NetworkDoesEntityExistWithNetworkId(serverId) then
                 return OGNetToPed(serverId)
             else
                 netDebugMessage('(NetToPed) Entity with netId #' .. serverId .. ' not found ')
             end
         else
             netDebugMessage('(NetToPed) Trying to get entity from nil!')
         end
     end
 
     OGNetworkGetNetworkIdFromEntity = NetworkGetNetworkIdFromEntity
     function NetworkGetNetworkIdFromEntity(serverId)
         if serverId then
             if NetworkGetEntityIsNetworked(serverId) then
                 return OGNetworkGetNetworkIdFromEntity(serverId)
             else
                 netDebugMessage('(NetworkGetNetworkIdFromEntity) Entity  #' .. serverId .. ' is not networked ')
             end
         else
             netDebugMessage('(NetworkGetNetworkIdFromEntity) Trying to get entity from nil!')
         end
     end
 end

 function LoadVehicleCategories()
    local content = LoadResourceFile(GetCurrentResourceName(), 'vehicles.json')
    if not content then
        content = '{}'
    end

    local decoded = json.decode(content)

    local final = {}

    for a, b in pairs(decoded) do
        final[tonumber(a)] = b
    end

    return final
end

local function xorshift(seed)
    local x = seed
    function next()
        x = x ~ (x << 13)
        x = x ~ (x >> 17)
        x = x ~ (x << 5)
        return x
    end
    return next
end

-- Generate deterministic random number from a seed
function GetRandomDeterministicUpgradeCost(seed)
    local rng = xorshift(seed)
    local rng1 = (rng() / 0xFFFFFFFF)*100000
    local rng2 = rng1 - math.floor(rng1)

    return 1 + rng2 * 0.2 - 0.1
end

function GetTotalNitrousUsage(useTime, purge)
    local nitrousModifier = 2

    if Config.NitrousUseModifier then
        nitrousModifier = Config.NitrousUseModifier
    end

    local nitrousToTake = 1
    if useTime > 1000 then 
        nitrousToTake = math.ceil((useTime / 1000) / nitrousModifier + 1)
        if purge then
            nitrousToTake = math.ceil(nitrousToTake / (nitrousModifier*2))
        end
    end

    return nitrousToTake
end