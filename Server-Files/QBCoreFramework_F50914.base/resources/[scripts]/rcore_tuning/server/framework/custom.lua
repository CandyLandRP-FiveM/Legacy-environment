CreateThread(function()
    if Config.Framework == 3 then
        ShowNotification = function(src, msg)
            print("notification", msg)
        end

        PlayerHasMoney = function(serverId, amount)
            return true
        end

        PlayerTakeMoney = function(serverId, amount)
            return true
        end

        PlayerGiveMoney = function(serverId, amount, ignoreSociety)
            return true
        end

        IsVehicleOwnedByServerId = function(vehNetId, serverId)
            return true
        end

        LoadVehicle = function(lp)
            return {
                id = 0,
                characterId = 0,
                vehicle = `sultan`,
                licensePlate = lp,
                properties = {},
            }
        end

    end
end)