-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
local targets, found = {'qtarget', 'qb-target', 'ox_target'}, nil
for i=1, #targets do
    if GetResourceState(targets[i]) == 'started' then found = true break end
end
if not found then return end
WSB.target = {}

function WSB.target.boxZone(identifier, coords, width, length, data)
    exports.qtarget:AddBoxZone(identifier, coords, width, length, {
        name=identifier,
        heading=data.heading,
        debugPoly=data.debug,
        minZ=data.minZ,
        maxZ=data.maxZ,
        useZ = true,
    }, {
        options = data.options,
        job = (data.job or false),
        distance = data.distance,
    })
end

function WSB.target.player(data)
    exports.qtarget:Player({
        options = data.options,
        job = (data.job or false),
        distance = data.distance,
    })
end

function WSB.target.vehicle(data)
    exports.qtarget:Vehicle({
        options = data.options,
        job = (data.job or false),
        distance = data.distance
    })
end

function WSB.target.model(models, data)
    exports.qtarget:AddTargetModel(models, {
        options = data.options,
        job = (data.job or false),
        distance = data.distance,
    })
end

function WSB.target.removeZone(id)
    exports.qtarget:RemoveZone(id)
end