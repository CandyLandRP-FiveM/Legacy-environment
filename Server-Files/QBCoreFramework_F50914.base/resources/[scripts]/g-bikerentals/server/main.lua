local QBCore = exports['qb-core']:GetCoreObject()

local RentedBikes = {}

-- Functions --

function recordReturnedBike(plate)
    RentedBikes[plate] = nil
end

function reimbursePlayer(source, modelName)
    local player = QBCore.Functions.GetPlayer(source)
    for k, v in pairs(Config.Bikes) do
        if v.model == modelName:lower() then
            if v.return_reimbursement > 0 then
                player.Functions.AddMoney('cash', v.return_reimbursement, Lang:t('other.return_desc'))
            end
            return
        end
    end
    TriggerClientEvent('QBCore:Notify', source, Lang:t('error.not_found_model'), 'error')
end

-- Events --

RegisterNetEvent('qb-bikerental:server:swapVehicle', function(data)
    local src = source
    TriggerClientEvent('qb-bikerental:client:swapVehicle', -1, data)
    Wait(1500)
    TriggerClientEvent('qb-bikerental:client:openBikeRentalConfirmationMenu', src, data)
end)

RegisterNetEvent('qb-bikerental:server:recordRentedBike', function(plate)
    RentedBikes[plate] = true
end)

-- Callbacks --

QBCore.Functions.CreateCallback('qb-bikerental:server:CanRentBike', function(source, cb, rentalCost)
    local player = QBCore.Functions.GetPlayer(source)
    if player.Functions.GetMoney('cash') >= rentalCost then
        player.Functions.RemoveMoney('cash', rentalCost, Lang:t('other.purchase_desc'))
        cb(true)
    elseif player.Functions.GetMoney('bank') >= rentalCost then
        player.Functions.RemoveMoney('bank', rentalCost, Lang:t('other.purchase_desc'))
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-bikerental:server:CanReturnBike', function(source, cb, modelName, plate)
    if plate == nil then
        cb(false)
    end
    if RentedBikes[plate] ~= nil then
        reimbursePlayer(source, modelName)
        recordReturnedBike(plate)
        cb(true)
    else
        cb(false)
    end
end)