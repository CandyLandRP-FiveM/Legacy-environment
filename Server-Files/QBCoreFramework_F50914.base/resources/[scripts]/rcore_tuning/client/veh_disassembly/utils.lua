
if Config.EnableScrapyard == nil or Config.EnableScrapyard then
    function GetVehicleTrunkCoords(veh)
        local coords = GetEntityCoords(veh)
        local min, max = GetModelDimensions(GetEntityModel(veh))
        local heading = GetEntityHeading(veh) - 90.0

        local trunkPos = coords + vector3(
            math.cos(math.rad(heading)), 
            math.sin(math.rad(heading)), 
            0.0
        ) * math.abs(min.y)

        return trunkPos
    end

    function GetVehicleEngineCoords(veh)
        local coords = GetEntityCoords(veh)
        local min, max = GetModelDimensions(GetEntityModel(veh))
        local heading = GetEntityHeading(veh) + 90.0

        local engineRepairPos = coords + vector3(
            math.cos(math.rad(heading)), 
            math.sin(math.rad(heading)), 
            0.0
        ) * math.abs(min.y)

        return engineRepairPos
    end
end