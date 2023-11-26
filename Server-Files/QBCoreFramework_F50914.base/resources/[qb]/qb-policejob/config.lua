Config = {}

Config.Objects = {
    ["cone"] = {model = 'prop_roadcone02a', freeze = false},
    ["barrier"] = {model = 'prop_barrier_work06a', freeze = true},
    ["roadsign"] = {model = 'prop_snow_sign_road_06g', freeze = true},
    ["tent"] = {model = 'prop_gazebo_03', freeze = true},
    ["light"] = {model = 'prop_worklight_03b', freeze = true},
}

Config.MaxSpikes = 5

Config.HandCuffItem = 'handcuffs'

Config.LicenseRank = 0

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Locations = {
    ["duty"] = {
        [1] = vector3(463.97, -985.15, 35.84)
    },
    ["vehicle"] = {
        [1] = vector3(1, 1, 1)
    },
    ["stash"] = {
        [1] = vector3(453.17, -986.11, 30.73),
        [2] = vector3(601.89, 15.29, 91.56),
    },
    ["impound"] = {
        [1] = vector3(-184.43, -1172.79, 23.04),
        [2] = vector3(-194.49, -1173.62, 23.04),
    },
    ["helicopter"] = {
        [1] = vector4(459.85110473633, -988.0146484375, 47.454029083252, 218.90260314941),
    },
    ["armory"] = {
        [1] = vector3(486.87530517578, -985.81396484375, 28.021812438965), 
        [2] = vector3(486.47454833984, -983.75415039063, 28.021810531616),
        [3] = vector3(484.98361206055, -987.75231933594, 28.021810531616),
    },
    ["trash"] = {
        [1] = vector3(437.83, -996.33, 30.81),
    },
    ["fingerprint"] = {
        [1] = vector3(467.35827636719, -997.07214355469, 28.965467453003),
    },
    ["evidence"] = {
        [1] = vector3(596.69, 2.69, 82.74),
        [2] = vector3(596.55, 5.8, 82.74),
        [3] = vector3(599.31, 5.12, 82.74),
        [4] = vector3(597.74, 1.25, 82.74),
        [5] = vector3(561.96, 2.41, 82.74),
        [6] = vector3(740.59, 145.14, 80.72),
    },
    ["stations"] = {
        [1] = {label = "M.R.P.D", coords = vector4(423.71435546875, -995.6826171875, 30.715848922729, 79.989212036133)},
        [2] = {label = "Prison", coords = vector4(1845.903, 2585.873, 45.672, 272.249)},
        [3] = {label = "Police Station Paleto", coords = vector4(-451.55, 6014.25, 31.716, 223.81)},
    },
}

Config.ArmoryWhitelist = {}

Config.PoliceHelicopter = "POLMAV"

Config.SecurityCameras = {
    hideradar = false,
    cameras = {
        [1] = {label = "Pacific Bank CAM#1", coords = vector3(257.45, 210.07, 109.08), r = {x = -25.0, y = 0.0, z = 28.05}, canRotate = false, isOnline = true},
        [2] = {label = "Pacific Bank CAM#2", coords = vector3(232.86, 221.46, 107.83), r = {x = -25.0, y = 0.0, z = -140.91}, canRotate = false, isOnline = true},
        [3] = {label = "Pacific Bank CAM#3", coords = vector3(252.27, 225.52, 103.99), r = {x = -35.0, y = 0.0, z = -74.87}, canRotate = false, isOnline = true},
        [4] = {label = "Limited Ltd Grove St. CAM#1", coords = vector3(-53.1433, -1746.714, 31.546), r = {x = -35.0, y = 0.0, z = -168.9182}, canRotate = false, isOnline = true},
        [5] = {label = "Rob's Liqour Prosperity St. CAM#1", coords = vector3(-1482.9, -380.463, 42.363), r = {x = -35.0, y = 0.0, z = 79.53281}, canRotate = false, isOnline = true},
        [6] = {label = "Rob's Liqour San Andreas Ave. CAM#1", coords = vector3(-1224.874, -911.094, 14.401), r = {x = -35.0, y = 0.0, z = -6.778894}, canRotate = false, isOnline = true},
        [7] = {label = "Limited Ltd Ginger St. CAM#1", coords = vector3(-718.153, -909.211, 21.49), r = {x = -35.0, y = 0.0, z = -137.1431}, canRotate = false, isOnline = true},
        [8] = {label = "24/7 Supermarkt Innocence Blvd. CAM#1", coords = vector3(23.885, -1342.441, 31.672), r = {x = -35.0, y = 0.0, z = -142.9191}, canRotate = false, isOnline = true},
        [9] = {label = "Rob's Liqour El Rancho Blvd. CAM#1", coords = vector3(1133.024, -978.712, 48.515), r = {x = -35.0, y = 0.0, z = -137.302}, canRotate = false, isOnline = true},
        [10] = {label = "Limited Ltd West Mirror Drive CAM#1", coords = vector3(1151.93, -320.389, 71.33), r = {x = -35.0, y = 0.0, z = -119.4468}, canRotate = false, isOnline = true},
        [11] = {label = "24/7 Supermarkt Clinton Ave CAM#1", coords = vector3(383.402, 328.915, 105.541), r = {x = -35.0, y = 0.0, z = 118.585}, canRotate = false, isOnline = true},
        [12] = {label = "Limited Ltd Banham Canyon Dr CAM#1", coords = vector3(-1832.057, 789.389, 140.436), r = {x = -35.0, y = 0.0, z = -91.481}, canRotate = false, isOnline = true},
        [13] = {label = "Rob's Liqour Great Ocean Hwy CAM#1", coords = vector3(-2966.15, 387.067, 17.393), r = {x = -35.0, y = 0.0, z = 32.92229}, canRotate = false, isOnline = true},
        [14] = {label = "24/7 Supermarkt Ineseno Road CAM#1", coords = vector3(-3046.749, 592.491, 9.808), r = {x = -35.0, y = 0.0, z = -116.673}, canRotate = false, isOnline = true},
        [15] = {label = "24/7 Supermarkt Barbareno Rd. CAM#1", coords = vector3(-3246.489, 1010.408, 14.705), r = {x = -35.0, y = 0.0, z = -135.2151}, canRotate = false, isOnline = true},
        [16] = {label = "24/7 Supermarkt Route 68 CAM#1", coords = vector3(539.773, 2664.904, 44.056), r = {x = -35.0, y = 0.0, z = -42.947}, canRotate = false, isOnline = true},
        [17] = {label = "Rob's Liqour Route 68 CAM#1", coords = vector3(1169.855, 2711.493, 40.432), r = {x = -35.0, y = 0.0, z = 127.17}, canRotate = false, isOnline = true},
        [18] = {label = "24/7 Supermarkt Senora Fwy CAM#1", coords = vector3(2673.579, 3281.265, 57.541), r = {x = -35.0, y = 0.0, z = -80.242}, canRotate = false, isOnline = true},
        [19] = {label = "24/7 Supermarkt Alhambra Dr. CAM#1", coords = vector3(1966.24, 3749.545, 34.143), r = {x = -35.0, y = 0.0, z = 163.065}, canRotate = false, isOnline = true},
        [20] = {label = "24/7 Supermarkt Senora Fwy CAM#2", coords = vector3(1729.522, 6419.87, 37.262), r = {x = -35.0, y = 0.0, z = -160.089}, canRotate = false, isOnline = true},
        [21] = {label = "Fleeca Bank Hawick Ave CAM#1", coords = vector3(309.341, -281.439, 55.88), r = {x = -35.0, y = 0.0, z = -146.1595}, canRotate = false, isOnline = true},
        [22] = {label = "Fleeca Bank Legion Square CAM#1", coords = vector3(144.871, -1043.044, 31.017), r = {x = -35.0, y = 0.0, z = -143.9796}, canRotate = false, isOnline = true},
        [23] = {label = "Fleeca Bank Hawick Ave CAM#2", coords = vector3(-355.7643, -52.506, 50.746), r = {x = -35.0, y = 0.0, z = -143.8711}, canRotate = false, isOnline = true},
        [24] = {label = "Fleeca Bank Del Perro Blvd CAM#1", coords = vector3(-1214.226, -335.86, 39.515), r = {x = -35.0, y = 0.0, z = -97.862}, canRotate = false, isOnline = true},
        [25] = {label = "Fleeca Bank Great Ocean Hwy CAM#1", coords = vector3(-2958.885, 478.983, 17.406), r = {x = -35.0, y = 0.0, z = -34.69595}, canRotate = false, isOnline = true},
        [26] = {label = "Paleto Bank CAM#1", coords = vector3(-102.939, 6467.668, 33.424), r = {x = -35.0, y = 0.0, z = 24.66}, canRotate = false, isOnline = true},
        [27] = {label = "Del Vecchio Liquor Paleto Bay", coords = vector3(-163.75, 6323.45, 33.424), r = {x = -35.0, y = 0.0, z = 260.00}, canRotate = false, isOnline = true},
        [28] = {label = "Don's Country Store Paleto Bay CAM#1", coords = vector3(166.42, 6634.4, 33.69), r = {x = -35.0, y = 0.0, z = 32.00}, canRotate = false, isOnline = true},
        [29] = {label = "Don's Country Store Paleto Bay CAM#2", coords = vector3(163.74, 6644.34, 33.69), r = {x = -35.0, y = 0.0, z = 168.00}, canRotate = false, isOnline = true},
        [30] = {label = "Don's Country Store Paleto Bay CAM#3", coords = vector3(169.54, 6640.89, 33.69), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = false, isOnline = true},
        [31] = {label = "Vangelico Jewelery CAM#1", coords = vector3(-627.54, -239.74, 40.33), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
        [32] = {label = "Vangelico Jewelery CAM#2", coords = vector3(-627.51, -229.51, 40.24), r = {x = -35.0, y = 0.0, z = -95.78}, canRotate = true, isOnline = true},
        [33] = {label = "Vangelico Jewelery CAM#3", coords = vector3(-620.3, -224.31, 40.23), r = {x = -35.0, y = 0.0, z = 165.78}, canRotate = true, isOnline = true},
        [34] = {label = "Vangelico Jewelery CAM#4", coords = vector3(-622.57, -236.3, 40.31), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
        [35] = {label = "Prison Entrance", coords = vector3(721.8, 136.21, 87.04), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
        [36] = {label = "Prison Gym", coords = vector3(681.49, 104.77, 86.93), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
        [37] = {label = "Prison Cantina", coords = vector3(666.51, 145.33, 84.04), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
        [38] = {label = "Prison Cells Lower", coords = vector3(664.94, 93.7, 81.3), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
        [39] = {label = "Prison Cells Upper", coords = vector3(663.94, 93.22, 85.83), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
    },
}
Config.AuthorizedVehicles = {}

Config.WhitelistedVehicles = {}

Config.AmmoLabels = {
    ["AMMO_PISTOL"] = "9x19mm parabellum bullet",
    ["AMMO_SMG"] = "9x19mm parabellum bullet",
    ["AMMO_RIFLE"] = "7.62x39mm bullet",
    ["AMMO_MG"] = "7.92x57mm mauser bullet",
    ["AMMO_SHOTGUN"] = "12-gauge bullet",
    ["AMMO_SNIPER"] = "Large caliber bullet",
}

Config.Radars = {
	vector4(-623.44421386719, -823.08361816406, 25.25704574585, 145.0),
	vector4(-652.44421386719, -854.08361816406, 24.55704574585, 325.0),
	vector4(1623.0114746094, 1068.9924316406, 80.903594970703, 84.0),
	vector4(-2604.8994140625, 2996.3391113281, 27.528566360474, 175.0),
	vector4(2136.65234375, -591.81469726563, 94.272926330566, 318.0),
	vector4(2117.5764160156, -558.51013183594, 95.683128356934, 158.0),
	vector4(406.89505004883, -969.06286621094, 29.436267852783, 33.0),
	vector4(657.315, -218.819, 44.06, 320.0),
	vector4(2118.287, 6040.027, 50.928, 172.0),
	vector4(-106.304, -1127.5530, 30.778, 230.0),
	vector4(-823.3688, -1146.980, 8.0, 300.0),
}

Config.CarItems = {}

Config.Items = {
    label = "Police Armory",
    slots = 14,
    items = {
        [1] = {
            name = "weapon_m9",
            price = 0,
            amount = 50,
            info = {},
            type = "weapon",
            slot = 1,
            authorizedJobGrades = {1, 2, 3, 4, 5, 6, 7}
        },
        [2] = {
            name = "pistol_ammo",
            price = 0,
            amount = 1000,
            info = {},
            type = "item",
            slot = 2,
            authorizedJobGrades = {1, 2, 3, 4, 5, 6, 7}
        },
        [3] = {
            name = "weapon_m1",
            price = 0,
            amount = 20,
            info = {},
            type = "weapon",
            slot = 3,
            authorizedJobGrades = {3, 4, 5, 6, 7}
        },
        [4] = {
            name = "shotgun_ammo",
            price = 0,
            amount = 1000,
            info = {},
            type = "item",
            slot = 4,
            authorizedJobGrades = {3, 4, 5, 6, 7}
        },
        [5] = {
            name = "weapon_baton",
            price = 0,
            amount = 100,
            info = {},
            type = "weapon",
            slot = 5,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7}
        },
        [6] = {
            name = "handcuffs",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 6,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7}
        },
        [7] = {
            name = "weapon_flashlight",
            price = 0,
            amount = 100,
            info = {},
            type = "weapon",
            slot = 7,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7}
        },
        [8] = {
            name = "empty_evidence_bag",
            price = 0,
            amount = 500,
            info = {},
            type = "item",
            slot = 8,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7}
        },
        [9] = {
            name = "police_stormram",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 9,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7}
        },
        [10] = {
            name = "radio",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 10,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7}
        },
        [11] = {
            name = "heavyarmor",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 11,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7}
        },
        [12] = {
            name = "weapon_taser",
            price = 0,
            amount = 100,
            info = {},
            type = "weapon",
            slot = 12,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7}
        },
        [13] = {
            name = "taser_ammo",
            price = 0,
            amount = 200,
            info = {},
            type = "item",
            slot = 13,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7}
        },
        [14] = {
            name = "watergun",
            price = 0,
            amount = 200,
            info = {},
            type = "weapon",
            slot = 14,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7}
        },
        [15] = {
            name = "specialbadge",
            price = 0,
            amount = 200,
            info = {},
            type = "item",
            slot = 15,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7}
        },
    }
}

Config.VehicleSettings = {
    ["car1"] = { --- Model name
        ["extras"] = {
            ["1"] = true, -- on/off
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
            ["13"] = true,
        },
		["livery"] = 1,
    },
    ["car2"] = {
        ["extras"] = {
            ["1"] = true,
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
            ["13"] = true,
        },
		["livery"] = 1,
    }
}
