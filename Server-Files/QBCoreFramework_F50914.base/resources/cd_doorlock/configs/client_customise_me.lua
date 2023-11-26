--███████╗██████╗  █████╗ ███╗   ███╗███████╗██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗
--██╔════╝██╔══██╗██╔══██╗████╗ ████║██╔════╝██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝
--█████╗  ██████╔╝███████║██╔████╔██║█████╗  ██║ █╗ ██║██║   ██║██████╔╝█████╔╝ 
--██╔══╝  ██╔══██╗██╔══██║██║╚██╔╝██║██╔══╝  ██║███╗██║██║   ██║██╔══██╗██╔═██╗ 
--██║     ██║  ██║██║  ██║██║ ╚═╝ ██║███████╗╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗
--╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝ ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝


ESX, QBCore = nil, nil
JobData, GangData, on_duty = {}, {}, true

CreateThread(function()
    if Config.Framework == 'esx' then
        while ESX == nil do
            pcall(function() ESX = exports[Config.FrameworkTriggers.resource_name]:getSharedObject() end)
            if ESX == nil then
                TriggerEvent(Config.FrameworkTriggers.main, function(obj) ESX = obj end)
            end
            Wait(100)
        end
        JobData = ESX.PlayerData.job or {}
        if JobData.onDuty ~= nil and Config.UseFrameworkDutySystem then on_duty = JobData.onDuty end 

        RegisterNetEvent(Config.FrameworkTriggers.load)
        AddEventHandler(Config.FrameworkTriggers.load, function(xPlayer)
            JobData = xPlayer.job or {}
            if JobData.onDuty ~= nil and Config.UseFrameworkDutySystem then on_duty = JobData.onDuty end
        end)

        RegisterNetEvent(Config.FrameworkTriggers.job)
        AddEventHandler(Config.FrameworkTriggers.job, function(job)
            JobData = job or {}
            if JobData.onDuty ~= nil and Config.UseFrameworkDutySystem then on_duty = JobData.onDuty end
        end)  

    elseif Config.Framework == 'qbcore' then
        while QBCore == nil do
            TriggerEvent(Config.FrameworkTriggers.main, function(obj) QBCore = obj end)
            if QBCore == nil then
                QBCore = exports[Config.FrameworkTriggers.resource_name]:GetCoreObject()
            end
            Wait(100)
        end
        JobData = QBCore.Functions.GetPlayerData().job or {}
        GangData = QBCore.Functions.GetPlayerData().gang or {}
        if JobData.onduty ~= nil and Config.UseFrameworkDutySystem then on_duty = JobData.onduty end

        RegisterNetEvent(Config.FrameworkTriggers.load)
        AddEventHandler(Config.FrameworkTriggers.load, function()
            JobData = QBCore.Functions.GetPlayerData().job or {}
            GangData = QBCore.Functions.GetPlayerData().gang or {}
            if JobData.onduty ~= nil and Config.UseFrameworkDutySystem then on_duty = JobData.onduty end
        end)

        RegisterNetEvent(Config.FrameworkTriggers.job)
        AddEventHandler(Config.FrameworkTriggers.job, function(JobInfo)
            JobData = JobInfo or {}
        end)

        RegisterNetEvent(Config.FrameworkTriggers.duty)
        AddEventHandler(Config.FrameworkTriggers.duty, function(boolean)
            if not Config.UseFrameworkDutySystem then return end
            on_duty = boolean
        end)

        RegisterNetEvent(Config.FrameworkTriggers.gang)
        AddEventHandler(Config.FrameworkTriggers.gang, function(GangInfo)
            GangData = GangInfo or {}
        end)

    elseif Config.Framework == 'other' then
        --add your framework code here.

    end

    while true do
        Wait(100)
        if NetworkIsSessionStarted() then
            TriggerServerEvent('cd_doorlock:PlayerLoaded')
            break
        end
    end
end)

function GetDoorPerms()
    local temp_table = {}

    if Config.DoorAccessPerms.Framework then
        if Config.Framework == 'esx' then
            while JobData.name == nil do Wait(0) end
            temp_table.job = {job_name = JobData.name, job_grade = JobData.grade}
        
        elseif Config.Framework == 'qbcore' then
            while JobData.name == nil do Wait(0) end
            while GangData.name == nil do Wait(0) end
            temp_table.job = {job_name = JobData.name, job_grade = JobData.grade.level, gang_name = GangData.name, gang_grade = GangData.grade.level}

        elseif Config.Framework == 'other' then
            temp_table.job = {job_name = 'unemployed', job_grade = 0} --return a players job name (string) and job grade (number).
        end
    end

    if Config.DoorAccessPerms.Identifiers or Config.DoorAccessPerms.Discord then
        local callback = Callback('get_door_perms_identifier_discord')
        temp_table.identifier = callback.identifiers
        temp_table.discord = callback.discord
    end
    
    return temp_table
end

function CheckDoorPerms(door_perms_data)
    if Config.DoorAccessPerms.Framework then
        if Config.Framework == 'esx' then
            for c, d in pairs(door_perms_data.job) do
                if JobData.name == d.name and JobData.grade >= d.grade and on_duty then
                    return true
                end
            end
        
        elseif Config.Framework == 'qbcore' then
            for c, d in pairs(door_perms_data.job) do
                if (JobData.name == d.name and JobData.grade.level >= d.grade and on_duty) or (GangData.name == d.name and GangData.grade.level >= d.grade) then
                    return true
                end
            end

        elseif Config.Framework == 'vrp' then
            return Callback('check_door_perms_vrp', door_perms_data.job)

        elseif Config.Framework == 'other' then
            --add your own permissions check here (boolean).
            return true
        end
    end
    if Config.DoorAccessPerms.Identifiers or Config.DoorAccessPerms.AcePerms or Config.DoorAccessPerms.Discord or Config.DoorAccessPerms.Items then
        if (door_perms_data.identifier and #door_perms_data.identifier > 0) or (door_perms_data.ace and #door_perms_data.ace > 0) or (door_perms_data.discord and #door_perms_data.discord > 0) or (door_perms_data.items and #door_perms_data.items > 0) then
            return Callback('check_door_perms_all', door_perms_data)
        end
    end

    return false
end

function CheckAdminPerms()
    return Callback('check_admin_perms')
end


--██╗  ██╗███████╗██╗   ██╗███████╗     █████╗ ███╗   ██╗██████╗      ██████╗ ██████╗ ███╗   ███╗███╗   ███╗ █████╗ ███╗   ██╗██████╗ ███████╗
--██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔════╝    ██╔══██╗████╗  ██║██╔══██╗    ██╔════╝██╔═══██╗████╗ ████║████╗ ████║██╔══██╗████╗  ██║██╔══██╗██╔════╝
--█████╔╝ █████╗   ╚████╔╝ ███████╗    ███████║██╔██╗ ██║██║  ██║    ██║     ██║   ██║██╔████╔██║██╔████╔██║███████║██╔██╗ ██║██║  ██║███████╗
--██╔═██╗ ██╔══╝    ╚██╔╝  ╚════██║    ██╔══██║██║╚██╗██║██║  ██║    ██║     ██║   ██║██║╚██╔╝██║██║╚██╔╝██║██╔══██║██║╚██╗██║██║  ██║╚════██║
--██║  ██╗███████╗   ██║   ███████║    ██║  ██║██║ ╚████║██████╔╝    ╚██████╗╚██████╔╝██║ ╚═╝ ██║██║ ╚═╝ ██║██║  ██║██║ ╚████║██████╔╝███████║
--╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝    ╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝      ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝


TriggerEvent('chat:addSuggestion', '/'..Config.OpenDoorMenu.command, L('command_opendoormenu'))
RegisterCommand(Config.OpenDoorMenu.command, function()
    TriggerEvent('cd_doorlock:OpenDoorLockMenu')
end)

RegisterKeyMapping(Config.ToggleDoorLock.command, L('command_toggledoorlock'), 'keyboard', Config.ToggleDoorLock.key)
TriggerEvent('chat:addSuggestion', '/'..Config.ToggleDoorLock.command, L('command_toggledoorlock'))
RegisterCommand(Config.ToggleDoorLock.command, function()
    TriggerEvent('cd_doorlock:ToggleDoorState')
end)


-- ██╗      ██████╗  ██████╗██╗  ██╗██████╗ ██╗ ██████╗██╗  ██╗██╗███╗   ██╗ ██████╗ 
-- ██║     ██╔═══██╗██╔════╝██║ ██╔╝██╔══██╗██║██╔════╝██║ ██╔╝██║████╗  ██║██╔════╝ 
-- ██║     ██║   ██║██║     █████╔╝ ██████╔╝██║██║     █████╔╝ ██║██╔██╗ ██║██║  ███╗
-- ██║     ██║   ██║██║     ██╔═██╗ ██╔═══╝ ██║██║     ██╔═██╗ ██║██║╚██╗██║██║   ██║
-- ███████╗╚██████╔╝╚██████╗██║  ██╗██║     ██║╚██████╗██║  ██╗██║██║ ╚████║╚██████╔╝
-- ╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝ 


function StartLockpicking()
    if math.random(1, 100) <= Config.LockpickItems.police_alert_chance then
        PoliceDispatchAlert()
    end

    if GetResourceState('cd_keymaster') == 'started' then
        local result = exports['cd_keymaster']:StartKeyMaster()
        return result
    else
        local function Circle(cb, circles, seconds)
            if circles == nil or circles < 1 then circles = 1 end
            if seconds == nil or seconds < 1 then seconds = 10 end
            p = promise.new()
            SendNUIMessage({
                action = 'circle-start',
                circles = circles,
                time = seconds,
            })
            SetNuiFocus(true, true)
            local result = Citizen.Await(p)
            cb(result)
        end
        exports("Circle", Circle)
        
        RegisterNUICallback('circle-fail', function(data, cb)
            p:resolve(false)
            p = nil
            SetNuiFocus(false, false)
            cb('ok')
        end)
        
        RegisterNUICallback('circle-success', function(data, cb)
            p:resolve(true)
            p = nil
            SetNuiFocus(false, false)
            cb('ok')
        end)

        print('^1You must configure a lockpick/minigame resource to use this feature.^0')
        return true
    end
end

function PoliceDispatchAlert()
    if GetResourceState('cd_dispatch') == 'started' then
        local data = exports['cd_dispatch']:GetPlayerInfo()
        TriggerServerEvent('cd_dispatch:AddNotification', {
            job_table = {'police', }, 
            coords = data.coords,
            title = '10-15 - Lock picking',
            message = 'A '..data.sex..' is lock picking a door at '..data.street, 
            flash = 0,
            unique_id = data.unique_id,
            sound = 1,
            blip = {
                sprite = 431, 
                scale = 1.2, 
                colour = 3,
                flashes = false, 
                text = '911 - Lock picking',
                time = 5,
                radius = 0,
            }
        })
    else
        --Add your own police dispatch alert here.
        print('^1You must configure a dispatch resource to use this feature.^0')
    end
end


--███╗   ██╗ ██████╗ ████████╗██╗███████╗██╗ ██████╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗███████╗
--████╗  ██║██╔═══██╗╚══██╔══╝██║██╔════╝██║██╔════╝██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
--██╔██╗ ██║██║   ██║   ██║   ██║█████╗  ██║██║     ███████║   ██║   ██║██║   ██║██╔██╗ ██║███████╗
--██║╚██╗██║██║   ██║   ██║   ██║██╔══╝  ██║██║     ██╔══██║   ██║   ██║██║   ██║██║╚██╗██║╚════██║
--██║ ╚████║╚██████╔╝   ██║   ██║██║     ██║╚██████╗██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║███████║
--╚═╝  ╚═══╝ ╚═════╝    ╚═╝   ╚═╝╚═╝     ╚═╝ ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝


function Notification(notif_type, message)
    if notif_type and message then
        if Config.Notification == 'esx' then
            ESX.ShowNotification(message)
        
        elseif Config.Notification == 'qbcore' then
            if notif_type == 1 then
                QBCore.Functions.Notify(message, 'success')
            elseif notif_type == 2 then
                QBCore.Functions.Notify(message, 'primary')
            elseif notif_type == 3 then
                QBCore.Functions.Notify(message, 'error')
            end
        
        elseif Config.Notification == 'cd_notifications' then
            if notif_type == 1 then
                TriggerEvent('cd_notifications:Add', {title =  L('doorlock'), message = message, type = 'success', options = {duration = 5}})
            elseif notif_type == 2 then
                TriggerEvent('cd_notifications:Add', {title =  L('doorlock'), message = message, type = 'inform', options = {duration = 5}})
            elseif notif_type == 3 then
                TriggerEvent('cd_notifications:Add', {title =  L('doorlock'), message = message, type = 'error', options = {duration = 5}})
            end

        elseif Config.Notification == 'okokNotify' then
            if notif_type == 1 then
                exports['okokNotify']:Alert(L('doorlock'), message, 5000, 'success')
            elseif notif_type == 2 then
                exports['okokNotify']:Alert(L('doorlock'), message, 5000, 'info')
            elseif notif_type == 3 then
                exports['okokNotify']:Alert(L('doorlock'), message, 5000, 'error')
            end
        
        elseif Config.Notification == 'ps-ui' then
            if notif_type == 1 then
                exports['ps-ui']:Notify(message, 'success', 5000)
            elseif notif_type == 2 then
                exports['ps-ui']:Notify(message, 'primary', 5000)
            elseif notif_type == 3 then
                exports['ps-ui']:Notify(message, 'error', 5000)
            end
        
        elseif Config.Notification == 'ox_lib' then
            if notif_type == 1 then
                lib.notify({title = L('doorlock'), description = message, type = 'success'})
            elseif notif_type == 2 then
                lib.notify({title = L('doorlock'), description = message, type = 'inform'})
            elseif notif_type == 3 then
                lib.notify({title = L('doorlock'), description = message, type = 'error'})
            end

        elseif Config.Notification == 'chat' then
            TriggerEvent('chatMessage', message)
            
        elseif Config.Notification == 'other' then
            --add your own notification.
            
        end
    end
end


--██████╗ ███████╗██████╗ ██╗   ██╗ ██████╗ 
--██╔══██╗██╔════╝██╔══██╗██║   ██║██╔════╝ 
--██║  ██║█████╗  ██████╔╝██║   ██║██║  ███╗
--██║  ██║██╔══╝  ██╔══██╗██║   ██║██║   ██║
--██████╔╝███████╗██████╔╝╚██████╔╝╚██████╔╝
--╚═════╝ ╚══════╝╚═════╝  ╚═════╝  ╚═════╝ 


if Config.Debug then
    local function Debug()
        print('^6-----------------------^0')
        print('^1CODESIGN DEBUG^0')
        print(string.format('^6Resource Name:^0 %s', GetCurrentResourceName()))
        print(string.format('^6Framework:^0 %s', Config.Framework))
        print(string.format('^6Notification:^0 %s', Config.Notification))
        print(string.format('^6Language:^0 %s', Config.Language))
        if Config.Framework == 'esx' then
            while JobData.name == nil do Wait(0) end
            print(string.format('^6Job Name:^0 %s', JobData.name))
            print(string.format('^6Job Grade:^0 %s', JobData.grade))
        elseif Config.Framework == 'qbcore' then
            while JobData.name == nil do Wait(0) end
            print(string.format('^6Job Name:^0 %s', JobData.name))
            print(string.format('^6Job Grade:^0 %s', JobData.grade.level))
            print(string.format('^6Gang Name:^0 %s', GangData.name))
            print(string.format('^6Gang Grade:^0 %s', GangData.grade.level))
        end
        print(string.format('^6Use Framework Duty System:^0 %s', Config.UseFrameworkDutySystem))
        print(string.format('^6On Duty:^0 %s', on_duty))
        print(string.format('^6Config.AdminAccess: [Framework: ^0%s^6] [Identifiers: ^0%s^6] [AcePerms: ^0%s^6] [Discord: ^0%s^6]', Config.AdminAccess.Framework.ENABLE, Config.AdminAccess.Identifiers.ENABLE, Config.AdminAccess.AcePerms.ENABLE, Config.AdminAccess.Discord.ENABLE))
        print(string.format('^6Config.DoorAccessPerms: [Framework: ^0%s^6] [Identifiers: ^0%s^6] [AcePerms: ^0%s^6] [Discord: ^0%s^6] [Items: ^0%s^6]', Config.DoorAccessPerms.Framework, Config.DoorAccessPerms.Identifiers, Config.DoorAccessPerms.AcePerms, Config.DoorAccessPerms.Discord, Config.DoorAccessPerms.Items))
        print(string.format('^6Admin Access:^0 %s', CheckAdminPerms()))
        print('^6-----------------------^0')
        TriggerServerEvent('cd_doorlock:Debug')
    end

    CreateThread(function()
        Wait(3000)
        Debug()
    end)

    RegisterCommand('debug_doorlock', function()
        Debug()
    end)
end