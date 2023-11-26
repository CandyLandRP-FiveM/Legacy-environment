if Config.Framework == nil or Config.Framework == 0 then
    if GetResourceState('qb-core') == 'starting' or GetResourceState('qb-core') == 'started' then
        Config.Framework = 2
    end
end

if Config.Framework == nil or Config.Framework == 0 or Config.Framework == 2 then
    if GetResourceState('qb-bossmenu') == 'starting' or GetResourceState('qb-bossmenu') == 'started' then
        Config.SocietySystem = 2
    end

    if GetResourceState('qb-management') == 'starting' or GetResourceState('qb-management') == 'started' then
        Config.SocietySystem = 3
    end
end

if Config.Framework == 2 then
    if Config.FrameworkTriggers['notify'] == '' or string.strtrim(string.lower(Config.FrameworkTriggers['notify'])) == 'qbcore' then
        Config.FrameworkTriggers['notify'] = 'QBCore:Notify'
    end

    if Config.FrameworkTriggers['load'] == '' or string.strtrim(string.lower(Config.FrameworkTriggers['load'])) == 'qbcore' then
        Config.FrameworkTriggers['load'] = 'QBCore:GetObject'
    end

    if Config.FrameworkTriggers['resourceName'] == '' or string.strtrim(string.lower(Config.FrameworkTriggers['resourceName'])) == 'qbcore' then
        Config.FrameworkTriggers['resourceName'] = 'qb-core'
    end
end


CreateThread(function()
    if Config.Framework == 2 then
        local QBCore = Citizen.Await(GetSharedObjectSafe())

        ShowNotification = function(src, msg)
            TriggerClientEvent('QBCore:Notify', src, msg, "error")
        end

        PlayerHasMoney = function(serverId, amount)
            local player = QBCore.Functions.GetPlayer(serverId)
            if Config.Components then
                return QBCore.Functions.HasItem(serverId, Config.ComponentItemName, amount)
                -- return player.Functions.GetItemByName(Config.ComponentItemName) ~= nil and player.Functions.GetItemByName(Config.ComponentItemName).amount >= amount
            else
                if Config.UseSocietyMoney then
                    local jobName = GetPlayersJobName(serverId)
                    return GetSocietyMoney(jobName) >= amount
                else
                    return player.PlayerData.money.cash >= amount
                end
            end
        end

        PlayerTakeMoney = function(serverId, amount)
            local player = QBCore.Functions.GetPlayer(serverId)
            if amount == 0 then return true end

            if PlayerHasMoney(serverId, amount) then
                if Config.Components then
                    if not player.Functions.RemoveItem(Config.ComponentItemName, amount) then 
                        return false 
                    else
                        TriggerClientEvent('inventory:client:ItemBox', serverId, QBCore.Shared.Items[Config.ComponentItemName], "remove")
                    end
                else
                    if Config.UseSocietyMoney then
                        local jobName = GetPlayersJobName(serverId)
                        RemoveSocietyMoney(jobName, amount)
                    else
                        player.Functions.RemoveMoney("cash", amount, "tuning-shop")
                    end
                end

                return true
            end
            return false
        end
        PlayerGiveMoney = function(serverId, amount, ignoreSociety)
            local player = QBCore.Functions.GetPlayer(serverId)

            if Config.Components then
                if not player.Functions.AddItem(Config.ComponentItemName, amount) then 
                    return false 
                else
                    TriggerClientEvent('inventory:client:ItemBox', serverId, QBCore.Shared.Items[Config.ComponentItemName], 'add')
                end
            else
                if not ignoreSociety and Config.UseSocietyMoney then
                    local jobName = GetPlayersJobName(serverId)
                    AddSocietyMoney(jobName, amount)
                else
                    player.Functions.AddMoney('cash', amount, "tuning-shop")
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

            local vehicleData = MySQL.Sync.fetchAll('SELECT citizenid, hash from player_vehicles WHERE plate = @plate', {
                ['@plate'] = vehLp,
            })
            
            if vehicleData[1] then
                local citizenId = vehicleData[1].citizenid
                local vehHash = tonumber(vehicleData[1].hash)
                
                local qbPlayer = QBCore.Functions.GetPlayer(serverId)

                if not qbPlayer then
                    return false
                end

                local realVehModelHash = GetEntityModel(vehEnt)

                return realVehModelHash == vehHash and qbPlayer.PlayerData.citizenid == citizenId
            end

            return true
        end

        -- LoadVehicle = function(lp)
        --     local vehicles = MySQL.Sync.fetchAll([[
        --         SELECT id, citizenid, vehicle, mods, plate
        --         FROM player_vehicles
        --         WHERE plate=@lp
        --     ]], {['@lp'] = lp})

        --     if vehicles[1] then
        --         local props = {}
        --         if vehicles[1].mods ~= nil and vehicles[1].mods ~= '' then
        --             props = json.decode(vehicles[1].mods)
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
                
        --         MySQL.Sync.execute('UPDATE player_vehicles SET mods=@p WHERE plate=@lp', {
        --             ['@p'] = json.encode(props),
        --             ['@lp'] = lp,
        --         })
        --     end

        -- end

        GetPlayersJobName = function(serverId)
            local player = QBCore.Functions.GetPlayer(serverId)

            if player and player.PlayerData and player.PlayerData.job then
                return player.PlayerData.job.name
            end

            return nil
        end

        GetPlayersJobGrade = function(serverId)
            local player = QBCore.Functions.GetPlayer(serverId)

            if player and player.PlayerData and player.PlayerData.job then
                return player.PlayerData.job.grade.level
            end

            return nil
        end

        GetSocietyMoney = function(jobName)
            if Config.SocietySystem == 2 then
                return exports['qb-bossmenu']:GetAccount(jobName)
            elseif Config.SocietySystem == 3 then
                return exports['qb-management']:GetAccount(jobName)
            end
        end

        RemoveSocietyMoney = function(jobName, amount)
            if Config.SocietySystem == 2 then
                TriggerEvent('qb-bossmenu:server:removeAccountMoney', jobName, amount)
            elseif Config.SocietySystem == 3 then
                exports['qb-management']:RemoveMoney(jobName, amount)
            end
        end

        AddSocietyMoney = function(jobName, amount)
            if Config.SocietySystem == 2 then
                TriggerEvent('qb-bossmenu:server:addAccountMoney', jobName, amount)
            elseif Config.SocietySystem == 3 then
                return exports['qb-management']:AddMoney(jobName, amount)
            end
        end

        GetPoliceCount = function()
            local policeCount = 0
    
            for _, serverId in pairs(QBCore.Functions.GetPlayers()) do
                Wait(0)
    
                local player = QBCore.Functions.GetPlayer(serverId)
                
                if player and player.PlayerData.job.name == 'police' then
                    policeCount += 1
                end
            end
    
            return policeCount
        end

        QBCore.Functions.CreateCallback("rcore_tuning:hasSocietyGotEnough", function(source, cb, price, jobName)
            cb(GetSocietyMoney(jobName) >= price)
        end)
    end
end)
