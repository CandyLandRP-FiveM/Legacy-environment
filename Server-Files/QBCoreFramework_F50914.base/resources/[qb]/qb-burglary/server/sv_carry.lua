local Core = exports[Config.CoreResourceName]:GetCoreObject()

RegisterNetEvent('burglary:server:AttachToEnt', function(itemName)
    local src = source
    local player = Core.Functions.GetPlayer(src)
    if not player then return end
    TriggerClientEvent("burglary:client:AttachToEnt", src, itemName)
end)

RegisterNetEvent('burglary:server:RemoveFromEnt', function()
    local src = source
    local player = Core.Functions.GetPlayer(src)
    if not player then return end
    TriggerClientEvent("burglary:client:RemoveFromEnt", src)
end)

-- When the stereo prop item is used it will be attached to the player
Core.Functions.CreateUseableItem("stereo", function(source, item)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName(item.name) ~= nil then
        TriggerClientEvent("burglary:client:UseAndAttach", src, item.name)
    end
end)

-- When the bigtv prop item is used it will be attached to the player
Core.Functions.CreateUseableItem("bigtv", function(source, item)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName(item.name) ~= nil then
        TriggerClientEvent("burglary:client:UseAndAttach", src, item.name)
    end
end)

-- When the microwave prop item is used it will be attached to the player
Core.Functions.CreateUseableItem("microwave", function(source, item)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName(item.name) ~= nil then
        TriggerClientEvent("burglary:client:UseAndAttach", src, item.name)
    end
end)

-- When the computer prop item is used it will be attached to the player
Core.Functions.CreateUseableItem("computer", function(source, item)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName(item.name) ~= nil then
        TriggerClientEvent("burglary:client:UseAndAttach", src, item.name)
    end
end)
