Blips = {}

function OpenStorage(StorageId, Tier)
    if Shared.Inventory == 'ox_inventory' then
        exports.ox_inventory:openInventory('stash', {id='storage_'..StorageId})
    else
        if Shared.Framework == 'qb' then
            TriggerServerEvent("inventory:server:OpenInventory", "stash", "storage_"..StorageId, {
                maxweight = Shared.Tiers[Tier].maxWeight,
                slots = Shared.Tiers[Tier].slots
            })
            TriggerEvent("inventory:client:SetCurrentStash", "storage_"..StorageId)
        elseif Shared.Framework == 'esx' then
            if Shared.Inventory == 'chezza' then
                TriggerEvent('inventory:openStorage', "Storage", "storage_"..StorageId, Shared.Tiers[Tier].maxWeight, 1000)
            elseif Shared.Inventory == 'qs-inventory' then
                TriggerServerEvent("inventory:server:OpenInventory", "stash", "storage_"..StorageId, {
                    maxweight = Shared.Tiers[Tier].maxWeight,
                    slots = Shared.Tiers[Tier].slots
                })
                TriggerEvent("inventory:client:SetCurrentStash", "storage_"..StorageId)
            end
        end
    end
end

function Notify(data)
    -- Framework.Functions.Notify(data.message, data.type, data.time, 'Storages') -- qb notifications
    -- Framework.ShowNotification(data.message, data.time, data.type) -- esx notifications

    lib.notify({ -- ox_lib notifications
        title = 'Storages',
        description = data.message,
        position = 'top-right',
        icon = 'box',
    })
end

function CreateBlips(storageId, type, coords)
    if type == 'yourstorage' then -- owned by the client
        Blips[storageId] = AddBlipForCoord(coords.x, coords.y, coords.z)
        SetBlipSprite (Blips[storageId], 473)
        SetBlipDisplay(Blips[storageId], 4)
        SetBlipScale  (Blips[storageId], 0.65)
        SetBlipColour (Blips[storageId], 25)
        SetBlipAsShortRange(Blips[storageId], true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Your Storage')
        EndTextCommandSetBlipName(Blips[storageId])
    elseif type == 'yourxpiredstorage' then -- owned by the client and expired
        Blips[storageId] = AddBlipForCoord(coords.x, coords.y, coords.z)
        SetBlipSprite (Blips[storageId], 473)
        SetBlipDisplay(Blips[storageId], 4)
        SetBlipScale  (Blips[storageId], 0.65)
        SetBlipColour (Blips[storageId], 1)
        SetBlipAsShortRange(Blips[storageId], true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Your Expired Storage')
        EndTextCommandSetBlipName(Blips[storageId])
    elseif type == 'ownedstorage' then -- owned storage
        Blips[storageId] = AddBlipForCoord(coords.x, coords.y, coords.z)
        SetBlipSprite (Blips[storageId], 473)
        SetBlipDisplay(Blips[storageId], 4)
        SetBlipScale  (Blips[storageId], 0.65)
        SetBlipColour (Blips[storageId], 29)
        SetBlipAsShortRange(Blips[storageId], true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Owned Storage')
        EndTextCommandSetBlipName(Blips[storageId])
    elseif type == 'expiredstorage' then -- expired storage
        Blips[storageId] = AddBlipForCoord(coords.x, coords.y, coords.z)
        SetBlipSprite (Blips[storageId], 473)
        SetBlipDisplay(Blips[storageId], 4)
        SetBlipScale  (Blips[storageId], 0.65)
        SetBlipColour (Blips[storageId], 28)
        SetBlipAsShortRange(Blips[storageId], true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Expired Storage')
        EndTextCommandSetBlipName(Blips[storageId])
    elseif type == 'freestorage' then -- not owned storage
        Blips[storageId] = AddBlipForCoord(coords.x, coords.y, coords.z)
        SetBlipSprite (Blips[storageId], 473)
        SetBlipDisplay(Blips[storageId], 4)
        SetBlipScale  (Blips[storageId], 0.65)
        SetBlipColour (Blips[storageId], 2)
        SetBlipAsShortRange(Blips[storageId], true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Storage')
        EndTextCommandSetBlipName(Blips[storageId])
    end
end