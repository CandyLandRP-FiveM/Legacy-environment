

STATE.SCALE = 0.2
STATE.DISTANCE = 2

local newEfx1 = false
local newEfx2 = false
local newEfx3 = false



PullOutWaterGun = function(item)
        local data = Config.WaterGuns[item]
        local m =  Config.Menu
            CreateWaterGunProp(data.Prop)

                Citizen.CreateThread(function()
                while STATE.WATER_ITEM == item do
                    if not STATE.AIMING then
                        if (not STATE.USING) then
                           if not Config.ShowOnlyInfoMenu then
                        Draw2DMenu(Translations['MENU']['WATERGUN'], m['MAIN'])
                           end
                        end
                        Draw2DMenu(Translations['MENU']['PUMP'] ..STATE.PUMP, m['PUMP'])
                        Draw2DMenu(Translations['MENU']['TANK'] ..STATE.TANK, m['TANK'])
                        end


                        if STATE.PUMP >= 100 then
                            STATE.PUMP = 100
                        end

                        if STATE.TANK >= data.max_size then
                            STATE.TANK = data.max_size
                        end

                        for i=140, 143 do
                            DisableControlAction(0, i, true)
                        end
                        if not STATE.USING and not IsPedSwimming(PlayerPedId()) and not IsPedSwimmingUnderWater(PlayerPedId()) and IsControlPressed(0, Config.Buttons.Splash) then
                            if STATE.TANK > 0 then
                            startSplash(data)
                        else
                            Citizen.Wait(1000)
                            Config.Notify(Translations['TEXT']['empty_tank'], 'error')
                            STATE.USING = false
                            newEfx1 = false
                            newEfx2 = false
                            newEfx3 = false
                            stopAimAnim()
                        end
                    else
                        if STATE.AIMING then
                            STATE.USING = false
                            newEfx1 = false
                            newEfx2 = false
                            newEfx3 = false
                            stopAimAnim()
                        end
                    end

                    if (not STATE.USING) then
                    if IsPedArmed(PlayerPedId(), 7) or IsPedInAnyVehicle(PlayerPedId(), true) or IsPedDeadOrDying(PlayerPedId(), true)then

                        HideUsableItem()
                    end

                    if STATE.TANK < data.max_size and IsControlPressed(0, Config.Buttons.Reload) then
                        if IsEntityInWater(PlayerPedId()) and not IsPedSwimmingUnderWater(PlayerPedId()) and not IsPedSwimming(PlayerPedId()) then

                        STATE.USING = true 
                        PlayAnim(data.Anims.Reload, function()
                            local reload = math.random(data.reloding.min, data.reloding.max)

                            STATE.TANK = STATE.TANK + reload

                            Citizen.Wait(250)
                            STATE.USING = false 
                        end)
                    else
                        Citizen.Wait(300)
                        Config.Notify(Translations['TEXT']['not_in_water'], 'error')
                    end
                end

                    if STATE.PUMP < 100 and IsControlPressed(0, Config.Buttons.Pump) then
                        if not IsPedSwimmingUnderWater(PlayerPedId()) and not IsPedSwimming(PlayerPedId()) then
                        STATE.USING = true
                        PlayAnim(data.Anims.Pump, function()
                            local pump = math.random(data.pumping.min, data.pumping.max)
                            
                            STATE.PUMP = STATE.PUMP + pump
    
                            Citizen.Wait(250)
                            STATE.USING = false
                        end)
                    end
                    end

                            if IsControlJustPressed(0, Config.Buttons.Hide) then
                                HideUsableItem()
                        end
                    end
                        Citizen.Wait(0)
                    end
                end)
            end




startSplash = function(data)
        local rem_pump = math.random(data.remove_pumping.min, data.remove_pumping.max)
        local rem_water= math.random(data.remove_water.min, data.remove_water.max)
        if STATE.TANK > 0 then
        STATE.TANK = STATE.TANK - rem_water
        end
        if STATE.PUMP > 0 then
        STATE.PUMP = STATE.PUMP - rem_pump
        end
            Citizen.Wait(350)
            
            get_dis_scale()

        if not STATE.AIMING then
            STATE.AIMING = true
            startAimAnim()
        TriggerServerEvent(GetCurrentResourceName()..':server:startSplashParticles', ObjToNet(STATE.CURRENT_PROP), STATE.SCALE)
    end
end



get_dis_scale = function()

        if  STATE.PUMP < 100 then
            STATE.DISTANCE = 7
            STATE.SCALE = 0.5
        end

        if STATE.PUMP < 60  then
            STATE.DISTANCE = 5
            STATE.SCALE = 0.35
            if not newEfx1 then
                TriggerServerEvent(GetCurrentResourceName()..':server:startSplashParticles', ObjToNet(STATE.CURRENT_PROP), STATE.SCALE)
                newEfx1 = true
            end
        end
        if STATE.PUMP < 30  then
            STATE.DISTANCE = 3
            STATE.SCALE = 0.25
            if not newEfx2 then
                TriggerServerEvent(GetCurrentResourceName()..':server:startSplashParticles', ObjToNet(STATE.CURRENT_PROP), STATE.SCALE)
                newEfx2 = true
            end
        end

        if STATE.PUMP < 10  then
            STATE.DISTANCE = 2
            STATE.SCALE = 0.2
            if not newEfx3 then
                TriggerServerEvent(GetCurrentResourceName()..':server:startSplashParticles', ObjToNet(STATE.CURRENT_PROP), STATE.SCALE)
                newEfx3 = true
            end
        end
end

HideUsableItem = function()
    if (STATE.CURRENT_PROP) then
            DeleteWaterProp()
            STATE.USING = false
            STATE.AIMING = false
            STATE.WATER_ITEM = nil
            TriggerServerEvent(GetCurrentResourceName()..':server:hideUsableItem')
        end
end

