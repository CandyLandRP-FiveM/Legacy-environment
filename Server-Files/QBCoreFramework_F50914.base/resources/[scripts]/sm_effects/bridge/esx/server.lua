function init_esx_functions()
    cObject = exports["es_extended"]:getSharedObject()

    if Config.targetInventory == 'OX-Inventory' then
        cFunctions.removePlayerItem = function(source, name) -- int, string
            return exports.ox_inventory:RemoveItem(source, name, 1) -- bool
        end
    elseif Config.targetInventory == 'QS-Inventory' then
        cFunctions.removePlayerItem = function(source, name) -- int, string
            return exports['qs-inventory']:RemoveItem(source, name, 1)  -- bool
        end
    end

    cFunctions.createUseableItem = cObject.RegisterUsableItem
end