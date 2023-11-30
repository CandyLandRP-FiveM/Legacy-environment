xSound = exports.xsound

CodeStudio = {}


-- 'QB' = For QBCore Framework
-- 'ESX' = For ESX Framework
-- false = To Not Use Framework [Standalone]

CodeStudio.ServerType = 'QB'

CodeStudio.Main = {
    UseWithCommand = {
        Enable = true,  --Enable this if you want players to use the car radio with command
        Options = {
            Command = 'carplay',    --Command Name
            OpenWithKeybind = true, --Enable to allow players to use a keybind [*Requires Command]
            Keybind = 'o'   --Deafault Key 
        }
    },
    UseWithItem = {  --This option is only for framework specific servers
        Enable = false,  --Enable this if you want players to use the car radio with an item
        Item = 'carplay'   --Item Name
    },
    RadioInstall = {
        Enable = false,      --Enable this if you want mechanics to manually install radios on owned vehicles
        Options = {
            Item = 'carplay',   --Alternatively put false and you can also use the event directly from other scripts
            OnlyOwned = true,   --Enable to allow radios to be installed only in owned vehicles, not on NPC vehicles
            Vehicles_Table = 'player_vehicles' --Database name of the Vehicles table. Refer to sv_function.lua for more information
        }
    }
}

CodeStudio.Apps = {     --Enable/Disable Car Play Features and Apps
    Music_Playlist = true,
    AI_Assistant = true,
    Music_Overlay = true,
    Video_Player = true,
    Car_Control = true,
    Car_Info = true,
    Game = true,
    Music_Neon_RGB = true
}

CodeStudio.AutoSQL = true              --This will automatically install required sql
CodeStudio.Default_Music_Volume = 20    --Default Music Volume [0-100] 
CodeStudio.MarkedLocation_Unit = 'Km'   --Option = [Km/Mi]
CodeStudio.OnlyDriver = false           --Only Driver Can Access Car Play System 
CodeStudio.Music_Outside_Veh = true    --Enable/Disable Music To Play Outside Vehicle
CodeStudio.Disable_GTA_Radio = true     --Enable/Disable GTA Default Radio

-- Add Discord Webhook to log music playing --
CodeStudio.DiscordLog = {
    Enable = false,
    Play_Webhook = ''
}



-- Vehicle Car Play Restriction --

-- BL = Blacklist Method | WL = Whitelist Method

CodeStudio.RestrictionMethod = 'BL'

-- Add Vehicles Below based on WL/BL -- 
CodeStudio.AddVehicle = {
    `hydra`,
}

