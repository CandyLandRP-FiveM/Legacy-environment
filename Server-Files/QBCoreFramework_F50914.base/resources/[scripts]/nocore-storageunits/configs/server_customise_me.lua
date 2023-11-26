function Notify(data)
    -- TriggerClientEvent('QBCore:Notify', data.source, data.message, data.type, data.time, 'Storages') -- qb notifications
    -- TriggerClientEvent('esx:showNotification', data.source, data.message, data.type, data.time) -- esx notifications

    -- ox_lib notifications
    if data.type == 'info' then data.type = 'inform' end
    TriggerClientEvent('ox_lib:notify', data.source,
    {
        type = data.type,
        description = data.message,
        position = 'top-right',
        icon = 'box',
    })
end

if Shared.Inventory == 'ox_inventory' then
    function RegisterStash(name, label, maxSlots, maxWeight, owner)
        exports.ox_inventory:RegisterStash(name, label, maxSlots, maxWeight, owner)
    end
end

function DeleteStorageInventory(storageId)
    local storageName = ('storage_%s'):format(storageId)
    if Shared.Inventory == 'ox_inventory' then
        exports.ox_inventory:ClearInventory(storageName)
    elseif Shared.Inventory == 'qs-inventory' then
        MySQL.query('DELETE FROM `' ..Shared.InventoryStashTable.. '` WHERE stash = ?', {storageName})
    else
        if Shared.Framework == 'qb' then
            MySQL.query('DELETE FROM `' ..Shared.InventoryStashTable.. '` WHERE stash = ?', {storageName})
        elseif Shared.Framework == 'esx' then
            if Shared.Inventory == 'chezza' then
                MySQL.query('DELETE FROM inventories WHERE identifier = ?', {storageName})
            end
        end
    end
end

-- You can use these functions for logging like discord or datadog

function RentLog(playerId, storageId, password, tier)

end

function ChangePasswordLog(playerId, storageId, newPassword)

end

function CancelSubLog(playerId, storageId)

end

function OfflineChargeNotify(playerIdent, storageId, chargedMoney, addedDays)
    
end

function OnlineChargeNotify(playerId, storageId, chargedMoney, addedDays)
    
end

function OfflineAddedFailedAttempt(playerIdent, storageId, triedChargedAmount)
    
end

function OnlineAddedFailedAttempt(playerId, storageId, triedChargedAmount)
    
end