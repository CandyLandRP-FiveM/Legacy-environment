CreateThread(function()
    if Config.Framework == 3 then

        ShowNotification = function(msg)
            print("Notification: ", msg)
        end

        PlayerHasMoney = function(price)
            return true
        end

        VehicleRepair = function(veh)
            SetVehicleEngineHealth(veh, 1000.0)
            SetVehicleBodyHealth(veh, 1000.0)
            SetVehiclePetrolTankHealth(veh, 750.0)
            SetVehicleFixed(veh)
        end
    end
end)
