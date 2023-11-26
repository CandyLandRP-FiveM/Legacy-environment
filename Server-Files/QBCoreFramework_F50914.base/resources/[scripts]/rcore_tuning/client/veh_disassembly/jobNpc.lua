if Config.EnableScrapyard == nil or Config.EnableScrapyard then

    local npcSpawned = false
    local npc = nil

    Citizen.CreateThread(function()
        while true do
            local wait = 2000
            local dist = #(CoordsPed - VehDisassemblyConfig.NPC.gps)
            if dist < 100.0 then
                wait = 0

                if not npc and not DoesEntityExist(npc) then
                    npc = spawnPed(VehDisassemblyConfig.NPC.gps, VehDisassemblyConfig.NPC.heading)
                    TaskStartScenarioInPlace(npc, 'WORLD_HUMAN_LEANING', 0, true)
                end

                if dist <= 3.0 and DoesEntityExist(npc) then
                    if EnoughPoliceForScrapyard() then
                        if GlobalState.rcore_tuning_veh_dis_searching.colorToFind ~= nil and GlobalState.rcore_tuning_veh_dis_searching.bodyTypeToFind ~= nil then
                            local colorLabel = VehDisassemblyConfig.types[WHAT_TO_FIND_COLOR][GlobalState.rcore_tuning_veh_dis_searching.colorToFind].label
                            local bodyLabel = VehDisassemblyConfig.types[WHAT_TO_FIND_BODY][GlobalState.rcore_tuning_veh_dis_searching.bodyTypeToFind]

                            DrawSubtitleLabel(_U("bring_car", colorLabel, bodyLabel))
                        else
                            DrawSubtitleLabel(_U("disassembly_running"))
                        end
                    else
                        DrawSubtitleLabel(_U("not_enough_police"))
                    end
                end
            elseif npc ~= nil then
                DeleteEntity(npc)
                npc = nil
            end

            Wait(wait)
        end
    end)

    AddEventHandler('onResourceStop', function(resourceName)
        if (GetCurrentResourceName() ~= resourceName) then
            return
        end

        if npc ~= nil then
            DeleteEntity(npc)
        end
    end)
end