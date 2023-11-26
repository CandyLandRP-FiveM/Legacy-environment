local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('aspect-fleecabanks:functions:door1hack', function(data, name)
    TriggerEvent('ultra-voltlab', 60, function(outcome ,reason)
        -- time: Time in seconds which player has. Min is 10, Max is 60
        -- result: Reason is the reason of result. Result is an integer code which represents result.
        -- 	   0: Hack failed by player
        -- 	   1: Hack successful
        -- 	   2: Time ran out and hack failed
        -- 	  -1: Error occured i.e. passed input or contents in config is wrong
            if outcome == 0 then
                TriggerEvent('aspect-fleecabanks:client:door1Fail', data, name)
            elseif outcome == 1 then
                TriggerEvent('aspect-fleecabanks:client:door1Success', data, name)
            elseif outcome == 2 then
                TriggerEvent('aspect-fleecabanks:client:door1Fail', data, name)
            elseif outcome == -1 then
                TriggerEvent('aspect-fleecabanks:client:door1Fail', data, name)
            end
        end)
end)

RegisterNetEvent('aspect-fleecabanks:functions:door2hack', function(data, name)
TriggerEvent('ultra-voltlab', 60, function(outcome ,reason)
    -- time: Time in seconds which player has. Min is 10, Max is 60
    -- result: Reason is the reason of result. Result is an integer code which represents result.
    -- 	   0: Hack failed by player
    -- 	   1: Hack successful
    -- 	   2: Time ran out and hack failed
    -- 	  -1: Error occured i.e. passed input or contents in config is wrong
        if outcome == 0 then
            TriggerEvent('aspect-fleecabanks:client:door2Fail', data, name)
        elseif outcome == 1 then
            TriggerEvent('aspect-fleecabanks:client:door2Success', data, name)
        elseif outcome == 2 then
            TriggerEvent('aspect-fleecabanks:client:door2Fail', data, name)
        elseif outcome == -1 then
            TriggerEvent('aspect-fleecabanks:client:door2Fail', data, name)
        end
    end)
end)

RegisterNetEvent('aspect-fleecabanks:functions:dispatch', function()
    if Config.UsePSDispatch then
        --If using ps-dispatch make sure to set it true in the settings
        exports['ps-dispatch']:FleecaBankRobbery(camId)
    else
        --Change this to whatever dispatch system you are using this is the default qbcore one
        exports['qs-dispatch']:FleecaBankRobbery()
    end
end)

--Laser Stuff
local fleeca1_1
local fleeca1_2
local fleeca1_3
local fleeca2_1
local fleeca2_2
local fleeca2_3
local fleeca3_1
local fleeca3_2
local fleeca3_3
local fleeca4_1
local fleeca4_2
local fleeca4_3
local fleeca5_1
local fleeca5_2
local fleeca5_3
local fleeca6_1
local fleeca6_2
local fleeca6_3

CreateThread(function()
    if Config.useLasers then
        --F1
        fleeca1_1 = Laser.new(
            vector3(313.102, -285.873, 56.283),
            {vector3(313.102, -285.873, 53.165)},
            {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "134"}
        )
        fleeca1_2 = Laser.new(
            vector3(313.705, -286.04, 56.283),
            {vector3(313.705, -286.04, 53.165)},
            {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "14"}
        )
        fleeca1_3 = Laser.new(
            vector3(314.265, -286.242, 56.283),
            {vector3(314.265, -286.242, 53.165)},
            {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "14"}
        )

        --F2
        fleeca2_1 = Laser.new(
            vector3(150.019, -1047.864, 31.486),
            {vector3(150.062, -1047.828, 28.368)},
            {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "134"}
        )
        fleeca2_2 = Laser.new(
            vector3(149.405, -1047.644, 31.486),
            {vector3(149.458, -1047.604, 28.368)},
            {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "14"}
        )
        fleeca2_3 = Laser.new(
            vector3(148.8, -1047.418, 31.486),
            {vector3(148.804, -1047.352, 28.368)},
            {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "14"}
        )

        --F3
        fleeca3_1 = Laser.new(
            vector3(-1208.525, -336.114, 39.899),
            {vector3(-1208.569, -336.057, 36.781)},
            {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "134"}
        )
        fleeca3_2 = Laser.new(
            vector3(-1207.884, -335.766, 39.899),
            {vector3(-1207.89, -335.721, 36.781)},
            {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "14"}
        )
        fleeca3_3 = Laser.new(
            vector3(-1207.238, -335.458, 39.899),
            {vector3(-1207.283, -335.438, 36.781)},
            {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "14"}
        )

        --F4
        fleeca4_1 = Laser.new(
            vector3(-2955.89, 484.076, 17.815),
            {vector3(-2955.929, 484.006, 14.697)},
            {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "134"}
        )
        fleeca4_2 = Laser.new(
            vector3(-2955.868, 484.649, 17.815),
            {vector3(-2955.904, 484.635, 14.697)},
            {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "14"}
        )
        fleeca4_3 = Laser.new(
            vector3(-2955.826, 485.24, 17.815),
            {vector3(-2955.874, 485.21, 14.697)},
            {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "14"}
        )

        --F5
        fleeca5_1 = Laser.new(
            vector3(-351.804, -56.623, 51.155),
            {vector3(-351.75, -56.614, 48.036)},
            {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "134"}
        )
        fleeca5_2 = Laser.new(
            vector3(-351.276, -56.806, 51.155),
            {vector3(-351.256, -56.804, 48.036)},
            {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "14"}
        )
        fleeca5_3 = Laser.new(
            vector3(-350.699, -57, 51.155),
            {vector3(-350.7, -57.007, 48.036)},
            {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "14"}
        )

        --F6
        fleeca6_1 = Laser.new(
            vector3(1173.625, 2713.435, 40.206),
            {vector3(1173.643, 2713.397, 37.088)},
            {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "134"}
        )
        fleeca6_2 = Laser.new(
            vector3(1173.02, 2713.431, 40.206),
            {vector3(1173.071, 2713.404, 37.088)},
            {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "14"}
        )
        fleeca6_3 = Laser.new(
            vector3(1172.417, 2713.439, 40.206),
            {vector3(1172.449, 2713.429, 37.088)},
            {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "14"}
        )
        

        fleeca1_1.setActive(true)
        fleeca1_2.setActive(true)
        fleeca1_3.setActive(true)

        fleeca2_1.setActive(true)
        fleeca2_2.setActive(true)
        fleeca2_3.setActive(true)
        
        fleeca3_1.setActive(true)
        fleeca3_2.setActive(true)
        fleeca3_3.setActive(true)

        fleeca4_1.setActive(true)
        fleeca4_2.setActive(true)
        fleeca4_3.setActive(true)

        fleeca5_1.setActive(true)
        fleeca5_2.setActive(true)
        fleeca5_3.setActive(true)

        fleeca6_1.setActive(true)
        fleeca6_2.setActive(true)
        fleeca6_3.setActive(true)
    end
end)

RegisterNetEvent('aspect-fleecabanks:functions:doLaserStuffActive', function(currentname)
    if currentname == 'F1' then
        fleeca1_1.setActive(false)
        fleeca1_2.setActive(false)
        fleeca1_3.setActive(false)
    elseif currentname == 'F2' then
        fleeca2_1.setActive(false)
        fleeca2_2.setActive(false)
        fleeca2_3.setActive(false)
    elseif currentname == 'F3' then
        fleeca3_1.setActive(false)
        fleeca3_2.setActive(false)
        fleeca3_3.setActive(false)
    elseif currentname == 'F4' then
        fleeca4_1.setActive(false)
        fleeca4_2.setActive(false)
        fleeca4_3.setActive(false)
    elseif currentname == 'F5' then
        fleeca5_1.setActive(false)
        fleeca5_2.setActive(false)
        fleeca5_3.setActive(false)
    elseif currentname == 'F6' then
        fleeca6_1.setActive(false)
        fleeca6_2.setActive(false)
        fleeca6_3.setActive(false)
    end
end)

RegisterNetEvent('aspect-fleecabanks:functions:doLaserStuffDeactive', function(currentname)
    if currentname == 'F1' then
    fleeca1_1.setActive(true)
    fleeca1_2.setActive(true)
    fleeca1_3.setActive(true)
    elseif currentname == 'F2' then
    fleeca2_1.setActive(true)
    fleeca2_2.setActive(true)
    fleeca2_3.setActive(true)
    elseif currentname == 'F3' then
    fleeca3_1.setActive(true)
    fleeca3_2.setActive(true)
    fleeca3_3.setActive(true)
    elseif currentname == 'F4' then
    fleeca4_1.setActive(true)
    fleeca4_2.setActive(true)
    fleeca4_3.setActive(true)
    elseif currentname == 'F5' then
    fleeca5_1.setActive(true)
    fleeca5_2.setActive(true)
    fleeca5_3.setActive(true)
    elseif currentname == 'F6' then
    fleeca6_1.setActive(true)
    fleeca6_2.setActive(true)
    fleeca6_3.setActive(true)
    end
end)