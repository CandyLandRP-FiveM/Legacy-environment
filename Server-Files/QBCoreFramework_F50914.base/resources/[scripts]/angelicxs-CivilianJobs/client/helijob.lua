----------------------------------------------------------------------
--				Helicopter Configuration Options					--
--			 The following options can be changed to make your      --
--			  helicopter job unique and suit your server      		--
----------------------------------------------------------------------

local Heli_Options = {
    Boss = {
        Location = vector4(-1177.19, -2832.88, 13.95, 157.16),
        Model = 's_m_y_airworker',
    },
    Sprite = {
        icon = 64,
        colour = 12,
        name = 'Air Cargo',
    },
    Heli = {
        Spawn = vector4(-1178.76, -2846.53, 13.95, 151.0),
        Type = {
            'frogger',
        }
    },
    Payment = {
        flatRate = false,
        flatRateAmount = 100,
        DistanceMultiplier = 0.2, -- Only applies if flatRate = false, pays driver based on multiplying distance from pick up to drop off.
    },
}

local crateOptions = {
    CrateAllowMarker = true,
    CrateLocationMarker = 34,
    Location = {
        vector3(-1199.59, -2885.95, 13.95),
        vector3(-1123.6, -2930.38, 13.95),
        vector3(-1079.36, -3060.27, 14.81),
        vector3(-1228.67, -3073.65, 14.3),
        vector3(-1760.56, -2774.77, 13.94)
    },
    Style = {
        'prop_box_wood02a_pu',
        'prop_box_wood02a_mws',
        'prop_box_wood05a',
        'prop_box_wood05b',
        'prop_box_wood08a',
    },
    DropAllowMarker = true,
    DropLocationMarker = 43,
    DropLocation = {
        vector3(-2206.95, 264.1, 198.11),
        vector3(-1885.3, 2807.79, 32.81),
        vector3(-467.41, 5982.57, 31.34),
        vector3(2135.45, 4816.68, 41.2),
        vector3(1751.76, 3282.69, 41.08),
        vector3(2727.76, 1417.36, 24.46),
        vector3(2511.46, -427.09, 118.19),
        vector3(910.77, -1681.53, 51.13),
        vector3(965.91, 42.84, 123.13),
        vector3(-1582.72, -569.14, 116.33),
        vector3(-1011.04, -756.65, 81.75),
        vector3(-914.45, -377.5, 137.91),
        vector3(-582.69, -930.38, 36.83),
        vector3(-144.21, -593.05, 211.78),
        vector3(-745.06, -1469.2, 5.0),
        vector3(1045.71, -2879.72, 19.01),
        vector3(3065.86, -4614.55, 15.26)
    }
}

----------------------------------------------------------------------
--						 Helicopter Script       					--
--		It is NOT recommended to change any of the following        --
----------------------------------------------------------------------

local PedSpawned = false
local CargoItem = nil
local heliJob = false

if Config.HeliJobOn then
    CreateThread(function()
        JobBlip(Heli_Options.Boss.Location, Heli_Options.Sprite.icon, Heli_Options.Sprite.colour, Heli_Options.Sprite.name)
        Job3DText(Heli_Options.Boss.Location, 'angelicxs-CivilianJobs:HeliJob:AskForWork', 'angelicxs-CivilianJobs:HeliJob:HowTo')
        while true do
            local Pos = GetEntityCoords(PlayerPedId())
            local HeliBoss = vector3(Heli_Options.Boss.Location.x, Heli_Options.Boss.Location.y, Heli_Options.Boss.Location.z)
            local Dist = #(Pos - HeliBoss)
            if Dist <= 50 and not PedSpawned then
                TriggerEvent('angelicxs-CivilianJobs:MAIN:SpawnBossNPC', Heli_Options.Boss.Model, Heli_Options.Boss.Location, 'angelicxs-CivilianJobs:HeliJob:AskForWork', 'angelicxs-CivilianJobs:HeliJob:HowTo', ' HeliJob.lua')
                PedSpawned = true
            elseif PedSpawned and Dist > 50 then
                PedSpawned = false
            end
            Wait(2000)
        end
    end)

    RegisterNetEvent('angelicxs-CivilianJobs:HeliJob:HowTo', function()
        TriggerEvent('angelicxs-CivilianJobs:Notify', Config.Lang['gen_how_to'], Config.LangType['info'])
        print(Config.Lang['heli_how_to'])
    end)

    RegisterNetEvent('angelicxs-CivilianJobs:HeliJob:AskForWork', function()
        if FreeWork or PlayerJob == Config.HeliJobName then
            if not MissionVehicle then
                local ChosenHeli = Randomizer(Heli_Options.Heli.Type, 'angelicxs-CivilianJobs:HeliJob:AskForWork')
                TriggerEvent('angelicxs-CivilianJobs:MAIN:CreateVehicle', ChosenHeli, Heli_Options.Heli.Spawn, 'angelicxs-CivilianJobs:HeliJob:AskForWork')
                while not DoesEntityExist(MissionVehicle) do
                    Wait(25)
                end
                TriggerEvent('angelicxs-CivilianJobs:HeliJob:BeginWork')
            else
                TriggerEvent('angelicxs-CivilianJobs:HeliJob:BeginWork')
            end
        else
            TriggerEvent('angelicxs-CivilianJobs:Notify', Config.Lang['wrong_job'], Config.LangType['error'])
        end
    end)

    RegisterNetEvent('angelicxs-CivilianJobs:HeliJob:BeginWork', function()
        if not DoesEntityExist(CargoItem) then
            heliJob = true
            TriggerEvent('angelicxs-CivilianJobs:Notify', Config.Lang['heli_start'], Config.LangType['info'])
            CargoCrateCreator()
        else
            TriggerEvent('angelicxs-CivilianJobs:Notify', Config.Lang['heli_on_job'], Config.LangType['error'])
        end
    end)

    function CargoCrateCreator()
        local cargoType = Randomizer(crateOptions.Style, 'CargoCrateCreator()')
        local location = Randomizer(crateOptions.Location, 'CargoCrateCreator()')
        while not cargoType and not location do Wait(10) end
        local hash = HashGrabber(cargoType)
        while not hash do Wait(10) end
        CargoItem = CreateObject(hash, location.x, location.y, location.z-0.95, true, true, true)
        PlaceObjectOnGroundProperly(CargoItem)
        SetEntityInvincible(CargoItem)
        SetEntityAsMissionEntity(CargoItem, true, true)
        TriggerEvent('angelicxs-CivilianJobs:MAIN:RouteMarker', false, location, 'Cargo Location', 'CargoCrateCreator()')
        SetModelAsNoLongerNeeded(cargoType)
        while true do 
            local sleep = 1000
            local coord = GetEntityCoords(PlayerPedId())
            if #(coord-location) <40 then
                sleep = 0
                if crateOptions.CrateAllowMarker then
                    DrawMarker(crateOptions.CrateLocationMarker, location.x, location.y, (location.z+2), 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, 100, 200, 50, 255, true, true, 2, 0.0, false, false, false)
                end
                if #(coord-location) <= 5 then
                    Wait(2000)
                    AttachEntityToEntity(CargoItem, MissionVehicle, 0, 0, 0, -1.5, 0, 0, 0, 0, false, false, false, 0, false)
                    break
                end
            end
            Wait(sleep)
        end
        CargoDropLocation(location)
    end

    function CargoDropLocation(inital)
        local location = Randomizer(crateOptions.DropLocation, 'CargoDropLocation()')
        while not location do Wait(10) end
        TriggerEvent('angelicxs-CivilianJobs:MAIN:RouteMarker', false, location, 'Drop Location', 'CargoDropLocation()')
        while true do 
            local sleep = 1000
            local coord = GetEntityCoords(PlayerPedId())
            local pcoord = GetEntityCoords(CargoItem)
            if #(coord-location) <40 then
                sleep = 0
                if crateOptions.DropAllowMarker then
                    DrawMarker(crateOptions.DropLocationMarker, location.x, location.y, (location.z+2), 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, 100, 200, 50, 255, true, true, 2, 0.0, false, false, false)
                end
                if #(pcoord-location) <= 5 then
                    DetachEntity(CargoItem, false, false)
                    PlaceObjectOnGroundProperly(CargoItem)
                    SetEntityAsNoLongerNeeded(CargoItem)
                    CargoItem = nil
                    break
                end
            end
            Wait(sleep)
        end
        TriggerEvent('angelicxs-CivilianJobs:MAIN:RouteMarker', false, vector3(Heli_Options.Heli.Spawn.x, Heli_Options.Heli.Spawn.y, Heli_Options.Heli.Spawn.z), 'Heli Pad', 'CargoDropLocation()')
        if Heli_Options.Payment.flatRate then
            PaymentFlat(Heli_Options.Payment.flatRateAmount, 'Helicopter Job - CargoDropLocation()')
        else
            DistancePayment(inital, location, 'Helicopter Job - CargoDropLocation()', Heli_Options.Payment.DistanceMultiplier)
        end
        heliJob = false
        TriggerEvent('angelicxs-CivilianJobs:Notify', Config.Lang['heli_job_complete'], Config.LangType['success'])
    end

    AddEventHandler('angelicxs-CivilianJobs:Main:ResetJobs', function()
        if DoesEntityExist(CargoItem) then
            DeleteEntity(CargoItem)
        end
        CargoItem = nil
    end)
end