Config = {}
function L(cd) if Locales[Config.Language][cd] then return Locales[Config.Language][cd] else print('Locale is nil ('..cd..')') end end
--███████╗██████╗  █████╗ ███╗   ███╗███████╗██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗
--██╔════╝██╔══██╗██╔══██╗████╗ ████║██╔════╝██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝
--█████╗  ██████╔╝███████║██╔████╔██║█████╗  ██║ █╗ ██║██║   ██║██████╔╝█████╔╝ 
--██╔══╝  ██╔══██╗██╔══██║██║╚██╔╝██║██╔══╝  ██║███╗██║██║   ██║██╔══██╗██╔═██╗ 
--██║     ██║  ██║██║  ██║██║ ╚═╝ ██║███████╗╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗
--╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝ ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝


--WHAT DOES 'auto_detect' DO?
--The 'auto_detect' feature automatically identifies your framework and notification resource and applies the appropriate default settings.

Config.Framework = 'auto_detect' --[ 'auto_detect' / 'other' ]   If you select 'auto_detect', only ESX, QBCore, vRP and Standalone frameworks will be detected. Use 'other' for custom frameworks.
Config.Notification = 'okokNotify' --[ 'auto_detect' / 'other' ]   If you select 'auto_detect', only ESX, QBCore, cd_notifications, okokNotify, ps-ui and ox_lib notifications will be detected. Use 'other' for custom notification resources.
Config.Language = 'EN' --[ 'EN' / 'DE' / 'NL' ]   You can add your own locales to Locales.lua, but be sure to update the Config.Language to match it.

Config.FrameworkTriggers = {
    esx = { --If you have modified the default event names in the es_extended resource, change them here.
        resource_name = 'es_extended',
        main = 'esx:getSharedObject',
        load = 'esx:playerLoaded',
        job = 'esx:setJob'
    },
    qbcore = { --If you have modified the default event names in the qb-core resource, change them here.
        resource_name = 'qb-core',
        main = 'QBCore:GetObject',
        load = 'QBCore:Client:OnPlayerLoaded',
        job = 'QBCore:Client:OnJobUpdate',
        gang = 'QBCore:Client:OnGangUpdate',
        duty = 'QBCore:Client:SetDuty'
    }
}


--██╗███╗   ███╗██████╗  ██████╗ ██████╗ ████████╗ █████╗ ███╗   ██╗████████╗
--██║████╗ ████║██╔══██╗██╔═══██╗██╔══██╗╚══██╔══╝██╔══██╗████╗  ██║╚══██╔══╝
--██║██╔████╔██║██████╔╝██║   ██║██████╔╝   ██║   ███████║██╔██╗ ██║   ██║   
--██║██║╚██╔╝██║██╔═══╝ ██║   ██║██╔══██╗   ██║   ██╔══██║██║╚██╗██║   ██║   
--██║██║ ╚═╝ ██║██║     ╚██████╔╝██║  ██║   ██║   ██║  ██║██║ ╚████║   ██║   
--╚═╝╚═╝     ╚═╝╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝


Config.Debug = false --To enable debug prints.
Config.UseFrameworkDutySystem = false --Do you want to use your frameworks (esx/qbcore) built-in duty system?


--███╗   ███╗ █████╗ ██╗███╗   ██╗
--████╗ ████║██╔══██╗██║████╗  ██║
--██╔████╔██║███████║██║██╔██╗ ██║
--██║╚██╔╝██║██╔══██║██║██║╚██╗██║
--██║ ╚═╝ ██║██║  ██║██║██║ ╚████║
--╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝


Config.AdminAccess = { --A list of different methods where you can define which players have admin permissions to create/edit/delete/import doors on the in-game UI.
    Framework = { --(ESX, QBcore & vRP only!) Ignore this framework section if you don't use a framework.
        ['esx'] = {'superadmin', 'admin', },
        ['qbcore'] = {'god', 'admin', },
        ['vrp'] = {5, 6, 7, 8, 9, 10, }
    },

    Identifiers = {
        ENABLE = true, --Do you want to allow players with specific fivem identifiers to use the admin features?
        identifier_list = {'steam:11000014941d72f', 'steam:11000015c7c1a95', 'steam:11000010bda3b1a', 'steam:11000010a3c0689', 'steam:1100001041891e2', }, --You can use a players steam, license or fivem id etc.
    },

    AcePerms = { 
        ENABLE = false, --Do you want to allow players with specific ace perms to use the admin features?
        aceperms_list = {'doorlock.police', }, --Make sure you have your ace perms configured correctly in your server.cfg.
    },

    Discord = { --(REQUIRES Badger Discord API).
        ENABLE = false, --Do you want to allow players with specific discord roles in your discord to use the admin features?
        discord_list = {'xxxxx', 'xxxxx', }, --You must put the role id from your discord here (https://www.itgeared.com/how-to-get-role-id-on-discord).
    }
}


Config.DoorAccessPerms = { --When creating/editing/deleting/importing doors, you always need to define which permission groups can lock/unlock these doors. Here you can choose which perms options are available to choose from on the in-game UI.
    Identifiers = true, --Do you want to allow players to use doors based on their fivem identifiers? (license,steam,fivem etc)
    AcePerms = false, --Do you want to allow players to use doors based on their ace perms?
    Discord = false, --(REQUIRES Badger Discord API). Do you want to allow players to use doors based on their discord roles?
    Items = false --(REQUIRES ESX/QBCore). Do you want to allow players to use doors based on the items they have in their inventory?
}


Config.DoorStateDisplay = {
    DrawTextUI = true, --Do you want doors to display the lock/unlock state via the built in draw text UI?
    Emojis = true, --Do you want doors to display the lock/unlock state via emojis?
    Draw3DText = false, --Do you want doors to display the lock/unlock state via draw 3d text UI?
    Notification = true --Do you want a notification to show after a door is locked/unlocked?
}

Config.LockpickItems = {
    ENABLE = true, --(ESX & QBcore only!) Do you want to require a playern to have an item in their inventory to lockpick a door?
    usable_lockpick_item = true, --In addition to pressing E to lockpick a door, do you want to allow players to use a usable lockpick item from their inventory?
    police_alert_chance = 50, --(0 = 0% chance, 100 = 100% chance) When a player is lockpicking a door, there is a chance that the police will be alerted. This is the percentage chance of this happening.
    lockpick_items = { --Having at least 1 of these items in your inventory will allow a player to lockpick a door.
        'liquorkey',
        'jewelkey',
        'techkey',
        --'add_more_here',
    }
}


--██╗  ██╗███████╗██╗   ██╗███████╗     █████╗ ███╗   ██╗██████╗      ██████╗ ██████╗ ███╗   ███╗███╗   ███╗ █████╗ ███╗   ██╗██████╗ ███████╗
--██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔════╝    ██╔══██╗████╗  ██║██╔══██╗    ██╔════╝██╔═══██╗████╗ ████║████╗ ████║██╔══██╗████╗  ██║██╔══██╗██╔════╝
--█████╔╝ █████╗   ╚████╔╝ ███████╗    ███████║██╔██╗ ██║██║  ██║    ██║     ██║   ██║██╔████╔██║██╔████╔██║███████║██╔██╗ ██║██║  ██║███████╗
--██╔═██╗ ██╔══╝    ╚██╔╝  ╚════██║    ██╔══██║██║╚██╗██║██║  ██║    ██║     ██║   ██║██║╚██╔╝██║██║╚██╔╝██║██╔══██║██║╚██╗██║██║  ██║╚════██║
--██║  ██╗███████╗   ██║   ███████║    ██║  ██║██║ ╚████║██████╔╝    ╚██████╗╚██████╔╝██║ ╚═╝ ██║██║ ╚═╝ ██║██║  ██║██║ ╚████║██████╔╝███████║
--╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝    ╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝      ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝


Config.OpenDoorMenu = {
    ENABLE = true, --Do you want to allow player's open the door lock UI?
    command = 'doorlockui' --The chat command.
}

Config.ToggleDoorLock = {
    ENABLE = true, --Do you want to allow player's to toggle door locks?
    command = 'doorlock', --The chat command.
    key = 'e' --The keypress.
}


-- ██████╗ ████████╗██╗  ██╗███████╗██████╗ 
--██╔═══██╗╚══██╔══╝██║  ██║██╔════╝██╔══██╗
--██║   ██║   ██║   ███████║█████╗  ██████╔╝
--██║   ██║   ██║   ██╔══██║██╔══╝  ██╔══██╗
--╚██████╔╝   ██║   ██║  ██║███████╗██║  ██║
-- ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝


function Round(cd) return math.floor(cd+0.5) end
function Trim(cd) return cd:gsub('%s+', '') end


-- █████╗ ██╗   ██╗████████╗ ██████╗     ██████╗ ███████╗████████╗███████╗ ██████╗████████╗
--██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗    ██╔══██╗██╔════╝╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝
--███████║██║   ██║   ██║   ██║   ██║    ██║  ██║█████╗     ██║   █████╗  ██║        ██║   
--██╔══██║██║   ██║   ██║   ██║   ██║    ██║  ██║██╔══╝     ██║   ██╔══╝  ██║        ██║   
--██║  ██║╚██████╔╝   ██║   ╚██████╔╝    ██████╔╝███████╗   ██║   ███████╗╚██████╗   ██║   
--╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝     ╚═════╝ ╚══════╝   ╚═╝   ╚══════╝ ╚═════╝   ╚═╝   


-----DO NOT TOUCH ANYTHING BELOW THIS LINE UNLESS YOU KNOW WHAT YOU ARE DOING.-----
if Config.Framework == 'auto_detect' then
    if GetResourceState(Config.FrameworkTriggers.esx.resource_name) == 'started' then
        Config.Framework = 'esx'
    elseif GetResourceState(Config.FrameworkTriggers.qbcore.resource_name) == 'started' then
        Config.Framework = 'qbcore'
    elseif GetResourceState('vrp') == 'started' then
        Config.Framework = 'vrp'
    else
        Config.Framework = 'standalone'
    end
    if Config.Framework == 'esx' or Config.Framework == 'qbcore' then
        for c, d in pairs(Config.FrameworkTriggers[Config.Framework]) do
            Config.FrameworkTriggers[c] = d
        end
        Config.FrameworkTriggers.esx, Config.FrameworkTriggers.qbcore = nil, nil
    end
end

if Config.Notification == 'auto_detect' then
    if GetResourceState('cd_notifications') == 'started' then
        Config.Notification = 'cd_notifications'
    elseif GetResourceState('okokNotify') == 'started' then
        Config.Notification = 'okokNotify'
    elseif GetResourceState('ps-ui') == 'started' then
        Config.Notification = 'ps-ui'
    elseif GetResourceState('ox_lib') == 'started' then
        Config.Notification = 'ox_lib'
    else
        if Config.Framework == 'esx' or Config.Framework == 'qbcore' then
            Config.Notification = Config.Framework
        else
            Config.Notification = 'chat'
        end
    end
end

if GetResourceState('Badger_Discord_API') ~= 'started' then
    Config.AdminAccess.Discord.ENABLE = false
    Config.DoorAccessPerms.Discord = false
end

if Config.Framework == 'esx' or Config.Framework == 'qbcore' or Config.Framework == 'other' then
    Config.AdminAccess.Framework.ENABLE = true
    Config.DoorAccessPerms.Framework = true
else
    Config.AdminAccess.Framework.ENABLE = false
    Config.DoorAccessPerms.Framework = false
    Config.LockpickItems.ENABLE = false
    Config.DoorAccessPerms.Items = false
end
-----DO NOT TOUCH ANYTHING ABOVE THIS LINE UNLESS YOU KNOW WHAT YOU ARE DOING.-----