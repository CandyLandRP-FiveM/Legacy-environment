-- Generated with https://configurator.jgscripts.com at 10/22/2023, 2:25:14 AM

Config = {}
Config.Framework = 'QBCore'
Config.FuelSystem = 'cdn-fuel'
Config.VehicleKeys = 'qb-vehiclekeys'
Config.Notifications = 'default'
Config.Locale = 'en'
Config.DateFormat = 'en-GB'
Config.CurrencySymbol = '$'
Config.DrawText = 'jg-textui'
Config.OpenGarageKeyBind = 38
Config.OpenImpoundKeyBind = 38
Config.InsertVehicleKeyBind = 38
Config.OpenGaragePrompt = '[E] Open Garage'
Config.OpenImpoundPrompt = '[E] Open Impound'
Config.InsertVehiclePrompt = '[E] Store Vehicle'
Config.DoNotSpawnInsideVehicle = true
Config.SaveVehicleDamage = true
Config.AdvancedVehicleDamage = true
Config.SaveVehiclePropsOnInsert = true
Config.GarageVehicleTransferCost = 500
Config.EnableTransfers = {
  betweenGarages = true,
  betweenPlayers = false,
}
Config.AllowInfiniteVehicleSpawns = false
Config.JobGaragesAllowInfiniteVehicleSpawns = false
Config.GangGaragesAllowInfiniteVehicleSpawns = false
Config.GarageVehicleReturnCost = 0
Config.GarageVehicleReturnCostSocietyFund = false
Config.GarageShowBlips = true
Config.GarageUniqueBlips = false
Config.GarageLocations = {
  ['Legion Square'] = {
    coords = vector3(215.09, -805.17, 30.81),
    spawn = vector4(212.42, -798.77, 30.88, 336.61),
    distance = 15,
    type = 'car',
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
  },
  ['Islington South'] = {
    coords = vector3(273.0, -343.85, 44.91),
    spawn = vector4(270.75, -340.51, 44.92, 342.03),
    distance = 15,
    type = 'car',
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
  },
  ['Grove Street'] = {
    coords = vector3(14.66, -1728.52, 29.3),
    spawn = vector4(23.93, -1722.9, 29.3, 310.58),
    distance = 15,
    type = 'car',
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
  },
  ['Mirror Park'] = {
    coords = vector3(1032.84, -765.1, 58.18),
    spawn = vector4(1023.2, -764.27, 57.96, 319.66),
    distance = 15,
    type = 'car',
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
  },
  ['Beach'] = {
    coords = vector3(-1248.69, -1425.71, 4.32),
    spawn = vector4(-1244.27, -1422.08, 4.32, 37.12),
    distance = 15,
    type = 'car',
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
  },
  ['Great Ocean Highway'] = {
    coords = vector3(-2961.58, 375.93, 15.02),
    spawn = vector4(-2964.96, 372.07, 14.78, 86.07),
    distance = 15,
    type = 'car',
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
  },
  ['Sandy South'] = {
    coords = vector3(217.33, 2605.65, 46.04),
    spawn = vector4(216.94, 2608.44, 46.33, 14.07),
    distance = 15,
    type = 'car',
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
  },
  ['Sandy North'] = {
    coords = vector3(1878.44, 3760.1, 32.94),
    spawn = vector4(1880.14, 3757.73, 32.93, 215.54),
    distance = 15,
    type = 'car',
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
  },
  ['North Vinewood Blvd'] = {
    coords = vector3(365.21, 295.65, 103.46),
    spawn = vector4(364.84, 289.73, 103.42, 164.23),
    distance = 15,
    type = 'car',
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
  },
  ['Grapeseed'] = {
    coords = vector3(1713.06, 4745.32, 41.96),
    spawn = vector4(1710.64, 4746.94, 41.95, 90.11),
    distance = 15,
    type = 'car',
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
  },
  ['Paleto Bay'] = {
    coords = vector3(107.32, 6611.77, 31.98),
    spawn = vector4(110.84, 6607.82, 31.86, 265.28),
    distance = 15,
    type = 'car',
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
  },
  Boats = {
    coords = vector3(-795.15, -1510.79, 1.6),
    spawn = vector4(-798.66, -1507.73, -0.47, 102.23),
    distance = 20,
    type = 'sea',
    hideBlip = true,
    blip = {
      id = 410,
      color = 0,
      scale = 0.6,
    },
  },
  Hangar = {
    coords = vector3(-1243.49, -3391.88, 13.94),
    spawn = vector4(-1258.4, -3394.56, 13.94, 328.23),
    distance = 20,
    type = 'air',
    hideBlip = true,
    blip = {
      id = 423,
      color = 0,
      scale = 0.6,
    },
  },
  flokis = {
    coords = vector3(331.73, -1163.16, 29.29),
    spawn = vector4(335.25, -1153.78, 29.29, 87.74),
    distance = 20,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
  },
  ['Alta Apartments'] = {
    coords = vector3(-300.37, -990.11, 31.08),
    spawn = vector4(-299.52, -980.7, 31.08, 236.33),
    distance = 20,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 423,
      color = 0,
      scale = 0.6,
    },
  },
  ['The Shenanigans'] = {
    coords = vector3(1236.3, -443.38, 67.71),
    spawn = vector4(1222.42, -432.78, 67.45, 76.5),
    distance = 12,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 423,
      color = 0,
      scale = 0.6,
    },
  },
  ['Cool Beans'] = {
    coords = vector3(-1182.29, -1116.3, 5.7),
    spawn = vector4(-1180.89, -1128.12, 5.7, 22.04),
    distance = 12,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 423,
      color = 0,
      scale = 0.6,
    },
  },
  ['Pha Q'] = {
    coords = vector3(-147.71, 272.65, 94.38),
    spawn = vector4(-176.41, 275.6, 93.03, 161.5),
    distance = 12,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 423,
      color = 0,
      scale = 0.6,
    },
  },
  Arcade = {
    coords = vector3(2353.36, 3036.33, 48.18),
    spawn = vector4(2357.02, 3044.34, 48.15, 265.02),
    distance = 12,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 423,
      color = 0,
      scale = 0.6,
    },
  },
  recycle = {
    coords = vector3(756.97, -1400.66, 26.52),
    spawn = vector4(757.52, -1404.71, 26.54, 179.62),
    distance = 7,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 423,
      color = 0,
      scale = 0.6,
    },
  },
  nachodaddys = {
    coords = vector3(997.7, -1383.69, 31.36),
    spawn = vector4(994.65, -1380.24, 31.35, 293.83),
    distance = 5,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 423,
      color = 0,
      scale = 0.6,
    },
  },
  UpAndAtom = {
    coords = vector3(109.6, 285.71, 109.97),
    spawn = vector4(109.6, 285.71, 109.97, 247.99),
    distance = 5,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 423,
      color = 0,
      scale = 0.6,
    },
  },
  pdm = {
    coords = vector3(-49.1, -1117.28, 26.67),
    spawn = vector4(-66.63, -1103.57, 26.11, 58.58),
    distance = 15,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
  },
  trash = {
    coords = vector3(-323.58, -1518.46, 27.54),
    spawn = vector4(-329.3, -1517.95, 27.53, 181.05),
    distance = 15,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
  },
  pillbox = {
    coords = vector3(294.33, -610.82, 43.24),
    spawn = vector4(288.43, -604.47, 43.18, 338.35),
    distance = 5,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 410,
      color = 0,
      scale = 0.6,
    },
  },
  usedcarlot = {
    coords = vector3(1248.6, 2713.97, 38.01),
    spawn = vector4(1250.55, 2704.89, 38.01, 196.11),
    distance = 20,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 410,
      color = 0,
      scale = 0.6,
    },
  },
  cemetary = {
    coords = vector3(-1659.09, -207.86, 55.21),
    spawn = vector4(-1629.55, -214.19, 54.92, 235.91),
    distance = 5,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 410,
      color = 0,
      scale = 0.6,
    },
  },
  Cortez = {
    coords = vector3(-303.87, 233.42, 88.14),
    spawn = vector4(-327.52, 226.12, 86.8, 29.12),
    distance = 5,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 410,
      color = 0,
      scale = 0.6,
    },
  },
  Njords = {
    coords = vector3(145.13, -1327.7, 29.2),
    spawn = vector4(146.94, -1328.1, 29.2, 236.94),
    distance = 5,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 410,
      color = 0,
      scale = 0.6,
    },
  },
  Pinkcage = {
    coords = vector3(288.97, -230.35, 53.93),
    spawn = vector4(288.97, -230.35, 53.93, 166.03),
    distance = 20,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 410,
      color = 0,
      scale = 0.6,
    },
  },
  RWS1 = {
    coords = vector3(144.37, -3210.6, 5.86),
    spawn = vector4(133.01, -3210.85, 5.86, 266.25),
    distance = 5,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 410,
      color = 0,
      scale = 0.6,
    },
  },
  Bloods = {
    coords = vector3(-72.59, 356.65, 112.44),
    spawn = vector4(-68.8, 355.32, 112.44, 255.95),
    distance = 5,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 410,
      color = 0,
      scale = 0.6,
    },
  },
  Cyber = {
    coords = vector3(717.68, -782.74, 24.65),
    spawn = vector4(722.73, -787.7, 24.8, 183.41),
    distance = 5,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 410,
      color = 0,
      scale = 0.6,
    },
  },
  Pdpersonal = {
    coords = vector3(400.26, -941.34, 22.2),
    spawn = vector4(408.12, -940.08, 22.2, 184.82),
    distance = 10,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 410,
      color = 0,
      scale = 0.6,
    },
  },
  pops = {
    coords = vector3(1755.19, 3334.22, 41.24),
    spawn = vector4(1755.19, 3334.22, 41.24, 297.96),
    distance = 10,
    type = 'car',
    hideBlip = true,
    blip = {
      id = 410,
      color = 0,
      scale = 0.6,
    },
  },
}
Config.JobGarageShowBlips = false
Config.JobGarageUniqueBlips = false
Config.JobGarageSetVehicleCommand = 'setjobvehicle'
Config.JobGarageRemoveVehicleCommand = 'removejobvehicle'
Config.JobGarageLocations = {
  Mechanic = {
    coords = vector3(157.86, -3005.9, 7.03),
    spawn = vector4(165.26, -3014.94, 5.9, 268.8),
    distance = 15,
    job = 'mechanic',
    type = 'car',
    vehiclesType = 'owned',
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
    hideBlip = false,
  },
  Police = {
    coords = vector3(394.52, -962.1, 22.2),
    spawn = vector4(411.81, -971.13, 22.2, 10.01),
    distance = 10,
    job = 'police',
    type = 'car',
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
    hideBlip = false,
    vehiclesType = 'spawner',
    showLiveriesExtrasMenu = true,
    vehicles = {
      {
        vehicle = 'nkcaracara2',
        plate = false,
        minJobGrade = 3,4,5,6,7,
      },
      {
        vehicle = 'nkcruiser',
        plate = false,
        minJobGrade = 0,1,2,3,4,5,6,7,
      },
      {
        vehicle = 'nkvstr',
        plate = false,
        minJobGrade = 5,6,7,
      },
      {
        vehicle = 'nkbison',
        plate = false,
        minJobGrade = 1,2,3,4,5,6,7,
      },
      {
        vehicle = 'nkgranger2',
        plate = false,
        minJobGrade = 1,2,3,4,5,6,7,
      },
      {
        vehicle = 'nkstx',
        plate = false,
        minJobGrade = 2,3,4,5,6,7,
      },
      {
        vehicle = 'nktorrence',
        plate = false,
        minJobGrade = 1,2,3,4,5,6,7,
      },
      {
        vehicle = 'pigeonp',
        plate = false,
        minJobGrade = 0,1,2,3,4,5,6,7,
      },
      {
        vehicle = 'policeb',
        plate = false,
        minJobGrade = 0,1,2,3,4,5,6,7,
      },
    },
  },
  EMS = {
    coords = vector3(287.58, -587.76, 43.13),
    spawn = vector4(288.06, -591.76, 43.15, 333.73),
    distance = 5,
    job = 'ambulance',
    type = 'car',
    vehiclesType = 'spawner',
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
    hideBlip = false,
    showLiveriesExtrasMenu = true,
    vehicles = {
      {
        vehicle = 'emsnspeedo',
        plate = false,
        minJobGrade = 0,
      },
      {
        vehicle = 'emsroamer',
        plate = false,
        minJobGrade = 0,
      },
    },
  },
  RentalOne = {
    coords = vector3(4811.46, -4918.5, 1.57), 
    spawn = vector4(4807.04, -4916.35, -0.27, 74.1),
    distance = 10,
    job = 'rental',
    type = 'sea',
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
    hideBlip = true,
    vehiclesType = 'spawner',
    showLiveriesExtrasMenu = true,
    vehicles = {
      {
        vehicle = 'seashark',
        plate = false,
        minJobGrade = 0,
      },
      {
        vehicle = 'seashark3',
        plate = false,
        minJobGrade = 0,
      },
      {
        vehicle = 'speeder',
        plate = false,
        minJobGrade = 0,
      },
    },
  },
  RentalTwo = {
    coords = vector3(4493.97, -4514.61, 4.02), 
    spawn = vector4(4492.96, -4509.72, 4.19, 279.66),
    distance = 10,
    job = 'rental',
    type = 'car',
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
    hideBlip = true,
    vehiclesType = 'spawner',
    showLiveriesExtrasMenu = true,
    vehicles = {
      {
        vehicle = 'blazer',
        plate = false,
        minJobGrade = 0,
      },
      {
        vehicle = 'mesa3',
        plate = false,
        minJobGrade = 0,
      },
      {
        vehicle = 'outlaw',
        plate = false,
        minJobGrade = 0,
      },
    },
  },
  HELI = {
    coords = vector3(351.56, -586.12, 74.16),
    spawn = vector4(351.56, -586.12, 74.16, 238.82),
    distance = 5,
    job = 'ambulance',
    type = 'air',
    vehiclesType = 'spawner',
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
    hideBlip = true,
    showLiveriesExtrasMenu = true,
    vehicles = {
      {
        vehicle = 'polmav',
        plate = false,
        minJobGrade = 1,2,3,4,5,6,
      },
    },
  },
  Tow = {
    coords = vector3(486.12, -1333.02, 29.31),
    spawn = vector4(488.37, -1333.49, 29.33, 292.89),
    distance = 10,
    job = 'tow',
    type = 'car',
    vehiclesType = 'spawner',
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
    hideBlip = false,
    showLiveriesExtrasMenu = true,
    vehicles = {
      {
        vehicle = 'flatbed3',
        plate = false,
        minJobGrade = 0,1,2,
      },
    },
  },
  RWS = {
    coords = vector3(146.44, -3187.09, 5.86),
    spawn = vector4(141.46, -3187.12, 5.86, 182.03),
    distance = 10,
    job = 'rws',
    type = 'car',
    vehiclesType = 'spawner',
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
    hideBlip = false,
    showLiveriesExtrasMenu = true,
    vehicles = {
      {
        vehicle = 'hbox',
        plate = false,
        minJobGrade = 0,1,2,3,4
      },
    },
  },
  nachodaddy = {
    coords = vector3(1005.2, -1410.27, 31.51),
    spawn = vector4(1001.02, -1407.3, 31.36, 119.4),
    distance = 10,
    job = 'nachodaddy',
    type = 'car',
    vehiclesType = 'spawner',
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
    hideBlip = false,
    showLiveriesExtrasMenu = true,
    vehicles = {
      {
        vehicle = 'fdtruckw',
        plate = false,
        minJobGrade = 0,1,2,3,4
      },
    },
  },
}
Config.GangGarageShowBlips = false
Config.GangGarageUniqueBlips = false
Config.GangGarageSetVehicleCommand = 'setgangvehicle'
Config.GangGarageRemoveVehicleCommand = 'removegangvehicle'
Config.GangGarageLocations = {
  ['The Lost MC'] = {
    coords = vector3(439.18, -1518.48, 29.28),
    spawn = vector4(439.18, -1518.48, 29.28, 139.06),
    distance = 15,
    gang = 'lostmc',
    type = 'car',
    vehiclesType = 'personal',
    blip = {
      id = 357,
      color = 0,
      scale = 0.6,
    },
    hideBlip = false,
  },
}
Config.ImpoundShowBlips = true
Config.ImpoundUniqueBlips = false
Config.ImpoundCommand = 'iv'
Config.ImpoundJobRestriction = {
  'police',
}
Config.ImpoundFeesSocietyFund = 'police'
Config.ImpoundLocations = {
  ['Impound A'] = {
    coords = vector3(410.8, -1626.26, 29.29),
    spawn = vector4(408.44, -1630.88, 29.29, 136.88),
    distance = 15,
    type = 'car',
    blip = {
      id = 68,
      color = 0,
      scale = 0.6,
    },
    hideBlip = false,
  },
  ['Impound B'] = {
    coords = vector3(1649.71, 3789.61, 34.79),
    spawn = vector4(1643.66, 3798.36, 34.49, 216.16),
    distance = 15,
    type = 'car',
    blip = {
      id = 68,
      color = 0,
      scale = 0.6,
    },
    hideBlip = false,
  },
}
Config.PrivGarageCreateCommand = 'privategarages'
Config.PrivGarageCreateJobRestriction = {
  'realestate',
}
Config.ChangeVehiclePlate = 'vplate'
Config.DeleteVehicleFromDB = 'dvdb'
Config.ReturnVehicleToGarage = 'vreturn'
Config.VehicleLabels = {
  spawnName = 'Pretty Vehicle Label',
  nkcruiser = 'Police Cruiser',
  nkcaracara2 = 'Police Raptor',
  nkvstr = 'Police VSTR',
  nkbison = 'Police Bison',
  nkgranger2 = 'Police Granger',
  nkstx = 'Police Interceptor',
  nktorrence = 'Police Torrence',
  pigeonp = 'Meter Maid',
  policeb = 'Police Bike'
}
Config.__v2Config = true
Config.Config = {}
Config.PlayerTransferBlacklist = {
  'spawnName',
}
