Config = {
	Framework = 2, --[ 1 = ESX / 2 = QBCore / 3 = Other ] Choose your framework
	SocietySystem = 3, --[ 1 = esx_addonaccount / 2 = qb-bossmenu / 3 = qb-management ]
	
	EnableQSInventorySupport = true,
	
	FrameworkTriggers = {
		notify = '', -- [ ESX = 'esx:showNotification' / QBCore = 'QBCore:Notify' ] Set the notification event, if left blank, default will be used
		load = 'QBCore:GetObject', --[ ESX = 'esx:getSharedObject' / QBCore = 'QBCore:GetObject' ] Set the shared object event, if left blank, default will be used (deprecated for QBCore)
		resourceName = 'qb-core', -- [ ESX = 'es_extended' / QBCore = 'qb-core' ] Set the resource name, if left blank, automatic detection will be performed
	},

	--[[
		When Components=true, the script will use a `tuning_component` item (configurable) instead of money
		To get components, players need to disassemble cars at Los Santos Junkyard.
		
		This promotes secondary economy where players can pay with cash (essentially buy components off of the tuning shop)
		or bring their own components and pay the shop for only installing it

		With Components=true players can also sell components to tuning shop employees, creating a whole new emergent "job"
		(the tuning shop employees will then use the components to upgrade other player's cards and use the bought components)
	]]
	Components = true,
	ComponentItemName = 'workshop_cosmetics',

	--[[
		When NOT using components, prices are multiplied by this number. To make tuning cheaper, lower the number, to make tuning more expensive, increase it.

		To further understand pricing, open `config_prices.lua` file
	]]
	MoneyCostMultiplier = 0, -- only used if Components = false
	ComponentMoneyMultiplier = 0,
	ComponentPerScrapMultiplier = 0, -- By default, it'll give between 1-5 scrap per box.

	-- if Components = false, mechanics will use money from society
	UseSocietyMoney = false,
	SocietyPrefix = "society_mechanic", -- How societies are named in your city. For example society_mechanic.
	--[[
		If false, everyone can use tuning shops and jobs aren't used at all
	]]
	UseJobs = true,
	UpgradesPurchasable = false, -- If false, all stores upgrades are automatically unlocked.

	EnableCamberAndSpacers = true,

	EnableNitrous = false,
	EnableNitrousUI = false,
	nitrousTorqueMultiplier = 2.5, -- The higher this is, the faster the car will be with nitrous
	NitrousUseModifier = 2, -- lower number -> higher consumption; higher number -> lower consumption

	ForceVehicleRepair = true, -- If false, the vehicle will not need to be repaired to install upgrades.

	OpenTuningMenuCommand = 'catalogue',

	-- qtarget
	UseQTarget = false,

	-- BT-Target
	UseBTTarget = false,

	-- QB-Target
	UseQBTarget = true,

	-- ox_target
	UseOxTarget = false,

	OnlyOwnersCanTuneOwnedCars = false,

	AllowBulletproofTires = false,

	
	AllowChameleonPaint = true,
	ChameleonPaintCostMultiplier = 1,

	Keys = {
        CANCEL = {code = 194, label = 'INPUT_FRONTEND_RRIGHT'},

		MENU_MODIFIER = {code = 21, label = 'INPUT_SPRINT'},
		MENU_KEY = {code = 311, label = 'INPUT_REPLAY_SHOWHOTKEY'},
    },
	Text = {
        CANCEL = 'Cancel',
	},

	Locale = "en",
	BlipOptions = { --
        BlipsEnabled = false,
        BlipLabel = nil, -- If nil, it will use the location name. Scrapyard can be found in locales under ["scrapyard"]
        BlipSprite = 72, -- https://docs.fivem.net/docs/game-references/blips/
        BlipColour = 0, -- https://docs.fivem.net/docs/game-references/blips/
        BlipScale = 1.0,

		ScrapyardBlipSprite = 527,
		ScrapyardBlipScale = 1.0,
		ScrapyardBlipColour = 0,
    },
	EnableScrapyard = false,
	MinPoliceForScrapyard = 0,
}


TuningShops = {
	Flokis = {
		
		--[[
			Set this to a job name to assign this shop to a specific job
		]]
		job = 'floki',


		interiors = {
			[153601] = false,
		},
		coords = vector3(304.19, -1162.68, 29.27),
		officeCoords = vector3(271.0, -1164.91, 29.27),
		paintBoothZone = vector3(296.09, -1163.2, 29.27),
		smokePos = vector3(296.09, -1163.2, 29.27),
        smokeRotation = vector3(0.0, 0.0, 0.0),
		modifier = 0.8,
		stockpiles = {
			bonnet = vector3(296.02, -1161.22, 28.27),
			exhaust = vector3(296.02, -1161.22, 28.27),
			paintBooth = vector3(298.77, -1160.23, 28.27),
			brakes = vector3(296.02, -1161.22, 28.27),
			paint = vector3(296.06, -1160.96, 28.27),
			wheels = vector3(296.02, -1161.22, 28.27),
		},

		disabledCategories = {
			-- ["cosmetics"] = true -- All category names can be found under Config.MenuOrder
		},
		disabledUpgrades = {
			 --["modEngine"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modTurbo"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modSuspension"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modTransmission"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modBrakes"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modNitrous"] = true -- All upgrade names can be found under Config.MenuOrder under the respective category
		},
		-- motorcycleOnly = true,
		-- carOnly = true,
	},
	AutoExotic = {
		
		--[[
			Set this to a job name to assign this shop to a specific job
		]]
		job = 'autoexotics',


		interiors = {
			[153601] = false,
		},
		coords = vector3(545.46, -184.8, 54.49),
		officeCoords = vector3(543.6, -199.61, 54.49),
		paintBoothZone = vector3(548.4, -198.97, 54.49),
		smokePos = vector3(548.4, -198.97, 54.49),
        smokeRotation = vector3(0.0, 0.0, 0.0),
		modifier = 0.8,
		stockpiles = {
			bonnet = vector3(546.71, -167.3, 53.49),
			exhaust = vector3(546.71, -167.3, 53.49),
			paintBooth = vector3(551.0, -193.44, 53.49),
			brakes = vector3(546.71, -167.3, 53.49),
			paint = vector3(548.32, -198.25, 54.49),
			wheels = vector3(546.71, -167.3, 53.49),
		},

		disabledCategories = {
			-- ["cosmetics"] = true -- All category names can be found under Config.MenuOrder
		},
		disabledUpgrades = {
			 --["modEngine"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modTurbo"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modSuspension"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modTransmission"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modBrakes"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modNitrous"] = true -- All upgrade names can be found under Config.MenuOrder under the respective category
		},
		-- motorcycleOnly = true,
	    --  carOnly = true,
	},
	CyberPerformance = {
		
		--[[
			Set this to a job name to assign this shop to a specific job
		]]
		job = 'cyber',


		interiors = {
			[153601] = false,
		},
		coords = vector3(709.48, -759.18, 24.99),
		officeCoords = vector3(696.36, -743.18, 29.0),
		paintBoothZone = vector3(696.85, -743.35, 25.03),
		smokePos = vector3(696.7, -743.17, 25.01),
        smokeRotation = vector3(0.0, 0.0, 0.0),
		modifier = 0.8,
		stockpiles = {
			bonnet = vector3(695.51, -754.54, 23.99),
			exhaust = vector3(695.51, -754.54, 23.99),
			paintBooth = vector3(699.02, -747.88, 23.99),
			brakes = vector3(695.51, -754.54, 23.99),
			paint = vector3(695.51, -754.54, 23.99),
			wheels = vector3(695.51, -754.54, 23.99),
		},

		disabledCategories = {
			-- ["cosmetics"] = true -- All category names can be found under Config.MenuOrder
		},
		disabledUpgrades = {
			 --["modEngine"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modTurbo"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modSuspension"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modTransmission"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modBrakes"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modNitrous"] = true -- All upgrade names can be found under Config.MenuOrder under the respective category
		},
		-- motorcycleOnly = true,
		--carOnly = true,
	},	
	Pops = {
		
		--[[
			Set this to a job name to assign this shop to a specific job
		]]
		job = 'mechanic',


		interiors = {
			[153601] = false,
		},
		coords = vector3(1730.49, 3306.58, 41.22),
		officeCoords = vector3(1740.11, 3326.48, 41.22),
		paintBoothZone = vector3(1729.89, 3309.24, 41.22),
		smokePos = vector3(1729.89, 3309.24, 41.22),
        smokeRotation = vector3(0.0, 0.0, 0.0),
		modifier = 0.8,
		stockpiles = {
			bonnet = vector3(1741.72, 3314.7, 41.22),
			exhaust = vector3(1741.72, 3314.7, 41.22),
			paintBooth = vector3(1740.25, 3316.99, 41.22),
			brakes = vector3(1741.72, 3314.7, 41.22),
			paint = vector3(1741.72, 3314.7, 41.22),
			wheels = vector3(1741.72, 3314.7, 41.22),
		},

		disabledCategories = {
			-- ["cosmetics"] = true -- All category names can be found under Config.MenuOrder
		},
		disabledUpgrades = {
			 --["modEngine"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modTurbo"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modSuspension"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modTransmission"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modBrakes"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modNitrous"] = true -- All upgrade names can be found under Config.MenuOrder under the respective category
		},
		-- motorcycleOnly = true,
		--carOnly = true,
	},
	Flokis2 = {
		
		--[[
			Set this to a job name to assign this shop to a specific job
		]]
		job = 'floki',


		interiors = {
			[153601] = true,
		},
		coords = vector3(138.78, -3043.7, 7.04),
		officeCoords = vector3(127.84, -3050.92, 7.04),
		paintBoothZone = vector3(139.35, -3044.73, 7.04),
		smokePos = vector3(139.35, -3044.73, 7.04),
        smokeRotation = vector3(0.0, 0.0, 0.0),
		modifier = 0.8,
		stockpiles = {
			bonnet = vector3(138.81, -3050.75, 6.04),
			exhaust = vector3(138.81, -3050.75, 6.04),
			paintBooth = vector3(141.75, -3049.78, 6.04),
			brakes = vector3(138.81, -3050.75, 6.04),
			paint = vector3(138.81, -3050.75, 6.04),
			wheels = vector3(138.81, -3050.75, 6.04),
		},

		disabledCategories = {
			-- ["cosmetics"] = true -- All category names can be found under Config.MenuOrder
		},
		disabledUpgrades = {
			 --["modEngine"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modTurbo"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modSuspension"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modTransmission"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modBrakes"] = true, -- All upgrade names can be found under Config.MenuOrder under the respective category
			 --["modNitrous"] = true -- All upgrade names can be found under Config.MenuOrder under the respective category
		},
		-- motorcycleOnly = true,
		-- carOnly = true,
	},	
}

gameBuild = GetGameBuildNumber()

if IsDuplicityVersion() then
	gameBuild = 2802
end

ColorCategories = {
	{name = 'black', label = _U('black')},
	{name = 'white', label = _U('white')},
	{name = 'grey', label = _U('grey')},
	{name = 'red', label = _U('red')},
	{name = 'pink', label = _U('pink')},
	{name = 'blue', label = _U('blue')},
	{name = 'yellow', label = _U('yellow')},
	{name = 'green', label = _U('green')},
	{name = 'orange', label = _U('orange')},
	{name = 'brown', label = _U('brown')},
	{name = 'purple', label = _U('purple')},
	{name = 'chrome', label = _U('chrome')},
	{name = 'gold', label = _U('gold')},
}

if gameBuild >= 2612 and Config.AllowChameleonPaint then
	table.insert(
		ColorCategories,
		{name = 'chameleon', label = _U('chameleon')}
	)
end

InverseColorCategories = {}
InversePaintUpgradeCategories = {}

for idx, data in pairs(ColorCategories) do
	InverseColorCategories[data.name] = idx
	InversePaintUpgradeCategories['paint_' .. data.name] = idx
end

ModFixOnInstall = {
	modHood = true,
}

MinigameStageFallbackMarkerHuge = {
	range = 2.5
}

Colors = {
	black = {
	    { index = 0, label = 'Metallic Black'},
	    { index = 2, label = 'Metallic Black Steal'},
	    { index = 12, label = 'Matte Black'},
	    { index = 1, label = 'Metallic Graphite Black'},
	    { index = 3, label = 'Metallic Dark Silver'},
	    { index = 11, label = 'Metallic Anthracite Grey'},
	    { index = 15, label = 'Util Black'},
	    { index = 16, label = 'Util Black Poly'},
	    { index = 21, label = 'Worn Black'},
	    { index = 147, label = 'Black'},
	},
	white = {
	    { index = 111, label = 'Metallic White'},
	    { index = 121, label = 'Worn Off White'},
	    { index = 112, label = 'Metallic Frost White'},
	    { index = 106, label = 'Metallic Sun Bleeched Sand'},
	    { index = 107, label = 'Metallic Cream'},
	    { index = 113, label = 'Worn Honey Beige'},
	    { index = 122, label = 'Util Off White'},
	    { index = 131, label = 'Matte White'},
	    { index = 132, label = 'Worn White'},
	    { index = 134, label = 'Pure White'},
	},
	grey = {
	    { index = 156, label = 'Default Alloy'},
	    { index = 5, label = 'Metallic Blue Silver'},
	    { index = 7, label = 'Metallic Shadow Silver'},
	    { index = 4, label = 'Metallic Silver'},
	    { index = 6, label = 'Metallic Steel Gray'},
	    { index = 8, label = 'Metallic Stone Silver'},
	    { index = 9, label = 'Metallic Midnight Silver'},
	    { index = 10, label = 'Metallic Gun Metal'},
	    { index = 13, label = 'Matte Gray'},
	    { index = 14, label = 'Matte Light Grey'},
	    { index = 17, label = 'Util Dark silver'},
	    { index = 18, label = 'Util Silver'},
	    { index = 19, label = 'Util Gun Metal'},
	    { index = 20, label = 'Util Shadow Silver'},
	    { index = 22, label = 'Worn Graphite'},
	    { index = 23, label = 'Worn Silver Grey'},
	    { index = 24, label = 'Worn Silver'},
	    { index = 25, label = 'Worn Blue Silver'},
	    { index = 26, label = 'Worn Shadow Silver'},
	    { index = 66, label = 'Metallic Harbor Blue'},
	    { index = 93, label = 'Metallic Champagne'},
	    { index = 144, label = 'Hunter Green'},
	},
	red = {
	    { index = 27, label = 'Metallic Red'},
	    { index = 28, label = 'Metallic Torino Red'},
	    { index = 29, label = 'Metallic Formula Red'},
	    { index = 30, label = 'Metallic Blaze Red'},
	    { index = 31, label = 'Metallic Graceful Red'},
	    { index = 32, label = 'Metallic Garnet Red'},
	    { index = 33, label = 'Metallic Desert Red'},
	    { index = 34, label = 'Metallic Cabernet Red'},
	    { index = 35, label = 'Metallic Candy Red'},
	    { index = 39, label = 'Matte Red'},
	    { index = 40, label = 'Matte Dark Red'},
	    { index = 43, label = 'Util Red'},
	    { index = 44, label = 'Util Bright Red'},
	    { index = 46, label = 'Worn Red'},
	    { index = 143, label = 'Metallic Black Red'},
	    { index = 150, label = 'Metallic Lava Red'},
	},
	pink = {
	    { index = 135, label = 'Hot Pink'},
	    { index = 136, label = 'Salmon pink'},
	    { index = 137, label = 'Metallic Vermillion Pink'},
	},
	blue = {
	    { index = 70, label = 'Metallic Bright Blue'},
	    { index = 69, label = 'Metallic Nautical Blue'},
	    { index = 82, label = 'Matte Dark Blue'},
	    { index = 80, label = 'Util Maui Blue Poly'},
	    { index = 54, label = 'Metallic Gasoline Blue Green'},
	    { index = 60, label = 'Worn Sea Wash'},
	    { index = 61, label = 'Metallic Midnight Blue'},
	    { index = 62, label = 'Metallic Dark Blue'},
	    { index = 63, label = 'Metallic Saxony Blue'},
	    { index = 64, label = 'Metallic Blue'},
	    { index = 65, label = 'Metallic Mariner Blue'},
	    { index = 67, label = 'Metallic Diamond Blue'},
	    { index = 68, label = 'Metallic Surf Blue'},
	    { index = 73, label = 'Metallic Ultra Blue'},
	    { index = 74, label = 'Metallic Bright Blue'},
	    { index = 75, label = 'Util Dark Blue'},
	    { index = 77, label = 'Util Blue'},
	    { index = 78, label = 'Util Sea Foam Blue'},
	    { index = 79, label = 'Util Lightning blue'},
	    { index = 83, label = 'Matte Blue'},
	    { index = 84, label = 'Matte Midnight Blue'},
	    { index = 85, label = 'Worn Dark blue'},
	    { index = 86, label = 'Worn Blue'},
	    { index = 87, label = 'Worn Light blue'},
	    { index = 127, label = 'Police Car Blue'},
	    { index = 140, label = 'Blue'},
	    { index = 141, label = 'Mettalic Black Blue'},
	    { index = 146, label = 'Metaillic V Dark Blue'},
	    { index = 157, label = 'Epsilon Blue'},
	},
	yellow = {
	    { index = 42, label = 'Matte Yellow'},
	    { index = 88, label = 'Metallic Taxi Yellow'},
	    { index = 89, label = 'Metallic Race Yellow'},
	    { index = 91, label = 'Metallic Yellow Bird'},
	    { index = 126, label = 'Worn Taxi Yellow'},
	},
	green = {
	    { index = 53, label = 'Metallic Green'},
	    { index = 49, label = 'Metallic Dark Green'},
	    { index = 50, label = 'Metallic Racing Green'},
	    { index = 51, label = 'Metallic Sea Green'},
	    { index = 52, label = 'Metallic Olive Green'},
	    { index = 55, label = 'Matte Lime Green'},
	    { index = 56, label = 'Util Dark Green'},
	    { index = 57, label = 'Util Green'},
	    { index = 58, label = 'Worn Dark Green'},
	    { index = 59, label = 'Worn Green'},
	    { index = 92, label = 'Metallic Lime'},
	    { index = 125, label = 'Metallic Securicor Green'},
	    { index = 128, label = 'Matte Green'},
	    { index = 133, label = 'Worn Olive Army Green'},
	    { index = 151, label = 'Matte Forest Green'},
	    { index = 152, label = 'Matte Olive Drab'},
	    { index = 155, label = 'Matte Foilage Green'},
	},
	orange = {
	    { index = 36, label = 'Metallic Sunrise Orange'},
	    { index = 38, label = 'Metallic Orange'},
	    { index = 41, label = 'Matte Orange'},
	    { index = 123, label = 'Worn Orange'},
	    { index = 124, label = 'Worn Light Orange'},
	    { index = 130, label = 'Worn Orange'},
	    { index = 138, label = 'Orange'},
	},
	brown = {
	    { index = 109, label = 'Util Medium Brown'},
	    { index = 108, label = 'Util Brown'},
	    { index = 94, label = 'Metallic Pueblo Beige'},
	    { index = 45, label = 'Util Garnet Red'},
	    { index = 47, label = 'Worn Golden Red'},
	    { index = 48, label = 'Worn Dark Red'},
	    { index = 90, label = 'Metallic Bronze'},
	    { index = 95, label = 'Metallic Dark Ivory'},
	    { index = 96, label = 'Metallic Choco Brown'},
	    { index = 97, label = 'Metallic Golden Brown'},
	    { index = 98, label = 'Metallic Light Brown'},
	    { index = 99, label = 'Metallic Straw Beige'},
	    { index = 100, label = 'Metallic Moss Brown'},
	    { index = 101, label = 'Metallic Biston Brown'},
	    { index = 102, label = 'Metallic Beechwood'},
	    { index = 103, label = 'Metallic Dark Beechwood'},
	    { index = 104, label = 'Metallic Choco Orange'},
	    { index = 105, label = 'Metallic Beach Sand'},
	    { index = 110, label = 'Util Light Brown'},
	    { index = 114, label = 'Worn Brown'},
	    { index = 115, label = 'Worn Dark Brown'},
	    { index = 116, label = 'Worn straw beige'},
	    { index = 129, label = 'Matte Brown'},
	    { index = 153, label = 'Matte Desert Brown'},
	    { index = 154, label = 'Matte Desert Tan'},
	},
	purple = {
	    { index = 145, label = 'Metallic Purple'},
	    { index = 148, label = 'Matte Purple'},
	    { index = 71, label = 'Metallic Purple Blue'},
	    { index = 72, label = 'Metallic Spinnaker Blue'},
	    { index = 76, label = 'Util Midnight Blue'},
	    { index = 81, label = 'Util Bright Blue'},
	    { index = 142, label = 'Metallic Black Purple'},
	    { index = 149, label = 'Matte Dark Purple'},
	},
	chrome = {
	    { index = 117, label = 'Brushed Steel'},
	    { index = 118, label = 'Brushed Black steel'},
	    { index = 119, label = 'Brushed Aluminium'},
	    { index = 120, label = 'Chrome'},
	},
	gold = {
	    { index = 37, label = 'Metallic Classic Gold'},
	    { index = 158, label = 'Pure Gold'},
	    { index = 159, label = 'Brushed Gold'},
	    { index = 160, label = 'Light Gold'},
	},
}

if gameBuild >= 2612 then
	Colors.chameleon = {
		{index = 161 + (gameBuild >= 2699 and 62 or 0), label = 'Monochrome', isChameleon = true},
		{index = 162 + (gameBuild >= 2699 and 62 or 0), label = 'Night & Day', isChameleon = true},
		{index = 163 + (gameBuild >= 2699 and 62 or 0), label = 'The Verlierer', isChameleon = true},
		{index = 164 + (gameBuild >= 2699 and 62 or 0), label = 'Sprunk Extreme', isChameleon = true},
		{index = 165 + (gameBuild >= 2699 and 62 or 0), label = 'Vice City', isChameleon = true},
		{index = 166 + (gameBuild >= 2699 and 62 or 0), label = 'Synthwave Nights', isChameleon = true},
		{index = 167 + (gameBuild >= 2699 and 62 or 0), label = 'Four Seasons', isChameleon = true},
		{index = 168 + (gameBuild >= 2699 and 62 or 0), label = 'Maisonette 9 Throwback', isChameleon = true},
		{index = 169 + (gameBuild >= 2699 and 62 or 0), label = 'Bubblegum', isChameleon = true},
		{index = 170 + (gameBuild >= 2699 and 62 or 0), label = 'Full Rainbow', isChameleon = true},
		{index = 171 + (gameBuild >= 2699 and 62 or 0), label = 'Sunset', isChameleon = true},
		{index = 172 + (gameBuild >= 2699 and 62 or 0), label = 'The Seven', isChameleon = true},
		{index = 173 + (gameBuild >= 2699 and 62 or 0), label = 'Kamen Rider', isChameleon = true},
		{index = 174 + (gameBuild >= 2699 and 62 or 0), label = 'Chromatic Aberration', isChameleon = true},
		{index = 175 + (gameBuild >= 2699 and 62 or 0), label = 'It\'s Christmas!', isChameleon = true},
		{index = 176 + (gameBuild >= 2699 and 62 or 0), label = 'Temperature', isChameleon = true},
	}
end


DirectColors = {}
ChameleonPaints = {}

for _, cols in pairs(Colors) do
	for _, data in pairs(cols) do
		DirectColors[data.index] = data.label

		if data.isChameleon then
			ChameleonPaints[data.index] = true
		end
	end
end


ColorIndexToCategory = {}
for cat, cols in pairs(Colors) do
	for _, data in pairs(cols) do
		ColorIndexToCategory[data.index] = cat
	end
end


TuningNeonLayouts = {
	{
		config = {f = false, r = false, l = false, b = false},
		label = _U("neons_layout_none"),
	},
	{
		config = {f = false, r = true, l = true, b = false},
		label = _U("neons_layout_side"),
	},
	{
		config = {f = false, r = false, l = false, b = true},
		label = _U("neons_layout_rear"),
	},
	{
		config = {f = true, r = false, l = false, b = false},
		label = _U("neons_layout_front"),
	},
	{
		config = {f = true, r = false, l = false, b = true},
		label = _U("neons_layout_front_rear"),
	},
	{
		config = {f = true, r = true, l = true, b = false},
		label = _U("neons_layout_front_side"),
	},
	{
		config = {f = false, r = true, l = true, b = true},
		label = _U("neons_layout_side_rear"),
	},
	{
		config = {f = true, r = true, l = true, b = true},
		label = _U("neons_layout_all"),
	},
}

TuningNeonColors = {
    { label = 'White',		r = 255, 	g = 255, 	b = 255},
    { label = "Slate Gray",		r = 112, 	g = 128, 	b = 144},
    { label = "Blue",			r = 0, 		g = 0, 		b = 255},
    { label = "Light Blue",		r = 0, 		g = 150, 	b = 255},
    { label = "Navy Blue", 		r = 0, 		g = 0, 		b = 128},
    { label = "Sky Blue", 		r = 135, 	g = 206, 	b = 235},
    { label = "Turquoise", 		r = 0, 		g = 245, 	b = 255},
    { label = "Mint Green", 	r = 50, 	g = 255, 	b = 155},
    { label = "Lime Green", 	r = 0, 		g = 255, 	b = 0},
    { label = "Olive", 			r = 128, 	g = 128, 	b = 0},
    { label = 'Yellow', 		r = 255, 	g = 255, 	b = 0},
    { label = 'Gold', 			r = 255, 	g = 215, 	b = 0},
    { label = 'Orange', 		r = 255, 	g = 165, 	b = 0},
    { label = 'Wheat', 			r = 245, 	g = 222, 	b = 179},
    { label = 'Red', 			r = 255, 	g = 0, 		b = 0},
    { label = 'Pink', 			r = 255, 	g = 161, 	b = 211},
    { label = 'Brightpink',		r = 255, 	g = 1, 		b = 255},
    { label = 'Purple', 		r = 153, 	g = 0, 		b = 153},
    { label = "Ivory", 			r = 41, 	g = 36, 	b = 33}
}

function GetWindowName(index)
	if (index == 1) then
		return "100%"
	elseif (index == 2) then
		return "80%"
	elseif (index == 3) then
		return "60%"
	elseif (index == 4) then
		return "0%"
	elseif (index == 5) then
		return "50% ".._U("green_shade")
	else
		return _U("unknown")
	end
end

function GetHornName(index)
	if (index == -1) then
		return 'Stock Horn'
	elseif (index == 0) then
		return "Truck Horn"
	elseif (index == 1) then
		return "Cop Horn"
	elseif (index == 2) then
		return "Clown Horn"
	elseif (index == 3) then
		return "Musical Horn 1"
	elseif (index == 4) then
		return "Musical Horn 2"
	elseif (index == 5) then
		return "Musical Horn 3"
	elseif (index == 6) then
		return "Musical Horn 4"
	elseif (index == 7) then
		return "Musical Horn 5"
	elseif (index == 8) then
		return "Sad Trombone"
	elseif (index == 9) then
		return "Classical Horn 1"
	elseif (index == 10) then
		return "Classical Horn 2"
	elseif (index == 11) then
		return "Classical Horn 3"
	elseif (index == 12) then
		return "Classical Horn 4"
	elseif (index == 13) then
		return "Classical Horn 5"
	elseif (index == 14) then
		return "Classical Horn 6"
	elseif (index == 15) then
		return "Classical Horn 7"
	elseif (index == 16) then
		return "Scale - Do"
	elseif (index == 17) then
		return "Scale - Re"
	elseif (index == 18) then
		return "Scale - Mi"
	elseif (index == 19) then
		return "Scale - Fa"
	elseif (index == 20) then
		return "Scale - Sol"
	elseif (index == 21) then
		return "Scale - La"
	elseif (index == 22) then
		return "Scale - Ti"
	elseif (index == 23) then
		return "Scale - Do 2"
	elseif (index == 24) then
		return "Jazz Horn 1"
	elseif (index == 25) then
		return "Jazz Horn 2"
	elseif (index == 26) then
		return "Jazz Horn 3"
	elseif (index == 27) then
		return "Jazz Horn Loop"
	elseif (index == 28) then
		return "Star Spangled Banner 1"
	elseif (index == 29) then
		return "Star Spangled Banner 2"
	elseif (index == 30) then
		return "Star Spangled Banner 3"
	elseif (index == 31) then
		return "Star Spangled Banner 4"
	elseif (index == 32) then
		return "Classical Horn 8 Loop"
	elseif (index == 33) then
		return "Classical Horn 9 Loop"
	elseif (index == 34) then
		return "Classical Horn 10 Loop"
	elseif (index == 35) then
		return "Classical Horn 8"
	elseif (index == 36) then
		return "Classical Horn 9"
	elseif (index == 37) then
		return "Classical Horn 10"
	elseif (index == 38) then
		return "Funeral Loop"
	elseif (index == 39) then
		return "Funeral"
	elseif (index == 40) then
		return "Spooky Loop"
	elseif (index == 41) then
		return "Spooky"
	elseif (index == 42) then
		return "San Andreas Loop"
	elseif (index == 43) then
		return "San Andreas"
	elseif (index == 44) then
		return "Liberty City Loop"
	elseif (index == 45) then
		return "Liberty City"
	elseif (index == 46) then
		return "Festive 1 Loop"
	elseif (index == 47) then
		return "Festive 1"
	elseif (index == 48) then
		return "Festive 2 Loop"
	elseif (index == 49) then
		return "Festive 2"
	elseif (index == 50) then
		return "Festive 3 Loop"
	elseif (index == 51) then
		return "Festive 3"
	elseif (index == 52) then
		return "Air Horn 1"
	elseif (index == 53) then
		return "Air Horn 2"
	elseif (index == 54) then
		return "Air Horn 3"
	elseif (index == 55) then
		return "Air Horn 4"
	elseif (index == 56) then
		return "Air Horn 5"
	elseif (index == 57) then
		return "Air Horn 6"
	elseif (index == 58) then
		return "Air Horn 7"
	else
		return "Unknown Horn"
	end
end

function GetPlatesName(index)
	if (index == 0) then
		return _U("lp_blue_on_white")
	elseif (index == 1) then
		return _U("lp_yellow_on_black")
	elseif (index == 2) then
		return _U("lp_yellow_on_blue")
	elseif (index == 3) then
		return _U("lp_blue_on_white2")
	elseif (index == 4) then
		return _U("lp_blue_on_white3")
	end
end

function GetCustomOverrideMod(entity, modType, modIndex)
	if not Config.OverrideModName[entity] then
		return 'Unknown', false
	end

	if not Config.OverrideModName[entity][modType] then
		return 'Unknown', false
	end

	if not Config.OverrideModName[entity][modType][modIndex] then
		return 'Unknown', false
	end

	return Config.OverrideModName[entity][modType][modIndex], true
end

function GetInteriorTuningSteps(label, time)
	return {
		{
			inVehicle = true,
			time = time,
			anim = {'missmechanic', 'work2_base', 1 + 16},
			onFinish = 'install',
		},
	}
end

function GetWheelTypeTuningSteps()
	return {
		{
			stockpilePos = 'wheels',
			object = 'prop_wheel_06',
			objectPos = vector3(0.0,0.0,-0.191),
			objectRot = vector3(0.0,0.0,0.0),
			stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
			onFinish = 'give_object',
			objectBone = 28422,
		},

		{
			bonePos = {'wheel_lf'},
			time = math.random(1000, 3500),
			anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
			onStart = 'remove_object',
			scale = 1.7,
			zScale = 2.0,
		},

		{
			stockpilePos = 'wheels',
			object = 'prop_wheel_06',
			objectPos = vector3(0.0,0.0,-0.191),
			objectRot = vector3(0.0,0.0,0.0),
			stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
			onFinish = 'give_object',
			objectBone = 28422,
		},

		{
			bonePos = {'wheel_rf'},
			time = math.random(1000, 3500),
			anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
			onStart = 'remove_object',
			scale = 1.7,
			zScale = 2.0,
		},

		{
			stockpilePos = 'wheels',
			object = 'prop_wheel_06',
			objectPos = vector3(0.0,0.0,-0.191),
			objectRot = vector3(0.0,0.0,0.0),
			stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
			onFinish = 'give_object',
			objectBone = 28422,
		},

		{
			bonePos = {'wheel_lr'},
			time = math.random(1000, 3500),
			anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
			onStart = 'remove_object',
			scale = 1.7,
			zScale = 2.0,
		},

		{
			stockpilePos = 'wheels',
			object = 'prop_wheel_06',
			objectPos = vector3(0.0,0.0,-0.191),
			objectRot = vector3(0.0,0.0,0.0),
			stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
			onFinish = 'give_object',
			objectBone = 28422,
		},

		{
			bonePos = {'wheel_rr'},
			time = math.random(1000, 3500),
			anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
			onStart = 'remove_object',
			scale = 1.7,
			zScale = 2.0,
			onFinish = 'install',
		},
	}
end

function GetBikeWheelTypeTuningSteps()
	return {
		{
			stockpilePos = 'wheels',
			label = _U("wheel_bike_steps_bring"),
			helpLabel = _U("steps_action"),
			object = 'prop_wheel_06',
			objectPos = vector3(0.0,0.0,-0.191),
			objectRot = vector3(0.0,0.0,0.0),
			stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
			onFinish = 'give_object',
			objectBone = 28422,
		},
		{
			bonePos = {'wheel_lf'},
			label = _U("wheel_bike_steps_f"),
			helpLabel = _U("steps_action"),
			time = math.random(1000, 3500),
			anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
			onStart = 'remove_object',
			scale = 1.7,
			zScale = 2.0,
		},

		{
			stockpilePos = 'wheels',
			label = _U("wheel_bike_steps_bring_another"),
			helpLabel = _U("steps_action"),
			object = 'prop_wheel_06',
			objectPos = vector3(0.0,0.0,-0.191),
			objectRot = vector3(0.0,0.0,0.0),
			stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
			onFinish = 'give_object',
			objectBone = 28422,
		},
		{
			bonePos = {'wheel_lr'},
			label = _U("wheel_bike_steps_r"),
			helpLabel = _U("steps_action"),
			time = math.random(1000, 3500),
			anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
			onStart = 'remove_object',
			scale = 1.7,
			zScale = 2.0,
			onFinish = 'install',
		},
	}
end

XenonColors = {
	{label = _U('xenon_default'), index = -1},
    {label = _U('xenon_white'), index = 0},
    {label = _U('xenon_blue'), index = 1},
    {label = _U('xenon_electric_blue'), index = 2},
    {label = _U('xenon_mint_green'), index = 3},
    {label = _U('xenon_lime_green'), index = 4},
    {label = _U('xenon_yellow'), index = 5},
    {label = _U('xenon_golden_shower'), index = 6},
    {label = _U('xenon_orange'), index = 7},
    {label = _U('xenon_red'), index = 8},
    {label = _U('xenon_pony_pink'), index = 9},
    {label = _U('xenon_hot_pink'), index = 10},
    {label = _U('xenon_purple'), index = 11},
    {label = _U('xenon_blacklight'), index = 12}
}

XenonColorsInverse = {}

for _, data in pairs(XenonColors) do
	XenonColorsInverse[data.index] = data
end

Config.OverrideModName = {
	[970598228] = {
		[3] = {
			[0] = 'Custom Skirts'
		}
	}
}


WorkerMenuOrder = {
	'modFrontWheelsType0',
	'modFrontWheelsType1',
	'modFrontWheelsType2',
	'modFrontWheelsType3',
	'modFrontWheelsType4',
	'modFrontWheelsType5',
	'modFrontWheelsType6',
	'modFrontWheelsType7',
	'modFrontWheelsType8',
	'modFrontWheelsType9',
	'modFrontWheelsType11',
	'modFrontWheelsType12',
	'primaryRespray',
	'secondaryRespray',
	'pearlescentRespray',
	'interiorRespray',
	'dashboardRespray',
	'modEngine',
	'modEngineBlock',
	'modAirFilter',
	'modBrakes',
	'modTransmission',
	'modSuspension',
	'modTurbo',
	'modFender',
	'modRightFender',
	'modSpoilers',
	'modSideSkirt',
	'modFrame',
	'modHood',
	'modGrille',
	'modRearBumper',
	'modFrontBumper',
	'modExhaust',
	'modRoof',
	'windowTint',
	'neons',
	'modXenon',
	'modXenonColor',
	'plateIndex',
	'modPlateHolder',
	'modVanityPlate',
	'modAPlate',
	'modSpeakers',
	'modTrunk',
	'modStruts',
	'modArchCover',
	'modAerials',
	'modTrimB',
	'modTank',
	'modLivery',
	'modRoofLivery',
	'neonLayout',
	'neonColor',
	'modFrontWheelsTypes',
	'modFrontWheelsColor',
	'modCustomWheels',
	'modTireEnhancements',
	'tyreSmokeColor',
	'modCamber',
	'modSpacer',
	'modNitrous',
	'modHorns',
	'modHydrolic',
	'modTrimA',
	'modOrnaments',
	'modDashboard',
	'modDial',
	'modDoorSpeaker',
	'modSeats',
	'modSteeringWheel',
	'modShifterLeavers',
}

Config.MenuOrder = {
	main = {
		'resprays',
		'upgrades',
		'cosmetics',
		'interior',
		'neons',
		'wheels',
	},
	upgrades = {
		'modEngine',
		'modEngineBlock',
		'modAirFilter',
		'modBrakes',
		'modTransmission',
		'modSuspension',
		'modTurbo',
	},
	cosmetics = {
		'modHydrolic',
		'modFender',
		'modRightFender',
		'modSpoilers',
		'modSideSkirt',
		'modFrame',
		'modHood',
		'modGrille',
		'modRearBumper',
		'modFrontBumper',
		'modExhaust',
		'modRoof',
		'windowTint',
		'modXenon',
		'plateIndex',
		'modPlateHolder',
		'modVanityPlate',
		'modAPlate',
		'modSpeakers',
		'modTrunk',
		'modStruts',
		'modArchCover',
		'modAerials',
		'modTrimB',
		'modTank',
		'modLivery',
		'modRoofLivery',
		'modHorns',
	},
	neons = {
		'neonLayout',
		'neonColor',
	},
	wheels = {
		'modFrontWheelsTypes',
		'modFrontWheelsColor',
		'modCustomWheels',
		'modTireEnhancements',
		'tyreSmokeColor',
	},
	modFrontWheelsTypes = {
		'modFrontWheelsType0',
		'modFrontWheelsType1',
		'modFrontWheelsType2',
		'modFrontWheelsType3',
		'modFrontWheelsType4',
		'modFrontWheelsType5',
		'modFrontWheelsType6',
		'modFrontWheelsType7',
	},
	resprays = {
		'primaryRespray',
		'secondaryRespray',
		'pearlescentRespray',
		'interiorRespray',
		'dashboardRespray',
	},
	interior = {
		'modTrimA',
		'modOrnaments',
		'modDashboard',
		'modDial',
		'modDoorSpeaker',
		'modSeats',
		'modSteeringWheel',
		'modShifterLeavers',
	},
}

if Config.EnableCamberAndSpacers then
	table.insert(Config.MenuOrder.wheels, 'modCamber')
	table.insert(Config.MenuOrder.wheels, 'modSpacer')
end

if Config.EnableNitrous then
	table.insert(Config.MenuOrder.upgrades, 'modNitrous')
end

table.insert(Config.MenuOrder.modFrontWheelsTypes, 'modFrontWheelsType8') -- bennys original
table.insert(Config.MenuOrder.modFrontWheelsTypes, 'modFrontWheelsType9') -- bennys bespoke

if gameBuild >= 2060 then
	table.insert(Config.MenuOrder.modFrontWheelsTypes, 'modFrontWheelsType11') -- street
end

if gameBuild >= 2372 then
	table.insert(Config.MenuOrder.modFrontWheelsTypes, 'modFrontWheelsType12') -- track
end

PaintSteps = {
	{
		carInPaintBooth = true,
		stockpilePos = 'paintBooth',
		label = _U('steps_paint_install'),
		helpLabel = _U('steps_paint_install'),
		onFinish = 'install',
	},
}

NotImplementedSteps = {
	{
		bonePos = {'center'},
		time = math.random(10 * 1000, 15 * 1000),
		anim = {'mini@repair', 'fixing_a_player', 0},
		onFinish = 'install',
		scale = 2.0,
		zScale = 2.0,
	},
}

Config.Menus = {
	main = {
		label		= _U("menu_main"),
		parent		= nil,
		resprays	= 'respray',
		upgrades	= 'Výkon',
		interior	= 'Interiér',
		cosmetics	= 'cosmetics',
	},
	upgrades = {
		label			= _U("menu_upgrades"),
		parent			= 'main',
		modEngine		= 'engine',
		modEngineBlock	= 'engine_block',
		modAirFilter	= 'air_filter',
		modBrakes		= 'brakes',
		modTransmission	= 'transmission',
		modSuspension	= 'suspension',
		modTurbo		= 'turbo',
		modNitrous      = 'modNitrous',
	},
	modEngine = {
		itemIndex = 'modEngine',
		label = _U("menu_upgrades_engine"),
		parent = 'upgrades',
		
		previewOpenHood = true,

		modType = 11,
		isNumbered = 1,
		isContinuous = true,
		upgrades = {
			[-1] = _U("menu_upgrades_engine0"),
			[0] = _U("menu_upgrades_engine1"),
			_U("menu_upgrades_engine2"),
			_U("menu_upgrades_engine3"),
			_U("menu_upgrades_engine4"),
		},
		modifier = {[0] = 1.0, 1.5, 4.0, 8.0},
		bones = {'engine', 'bonnet', 'neon_f'},
		steps = {
			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("steps_engine_open"),
				helpLabel = _U("steps_engine_open_action"),
				onFinish = 'open_hood',
				time = 500,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.5,
				zScale = 2.0,
			},

			{
				stockpilePos = 'bonnet',
				label = _U("steps_engine_bring"),
				helpLabel = _U("steps_engine_bring_action"),
				object = 'imp_prop_impexp_engine_part_01a',
				objectPos = vector3(0.0,0.0,-0.191),
				objectRot = vector3(0.0,0.0,0.0),
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
				objectBone = 28422,
			},

			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("steps_engine_install"),
				helpLabel = _U("steps_engine_install_action"),
				time = math.random(10 * 1000, 15 * 1000),
				anim = {'mini@repair', 'fixing_a_player', 0},
				onStart = 'remove_object',
				onFinish = 'install',
				scale = 1.7,
				zScale = 2.0,
			},

			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("steps_engine_close"),
				helpLabel = _U("steps_engine_close_action"),
				onFinish = 'close_hood',
				time = 500,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.7,
				zScale = 2.0,
			},
		}
	},
	modBrakes = {
		itemIndex = 'modBrakes',
		label = _U("menu_upgrades_brakes"),
		parent = 'upgrades',
		modType = 12,
		isNumbered = 1,
		isContinuous = true,
		upgrades = {
			[-1] = _U("menu_upgrades_brakes_stock"),
			[0] = _U("menu_upgrades_brakes_street"),
			_U("menu_upgrades_brakes_sport"),
			_U("menu_upgrades_brakes_race"),
		},
		steps = {
			{
				bonePos = {'center'},
				label = _U("steps_brakes_install"),
				helpLabel = _U("steps_brakes_install_action"),
				time = math.random(10 * 1000, 15 * 1000),
				anim = {'mini@repair', 'fixing_a_player' , 1+16},
				onFinish = 'install',
			},

		},
		modifier = {[0] = 1.0, 2.0, 6.0},
		bones = {'wheel_lf', 'wheel_rf', 'wheel_lr', 'wheel_rr', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3'}
	},
	modTransmission = {
		itemIndex = 'modTransmission',
		label = _U("menu_upgrades_transmission"),
		parent = 'upgrades',
		modType = 13,
		isNumbered = 1,
		isContinuous = true,
		upgrades = {
			[-1] = _U("menu_upgrades_transmission_stock"),
			[0] = _U("menu_upgrades_transmission_street"),
			_U("menu_upgrades_transmission_sport"),
			_U("menu_upgrades_transmission_race"),
		},
		steps = {
			{
				bonePos = {'center'},
				label = _U("steps_transmission_install"),
				helpLabel = _U("steps_transmission_install_action"),
				time = math.random(10 * 1000, 15 * 1000),
				anim = {'mini@repair', 'fixing_a_player' , 1+16},
				onFinish = 'install',
			},
		},
		modifier = {[0] = 1.0, 2.0, 6.0},
		bones = {'engine', 'bonnet'},
	},
	modSuspension = {
		itemIndex = 'modSuspension',
		label = _U("menu_upgrades_suspension"),
		parent = 'upgrades',
		modType = 15,
		isNumbered = 1,
		isContinuous = true,
		upgrades = {
			[-1] = _U("menu_upgrades_suspension_stock"),
			[0] = _U("menu_upgrades_suspension_lowered"),
			_U("menu_upgrades_suspension_street"),
			_U("menu_upgrades_suspension_sports"),
			_U("menu_upgrades_suspension_competition"),
			_U("menu_upgrades_suspension_race"),
		},
		steps = {
			{
				bonePos = {'center'},
				label = _U("steps_suspension_install"),
				helpLabel = _U("steps_suspension_install_action"),
				time = math.random(10 * 1000, 15 * 1000),
				anim = {'mini@repair', 'fixing_a_player' , 1+16},
				onFinish = 'install',
			},
		},
		modifier = {[0] = 1.0, 1.5, 4.0, 8.0, 10.0},
		bones = {'suspension_lf', 'suspension_rf', 'suspension_lr', 'suspension_rr'},
	},
	modTurbo = {
		itemIndex = 'modTurbo',
		label = _U("menu_upgrades_turbo"),
		parent = 'upgrades',
		previewOpenHood = true,
		modType = 18,
		price = {55.81},
		steps = {
			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("steps_engine_open"),
				helpLabel = _U("steps_engine_open_action"),
				onFinish = 'open_hood',
				time = 500,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.5,
				zScale = 2.0,
			},
			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("steps_turbo_check_space"),
				helpLabel = _U("steps_turbo_check_space_action"),
				time = 3000,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.5,
				zScale = 2.0,
			},
			{
				stockpilePos = 'exhaust',
				label = _U("steps_turbo_bring"),
				helpLabel = _U("steps_turbo_bring_action"),
				object = 'imp_prop_impexp_exhaust_01',
				objectPos = vector3(0.0,0.0,-0.191),
				objectRot = vector3(0.0,0.0,0.0),
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
				objectBone = 28422,
				scale = 1.5,
				zScale = 2.0,
			},

			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("steps_turbo_install"),
				helpLabel = _U("steps_turbo_install_action"),
				time = math.random(10 * 1000, 15 * 1000),
				anim = {'mini@repair', 'fixing_a_player', 0},
				onStart = 'remove_object',
				onFinish = 'install',
				scale = 1.5,
				zScale = 2.0,
			},

			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("steps_turbo_check_install"),
				helpLabel = _U("steps_turbo_check_install_action"),
				time = 5000,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.5,
				zScale = 2.0,
			},
			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("steps_turbo_close"),
				helpLabel = _U("steps_turbo_close_action"),
				onFinish = 'close_hood',
				time = 500,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.7,
				zScale = 2.0,
			},
		},
		bones = {'engine', 'bonnet', 'neon_f'},
	},
	modNitrous = {
		itemIndex = 'modNitrous',
		label = _U("menu_upgrades_nitrous"),
		parent = 'upgrades',
		previewOpenHood = true,
		modType = 'modNitrous',
		steps = {
			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("steps_engine_open"),
				helpLabel = _U("steps_engine_open_action"),
				onFinish = 'open_hood',
				time = 500,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.5,
				zScale = 2.0,
			},
			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("steps_nitrous_check_space"),
				helpLabel = _U("steps_nitrous_check_space_action"),
				time = 3000,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.5,
				zScale = 2.0,
			},
			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("steps_nitrous_install"),
				helpLabel = _U("steps_nitrous_install_action"),
				time = math.random(10 * 1000, 15 * 1000),
				anim = {'mini@repair', 'fixing_a_player', 0},
				onFinish = 'install',
				scale = 1.5,
				zScale = 2.0,
			},

			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("steps_nitrous_check_install"),
				helpLabel = _U("steps_nitrous_check_install_action"),
				time = 5000,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.5,
				zScale = 2.0,
			},
			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("steps_turbo_close"),
				helpLabel = _U("steps_turbo_close_action"),
				onFinish = 'close_hood',
				time = 500,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.7,
				zScale = 2.0,
			},
		},
		bones = {'engine', 'bonnet', 'neon_f'},
	},
	modNitrousRefill = {
		itemIndex = 'modNitrousRefill',
		label = _U("menu_upgrades_nitrous_refill"),
		parent = 'upgrades',
		previewOpenHood = true,
		modType = 'modNitrousRefill',
		steps = {
			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("steps_engine_open"),
				helpLabel = _U("steps_engine_open_action"),
				onFinish = 'open_hood',
				time = 500,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.5,
				zScale = 2.0,
			},
			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("steps_nitrous_refill"),
				helpLabel = _U("steps_nitrous_install_action"),
				time = math.random(10 * 1000, 15 * 1000),
				anim = {'mini@repair', 'fixing_a_player', 0},
				onFinish = 'install',
				scale = 1.5,
				zScale = 2.0,
			},
			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("steps_turbo_close"),
				helpLabel = _U("steps_turbo_close_action"),
				onFinish = 'close_hood',
				time = 500,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.7,
				zScale = 2.0,
			},
		},
		bones = {'engine', 'bonnet', 'neon_f'},
	},
	cosmetics = {
		label				= _U("menu_cosmetics"),
		parent				= 'main',
		windowTint			= 'windowtint',
		modHorns			= 'horns',
		neonColor			= 'neonColor',
		modXenon			= 'headlights',
		plateIndex			= 'licenseplates',
		wheels				= 'wheels',
		modPlateHolder		= 'modplateholder',
		modVanityPlate		= 'modvanityplate',
		modAPlate			= 'quarter_deck',
		modSpeakers			= 'speakers',
		modTrunk			= 'trunk',
		modHydrolic			= 'hydraulic',
		modStruts			= 'struts',
		modArchCover		= 'arch_cover',
		modAerials			= 'aerials',
		modTrimB			= 'wings',
		modTank				= 'fuel_tank',
		modLivery			= 'stickers',
		modRoofLivery		= 'roofStickers',
	},
	interior = {
		itemIndex = 'interior',
		label = _U("menu_interior"),
		parent = 'main',
		modTrimA			= 'interior',
		modOrnaments		= 'trim',
		modDashboard		= 'dashboard',
		modDial				= 'speedometer',
		modDoorSpeaker		= 'door_speakers',
		modSeats			= 'seats',
		modSteeringWheel	= 'steering_wheel',
		modShifterLeavers	= 'gear_lever',
	},

	modPlateHolder = {
		itemIndex = 'modPlateHolder',
		label = _U("menu_cosmetics_plateholder"),
		parent = 'cosmetics',
		modType = 25,
		price = 3.49,
		bones = {'bumper_r', 'neon_b'},
		steps = {
			{
				bonePos = {'engine', 'neon_f'},
				time = math.random(1000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.8,
				zScale = 2.0,
				onFinish = 'install',
			},
		}
	},
	modVanityPlate = {
		itemIndex = 'modVanityPlate',
		label = _U("menu_cosmetics_vanityplate"),
		parent = 'cosmetics',
		modType = 26,
		price = 1.1,
		bones = {'bumper_r', 'neon_b'},
		steps = {
			{
				bonePos = {'engine', 'neon_f'},
				time = math.random(1000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.8,
				zScale = 2.0,
				onFinish = 'install',
			},
		}
	},
	modTrimA = {
		itemIndex = 'modTrimA',
		label = _U("menu_interior_trim_a"),
		parent = 'interior',
		steps = GetInteriorTuningSteps(_U("steps_interior_trima_install_action"), 20000),
		previewOpenDoor = true,
		modType = 27,
		price = 6.98
	},
	modOrnaments = {
		itemIndex = 'modOrnaments',
		label = _U("menu_interior_ornaments"),
		parent = 'interior',
		steps = GetInteriorTuningSteps(_U("steps_interior_ornaments_install_action"), 2000),
		previewOpenDoor = true,
		modType = 28,
		price = 0.9
	},
	modDashboard = {
		itemIndex = 'modDashboard',
		label = _U("menu_interior_dashboard"),
		parent = 'interior',
		steps = GetInteriorTuningSteps(_U("steps_interior_dashboard_install_action"), 5000),
		previewOpenDoor = true,
		modType = 29,
		price = 4.65
	},
	modDial = {
		itemIndex = 'modDial',
		label = _U("menu_interior_dial"),
		parent = 'interior',
		steps = GetInteriorTuningSteps(_U("steps_interior_dial_install_action"), 5000),
		previewOpenDoor = true,
		modType = 30,
		price = 4.19
	},
	modDoorSpeaker = {
		itemIndex = 'modDoorSpeaker',
		label = _U("menu_interior_doorspeaker"), --~REPLACE~'Repráky ve dveřích',
		parent = 'interior',
		steps = {
			{
				bonePos = {'handle_dside_f', 'door_dside_f'},
				label = _U("open_left_door"), --~REPLACE~'~y~Otevři~s~ levé dvere',
				helpLabel = _U("open_door"), --~REPLACE~'Otevri~s~ dvere',
				onFinish = 'open_left_door',
				time = 500,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.5,
				zScale = 2.0,
			},
			{
				bonePos = {'door_dside_f', 'handle_dside_f'},
				label = _U("install_speaker"), --~REPLACE~'~y~Nainstaluj~s~ nové repráky.',
				helpLabel = _U("install_speaker"), --~REPLACE~'Nainstaluj repraky',
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				time = 5000,
				scale = 1.7,
				zScale = 2.0,
				onFinish = 'installLeftDoorSpeaker'
			},
			{
				bonePos = {'handle_pside_f', 'door_pside_f'},
				label = _U("open_right_door"), --~REPLACE~'~y~Otevři~s~ pravé dvere',
				helpLabel = _U("open_door"), --~REPLACE~'Otevri~s~ dvere',
				onFinish = 'open_right_door',
				time = 500,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.5,
				zScale = 2.0,
			},
			{
				bonePos = {'door_pside_f', 'handle_pside_f'},
				label = _U("install_speaker"), --~REPLACE~'~y~Nainstaluj~s~ nové repráky.',
				helpLabel = _U("install_speaker"), --~REPLACE~'Nainstaluj repraky',
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				time = 5000,
				scale = 1.7,
				zScale = 2.0,
				onFinish = 'install'
			},
			{
				bonePos = {'handle_pside_f', 'door_pside_f'},
				label = _U("close_right_dor"), --~REPLACE~'~y~Zavři~s~ pravé dvere',
				helpLabel = _U("close_right_dor"), --~REPLACE~'Zavri~s~ dvere',
				onFinish = 'close_right_door',
				time = 500,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.5,
				zScale = 2.0,
			},
			{
				bonePos = {'handle_dside_f', 'door_dside_f'},
				label = _U("close_left_door"), --~REPLACE~'~y~Zavři~s~ levé dvere',
				helpLabel = _U("close_left_door"), --~REPLACE~'Zavri~s~ dvere',
				onFinish = 'close_left_door',
				time = 500,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.5,
				zScale = 2.0,
			},

		},
		previewOpenDoor = true,
		modType = 31,
		price = 5.58
	},
	modSeats = {
		itemIndex = 'modSeats',
		label = _U("menu_interior_seats"), --~REPLACE~'Sedačky',
		parent = 'interior',
		steps = GetInteriorTuningSteps(_U('install_seats'), 15000),
		previewOpenDoor = true,
		modType = 32,
		price = 4.65
	},
	modSteeringWheel = {
		itemIndex = 'modSteeringWheel',
		label = _U("menu_interior_steeringwheel"), --~REPLACE~'Volant',
		parent = 'interior',
		steps = GetInteriorTuningSteps(_U('install_steering_wheel'), 3000),
		previewOpenDoor = true,
		modType = 33,
		price = 4.19
	},
	modShifterLeavers = {
		itemIndex = 'modShifterLeavers',
		label = _U("menu_interior_shiftingleavers"), --~REPLACE~'Řadící páka',
		parent = 'interior',
		steps = GetInteriorTuningSteps(_U('install_shifter'), 3000),
		previewOpenDoor = true,
		modType = 34,
		price = 3.26
	},
	modAPlate = {
		itemIndex = 'modAPlate',
		label = _U("plaque"), --~REPLACE~'Plaketa', TODO:
		parent = 'cosmetics',
		modType = 35,
		steps = NotImplementedSteps,
		price = 4.19
	},
	modSpeakers = {
		itemIndex = 'modSpeakers',
		label = _U("menu_cosmetics_speakers"), --~REPLACE~'Repráky',
		parent = 'cosmetics',
		previewOpenDoor = true,
		previewOpenTrunk = true,
		modType = 36,
		steps = NotImplementedSteps,
		price = 6.98
	},
	modTrunk = {
		itemIndex = 'modTrunk',
		label = _U("menu_cosmetics_trunk"), --~REPLACE~'Kufr',
		parent = 'cosmetics',
		previewOpenTrunk = true,
		modType = 37,
		price = 5.58,
		steps = NotImplementedSteps,
		bones = {'boot'},
	},
	modHydrolic = {
		itemIndex = 'modHydrolic',
		label = _U("menu_hydrolic"), --~REPLACE~'Hydraulika',
		parent = 'main',
		previewOpenTrunk = true,
		modType = 38,
		price = 5.12,
		steps = NotImplementedSteps,
		bones = {'boot'},
	},
	modEngineBlock = {
		itemIndex = 'modEngineBlock',
		label = _U("menu_upgrades_engine_block"), --~REPLACE~'Blok motoru',
		parent = 'upgrades',
		modType = 39,
		price = 5.12,
		previewOpenHood = true,
		bones = {'engine', 'bonnet', 'neon_f'},
		steps = {
			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("open_hood"), --~REPLACE~'~y~Otevři~s~ kapotu',
				helpLabel = _U("open_hood"), --~REPLACE~'Otevri~s~ kapotu',
				onFinish = 'open_hood',
				time = 500,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.5,
				zScale = 2.0,
			},

			{
				stockpilePos = 'bonnet',
				object = 'imp_prop_impexp_engine_part_01a',
				objectPos = vector3(0.0,0.0,-0.191),
				objectRot = vector3(0.0,0.0,0.0),
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
				objectBone = 28422,
			},

			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				time = math.random(10 * 1000, 15 * 1000),
				anim = {'mini@repair', 'fixing_a_player', 0},
				onStart = 'remove_object',
				onFinish = 'install',
				scale = 1.7,
				zScale = 2.0,
			},

			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("close_hood"), --~REPLACE~'~y~Zavři~s~ kapotu',
				helpLabel = _U("close_hood"), --~REPLACE~_U("steps_action"),
				onFinish = 'close_hood',
				time = 500,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.7,
				zScale = 2.0,
			},
		}
	},
	modAirFilter = {
		itemIndex = 'modAirFilter',
		label = _U("menu_upgrades_air_filter"),
		parent = 'upgrades',
		modType = 40,
		price = 3.72,
		previewOpenHood = true,
		bones = {'engine', 'bonnet'},
		steps = {
			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("open_hood"), --~REPLACE~'~y~Otevři~s~ kapotu',
				helpLabel = _U("open_hood"), --~REPLACE~'Otevri~s~ kapotu',
				onFinish = 'open_hood',
				time = 500,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.5,
				zScale = 2.0,
			},

			{
				stockpilePos = 'bonnet',
				object = 'imp_prop_impexp_engine_part_01a',
				objectPos = vector3(0.0,0.0,-0.191),
				objectRot = vector3(0.0,0.0,0.0),
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
				objectBone = 28422,
			},

			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				time = math.random(10 * 1000, 15 * 1000),
				anim = {'mini@repair', 'fixing_a_player', 0},
				onStart = 'remove_object',
				onFinish = 'install',
				scale = 1.5,
				zScale = 2.0,
			},

			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("close_hood"), --~REPLACE~'~y~Zavři~s~ kapotu',
				helpLabel = _U("close_hood"), --~REPLACE~_U("steps_action"),
				onFinish = 'close_hood',
				time = 500,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.7,
				zScale = 2.0,
			},
		}
	},
	modStruts = {
		itemIndex = 'modStruts',
		label = _U("menu_cosmetics_struts"), --~REPLACE~'Vzpěry',
		parent = 'cosmetics',
		modType = 41,
		price = 6.51,
		previewOpenHood = true,
		bones = {'engine', 'bonnet'},
		steps = {
			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("open_hood"), --~REPLACE~'~y~Otevři~s~ kapotu',
				helpLabel = _U("open_hood"), --~REPLACE~'Otevri~s~ kapotu',
				onFinish = 'open_hood',
				time = 500,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.5,
				zScale = 2.0,
			},


			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				time = math.random(10 * 1000, 15 * 1000),
				anim = {'mini@repair', 'fixing_a_player', 0},
				onStart = 'remove_object',
				onFinish = 'install',
				scale = 1.7,
				zScale = 2.0,
			},

			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("close_hood"), --~REPLACE~'~y~Zavři~s~ kapotu',
				helpLabel = _U("close_hood"), --~REPLACE~_U("steps_action"),
				onFinish = 'close_hood',
				time = 500,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.7,
				zScale = 2.0,
			},
		}
	},
	modArchCover = {
		itemIndex = 'modArchCover',
		label = _U("menu_cosmetics_archcover"), --~REPLACE~'Kryt kol',
		parent = 'cosmetics',
		modType = 42,
		price = 4.19,
		bones = {'engine', 'bonnet', 'neon_f'},
		steps = {
			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				time = math.random(10 * 1000, 15 * 1000),
				anim = {'mini@repair', 'fixing_a_player', 0},
				onStart = 'remove_object',
				onFinish = 'install',
				scale = 1.7,
				zScale = 2.0,
			},
		}
	},
	modAerials = {
		itemIndex = 'modAerials',
		label = _U("menu_cosmetics_aerials"), --~REPLACE~'Antény',
		parent = 'cosmetics',
		modType = 43,
		price = 1.12,
		steps = {
			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				time = math.random(10 * 1000, 15 * 1000),
				anim = {'mini@repair', 'fixing_a_player', 0},
				onStart = 'remove_object',
				onFinish = 'install',
				scale = 1.7,
				zScale = 2.0,
			},
		}
	},
	modTrimB = {
		itemIndex = 'modTrimB',
		label = _U("menu_cosmetics_trim_b"), --~REPLACE~'Křídla',
		parent = 'cosmetics',
		modType = 44,
		price = 6.05,
		steps = {
			{
				bonePos = {'door_dside_f'},
				time = math.random(10 * 1000, 15 * 1000),
				anim = {'mini@repair', 'fixing_a_player', 0},
				onStart = 'remove_object',
				onFinish = 'install',
				scale = 1.7,
				zScale = 2.0,
			},
		}
	},
	modTank = {
		itemIndex = 'modTank',
		label = _U("menu_cosmetics_tank"), --~REPLACE~'Nádrž',
		parent = 'cosmetics',
		modType = 45,
		price = 4.19,
		steps = {
			{
				bonePos = {'door_dside_f'},
				time = math.random(10 * 1000, 15 * 1000),
				anim = {'mini@repair', 'fixing_a_player', 0},
				onStart = 'remove_object',
				onFinish = 'install',
				scale = 1.7,
				zScale = 2.0,
			},
		}
	},
	modLivery = {
		itemIndex = 'modLivery',
		label = _U("menu_cosmetics_livery"), --~REPLACE~'Polepy',
		parent = 'cosmetics',
		modType = 48,
		price = 9.3,
		steps = {
			{
				stockpilePos = 'bonnet',
				object = 'ng_proc_box_01a',
				objectPos = vector3(0.0,0.0,-0.191),
				objectRot = vector3(0.0,0.0,0.0),
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
				objectBone = 28422,
			},

			{
				bonePos = {'wheel_lf', 'center'},
				time = math.random(4000, 8000),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				displayInstallText = true,
				scale = 1.7,
				zScale = 2.0,
			},

			{
				bonePos = {'wheel_rf', 'center'},
				time = math.random(4000, 8000),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				displayInstallText = true,
				scale = 1.7,
				zScale = 2.0,
			},

			{
				bonePos = {'wheel_lr', 'center'},
				time = math.random(4000, 8000),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				displayInstallText = true,
				scale = 1.7,
				zScale = 2.0,
			},

			{
				bonePos = {'wheel_rr', 'center'},
				time = math.random(4000, 8000),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				onStart = 'remove_object',
				scale = 1.7,
				zScale = 2.0,
				onFinish = 'install',
			},
		}
	},
	modRoofLivery = {
		itemIndex = 'modRoofLivery',
		label = _U("menu_cosmetics_rooflivery"), --~REPLACE~'Polepy na střechu',
		parent = 'cosmetics',
		modType = 'modRoofLivery',
		price = 9.3,
		steps = {
			{
				stockpilePos = 'bonnet',
				object = 'ng_proc_box_01a',
				objectPos = vector3(0.0,0.0,-0.191),
				objectRot = vector3(0.0,0.0,0.0),
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
				objectBone = 28422,
			},

			{
				bonePos = {'window_rf', 'neon_r', 'seat_dside_f'},
				time = math.random(5000, 6000),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				onStart = 'remove_object',
				scale = 1.7,
				zScale = 2.0,
				onFinish = 'install',
			},
		}
	},

	wheels = {
		itemIndex = 'wheels',
		label = _U("wheels"), --~REPLACE~'Kola',
		parent = 'main',
		modFrontWheelsTypes = 'wheel_type',
		modFrontWheelsColor = 'wheel_color',
		modCustomWheels = 'modCustomWheels',
		modTireEnhancements = 'modTireEnhancements',
		tyreSmokeColor = 'tiresmoke',
		modCamber = 'modCamber',
		modSpacer = 'modSpacer',
	},
	modFrontWheelsTypes = {
		label				= _U("wheel_types"), --~REPLACE~	= 'Typy kol',
		parent				= 'wheels',
		modFrontWheelsType0	= 'sport',
		modFrontWheelsType1	= 'muscle',
		modFrontWheelsType2	= 'lowrider',
		modFrontWheelsType3	= 'suv',
		modFrontWheelsType4	= 'allterrain',
		modFrontWheelsType5	= 'tuning',
		modFrontWheelsType6	= 'motorcycle',
		modFrontWheelsType7	= 'highend',
		modFrontWheelsType8	= 'bennys_original',
		modFrontWheelsType9	= 'bennys_bespoke',
		modFrontWheelsType11	= 'street',
		modFrontWheelsType12	= 'track',
	},
	modFrontWheelsType0 = {
		itemIndex = 'modFrontWheelsType0',
		label = _U("wheel_type_sport"), --~REPLACE~'Sportovní',
		parent = 'modFrontWheelsTypes',
		isBike = false,
		modType = 23,
		wheelType = 0,
		price = 4.65,
		bones = {'wheel_lf', 'wheel_rf', 'wheel_lr', 'wheel_rr', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3'},
		steps = GetWheelTypeTuningSteps(),
	},
	modFrontWheelsType1 = {
		itemIndex = 'modFrontWheelsType1',
		label = _U("wheel_type_muscle"), --~REPLACE~'Muscle',
		parent = 'modFrontWheelsTypes',
		isBike = false,
		modType = 23,
		wheelType = 1,
		price = 4.19,
		bones = {'wheel_lf', 'wheel_rf', 'wheel_lr', 'wheel_rr', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3'},
		steps = GetWheelTypeTuningSteps(),
	},
	modFrontWheelsType2 = {
		itemIndex = 'modFrontWheelsType2',
		label = _U("wheel_type_low_rider"), --~REPLACE~'Lowrider',
		parent = 'modFrontWheelsTypes',
		isBike = false,
		modType = 23,
		wheelType = 2,
		price = 4.65,
		bones = {'wheel_lf', 'wheel_rf', 'wheel_lr', 'wheel_rr', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3'},
		steps = GetWheelTypeTuningSteps(),
	},
	modFrontWheelsType3 = {
		itemIndex = 'modFrontWheelsType3',
		label = _U("wheel_type_suv"), --~REPLACE~'SUV',
		parent = 'modFrontWheelsTypes',
		isBike = false,
		modType = 23,
		wheelType = 3,
		price = 4.19,
		bones = {'wheel_lf', 'wheel_rf', 'wheel_lr', 'wheel_rr', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3'},
		steps = GetWheelTypeTuningSteps(),
	},
	modFrontWheelsType4 = {
		itemIndex = 'modFrontWheelsType4',
		label = _U("wheel_type_all_terrain"), --~REPLACE~'All-Terrain',
		parent = 'modFrontWheelsTypes',
		isBike = false,
		modType = 23,
		wheelType = 4,
		price = 4.19,
		bones = {'wheel_lf', 'wheel_rf', 'wheel_lr', 'wheel_rr', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3'},
		steps = GetWheelTypeTuningSteps(),
	},
	modFrontWheelsType5 = {
		itemIndex = 'modFrontWheelsType5',
		label = _U("wheel_type_tuning"), --~REPLACE~'Tuning',
		parent = 'modFrontWheelsTypes',
		isBike = false,
		modType = 23,
		wheelType = 5,
		price = 5.12,
		bones = {'wheel_lf', 'wheel_rf', 'wheel_lr', 'wheel_rr', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3'},
		steps = GetWheelTypeTuningSteps(),
	},
	modFrontWheelsType6 = {
		itemIndex = 'modFrontWheelsType6',
		label = _U("wheel_type_bike"), --~REPLACE~'Motorka',
		parent = 'modFrontWheelsTypes',
		isBike = true,
		modType = 23,
		wheelType = 6,
		price = 3.26,
		bones = {'wheel_lf', 'wheel_rf', 'wheel_lr', 'wheel_rr', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3'},
		steps = GetBikeWheelTypeTuningSteps(),
	},
	modFrontWheelsType7 = {
		itemIndex = 'modFrontWheelsType7',
		label = _U("wheel_type_high_end"), --~REPLACE~'High-End',
		parent = 'modFrontWheelsTypes',
		isBike = false,
		modType = 23,
		wheelType = 7,
		price = 5.12,
		bones = {'wheel_lf', 'wheel_rf', 'wheel_lr', 'wheel_rr', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3'},
		steps = GetWheelTypeTuningSteps(),
	},
	modFrontWheelsType8 = {
		itemIndex = 'modFrontWheelsType8',
		label = _U("wheel_type_bennys_original"),
		parent = 'modFrontWheelsTypes',
		isBike = false,
		modType = 23,
		wheelType = 8,
		price = 5.12,
		bones = {'wheel_lf', 'wheel_rf', 'wheel_lr', 'wheel_rr', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3'},
		steps = GetWheelTypeTuningSteps(),
	},
	modFrontWheelsType9 = {
		itemIndex = 'modFrontWheelsType9',
		label = _U("wheel_type_bennys_bespoke"),
		parent = 'modFrontWheelsTypes',
		isBike = false,
		modType = 23,
		wheelType = 9,
		price = 5.12,
		bones = {'wheel_lf', 'wheel_rf', 'wheel_lr', 'wheel_rr', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3'},
		steps = GetWheelTypeTuningSteps(),
	},
	modFrontWheelsType11 = {
		itemIndex = 'modFrontWheelsType11',
		label = _U("wheel_type_street"),
		parent = 'modFrontWheelsTypes',
		isBike = false,
		modType = 23,
		wheelType = 11,
		price = 5.12,
		bones = {'wheel_lf', 'wheel_rf', 'wheel_lr', 'wheel_rr', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3'},
		steps = GetWheelTypeTuningSteps(),
	},
	
	modFrontWheelsType12 = {
		itemIndex = 'modFrontWheelsType12',
		label = _U("wheel_type_track"),
		parent = 'modFrontWheelsTypes',
		isBike = false,
		modType = 23,
		wheelType = 12,
		price = 5.12,
		bones = {'wheel_lf', 'wheel_rf', 'wheel_lr', 'wheel_rr', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3'},
		steps = GetWheelTypeTuningSteps(),
	},

	modFrontWheelsColor = {
		itemIndex = 'modFrontWheelsColor',
		label = _U("wheel_color"), --~REPLACE~'Barva kol',
		parent = 'wheels',
		isPaint = true,
		modType = 'wheelColor',
		bones = {'wheel_lf', 'wheel_rf', 'wheel_lr', 'wheel_rr', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3'},
		steps = {
			{
				stockpilePos = 'paint',
				label = _U("go_for_paint"), --~REPLACE~'Dojdi si pro ~y~Spray~s~.',
				helpLabel = _U("get_paint"), --~REPLACE~_U("steps_action"),
				object = 'ng_proc_spraycan01b',
				objectPos = vector3(0.072, 0.041, -0.06),
				objectRot = vector3(33.0, 38.0, 0.0),
				onFinish = 'give_object',
				objectBone = 57005,
			},

			{
				bonePos = {'wheel_lf'},
				time = math.random(2000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				bonePos = {'wheel_rf'},
				time = math.random(2000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				bonePos = {'wheel_rr'},
				time = math.random(2000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				bonePos = {'wheel_lr'},
				time = math.random(2000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				onStat = 'remove_object',
				onFinish = 'install',
			},

		}
	},
	modCamber = {
		itemIndex = 'modCamber',
		label = _U("wheel_camber"),
		parent = 'wheels',
		nonRandomPrices = true,
		modType = 'modCamber',
		bones = {'wheel_lf', 'wheel_rf', 'wheel_lr', 'wheel_rr', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3'},
		steps = {
			{
				bonePos = {'wheel_lf'},
				time = math.random(2000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				bonePos = {'wheel_rf'},
				time = math.random(2000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				bonePos = {'wheel_rr'},
				time = math.random(2000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				bonePos = {'wheel_lr'},
				time = math.random(2000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				onStat = 'remove_object',
				onFinish = 'install',
			},

		}
	},
	modSpacer = {
		itemIndex = 'modSpacer',
		label = _U("wheel_spacer"),
		parent = 'wheels',
		nonRandomPrices = true,
		modType = 'modSpacer',
		bones = {'wheel_lf', 'wheel_rf', 'wheel_lr', 'wheel_rr', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3'},
		steps = {
			{
				bonePos = {'wheel_lf'},
				time = math.random(2000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				bonePos = {'wheel_rf'},
				time = math.random(2000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				bonePos = {'wheel_rr'},
				time = math.random(2000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				bonePos = {'wheel_lr'},
				time = math.random(2000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				onStat = 'remove_object',
				onFinish = 'install',
			},

		}
	},
	plateIndex = {
		itemIndex = 'plateIndex',
		label = _U("106"), --~REPLACE~'Poznávací značka',
		parent = 'cosmetics',
		modType = 'plateIndex',
		price = 1.1,
		bones = {'neon_b', 'windscreen_r', 'overheat', 'bumper_r'},
		steps = {
			{
				stockpilePos = 'exhaust',
				object = 'ng_proc_box_01a',
				objectPos = vector3(0.0,0.0,-0.191),
				objectRot = vector3(0.0,0.0,0.0),
				objectBone = 28422,
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
			},
			{
				bonePos = {'neon_b', 'windscreen_r', 'overheat', 'bumper_r'},
				time = math.random(5 * 1000, 11 * 1000),
				anim = {'mini@repair', 'fixing_a_player', 0},
				onStart = 'remove_object',
				onFinish = 'install',
			},
		}
	},
	resprays = {
		itemIndex = 'resprays',
		label = _U("menu_resprays"), --~REPLACE~'Změna barvy',
		parent = 'main',
		primaryRespray = 'primary',
		secondaryRespray = 'secondary',
		pearlescentRespray = 'pearlescent',
	},
	primaryRespray = {
		itemIndex = 'primaryRespray',
		label = _U("primary_color"), --~REPLACE~'Primární barva laku',
		parent = 'resprays',
		modType = 'color1',
		price = 1.12,
		steps = PaintSteps,
		isPaint = true,
	},
	secondaryRespray = {
		itemIndex = 'secondaryRespray',
		label = _U("secondary_color"), --~REPLACE~'Sekundární barva laku',
		parent = 'resprays',
		modType = 'color2',
		steps = PaintSteps,
		isPaint = true,
		price = 0.66
	},
	pearlescentRespray = {
		itemIndex = 'pearlescentRespray',
		label = _U("pearlescent_color"), --~REPLACE~'Perleť',
		parent = 'resprays',
		modType = 'pearlescentColor',
		steps = PaintSteps,
		isPaint = true,
		price = 0.88
	},
	interiorRespray = {
		itemIndex = 'interiorRespray',
		label = _U("interior_color"), --~REPLACE~'Interiér',
		parent = 'resprays',
		modType = 'interiorRespray',
		steps = GetInteriorTuningSteps('~y~Nainstaluj~s~ nový interiér', 5000),
		isPaint = true,
		price = 0.66
	},
	dashboardRespray = {
		itemIndex = 'dashboardRespray',
		label = _U("dashboard_color"), --~REPLACE~'Barva budíků',
		parent = 'resprays',
		modType = 'dashboardRespray',
		previewOpenDoor = true,
		steps = GetInteriorTuningSteps('~y~Nainstaluj~s~ nové pozadí budíků', 5000),
		isPaint = true,
		price = 0.66
	},
	modXenon = {
		itemIndex = 'modXenon',
		label = _U("mod_lights"), --~REPLACE~'Světla',
		parent = 'cosmetics',
		modType = 22,
		price = 3.72,
		bones = {'headlight_l', 'headlight_r'},
		steps = {
			{
				bonePos = {'headlight_l'},
				time = 5000,
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				bonePos = {'headlight_r', 'headlight_l'},
				time = 5000,
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				onFinish = 'install',
			},
		}
	},
	modXenonColor = {
		itemIndex = 'modXenonColor',
		label = _U("122"), --~REPLACE~'Barva xenonů',
		parent = 'modXenon',
		modType = 'modXenonColor',
		price = 3.72,
		bones = {'headlight_l', 'headlight_r'},
		steps = {
			{
				bonePos = {'headlight_l'},
				time = 5000,
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				bonePos = {'headlight_r'},
				time = 6000,
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				onFinish = 'install',
			},
		}
	},
	modSpoilers = {
		itemIndex = 'modSpoilers',
		label = _U("mod_spoiler"), --~REPLACE~'Spoilery',
		parent = 'cosmetics',
		modType = 0,
		price = 4.65,
		bones = {'boot', 'overheat', 'neon_b'},
		steps = {
			{
				stockpilePos = 'exhaust',
				object = 'imp_prop_impexp_spoiler_01a',
				objectPos = vector3(0.0, -0.1, 0.014),
				objectRot = vector3(102.0, -6.0, -182.0),
				objectBone = 28422,
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
			},
			{
				bonePos = {'boot_', 'overheat_', 'neon_b_'},
				time = math.random(10 * 1000, 15 * 1000),
				anim = {'mini@repair', 'fixing_a_player', 0},
				onStart = 'remove_object',
				onFinish = 'install',
			},
		}
	},
	modFrontBumper = {
		itemIndex = 'modFrontBumper',
		label = _U("mod_front_bumper"), --~REPLACE~'Přední nárazník',
		parent = 'cosmetics',
		modType = 1,
		price = 5.12,
		bones = {'neon_f', 'extralight_2', 'extralight_1', 'wheel_lf'},
		steps = {
			{
				stockpilePos = 'bonnet',
				object = 'imp_prop_impexp_front_bumper_01a',
				objectPos = vector3(0.0, -0.1, 0.014),
				objectRot = vector3(102.0, -6.0, -182.0),

				objectBone = 28422,
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
			},
			{
				bonePos = {'neon_f', 'extralight_2', 'extralight_1', 'wheel_lf'},
				time = 5000,
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				onStart = 'remove_object',
				onFinish = 'install',
			},
		}
	},
	modRearBumper = {
		itemIndex = 'modRearBumper',
		label = _U("mod_rear_bumper"), --~REPLACE~'Zadní nárazník',
		parent = 'cosmetics',
		modType = 2,
		price = 5.12,
		bones = {'neon_b'},
		steps = {
			{
				stockpilePos = 'bonnet',
				object = 'imp_prop_impexp_rear_bumper_01a',
				objectPos = vector3(0.0, -0.1, 0.014),
				objectRot = vector3(102.0, -6.0, -182.0),
				objectBone = 28422,
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
			},

			{
				bonePos = {'overheat', 'neon_b'},
				time = 5000,
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				onStart = 'remove_object',
				onFinish = 'install',
				scale = 1.7,
				zScale = 2.0,
			},
		}

	},
	modSideSkirt = {
		itemIndex = 'modSideSkirt',
		label = _U("sideskirt"), --~REPLACE~'Sideskirt',
		parent = 'cosmetics',
		modType = 3,
		price = 4.65,
		bones = {'handle_dside_f', 'neon_l', 'neon_r'},
		steps = {
			{
				stockpilePos = 'bonnet',
				object = 'imp_prop_impexp_rear_bumper_01a',
				objectPos = vector3(0.0, -0.1, 0.014),
				objectRot = vector3(102.0, -6.0, -182.0),
				objectBone = 28422,
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
			},

			{
				bonePos = {'neon_l', 'center'},
				time = 5000,
				anim = {'mini@repair', 'fixing_a_player' , 1+16},
				onStart = 'remove_object',
			},

			{
				stockpilePos = 'bonnet',
				object = 'imp_prop_impexp_rear_bumper_01a',
				objectPos = vector3(0.0, -0.1, 0.014),
				objectRot = vector3(102.0, -6.0, -182.0),
				objectBone = 28422,
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
			},

			{
				bonePos = {'neon_r', 'center'},
				time = 5000,
				anim = {'mini@repair', 'fixing_a_player' , 1+16},
				onStart = 'remove_object',
				onFinish = 'install',
			},
		}
	},
	modExhaust = {
		itemIndex = 'modExhaust',
		label = _U("151"), --~REPLACE~'Výfuk',
		parent = 'cosmetics',
		modType = 4,
		price = 5.12,
		steps = {
			{
				stockpilePos = 'exhaust',
				object = 'imp_prop_impexp_exhaust_05',
				objectPos = vector3(-0.022, -0.044, -0.067),
				objectRot = vector3(29.0, 184.0, -91.0),
				objectBone = 28422,
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
			},
			{
				bonePos = {'exhaust', 'neon_b', 'center'},
				time = 5000,
				anim = {'mini@repair', 'fixing_a_player' , 1+16},
				onStart = 'remove_object',
				onFinish = 'install',
			},
		},
		bones = {'neon_b'},
	},
	modFrame = {
		itemIndex = 'modFrame',
		label = _U("156"), --~REPLACE~'Klec',
		parent = 'cosmetics',
		modType = 5,
		price = 5.12,
		steps = {
			{
				bonePos = {'door_dside_f', 'center'},
				time = math.random(6000, 9500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				onFinish = 'install',
			},
		},
	},
	modGrille = {
		itemIndex = 'modGrille',
		label = _U("159"), --~REPLACE~'Mřížka',
		parent = 'cosmetics',
		modType = 6,
		price = 3.72,
		bones = {'neon_f'},
		steps = {
			{
				bonePos = {'neon_f'},
				time = math.random(10 * 1000, 15 * 1000),
				scale = 1.7,
				zScale = 2.0,
				anim = {'mini@repair', 'fixing_a_player' , 1+16},
				onFinish = 'install',
			},
		},
	},
	modHood = {
		itemIndex = 'modHood',
		label = _U("162"), --~REPLACE~'Kapota',
		parent = 'cosmetics',
		modType = 7,
		price = 4.88,
		bones = {'neon_f','bonnet', 'engine'},
		steps = {
			{
				bonePos = {'neon_f','bonnet', 'engine'},
				label = _U("check_hood"), --~REPLACE~'~y~Zkontroluj~s~ kapotu',
				helpLabel = _U("check_hood"), --~REPLACE~_U("steps_action"),
				time = 1000,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.7,
				zScale = 2.0,
			},

			{
				bonePos = {'neon_f','bonnet', 'engine'},
				label = _U("remove_hood"), --~REPLACE~'~y~Odstraň~s~ kapotu',
				helpLabel = _U("remove_hood"), --~REPLACE~_U("steps_action"),
				time = 5000,
				anim = {'mini@repair', 'fixing_a_player', 0},
				onFinish = 'remove_hood',
				scale = 1.7,
				zScale = 2.0,
			},

			{
				stockpilePos = 'bonnet',
				object = 'imp_prop_impexp_bonnet_02a',
				objectPos = vector3(0.0, -0.1, 0.014),
				objectRot = vector3(102.0, -6.0, -182.0),
				objectBone = 28422,
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
			},

			{
				bonePos = {'neon_f','bonnet', 'engine'},
				time = 5000,
				anim = {'mini@repair', 'fixing_a_player', 0},
				onStart = 'remove_object',
				onFinish = 'install',
				scale = 1.7,
				zScale = 2.0,
			}
		}
	},
	modFender = {
		itemIndex = 'modFender',
		label = _U("171"), --~REPLACE~'Levý blatník',
		parent = 'cosmetics',
		modType = 8,
		price = 5.12,
		bones = {'door_dside_f', 'door_pside_f', 'door_dside_r','door_pside_r', 'petroltank', 'hub_lf'},
		steps = {
			{
				bonePos = {'door_dside_f', 'hub_lf'},
				time = math.random(6000, 9500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				onFinish = 'install',
			},
		},
	},
	modRightFender = {
		itemIndex = 'modRightFender',
		label = _U("174"), --~REPLACE~'Pravý blatník',
		parent = 'cosmetics',
		modType = 9,
		price = 5.12,
		bones = {'headlight_r', 'hub_rf'},
		steps = {
			{
				bonePos = {'door_dside_f', 'neon_l'},
				time = math.random(6000, 9500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},
			{
				bonePos = {'door_pside_f', 'neon_r'},
				time = math.random(6000, 9500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				onFinish = 'install',
			},
		},
	},
	modRoof = {
		itemIndex = 'modRoof',
		label = _U("179"), --~REPLACE~'Střecha',
		parent = 'cosmetics',
		steps = NotImplementedSteps,
		modType = 10,
		price = 5.58,
	},
	windowTint = {
		itemIndex = 'windowTint',
		label = _U("180"), --~REPLACE~'Zatmavení skel',
		parent = 'cosmetics',
		modType = 'windowTint',
		price = 1.12,
		modifier = {[-1] = 0.0, [0] = 0.0, 50.0, 10.0, 2.0, 1.0, 5.0},
		bones = {'window_lf', 'window_rf', 'window_lr', 'window_rr', 'windscreen', 'windscreen_r'},
		steps = {
			{
				bonePos = {'window_lf', 'neon_l', 'seat_pside_f'},
				time = math.random(1000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				bonePos = {'window_rf', 'neon_r', 'seat_dside_f'},
				time = math.random(1000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				bonePos = {'window_lr', 'neon_l', 'seat_pside_r'},
				time = math.random(1000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				bonePos = {'window_rr', 'neon_r', 'seat_dside_r'},
				time = math.random(1000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				bonePos = {'windscreen_r', 'boot', 'exhaust', 'neon_b'},
				time = math.random(1000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 2.1,
				zScale = 2.0,
				rangeCheck = 3.5,
				onFinish = 'install',
			},
		}
	},
	modHorns = {
		itemIndex = 'modHorns',
		label = _U("191"), --~REPLACE~'Klakson',
		parent = 'main',
		modType = 14,
		price = 1.12,
		bones = {'neon_f', 'center'},
		steps = {
			{
				bonePos = {'neon_f', 'center'},
				time = math.random(5 * 1000, 10 * 1000),
				anim = {'mini@repair', 'fixing_a_player' , 1+16},
				scale = 2.0,
				zScale = 2.0,
				onFinish = 'install',
			},
		},
	},
	neons = {
		itemIndex = 'neons',
		label = _U("194"), --~REPLACE~'Neony',
		parent = 'main',
		neonLayout = 'neonLayout',
		neonColor = 'neonColor',
		bones = {'neon_f', 'center'},
	},
	neonColor = {
		itemIndex = 'neonColor',
		label = _U("195"), --~REPLACE~'Barva neonů',
		parent = 'neons',
		modType = 'neonColor',
		price = 1.12,
		bones = {'neon_f', 'center'},
		steps = {
			{
				stockpilePos = 'paint',
				object = 'ng_proc_spraycan01b',
				objectPos = vector3(0.072, 0.041, -0.06),
				objectRot = vector3(33.0, 38.0, 0.0),
				onFinish = 'give_object',
				objectBone = 57005,
			},
			{
				bonePos = {'neon_l'},
				time = 10000,
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				onStart = 'remove_object',
				scale = 1.7,
				zScale = 2.0,
				onFinish = 'install',
			},
		},
	},
	neonLayout = {
		itemIndex = 'neonLayout',
		label = _U("200"), --~REPLACE~'Rozložení neonů',
		parent = 'neons',
		modType = 'neonLayout',
		modifier = {0.0, 0.5, 0.25, 0.25, 0.7, 1.0, 1.0, 1.5},
		price = 1.12,
		bones = {'wheel_lf', 'wheel_rf', 'wheel_lr', 'wheel_rr', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3'},
		steps = {
			{
				bonePos = {'neon_f', 'center'},
				time = math.random(6000, 12500),
				anim = {'mini@repair', 'fixing_a_player' , 1+16},
				scale = 2.0,
				zScale = 2.0,
				onFinish = 'install',
			},
		},
		layouts = TuningNeonLayouts,
	},
	tyreSmokeColor = {
		itemIndex = 'tyreSmokeColor',
		label = _U("203"), --~REPLACE~'Barva kouře pneumatik',
		parent = 'wheels',
		modType = 'tyreSmokeColor',
		price = 1.12,
		bones = {'wheel_lf', 'wheel_rf', 'wheel_lr', 'wheel_rr', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3'},
		steps = {
			{
				stockpilePos = 'wheels',
				object = 'prop_wheel_06',
				objectPos = vector3(0.0,0.0,-0.191),
				objectRot = vector3(0.0,0.0,0.0),
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
				objectBone = 28422,
			},

			{
				bonePos = {'wheel_lf'},
				time = 6000,
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				onStart = 'remove_object',
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				stockpilePos = 'wheels',
				object = 'prop_wheel_06',
				objectPos = vector3(0.0,0.0,-0.191),
				objectRot = vector3(0.0,0.0,0.0),
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
				objectBone = 28422,
			},

			{
				bonePos = {'wheel_rf'},
				time = 6000,
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				onStart = 'remove_object',
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				stockpilePos = 'wheels',
				object = 'prop_wheel_06',
				objectPos = vector3(0.0,0.0,-0.191),
				objectRot = vector3(0.0,0.0,0.0),
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
				objectBone = 28422,
			},

			{
				bonePos = {'wheel_lr'},
				time = 6000,
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				onStart = 'remove_object',
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				stockpilePos = 'wheels',
				object = 'prop_wheel_06',
				objectPos = vector3(0.0,0.0,-0.191),
				objectRot = vector3(0.0,0.0,0.0),
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
				objectBone = 28422,
			},

			{
				bonePos = {'wheel_rr'},
				time = 6000,
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				onStart = 'remove_object',
				scale = 1.7,
				zScale = 2.0,
				onFinish = 'install',
			},
		},
	},
	modCustomWheels = {
		itemIndex = 'modCustomWheels',
		label = _U("220"), --~REPLACE~'Značka pneumatik',
		parent = 'wheels',
		modType = 'modCustomWheels',
		bones = {'wheel_lf', 'wheel_rf', 'wheel_lr', 'wheel_rr', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3'},
		steps = {
			{
				stockpilePos = 'bonnet',
				object = 'ng_proc_box_01a',
				objectPos = vector3(0.0,0.0,-0.191),
				objectRot = vector3(0.0,0.0,0.0),
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
				objectBone = 28422,
			},

			{
				bonePos = {'wheel_lf'},
				time = math.random(2000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				bonePos = {'wheel_rf'},
				time = math.random(2000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				bonePos = {'wheel_lr'},
				time = math.random(2000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				bonePos = {'wheel_rr'},
				time = math.random(2000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				onStart = 'remove_object',
				scale = 1.7,
				zScale = 2.0,
				onFinish = 'install',
			},
		}
	},
	modTireEnhancements = {
		itemIndex = 'modTireEnhancements',
		label = _U("mod_tire_enhancements"),
		parent = 'wheels',
		modType = 'modTireEnhancements',
		bones = {'wheel_lf', 'wheel_rf', 'wheel_lr', 'wheel_rr', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3'},
		steps = {
			{
				stockpilePos = 'bonnet',
				object = 'ng_proc_box_01a',
				objectPos = vector3(0.0,0.0,-0.191),
				objectRot = vector3(0.0,0.0,0.0),
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
				objectBone = 28422,
			},

			{
				bonePos = {'wheel_lf'},
				time = math.random(2000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				bonePos = {'wheel_rf'},
				time = math.random(2000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},
			{
				bonePos = {'wheel_rr'},
				time = math.random(2000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				displayInstallText = true,
			},

			{
				bonePos = {'wheel_lr'},
				time = math.random(2000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 1.7,
				zScale = 2.0,
				onStart = 'remove_object',
				onFinish = 'install',
			},

		}
	},
	
	motorBikesRepair = {
		itemIndex = 'motorBikesRepair',
		label = _U("repair"), --~REPLACE~'Oprava',
		parent = 'main',
		bones = {'petroltank'},
		steps = {
			{
				bonePos = {'petroltank', 'wheel_lf'},
				label = _U("bike_r_check_damage"), --~REPLACE~'~y~Zkontroluj~s~ úroveň poškození motorky.',
				helpLabel = _U("repair_check"), --~REPLACE~_U("steps_action"),
				time = 500,
				anim = {'mp_cp_welcome_tutthink', 'b_think', 1},
				scale = 2.0,
				zScale = 2.0,
			},
			
			{
				stockpilePos = 'wheels',
				label = _U("repair_go_for_tire"), --~REPLACE~'~y~Dojdi~s~ pro pneumatiku',
				helpLabel = _U("repair_get_tire"), --~REPLACE~_U("steps_action"),
				object = 'prop_wheel_06',
				objectPos = vector3(0.0,0.0,-0.191),
				objectRot = vector3(0.0,0.0,0.0),
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
				objectBone = 28422,
				skipIf = 'wheelLfOk',
			},

			{
				bonePos = {'wheel_lf'},
				label = _U("repair_change_tire"), --~REPLACE~'Dojdi k vozidlu a ~y~vyměň~s~ přední pneumatiku.',
				helpLabel = _U("repair_change_cta"), --~REPLACE~_U("steps_action"),
				time = 6000,
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				onStart = 'remove_object',
				scale = 1.7,
				zScale = 2.0,
				skipIf = 'wheelLfOk',
				onFinish = 'fixWheelLf',
			},

			{
				stockpilePos = 'wheels',
				label = _U("repair_go_for_tire"), --~REPLACE~'Vrat se zpět pro další ~y~pneumatiku~s~.',
				helpLabel = _U("repair_get_tire"), --~REPLACE~_U("steps_action"),
				object = 'prop_wheel_06',
				objectPos = vector3(0.0,0.0,-0.191),
				objectRot = vector3(0.0,0.0,0.0),
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
				objectBone = 28422,
				skipIf = 'wheelLrOk',
			},

			{
				bonePos = {'wheel_lr'},
				label = _U("repair_change_tire"), --~REPLACE~'Dojdi k vozidlu a ~y~vyměň~s~ zadní pneumatiku.',
				helpLabel = _U("repair_change_cta"), --~REPLACE~_U("steps_action"),
				time = 6000,
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				onStart = 'remove_object',
				scale = 1.7,
				zScale = 2.0,
				skipIf = 'wheelLrOk',
				onFinish = 'fixWheelLr',
			},

			{
				bonePos = {'engine', 'swingarm', 'petroltank', 'wheel_lf'},
				label = _U("repair_engine"), --~REPLACE~'~y~Oprav~s~ motor',
				helpLabel = _U("repair_engine_cta"), --~REPLACE~_U("steps_action"),
				time = math.random(3000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 2.0,
				zScale = 2.0,
				onFinish = 'repair',
			},

			{
				bonePos = {'petroltank', 'wheel_lf'},
				label = _U("repair_check_finish"), --~REPLACE~'~y~Zkontroluj,~s~ že vše je opravené.',
				helpLabel = _U("repair_check"), --~REPLACE~_U("steps_action"),
				time = 1500,
				anim = {'mp_cp_welcome_tutthink', 'b_think', 1},
				scale = 2.0,
				zScale = 2.0,
				onFinish = 'install',
			},
		}
	},

	repair = {
		itemIndex = 'repair',
		label = _U("repair"), --~REPLACE~'Oprava',
		parent = 'main',
		bones = {'engine', 'bonnet', 'neon_f'},
		steps = {
			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("car_r_check_damage"), --~REPLACE~'~y~Zkontroluj~s~ úroveň poškození auta.',
				helpLabel = _U("repair_check"), --~REPLACE~_U("steps_action"),
				time = 10000,
				anim = {'mp_cp_welcome_tutthink', 'b_think', 1},
				scale = 2.0,
				zScale = 2.0,
			},

			{
				stockpilePos = 'wheels',
				label = _U("repair_go_for_tire"), --~REPLACE~'~y~Dojdi~s~ pro novou pneumatiku',
				helpLabel = _U("repair_get_tire"), --~REPLACE~_U("steps_action"),
				object = 'prop_wheel_06',
				objectPos = vector3(0.0,0.0,-0.191),
				objectRot = vector3(0.0,0.0,0.0),
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
				objectBone = 28422,
				skipIf = 'wheelLfOk',
			},

			{
				bonePos = {'wheel_lf'},
				label = _U("repair_change_tire"), --~REPLACE~'Dojdi k vozidlu a ~y~vyměň~s~ levou přední pneumatiku.',
				helpLabel = _U("repair_change_cta"), --~REPLACE~_U("steps_action"),
				time = 6000,
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				onStart = 'remove_object',
				scale = 1.7,
				zScale = 2.0,
				skipIf = 'wheelLfOk',
				onFinish = 'fixWheelLf',
			},

			{
				stockpilePos = 'wheels',
				label = _U("repair_go_for_tire"), --~REPLACE~'Vrat se zpět pro další ~y~pneumatiku~s~.',
				helpLabel = _U("repair_get_tire"), --~REPLACE~_U("steps_action"),
				object = 'prop_wheel_06',
				objectPos = vector3(0.0,0.0,-0.191),
				objectRot = vector3(0.0,0.0,0.0),
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
				objectBone = 28422,
				skipIf = 'wheelRfOk',
			},

			{
				bonePos = {'wheel_rf'},
				label = _U("repair_change_tire"), --~REPLACE~'Dojdi k vozidlu a ~y~vyměň~s~ pravou přední pneumatiku.',
				helpLabel = _U("repair_change_cta"), --~REPLACE~_U("steps_action"),
				time = 6000,
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				onStart = 'remove_object',
				scale = 1.7,
				zScale = 2.0,
				skipIf = 'wheelRfOk',
				onFinish = 'fixWheelRf',
			},

			{
				stockpilePos = 'wheels',
				label = _U("repair_go_for_tire"), --~REPLACE~'Vrat se zpět pro další ~y~pneumatiku~s~.',
				helpLabel = _U("repair_get_tire"), --~REPLACE~_U("steps_action"),
				object = 'prop_wheel_06',
				objectPos = vector3(0.0,0.0,-0.191),
				objectRot = vector3(0.0,0.0,0.0),
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
				objectBone = 28422,
				skipIf = 'wheelLrOk',
			},

			{
				bonePos = {'wheel_lr'},
				label = _U("repair_change_tire"), --~REPLACE~'Dojdi k vozidlu a ~y~vyměň~s~ levou zadní pneumatiku.',
				helpLabel = _U("repair_change_cta"), --~REPLACE~_U("steps_action"),
				time = 6000,
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				onStart = 'remove_object',
				scale = 1.7,
				zScale = 2.0,
				skipIf = 'wheelLrOk',
				onFinish = 'fixWheelLr',
			},

			{
				stockpilePos = 'wheels',
				label = _U("repair_go_for_tire"), --~REPLACE~'Vrat se zpět pro další ~y~pneumatiku~s~.',
				helpLabel = _U("repair_get_tire"), --~REPLACE~_U("steps_action"),
				object = 'prop_wheel_06',
				objectPos = vector3(0.0,0.0,-0.191),
				objectRot = vector3(0.0,0.0,0.0),
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
				objectBone = 28422,
				skipIf = 'wheelRrOk',
			},

			{
				bonePos = {'wheel_rr'},
				label = _U("repair_change_tire"), --~REPLACE~'Dojdi k vozidlu a ~y~vyměň~s~ pravou zadní pneumatiku.',
				helpLabel = _U("repair_change_cta"), --~REPLACE~_U("steps_action"),
				time = 6000,
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				onStart = 'remove_object',
				scale = 1.7,
				zScale = 2.0,
				skipIf = 'wheelRrOk',
				onFinish = 'fixWheelRr',
			},
			
			{
				stockpilePos = 'bonnet',
				label = _U("car_r_get_hood"), --~REPLACE~'~y~Vem~s~ novou kapotu',
				helpLabel = _U("car_r_take"), --~REPLACE~_U("steps_action"),
				object = 'imp_prop_impexp_bonnet_02a',
				objectPos = vector3(0.0, -0.1, 0.014),
				objectRot = vector3(102.0, -6.0, -182.0),
				objectBone = 28422,
				stageAnim = {'anim@heists@box_carry@', 'idle', 1 + 16 + 32},
				onFinish = 'give_object',
				skipIf = 'hasHood',
			},
			{
				bonePos = {'neon_f','bonnet', 'engine'},
				label = _U("car_r_install_hood"), --~REPLACE~'~y~Nainstaluj~s~ novou kapotu',
				helpLabel = _U("car_r_install"), --~REPLACE~_U("steps_action"),
				time = 5000,
				anim = {'mini@repair', 'fixing_a_player', 0},
				onStart = 'remove_object',
				scale = 1.7,
				zScale = 2.0,
				skipIf = 'hasHood',
			},

			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("open_hood"), --~REPLACE~'~y~Otevři~s~ kapotu',
				helpLabel = _U("open_hood"), --~REPLACE~'Otevri~s~ kapotu',
				onFinish = 'open_hood',
				time = 500,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.5,
				zScale = 2.0,
				skipIf = 'noHood',
			},
			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("car_r_fix_engine"), --~REPLACE~'~y~Oprav~s~ motor.',
				helpLabel = _U("repair"), --~REPLACE~_U("steps_action"),
				time = math.random(15 * 1000, 30 * 1000),
				anim = {'mini@repair', 'fixing_a_player', 1},
				scale = 1.5,
				zScale = 2.0,
			},
			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("close_hood"), --~REPLACE~'~y~Zavři~s~ kapotu',
				helpLabel = _U("close_hood"), --~REPLACE~'Zavri kapotu',
				onFinish = 'close_hood',
				time = 500,
				anim = {'mini@repair', 'fixing_a_player', 0},
				scale = 1.5,
				zScale = 2.0,
				skipIf = 'noHood',
			},

			{
				bonePos = {'neon_f', 'extralight_2', 'extralight_1', 'overheat', 'overheat_2', 'engine'},
				label = _U("car_r_fix_front_bumper"), --~REPLACE~'~y~Oprav~s~ přední nárazník.',
				helpLabel = _U("repair"), --~REPLACE~_U("steps_action"),
				time = math.random(6 * 1000, 12 * 1000),
				anim = {'amb@world_human_vehicle_mechanic@male@idle_a', 'idle_a', 0},
				scale = 1.7,
				zScale = 2.0,
				headingOffset = 180.0,
				skipIf = 'frontBumberOk',
				onFinish = 'fixFrontBumper',
			},
			{
				bonePos = {'neon_b', 'exhaust', 'center'},
				label = _U("car_r_fix_read_bumper"), --~REPLACE~'~y~Oprav~s~ zadní nárazník.',
				helpLabel = _U("repair"), --~REPLACE~_U("steps_action"),
				time = math.random(6 * 1000, 12 * 1000),
				anim = {'amb@world_human_vehicle_mechanic@male@idle_a', 'idle_a', 0},
				scale = 1.7,
				zScale = 2.0,
				headingOffset = 180.0,
				skipIf = 'rearBumberOk',
				onFinish = 'fixRearBumper',
			},
			{
				bonePos = {'center'},
				label = _U("car_r_check_chasis"), --~REPLACE~'~y~Zkontroluj~s~ podvozek',
				helpLabel = _U("repair_check"), --~REPLACE~'Zkontroluj podvozek',
				time = math.random(10 * 1000, 15 * 1000),
				anim = {'mini@repair', 'fixing_a_player' , 1+16},
			},			

			{
				bonePos = {'windscreen', 'center'},
				label = _U("car_r_fix_front_window"), --~REPLACE~'~y~Oprav~s~ přední okno',
				helpLabel = _U("repair"), --~REPLACE~_U("steps_action"),
				time = math.random(3000, 3500),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 2.0,
				zScale = 2.0,
				skipIf = 'windscreenOk',
				onFinish = 'fixWindscreen',
			},
			{
				bonePos = {'windscreen_r', 'boot', 'exhaust', 'neon_b', 'center'},
				label = _U("car_r_fix_rear_window"), --~REPLACE~'~y~Oprav~s~ zadní okno',
				helpLabel = _U("repair"), --~REPLACE~_U("steps_action"),
				time = math.random(8000, 10000),
				anim = {'mp_car_bomb', 'car_bomb_mechanic', 1},
				scale = 2.0,
				zScale = 2.0,
				skipIf = 'windowRearOk',
				onFinish = 'fixWindowRear',
			},

			{
				bonePos = {'engine', 'bonnet', 'neon_f'},
				label = _U("car_r_check_final"), --~REPLACE~'~y~Zkontroluj,~s~ že vše je opravené.',
				helpLabel = _U("car_r_finish_repair"), --~REPLACE~_U("steps_action"),
				time = 5000,
				anim = {'mp_cp_welcome_tutthink', 'b_think', 1},
				scale = 2.0,
				zScale = 2.0,
				onFinish = 'install',
			},

		}
	},
}


for key, data in pairs(Config.Menus) do
	if data.modType and not data.steps then
		debugMessage(key .. ' has no steps')
	end
end

UserComponentPositions = {
    ['bonnet'] = {
        boneId = "SKEL_L_Hand",
        object = "imp_prop_impexp_bonnet_02a",
        rotation = vector3(102.0, -6.0, -182.0),
        bonePos = vector3(0.0, -0.1, 0.014),
        wait = 5000,
    },
    ['boot'] = {
        boneId = "SKEL_L_Hand",
        object = "imp_prop_impexp_trunk_01a",
        rotation = vector3(-107.0,5.0,177.0),
        bonePos = vector3(-0.091,0.008,-0.724),
        wait = 5000,
    },
    ['window_lf'] = {
        boneId = "SKEL_L_Hand",
        object = 'ng_proc_box_01a',
        bonePos = vector3(0.0,0.0,-0.191),
        rotation = vector3(0.0,0.0,0.0),
        wait = 5000,
    },
    ['window_rf'] = {
        boneId = "SKEL_L_Hand",
        object = 'ng_proc_box_01a',
        bonePos = vector3(0.0,0.0,-0.191),
        rotation = vector3(0.0,0.0,0.0),
        wait = 5000,
    },
    ['window_lr'] = {
        boneId = "SKEL_L_Hand",
        object = 'ng_proc_box_01a',
        bonePos = vector3(0.0,0.0,-0.191),
        rotation = vector3(0.0,0.0,0.0),
        wait = 5000,
    },
    ['window_rr'] = {
        boneId = "SKEL_L_Hand",
        object = 'ng_proc_box_01a',
        bonePos = vector3(0.0,0.0,-0.191),
        rotation = vector3(0.0,0.0,0.0),
        wait = 5000,
    },
    ['wheel_lf'] = {
        boneId = "SKEL_L_Hand",
        object = "prop_wheel_tyre",
        rotation = vector3(-11.0,1.0,0.0),
        bonePos = vector3(-0.023,0.016,0.116),
        wait = 5000,
    },
    ['wheel_rf'] = {
        boneId = "SKEL_L_Hand",
        object = "prop_wheel_tyre",
        rotation = vector3(-11.0,1.0,0.0),
        bonePos = vector3(-0.023,0.016,0.116),
        wait = 5000,
    },
    ['wheel_lr'] = {
        boneId = "SKEL_L_Hand",
        object = "prop_wheel_tyre",
        rotation = vector3(-11.0,1.0,0.0),
        bonePos = vector3(-0.023,0.016,0.116),
        wait = 5000,
    },
    ['wheel_rr'] = {
        boneId = "SKEL_L_Hand",
        object = "prop_wheel_tyre",
        rotation = vector3(-11.0,1.0,0.0),
        bonePos = vector3(-0.023,0.016,0.116),
        wait = 5000,
    },
    ['door_dside_f'] = {
        boneId = "SKEL_L_Hand",
        object = "imp_prop_impexp_car_door_03a",
        rotation = vector3(85.0,-82.0,107.0),
        bonePos = vector3(-0.422,-0.055,0.011),
        wait = 5000,
    },
    ['door_dside_r'] = {
        boneId = "SKEL_L_Hand",
        object = "imp_prop_impexp_car_door_03a",
        rotation = vector3(85.0,-82.0,107.0),
        bonePos = vector3(-0.422,-0.055,0.011),
        wait = 5000,
    },
    ['door_pside_f'] = {
        boneId = "SKEL_L_Hand",
        object = "imp_prop_impexp_car_door_03a",
        rotation = vector3(85.0,-82.0,107.0),
        bonePos = vector3(-0.422,-0.055,0.011),
        wait = 5000,
    },
    ['door_pside_r'] = {
        boneId = "SKEL_L_Hand",
        object = "imp_prop_impexp_car_door_03a",
        rotation = vector3(85.0,-82.0,107.0),
        bonePos = vector3(-0.422,-0.055,0.011),
        wait = 5000,
    },
}

VehDisassemblyConfig = {
    ['NPC'] = {
        ['gps'] = vector3(-420.7389, -1674.4390, 19.0290-0.98),
        ['heading'] = 160.8332,
        ['npcType'] = 'mp_m_waremech_01',
    },
    ['vehicle'] = {
        ['vehicleDelivery'] = vector3(-424.5307, -1683.3426, 18.05),
    },
    ['deliveryPos'] = vector3(-415.68, -1677.24, 17.89),
    ['types'] = {
        [1] = {
            {
                label = 'black',
                [0] = 'black',
                [1] = 'graphite',
                [2] = 'black_metallic',
                [3] = 'caststeel',
                [11] = 'black_anth',
                [12] = 'matteblack',
                [15] = 'darknight',
                [16] = 'deepblack',
                [21] = 'oil',
                [147] = 'carbon',
            },
            {
                label = 'white',
                [106] = 'vanilla',
                [107] = 'creme',
                [111] = 'white',
                [112] = 'polarwhite',
                [113] = 'beige',
                [121] = 'mattewhite',
                [122] = 'snow',
                [131] = 'cotton',
                [132] = 'alabaster',
                [134] = 'purewhite',
            },
            {
                label = 'silver',
                [4] = 'silver',
                [5] = 'metallicgrey',
                [6] = 'laminatedsteel',
                [7] = 'darkgray',
                [8] = 'rockygray',
                [9] = 'graynight',
                [10] = 'aluminum',
                [13] = 'graymat',
                [14] = 'lightgrey',
                [17] = 'asphaltgray',
                [18] = 'grayconcrete',
                [19] = 'darksilver',
                [20] = 'magnesite',
                [22] = 'nickel',
                [23] = 'zinc',
                [24] = 'dolomite',
                [25] = 'bluesilver',
                [26] = 'titanium',
                [66] = 'steelblue',
                [93] = 'champagne',
                [144] = 'grayhunter',
                [156] = 'grey',
            },
            {
                label = 'red',
                [27] = 'red',
                [28] = 'torino_red',
                [29] = 'poppy',
                [30] = 'copper_red',
                [31] = 'cardinal',
                [32] = 'brick',
                [33] = 'garnet',
                [34] = 'cabernet',
                [35] = 'candy',
                [39] = 'matte_red',
                [40] = 'dark_red',
                [43] = 'red_pulp',
                [44] = 'bril_red',
                [46] = 'pale_red',
                [143] = 'wine_red',
                [150] = 'volcano',
            },
            {
                label = 'blue',
                [54] = 'topaz',
                [60] = 'light_blue',
                [61] = 'galaxy_blue',
                [62] = 'dark_blue',
                [63] = 'azure',
                [64] = 'navy_blue',
                [65] = 'lapis',
                [67] = 'blue_diamond',
                [68] = 'surfer',
                [69] = 'pastel_blue',
                [70] = 'celeste_blue',
                [73] = 'rally_blue',
                [74] = 'blue_paradise',
                [75] = 'blue_night',
                [77] = 'cyan_blue',
                [78] = 'cobalt',
                [79] = 'electric_blue',
                [80] = 'horizon_blue',
                [82] = 'metallic_blue',
                [83] = 'aquamarine',
                [84] = 'blue_agathe',
                [85] = 'zirconium',
                [86] = 'spinel',
                [87] = 'tourmaline',
                [127] = 'paradise',
                [140] = 'bubble_gum',
                [141] = 'midnight_blue',
                [146] = 'forbidden_blue',
                [157] = 'glacier_blue',
            },
            {
                label = 'green',
                [49] = 'met_dark_green',
                [50] = 'rally_green',
                [51] = 'pine_green',
                [52] = 'olive_green',
                [53] = 'light_green',
                [55] = 'lime_green',
                [56] = 'forest_green',
                [57] = 'lawn_green',
                [58] = 'imperial_green',
                [59] = 'green_bottle',
                [92] = 'citrus_green',
                [125] = 'green_anis',
                [128] = 'khaki',
                [133] = 'army_green',
                [151] = 'dark_green',
                [152] = 'hunter_green',
                [155] = 'matte_foilage_green',
            },
            {
                label = 'orange',
                [36] = 'tangerine',
                [38] = 'orange',
                [41] = 'matteorange',
                [123] = 'lightorange',
                [124] = 'peach',
                [130] = 'pumpkin',
                [138] = 'orangelambo',
            },
            {
                label = 'brown',
                [45] = 'copper',
                [47] = 'lightbrown',
                [48] = 'darkbrown',
                [90] = 'bronze',
                [94] = 'brownmetallic',
                [95] = 'Expresso',
                [96] = 'chocolate',
                [97] = 'terracotta',
                [98] = 'marble',
                [99] = 'sand',
                [100] = 'sepia',
                [101] = 'bison',
                [102] = 'palm',
                [103] = 'caramel',
                [104] = 'rust',
                [105] = 'chestnut',
                [108] = 'brown',
                [109] = 'hazelnut',
                [110] = 'shell',
                [114] = 'mahogany',
                [115] = 'cauldron',
                [116] = 'blond',
                [129] = 'gravel',
                [153] = 'darkearth',
                [154] = 'desert',
            },
        },
        [2] = {
            'Compacts',
            'Sedans',
            'SUVs',
            'Coupes',
            'Muscle',
			'Sports'
        },
    },
}

if not Config.UseJobs then
	Config.UseSocietyMoney = false
end