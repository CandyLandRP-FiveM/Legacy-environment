if Config.Framework == nil or Config.Framework == 0 or Config.SocietySystem == nil then
    if GetResourceState('es_extended') == 'starting' or GetResourceState('es_extended') == 'started' then
        Config.Framework = 1
        if GetResourceState('esx_addonaccount') == 'starting' or GetResourceState('esx_addonaccount') == 'started' then
            Config.SocietySystem = 1
        end
    end
end

if Config.Framework == 1 then
    if Config.FrameworkTriggers['notify'] == '' or string.strtrim(string.lower(Config.FrameworkTriggers['notify'])) == 'esx' then
        Config.FrameworkTriggers['notify'] = 'esx:showNotification'
    end

    if Config.FrameworkTriggers['load'] == '' or string.strtrim(string.lower(Config.FrameworkTriggers['load'])) == 'esx' then
        Config.FrameworkTriggers['load'] = 'esx:getSharedObject'
    end

    if Config.FrameworkTriggers['resourceName'] == '' or string.strtrim(string.lower(Config.FrameworkTriggers['resourceName'])) == 'esx' then
        Config.FrameworkTriggers['resourceName'] = 'es_extended'
    end
end



CreateThread(function()
    if Config.Framework == 1 then
        local ESX = Citizen.Await(GetSharedObjectSafe())

        ShowNotification = function(src, msg)
            TriggerClientEvent(Config.FrameworkTriggers['notify'], src, msg)
        end

        PlayerHasMoney = function(serverId, amount)
            local xPlayer = ESX.GetPlayerFromId(serverId)
            if Config.Components then
                return xPlayer.getInventoryItem(Config.ComponentItemName) ~= nil and xPlayer.getInventoryItem(Config.ComponentItemName).count >= amount
            else
                if Config.UseSocietyMoney then
                    local jobName = GetPlayersJobName(serverId)
                    return GetSocietyMoney(jobName) >= amount
                else
                    return xPlayer.getMoney() >= amount
                end
            end
        end

        PlayerTakeMoney = function(serverId, amount)
            local xPlayer = ESX.GetPlayerFromId(source)

            if amount == 0 then return true end
            
            if PlayerHasMoney(serverId, amount) then
                if Config.Components then
                    local item = xPlayer.getInventoryItem(Config.ComponentItemName)
                    if amount > item.count then 
                        return false
                    end
                    xPlayer.removeInventoryItem(Config.ComponentItemName, amount)
                else
                    if Config.UseSocietyMoney then
                        local jobName = GetPlayersJobName(serverId)
                        RemoveSocietyMoney(jobName, amount)
                    else
                        xPlayer.removeMoney(amount)
                    end
                end

                return true
            end
            return false
        end

        PlayerGiveMoney = function(serverId, amount, ignoreSociety)
            local xPlayer = ESX.GetPlayerFromId(serverId)
            if Config.Components then
                if not xPlayer.addInventoryItem(Config.ComponentItemName, amount) then 
                    return false
                end
            else
                if not ignoreSociety and Config.UseSocietyMoney then
                    local jobName = GetPlayersJobName(serverId)
                    AddSocietyMoney(jobName, amount)
                else
                    xPlayer.addAccountMoney('money', amount, "")
                end
            end
            return true
        end

        IsVehicleOwnedByServerId = function(vehNetId, serverId)
            if not Config.OnlyOwnersCanTuneOwnedCars then
                return true
            end

            local vehEnt = NetworkGetEntityFromNetworkId(vehNetId)
            local vehLp = GetVehicleNumberPlateText(vehEnt)

            local vehicleData = MySQL.Sync.fetchAll('SELECT owner, vehicle from owned_vehicles WHERE plate = @plate', {
                ['@plate'] = vehLp,
            })
            if vehicleData[1] then
                local owner = vehicleData[1].owner
                local vehicleHash = json.decode(vehicleData[1].vehicle).model
                local xPlayer = ESX.GetPlayerFromId(serverId)

                if not xPlayer then
                    return false
                end

                local realVehModelHash = GetEntityModel(vehEnt)

                return xPlayer.getIdentifier() == owner and realVehModelHash == vehicleHash
            end

            return true
        end

        -- LoadVehicle = function(lp)
        --     local vehicles = MySQL.Sync.fetchAll([[
        --         SELECT vehicle, plate
        --         FROM owned_vehicles
        --         WHERE plate=@lp
        --     ]], {['@lp'] = lp})

        --     if vehicles[1] then
        --         local props = {}
        --         if vehicles[1].vehicle ~= nil and vehicles[1].vehicle ~= '' then
        --             props = json.decode(vehicles[1].vehicle)
        --         end

        --         return {
        --             licensePlate = vehicles[1].plate,
        --             properties = props,
        --         }
        --     end

        --     return nil
        -- end

        -- SaveVehicle = function(lp, properties)
        --     local veh = LoadVehicle(lp)
        --     if veh and veh.licensePlate ~= '' then
        --         local props = veh.properties
        --         for _, m in pairs(properties) do
        --             props[m[1]] = m[2]
        --         end
                
        --         MySQL.Sync.execute('UPDATE owned_vehicles SET vehicle=@p WHERE plate=@lp', {
        --             ['@p'] = json.encode(props),
        --             ['@lp'] = lp,
        --         })
        --     end

        -- end

        GetPlayersJobName = function(serverId)
            local xPlayer = ESX.GetPlayerFromId(serverId)
            local jobInfo = xPlayer.getJob()
            if xPlayer and jobInfo.name ~= nil then
                return jobInfo.name
            end

            return nil
        end

        GetPlayersJobGrade = function(serverId)
            local xPlayer = ESX.GetPlayerFromId(serverId)
            local jobInfo = xPlayer.getJob()
            if xPlayer and jobInfo.name ~= nil then
                return jobInfo.grade
            end

            return nil
        end

        GetSocietyMoney = function(jobName)
            if Config.SocietySystem == 1 then
                local result = promise:new()
                TriggerEvent('esx_addonaccount:getSharedAccount', Config.SocietyPrefix..jobName, function(account)
                    if account ~= nil then
                        result:resolve(account.money)
                    else
                        result:resolve(0)
                    end
                end)
                return Citizen.Await(result)
            end
        end

        RemoveSocietyMoney = function(jobName, amount)
            if Config.SocietySystem == 1 then
                TriggerEvent('esx_addonaccount:getSharedAccount', Config.SocietyPrefix..jobName, function(account)
                    account.removeMoney(amount)
                end)
            end
        end

        AddSocietyMoney = function(jobName, amount)
            if Config.SocietySystem == 1 then
                TriggerEvent('esx_addonaccount:getSharedAccount', Config.SocietyPrefix..jobName, function(account)
                    if account ~= nil then
                        account.addMoney(amount)
                    end
                end)
            end
        end

        GetPoliceCount = function()
            local policeCount = 0
    
            for _, serverId in pairs(ESX.GetPlayers()) do
                Wait(0)
                
                local xPlayer = ESX.GetPlayerFromId(serverId)
    
                if xPlayer and xPlayer.job.name == 'police' then
                    policeCount += 1
                end
            end
    
            return policeCount
        end

        ESX.RegisterServerCallback("rcore_tuning:hasSocietyGotEnough", function(source, cb, price, jobName)
            cb(GetSocietyMoney(jobName) >= price)
        end)
    end
end)