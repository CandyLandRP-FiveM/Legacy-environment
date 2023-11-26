
if Config.EnableScrapyard == nil or Config.EnableScrapyard then
    RegisterServerEvent('rcore_vehDisassembly:removeItemFromVeh')
    AddEventHandler('rcore_vehDisassembly:removeItemFromVeh', function(vehNetId, boneName, typeRemove, whatToRemove)
        local Source = source

        if VehDisassebling and VehDisassebling.bones[boneName].gotBone then
            local vehEntity = NetworkGetEntityFromNetworkId(vehNetId)

            if #(GetEntityCoords(GetPlayerPed(Source)) - GetEntityCoords(vehEntity)) <= 5.0 then
                VehDisassebling.bones[boneName].gotBone = false
                GlobalState.rcore_tuning_veh_dis_disassebling = VehDisassebling

                TriggerClientEvent('rcore_vehDisassembly:removeFromVeh', NetworkGetEntityOwner(vehEntity), vehNetId, typeRemove, whatToRemove)
                Wait(1000)
                
                TriggerEvent(
                    'rcore_tuning:setPlayerCarrying',
                    Source,
                    UserComponentPositions[boneName].object,
                    28422,
                    UserComponentPositions[boneName].bonePos,
                    UserComponentPositions[boneName].rotation,
                    'anim@heists@box_carry@',
                    'idle',
                    49
                )
            end
        end
    end)

    RegisterServerEvent('rcore_vehDisassembly:removeItemFromUser')
    AddEventHandler('rcore_vehDisassembly:removeItemFromUser', function()
        local Source = source

        if IsCarrying(Source) then
            if #(GetEntityCoords(GetPlayerPed(Source)) - VehDisassemblyConfig.deliveryPos) <= 4.0 then
                local multipler = Config.ComponentMoneyMultiplier
                if Config.Components then 
                    multipler = Config.ComponentPerScrapMultiplier or 1
                end
                TriggerEvent('rcore_tuning:stopPlayerCarrying', Source)
                if PlayerGiveMoney(Source, math.random(1, 5) * multipler, true) then
                    Wait(100)
                    TriggerClientEvent('rcore_vehDisassembly:deliverySuccessful', Source)
                else
                    ShowNotification(Source, _U("disassembly_inventory_space"))
                end
                IsVehDone()
            end
        end
    end)

    function IsVehDone()
        local veh = NetworkGetEntityFromNetworkId(VehDisassebling.vehNetId)
        if tablelength(VehDisassebling) ~= 0 and DoesEntityExist(veh) then
            if 
                not VehDisassebling.bones['door_dside_f'].gotBone and
                not VehDisassebling.bones['door_dside_r'].gotBone and 
                not VehDisassebling.bones['door_pside_f'].gotBone and
                not VehDisassebling.bones['door_pside_r'].gotBone and
                not VehDisassebling.bones['wheel_lf'].gotBone and
                not VehDisassebling.bones['wheel_rf'].gotBone and
                not VehDisassebling.bones['wheel_lr'].gotBone and
                not VehDisassebling.bones['wheel_rr'].gotBone and
                not VehDisassebling.bones['window_lf'].gotBone and
                not VehDisassebling.bones['window_rf'].gotBone and
                not VehDisassebling.bones['window_lr'].gotBone and
                not VehDisassebling.bones['window_rr'].gotBone and
                not VehDisassebling.bones['bonnet'].gotBone and
                not VehDisassebling.bones['boot'].gotBone
            then
                VehDisassebling = {}
                GlobalState.rcore_tuning_veh_dis_disassebling = VehDisassebling
                DeleteEntity(veh)
                GenerateNewWantedVehicle()
            end
        end
    end

end