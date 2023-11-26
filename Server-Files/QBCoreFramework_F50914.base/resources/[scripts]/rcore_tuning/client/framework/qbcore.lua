if Config.Framework == nil or Config.Framework == 0 then
    if GetResourceState('qb-core') == 'starting' or GetResourceState('qb-core') == 'started' then
        Config.Framework = 2
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

        ShowNotification = function(msg, isSuccess)
            local notificationType = "error"

            if isSuccess then
                notificationType = 'success'
            end
            
            QBCore.Functions.Notify(msg, notificationType)
        end

        PlayerHasMoney = function(price)
            if Config.Components then
                return QBCore.Functions.HasItem(Config.ComponentItemName, price)
            else
                if Config.UseSocietyMoney then
                    local p = promise.new()
                    QBCore.Functions.TriggerCallback('rcore_tuning:hasSocietyGotEnough', function(result)
                        p:resolve(result)
                    end, price, GetPlayersJobName())

                    return Citizen.Await(p)
                else
                    return QBCore.Functions.GetPlayerData().money.cash >= price
                end
            end
        end

        VehicleRepair = function(veh)
            SetVehicleEngineHealth(veh, 1000.0)
            SetVehicleBodyHealth(veh, 1000.0)
            SetVehiclePetrolTankHealth(veh, 750.0)
            SetVehicleFixed(veh)
        end

        GetPlayersJobName = function()
            local playerData = QBCore.Functions.GetPlayerData()

            if playerData and playerData.job then
                return playerData.job.name, playerData.job.isboss
            end

            return nil
        end

        GetPlayersJobGrade = function()
            local playerData = QBCore.Functions.GetPlayerData()
            if playerData and playerData.job then
                return playerData.job.grade.level
            end

            return nil
        end

        OpenBossMenu = function(jobName)
            if Config.SocietySystem == 3 then
                TriggerEvent("qb-bossmenu:client:OpenMenu")
            elseif Config.SocietySystem == 2 then
                TriggerEvent("qb-bossmenu:client:openMenu")
            end
        end

    end
end)
