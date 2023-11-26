Config = {}

-- 88888888b                                                                    dP       
-- 88                                                                           88       
-- a88aaaa    88d888b. .d8888b. 88d8b.d8b. .d8888b. dP  dP  dP .d8888b. 88d888b. 88  .dP  
-- 88        88'  `88 88'  `88 88'`88'`88 88ooood8 88  88  88 88'  `88 88'  `88 88888"   
-- 88        88       88.  .88 88  88  88 88.  ... 88.88b.88' 88.  .88 88       88  `8b. 
-- dP        dP       `88888P8 dP  dP  dP `88888P' 8888P Y8P  `88888P' dP       dP   `YP 
                                                                                                                                                                          
Config.Framework = 'qbcore' -- qbcore/esx/exm/other

Config.MySQLScript = 'oxmysql' -- MySQL / oxmysql

Config.NotificationSystem = 'qbcore' -- qbcore / esx / custom

-- Identifier used to save/load player's presets in database
Config.PlayerIdentifier = 'license' -- license / steam / discord / ip

Config.UseDatabaseHandlingSaving = true
Config.UseDatabasePresetsSaving = true

Config.UseVstancer = true

-- Owned vehicles table in database information.
-- tableName - Name of table in which all owned vehicles are stored
-- ownerColumn - Owned vehicles owner column in DB table
-- plateColumn - Vehicle plate column in DB table
if Config.Framework == 'qbcore' then
    Config.OwnedVehiclesDataTable = {
        tableName = 'player_vehicles', ownerColumn = 'citizenid', plateColumn = 'plate' -- QBCore
    }
elseif Config.Framework == 'esx' or Config.Framework == 'exm' then
    Config.OwnedVehiclesDataTable = {
        tableName = 'owned_vehicles', ownerColumn = 'owner', plateColumn = 'plate' -- ESX
    }
else
    Config.OwnedVehiclesDataTable = {}
    Config.UseDatabaseHandlingSaving = false
    Config.UseDatabasePresetsSaving = false
end

-- .d888888                                               
-- d8'    88                                               
-- 88aaaaa88a .d8888b. .d8888b. .d8888b. .d8888b. .d8888b. 
-- 88     88  88'  `"" 88'  `"" 88ooood8 Y8ooooo. Y8ooooo. 
-- 88     88  88.  ... 88.  ... 88.  ...       88       88 
-- 88     88  `88888P' `88888P' `88888P' `88888P' `88888P'                                                     
                                                        
-- Admins and their checks
Config.Admins = {
    {type = 'identifier', data = 'steam:*'},
    {type = 'frameworkgroup', data = 'god'},
    {type = 'frameworkgroup', data = 'superadmin'},
    {type = 'frameworkgroup', data = 'admin'},
    {type = 'ace', data = 'handlingtuning'},
    {type = 'ace', data = 'acommands'},
}

-- NOT recommended for RolePlay server
-- If set to true players will be able to fully adjust their vehicle
-- and make it as crazy fast as they want.
Config.AllowEveryoneFullAccess = false

-- Limited editing allows for all players to use the tablet, but only adjust vehicles handling values for limited number
-- You can adjust how much of each field can be changed by editing configs/config.js Min / Max > changeLimit
--
-- For example if vehicle's standard mass is 2000, Min.changeLimit is 200 and Max.changeLimit is 500,
-- then player will have 1800 - 2500 to play around with, as 2000 - 200 = 1800, 2000 + 500 = 2500.
--
-- THIS WILL NOT AFFECT TABLET VALUES FOR ADMINS - TABLET DEV USAGE
Config.AllowLimitedEditing = true

-- If value in config.js is not added, this will be used instead
Config.DefaultChangeLimit = 0.1

-- Name of inventory item
-- FOR QBCORE:
-- ADD TO qb-core/shared.lua  >  QBShared.Items
-- ['tunertablet'] 			 		 = {['name'] = 'tunertablet', 				['label'] = 'Tuner Tablet', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'tablet.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Tablet used to adjust vehicle handling data'},
-- FOR ESX/EXM:
-- ADD TO database
-- INSERT INTO `items` (name, label)
-- VALUES ('tunertablet', 'Tuning Tablet');
Config.TabletItemName = 'tunertablet'

-- Command for admins full tablet access
Config.TabletCommand = 'tablet'

-- If you want any field to not be accessible by any regular player add it here
Config.BlacklistedFields = {
    'nMonetaryValue',
    'fPetrolTankVolume',
}

-- Handling groups and their parameters.
-- Params define what car modification(s) is/are needed for the value to be changable.
-- Available mods names: Engine, Suspension, Transmission, Spoiler, FrontBumper, RearBumper, Armor
Config.HandlingGroups = {
    {
        Label = 'Engine', Params = {
            Engine = 2,
            Suspension = false,
            Transmission = false,
            Spoiler = false,
            FrontBumper = false,
            RearBumper = false,
        }
    },
    {
        Label = 'Suspension', Params = {
            Engine = false,
            Suspension = 3,
            Transmission = false,
            Spoiler = false,
            FrontBumper = false,
            RearBumper = false,
            
        }
    },
    {
        Label = 'Stance', Params = {
            Engine = false,
            Suspension = 3,
            Transmission = false,
            Spoiler = false,
            FrontBumper = false,
            RearBumper = false,
            
        }
    },
    {
        Label = 'Traction', Params = {
            Engine = false,
            Suspension = 2,
            Transmission = false,
            Spoiler = false,
            FrontBumper = false,
            RearBumper = false,
            
        }
    },
    {
        Label = 'Aero', Params = {
            Engine = false,
            Suspension = false,
            Transmission = false,
            Spoiler = 1,
            FrontBumper = 1,
            RearBumper = 1,
        
        }
    },
    {
        Label = 'Damage', Params = {
            Engine = false,
            Suspension = false,
            Transmission = false,
            Spoiler = false,
            FrontBumper = false,
            RearBumper = false,
            Armor = 4,
        }
    },
    {
        Label = 'Brakes', Params = {Brakes = 4}
    },
    { -- Other is needed.
        Label = 'Other', Params = {}
    },
}

-- Scores to be displayed in diagram for the tablet
local handlingConfig = {}
Citizen.CreateThread(function()
    Citizen.Wait(100)
    if not IsDuplicityVersion() then
        handlingConfig = exports[GetCurrentResourceName()].getHandlingConfig()
        Config.ScoreValues = {
            {label = 'Aero', field = 'fDownforceModifier', max = handlingConfig.fDownforceModifier.Max.value},
            {label = 'TopSpeed', field = 'fInitialDriveMaxFlatVel', max = handlingConfig.fInitialDriveMaxFlatVel.Max.value},
            {label = 'Braking', field = 'fBrakeForce', max = handlingConfig.fBrakeForce.Max.value},
            {label = 'Acceleration', field = {'fInitialDriveForce', 'fDriveInertia'}, max = handlingConfig.fInitialDriveForce.Max.value + handlingConfig.fDriveInertia.Max.value},
        }
    end
end)

-- If you want specific field to require specific mod add it here
-- Available mods names: Engine, Suspension, Transmission, Spoiler, FrontBumper, RearBumper, Armor
Config.RequirementsForFields = {
    fSuspensionRaise = {
        Transmission = 4
    } 
}

-- Your addon vehicles models
Config.AddonVehicles = {
    'bmwe3',
    'x6m',
    'c63coupe',
    'RS72020',
    'mach1',
    'z419',
    '635',
    'rs7',
    'rs615',
    'rmodrs7',
    'e21',
    'bmwe32',
    'e34touring',
    'e34',
    'e36prb',
    'bmwe39',
    'm3kean',
    'rmodmi8lb',
    'm2',
    'm3f80',
}

Config.MaximumFetchBuffer = 3

-- 888888ba           oo .8888b   dP       8888ba.88ba                 dP          
-- 88    `8b             88   "   88       88  `8b  `8b                88          
-- 88     88 88d888b. dP 88aaa  d8888P     88   88   88 .d8888b. .d888b88 .d8888b. 
-- 88     88 88'  `88 88 88       88       88   88   88 88'  `88 88'  `88 88ooood8 
-- 88    .8P 88       88 88       88       88   88   88 88.  .88 88.  .88 88.  ... 
-- 8888888P  dP       dP dP       dP       dP   dP   dP `88888P' `88888P8 `88888P' 

Config.DriftModeEnabled = true
-- Modifications required for Drift mode to be enabled
Config.DriftGroupParams = {
    Engine = 2,
    Suspension = 3,
    Transmission = 2,
}

-- Drift mode parameters.
-- label, description - what is displayed in tablet under the Drift group configuration
-- formula - formula used to calculate changes for the field when vehicle is moving sideways
Config.DriftModeFields = {
    fInitialDriveForce = {
        label = 'Drive Force multiplier on slide',
        description = 'How much of drive force will be increased when vehicle slides',
        formula = function(defaultValue, speed, angle, multiplier) 
            local result = defaultValue + angle/15
            return result
        end},
        fSteeringLock = {
        label = 'Steering lock multiplier on slide',
        formula = function(defaultValue, speed, angle, multiplier) 
            local result = math.max(defaultValue, math.min(defaultValue  + angle, 70.0))
            return result
        end},
        fTractionCurveMin = {
        label = 'Traction decrease multiplier on slide',
        formula = function(defaultValue, speed, angle, multiplier) 
            local result = math.max(defaultValue  - angle/17, 1.0)
            return result
        end},
        fDriveBiasFront = {
        label = 'Drive bias multiplier on slide',
        formula = function(defaultValue, speed, angle, multiplier) 
            local result = math.max(defaultValue, 0.2)
            return result
        end},
}

table.has = function(t, e)
    for _,v in ipairs(t) do
        if e == v then
            return true
        end
    end
    return false
end

table.count = function(t)
    local count = 0
    for _,__ in pairs(t) do
        count = count + 1
    end
    return count
end

table.clone = function(t)
    if type(t) ~= 'table' then return t end

	local meta = getmetatable(t)
	local target = {}

	for k,v in pairs(t) do
		if type(v) == 'table' then
			target[k] = table.clone(v)
		else
			target[k] = v
		end
	end

	setmetatable(target, meta)

	return target
end