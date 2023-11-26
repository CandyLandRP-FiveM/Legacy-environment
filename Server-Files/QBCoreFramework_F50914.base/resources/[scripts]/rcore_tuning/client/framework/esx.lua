if Config.Framework == nil or Config.Framework == 0 then
    if GetResourceState('es_extended') == 'starting' or GetResourceState('es_extended') == 'started' then
        Config.Framework = 1
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
        
        ShowNotification = function(text)
            TriggerEvent(Config.FrameworkTriggers['notify'], text)
        end

        PlayerGetMoney = function(accounts)
            for _, accountInfo in pairs(accounts) do
                if accountInfo.name == "money" then
                    return accountInfo.money
                end
            end
        end

        PlayerHasMoney = function(price)
            local playerData = ESX.GetPlayerData()
            if Config.Components then
                for _, itemInfo in pairs(playerData.inventory) do
                    if itemInfo.name == Config.ComponentItemName and itemInfo.count then
                        return itemInfo.count >= price
                    end
                end
            else
                if Config.UseSocietyMoney then

                    local p = promise.new()
                    ESX.TriggerServerCallback("rcore_tuning:hasSocietyGotEnough", function(result) 
                        p:resolve(result)
                    end, price, GetPlayersJobName())

                    return Citizen.Await(p)
                else

                    return PlayerGetMoney(playerData.accounts) >= price
                end
            end
            return false
        end

        VehicleRepair = function(veh)
            SetVehicleEngineHealth(veh, 1000.0)
            SetVehicleBodyHealth(veh, 1000.0)
            SetVehiclePetrolTankHealth(veh, 750.0)
            SetVehicleFixed(veh)
        end

        GetPlayersJobName = function()
            local playerData = ESX.GetPlayerData()

            if playerData and playerData.job then
                return playerData.job.name, playerData.job.grade_name:lower() == "boss"
            end

            return nil
        end

        GetPlayersJobGrade = function()
            local playerData = ESX.GetPlayerData()
            if playerData and playerData.job then
                return playerData.job.grade
            end

            return nil
        end

        OpenBossMenu = function(jobName)
            TriggerEvent('esx_society:openBossMenu', jobName, function(data, menu)
                menu.close()
            end)
        end
    end
end)
