function init_qb_functions()
    cObject = exports['qb-core']:GetCoreObject()

    if Config.targetInventory == 'QS-Inventory' then
        cFunctions.removePlayerItem = function(source, name) -- int, string
            return exports['qs-inventory']:RemoveItem(source, name, 1)  -- bool
        end
    else
        cFunctions.removePlayerItem = function(source, name, slot) -- int, string, int
            return cObject.Functions.GetPlayer(source).Functions.RemoveItem(name, 1, slot) -- bool
        end
    end

    cFunctions.createUseableItem = cObject.Functions.CreateUseableItem
end