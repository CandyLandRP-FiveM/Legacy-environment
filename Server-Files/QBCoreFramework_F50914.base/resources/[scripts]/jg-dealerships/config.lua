-- Generated with https://configurator.jgscripts.com at 10/5/2023, 4:08:47 AM

Config = {}
Config.Locale = 'en'
Config.NumberAndDateFormat = 'pst'
Config.Currency = 'USD'
Config.SpeedUnit = 'mph'
Config.Logging = false
Config.Framework = 'QBCore'
Config.FuelSystem = 'cdn-fuel'
Config.VehicleKeys = 'qb-vehiclekeys'
Config.Notifications = 'okok'
Config.PlateFormat = '1AA111AA'
Config.DrawText = 'ox_lib'
Config.OpenShowroomPrompt = '[E] Open Showroom'
Config.OpenShowroomKeyBind = 38
Config.ViewInShowroomPrompt = '[E] View in Showroom'
Config.ViewInShowroomKeyBind = 38
Config.OpenManagementPrompt = '[E] Dealership Management'
Config.OpenManagementKeyBind = 38
Config.SellVehiclePrompt = '[E] Sell Vehicle'
Config.SellVehicleKeyBind = 38
Config.EnableSellVehicle = true
Config.SellVehiclePercent = 0.6
Config.FinancePayments = 24
Config.FinanceDownPayment = 0.1
Config.FinanceInterest = 0.1
Config.FinancePaymentInterval = 12
Config.FinancePaymentFailedHoursUntilRepo = 24
Config.MaxFinancedVehiclesPerPlayer = 1
Config.DisplayVehiclesPlate = 'DEALER'
Config.DealerPurchasePrice = 0.8
Config.VehicleOrderTime = 1
Config.TestDrivePlate = 'TESTER'
Config.TestDriveTimeSeconds = 300
Config.Categories = {
  sportsclassics = 'Sports Classics',
  sedans = 'Sedans',
  compacts = 'Compacts',
  motorcycles = 'Motorcycles',
  offroad = 'Offroad',
  coupes = 'Coupes',
  muscle = 'Muscle',
  vans = 'Vans',
  sports = 'Sports',
  suvs = 'SUVs',
  cycles = 'Cycles',
}
Config.DealershipLocations = {
  pdm = {
    type = 'owned',
    openShowroom = vector3(-42.41, -1089.96, 27.27),
    openManagement = vector3(-26.373115539551, -1106.5903320313, 27.274356842041),
    purchaseSpawn = vector4(-23.163194656372, -1094.142578125, 27.305255889893, 335.41744995117),
    testDriveSpawn = vector4(-14.79, -1086.03, 27.04, 67.95),
    camera = {
      name = 'Car',
      coords = vector4(-146.6166, -596.6301, 166.0000, 120.0),
      positions = {
        5,
        8,
        12,
        8,
      },
    },
    categories = {
      'sedans',
      'compacts',
      'offroad',
      'coupes',
      'muscle',
      'suvs',
      'sportsclassics',
      'vans',
      'sports',
    },
    enableTestDrive = true,
    blip = {
      id = 0,
      color = 0,
      scale = 0,
    },

    sellVehicle = vector4(-5.88, -1090.75, 27.04, 70.67), -- sell vehicle location
    enableFinance = false,
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {}, -- format: showroomJobWhitelist = { mechanic = {1, 2, 3} }
    showroomGangWhitelist = {}, -- (QB only) format: showroomGangWhitelist = { lostmc = {1, 2, 3} }
    disableShowroomPurchase = true, -- if you want to use /directsale only
    directSaleDistance = 50, -- how far away employees can use /directsale
    job = "pdm", -- Owned dealerships only; job employees get within QB/ESX
    
  },
  ['floki'] = {
    type = 'owned',
    openShowroom = vector3(282.23, -1151.79, 29.72),
    openManagement = vector3(270.43991088867, -1166.7214355469, 29.272964477539),
    purchaseSpawn = vector4(273.82104492188, -1159.3331298828, 29.272916793823, 89.17407989502),
    testDriveSpawn = vector4(273.82104492188, -1159.3331298828, 29.272916793823, 89.17407989502),
    camera = {
      name = 'Car',
      coords = vector4(-146.6166, -596.6301, 166.0000, 120.0),
      positions = {
        5,
        8,
        12,
        8,
      },
    },
    categories = {
      'motorcycles',
      'cycles',
    },
    enableTestDrive = true,
    blip = {
      id = 0,
      color = 0,
      scale = 0,
    },

    sellVehicle = vector3(-27.89, -1082.1, 26.64), -- sell vehicle location
    enableFinance = false,
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {}, -- format: showroomJobWhitelist = { mechanic = {1, 2, 3} }
    showroomGangWhitelist = {}, -- (QB only) format: showroomGangWhitelist = { lostmc = {1, 2, 3} }
    disableShowroomPurchase = true, -- if you want to use /directsale only
    directSaleDistance = 50, -- how far away employees can use /directsale
    job = "floki", -- Owned dealerships only; job employees get within QB/ESX
  },
}
Config.Configurator__AllWebhooksSame = true
Config.WebhookTestDrive = ''
Config.WebhookPurchase = ''
Config.WebhookFinance = ''
Config.WebhookDealership = ''
Config.WebhookAdmin = ''
