if Config.EnableScrapyard == nil or Config.EnableScrapyard then

    Citizen.CreateThread(function()
        ServerSearchingVehicle = {}
        GlobalState.rcore_tuning_veh_dis_searching = ServerSearchingVehicle

        VehDisassebling = {}
        GlobalState.rcore_tuning_veh_dis_disassebling = VehDisassebling

        Wait(100)
        GenerateNewWantedVehicle()
    end)

    function GenerateNewWantedVehicle()
        ServerSearchingVehicle = {
            colorToFind = math.random(1, #VehDisassemblyConfig.types[WHAT_TO_FIND_COLOR]),
            bodyTypeToFind = math.random(1, #VehDisassemblyConfig.types[WHAT_TO_FIND_BODY]),
        }
        GlobalState.rcore_tuning_veh_dis_searching = ServerSearchingVehicle
    end
end