Config = {}

Config.Debug = false

Config.ClothingCost = 100
Config.BarberCost = 50
Config.TattooCost = 250
Config.SurgeonCost = 1000

Config.ChargePerTattoo = true -- Charge players per tattoo. Config.TattooCost will become the cost of 1 tattoo. The cost can be overridden by adding `cost` key in shared/tattoos.lua for specific tattoos

-- Only set this to true if you're using rcore_tattoos
Config.RCoreTattoosCompatibility = false

-- Only set this to true if you're using qs-inventorie V2 with cloths items enabled
Config.InventoryQS = true -- false for other inventories or if you use qs inventorie v2 with cloths items disabled

Config.AsynchronousLoading = false -- Change this to false if you want the NUI data to load before displaying the appearance UI

Config.UseTarget = true

Config.TextUIOptions = {
    position = "left-center"
}

Config.NotifyOptions = {
    position = "top-right"
}

Config.OutfitCodeLength = 10

Config.UseRadialMenu = false
Config.UseOxRadial = false -- Set to true to use ox_lib radial menu, both this and UseRadialMenu must be true 

Config.EnablePedsForShops = false
Config.EnablePedsForClothingRooms = false
Config.EnablePedsForPlayerOutfitRooms = false

Config.EnablePedMenu = true
Config.PedMenuGroup = "group.admin"

Config.ShowNearestShopOnly = false
Config.HideRadar = true -- Hides the minimap while the appearance menu is open
Config.NearestShopBlipUpdateDelay = 10000

Config.InvincibleDuringCustomization = true

Config.PreventTrackerRemoval = true -- Disables "Scarf and Chains" section if the player has tracker
Config.TrackerClothingOptions = {
    drawable = 13,
    texture = 0
}

Config.NewCharacterSections = {
    Ped = true,
    HeadBlend = true,
    FaceFeatures = true,
    HeadOverlays = true,
    Components = true,
    Props = true,
    Tattoos = false
}

Config.GenderBasedOnPed = true

Config.AlwaysKeepProps = false

Config.PersistUniforms = true -- Keeps Job / Gang Outfits on player reconnects / logout
Config.OnDutyOnlyClothingRooms = false -- Set to `true` to make the clothing rooms accessible only to players who are On Duty

Config.BossManagedOutfits = false -- Allows Job / Gang bosses to manage their own job / gang outfits

Config.ReloadSkinCooldown = 5000

Config.AutomaticFade = false -- Enables automatic fading and hides the Fade section from Hair

-- ACE Permissions Config
Config.EnableACEPermissions = false
Config.ACEResetCooldown = 5000
Config.ACEListCooldown = 60 * 60 * 1000 -- 1 Hour

Config.DisableComponents = {
    Masks = false,
    UpperBody = false,
    LowerBody = false,
    Bags = false,
    Shoes = false,
    ScarfAndChains = false,
    BodyArmor = false,
    Shirts = false,
    Decals = false,
    Jackets = false
}

Config.DisableProps = {
    Hats = false,
    Glasses = false,
    Ear = false,
    Watches = false,
    Bracelets = false
}

Config.Blips = {
    ["clothing"] = {
        Show = true,
        Sprite = 366,
        Color = 47,
        Scale = 0.7,
        Name = "Clothing Store",
    },
    ["barber"] = {
        Show = true,
        Sprite = 71,
        Color = 0,
        Scale = 0.7,
        Name = "Barber",
    },
    ["tattoo"] = {
        Show = true,
        Sprite = 75,
        Color = 4,
        Scale = 0.7,
        Name = "Tattoo Shop",
    },
    ["surgeon"] = {
        Show = false,
        Sprite = 102,
        Color = 4,
        Scale = 0.7,
        Name = "Plastic Surgeon",
    }
}

Config.TargetConfig = {
    ["clothing"] = {
        model = "s_f_m_shop_high",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-tshirt",
        label = "Open Clothing Store",
        distance = 3
    },
    ["barber"] = {
        model = "s_m_m_hairdress_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-scissors",
        label = "Open Barber Shop",
        distance = 3
    },
    ["tattoo"] = {
        model = "u_m_y_tattoo_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-pen",
        label = "Open Tattoo Shop",
        distance = 3
    },
    ["surgeon"] = {
        model = "s_m_m_doctor_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-scalpel",
        label = "Open Surgeon",
        distance = 3
    },
    ["clothingroom"] = {
        model = "mp_g_m_pros_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-sign-in-alt",
        label = "Open Job / Gang Clothes Menu",
        distance = 3
    },
    ["playeroutfitroom"] = {
        model = "mp_g_m_pros_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-sign-in-alt",
        label = "Open Outfits Menu",
        distance = 3
    },
}

Config.Stores = {
    {
        type = "clothing",
        coords = vector4(1693.2, 4828.11, 42.07, 188.66),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true, -- false => uses the size + rotation to create the zone | true => uses points to create the zone
        showBlip = true, -- overrides the blip visibilty configured above for the group
        --targetModel = "s_m_m_doctor_01", -- overrides the target ped configured for the group
        --targetScenario = "" -- overrides the target scenario configure for the group
        points = {
            vector3(1686.82, 4829.68, 42.07),
            vector3(1698.49, 4831.38, 42.43),
            vector3(1700.25, 4817.77, 42.07),
            vector3(1688.37, 4816.31, 42.07)
        }
    },
    {
        type = "clothing",
        coords = vector4(-705.5, -149.22, 37.42, 122),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        showBlip = false,
        points = {
            vector3(-710.74, -164.63, 37.42),
            vector3(-720.4, -147.9, 37.42),
            vector3(-705.61, -150.3, 37.42),
            vector3(-703.45, -159.91, 37.42)
        }
    },
    {
        type = "clothing",
        coords = vector4(-1192.61, -768.4, 17.32, 216.6),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        showBlip = false,
        points = {
            vector3(-1198.25, -781.52, 17.33),
            vector3(-1204.2, -773.64, 17.31),
            vector3(-1190.61, -764.04, 18.07),
            vector3(-1184.57, -772.17, 17.79)
        }
    },
    {
        type = "clothing",
        coords = vector4(425.91, -801.03, 29.49, 177.79),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        showBlip = false,
        points = {
            vector3(419.14, -812.04, 29.49),
            vector3(419.55, -798.37, 29.49),
            vector3(431.62, -798.33, 30.36),
            vector3(431.2, -812.07, 29.49)
        }
    },
    {
        type = "clothing",
        coords = vector4(-168.73, -301.41, 39.73, 238.67),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        showBlip = true,
        points = {
            vector3(-154.12, -295.9, 39.73),
            vector3(-160.37, -314.15, 39.73),
            vector3(-168.24, -301.48, 39.73),
            vector3(-162.42, -293.51, 39.73)
        }
    },
    {
        type = "clothing",
        coords = vector4(75.39, -1398.28, 29.38, 6.73),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        showBlip = true,
        points = {
            vector3(81.52, -1387.3, 29.38),
            vector3(81.42, -1400.83, 29.38),
            vector3(69.34, -1400.82, 30.24),
            vector3(69.76, -1387.08, 29.38)
        }
    },
    {
        type = "clothing",
        coords = vector4(-827.39, -1075.93, 11.33, 294.31),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        showBlip = false,
        points = {
            vector3(-814.09, -1076.19, 11.33),
            vector3(-825.79, -1082.76, 11.33),
            vector3(-832.28, -1072.28, 12.19),
            vector3(-820.16, -1065.77, 11.33)
        }
    },
    {
        type = "clothing",
        coords = vector4(-1445.86, -240.78, 49.82, 36.17),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        showBlip = false,
        points = {
            vector3(-1461.4, -239.94, 49.8),
            vector3(-1448.78, -225.94, 49.8),
            vector3(-1446.48, -240.92, 49.82),
            vector3(-1454.96, -245.76, 49.81)
        }
    },
    {
        type = "clothing",
        coords = vector4(9.22, 6515.74, 31.88, 131.27),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        showBlip = false,
        points = {
            vector3(-3.52, 6513.15, 31.88),
            vector3(6.39, 6522.19, 31.88),
            vector3(14.74, 6513.39, 32.74),
            vector3(4.37, 6504.35, 31.88)
        }
    },
    {
        type = "clothing",
        coords = vector4(615.35, 2762.72, 42.09, 170.51),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        showBlip = false,
        points = {
            vector3(622.95, 2751.24, 42.09),
            vector3(613.03, 2750.54, 42.09),
            vector3(612.27, 2767.05, 42.84),
            vector3(622.37, 2767.76, 42.54)
        }
    },
    {
        type = "clothing",
        coords = vector4(1191.61, 2710.91, 38.22, 269.96),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        showBlip = false,
        points = {
            vector3(1202.27, 2704.1, 38.23),
            vector3(1188.79, 2704.2, 38.22),
            vector3(1188.75, 2716.27, 39.09),
            vector3(1202.5, 2715.85, 38.22)
        }
    },
    {
        type = "clothing",
        coords = vector4(-3171.32, 1043.56, 20.86, 334.3),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        showBlip = false,
        points = {
            vector3(-3172.86, 1058.03, 20.86),
            vector3(-3163.79, 1054.0, 20.86),
            vector3(-3170.82, 1039.04, 21.62),
            vector3(-3180.09, 1043.12, 21.32)
        }
    },
    {
        type = "clothing",
        coords = vector4(-1105.52, 2707.79, 19.11, 317.19),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        showBlip = true,
        points = {
            vector3(-1093.2, 2709.74, 19.11),
            vector3(-1102.98, 2700.86, 19.11),
            vector3(-1111.38, 2709.78, 19.97),
            vector3(-1100.85, 2718.64, 19.11)
        }
    },
    {
        type = "clothing",
        coords = vector4(124.82, -224.36, 54.56, 335.41),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        showBlip = false,
        points = {
            vector3(122.53, -209.7, 54.56),
            vector3(131.97, -213.09, 54.56),
            vector3(125.83, -228.49, 55.31),
            vector3(116.31, -225.02, 55.01)
        }
    },
    {
        type = "barber",
        coords = vector4(-814.22, -183.7, 37.57, 116.91),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        showBlip = false,
        points = {
            vector3(-816.02, -188.22, 37.57),
            vector3(-818.68, -184.0, 37.57),
            vector3(-811.33, -180.25, 37.57),
            vector3(-809.01, -185.1, 37.57)
        }
    },
    {
        type = "barber",
        coords = vector4(136.78, -1708.4, 29.29, 144.19),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        showBlip = true,
        points = {
            vector3(136.5, -1711.85, 29.29),
            vector3(133.9, -1709.39, 29.29),
            vector3(139.67, -1703.25, 29.29),
            vector3(141.79, -1705.39, 29.29)
        }
    },
    {
        type = "barber",
        coords = vector4(-1282.57, -1116.84, 6.99, 89.25),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        showBlip = true,
        points = {
            vector3(-1285.76, -1119.27, 6.99),
            vector3(-1285.44, -1115.72, 6.99),
            vector3(-1277.38, -1116.15, 6.99),
            vector3(-1277.58, -1119.37, 6.99)
        }
    },
    {
        type = "barber",
        coords = vector4(1931.41, 3729.73, 32.84, 212.08),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        showBlip = false,
        points = {
            vector3(1928.03, 3734.21, 32.84),
            vector3(1930.83, 3735.81, 32.84),
            vector3(1935.06, 3728.36, 32.84),
            vector3(1931.93, 3726.97, 32.84)
        }
    },
    {
        type = "barber",
        coords = vector4(1212.8, -472.9, 65.2, 60.94),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        showBlip = false,
        points = {
            vector3(1208.79, -474.0, 66.21),
            vector3(1210.1, -470.59, 66.21),
            vector3(1217.9, -473.18, 66.21),
            vector3(1216.95, -476.29, 66.21)
        }
    },
    {
        type = "barber",
        coords = vector4(-32.9, -152.3, 56.1, 335.22),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        showBlip = true,
        points = {
            vector3(-33.85, -157.84, 57.08),
            vector3(-36.81, -156.61, 57.08),
            vector3(-33.82, -148.83, 57.08),
            vector3(-30.71, -150.17, 57.08)
        }
    },
    {
        type = "barber",
        coords = vector4(-278.1, 6228.5, 30.7, 49.32),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        showBlip = false,
        points = {
            vector3(-273.63, 6225.07, 31.7),
            vector3(-276.14, 6222.95, 31.7),
            vector3(-281.82, 6228.89, 31.7),
            vector3(-279.34, 6231.27, 31.7)
        }
    },
    {
        type = "tattoo",
        coords = vector4(1322.6, -1651.9, 51.2, 42.47),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        showBlip = false,
        points = {
            vector3(1320.02, -1653.51, 52.28),
            vector3(1321.99, -1651.7, 52.28),
            vector3(1324.96, -1655.5, 52.28),
            vector3(1322.6, -1657.5, 52.28)
        }
    },
    {
        type = "tattoo",
        coords = vector4(-1154.01, -1425.31, 4.95, 23.21),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        showBlip = false,
        points = {
            vector3(-1154.95, -1425.25, 4.96),
            vector3(-1157.07, -1427.04, 4.96),
            vector3(-1154.61, -1431.08, 4.96),
            vector3(-1152.18, -1429.31, 4.96)
        }
    },
    {
        type = "tattoo",
        coords = vector4(322.62, 180.34, 103.59, 156.2),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        showBlip = true,
        points = {
            vector3(322.89, 179.5, 103.59),
            vector3(325.23, 178.79, 103.59),
            vector3(327.13, 183.13, 103.59),
            vector3(324.18, 184.04, 103.59)
        }
    },
    {
        type = "tattoo",
        coords = vector4(-3169.52, 1074.86, 20.83, 253.29),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        showBlip = false,
        points = {
            vector3(-3169.06, 1075.82, 20.83),
            vector3(-3173.35, 1077.83, 20.83),
            vector3(-3172.06, 1080.4, 20.83),
            vector3(-3168.06, 1078.19, 20.83)
        }
    },
    {
        type = "tattoo",
        coords = vector4(1864.1, 3747.91, 33.03, 17.23),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        showBlip = false,
        points = {
            vector3(1863.05, 3747.64, 33.03),
            vector3(1864.39, 3745.39, 33.03),
            vector3(1868.59, 3747.43, 33.07),
            vector3(1867.06, 3749.51, 33.03)
        }
    },
    {
        type = "tattoo",
        coords = vector4(-294.24, 6200.12, 31.49, 195.72),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        showBlip = true,
        points = {
            vector3(-289.42239379883, 6198.68359375, 31.49),
            vector3(-294.69515991211, 6194.5366210938, 31.49),
            vector3(-298.23013305664, 6199.2451171875, 31.49),
            vector3(-294.1501159668, 6203.2700195312, 31.49)
        }
    },
    {
        type = "surgeon",
        coords = vector4(314.75, -568.18, 43.28, 159.57),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-292.79, 6200.49, 31.48),
            vector3(-294.61, 6202.24, 31.48),
            vector3(-298.1, 6199.2, 31.49),
            vector3(-296.39, 6197.07, 31.49)
        }
    }
}


Config.ClothingRooms = {
    {
        job = "police",
        coords = vector4(465.05, -978.09, 28.05, 183.81),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(461.58, -972.0, 28.04),
            vector3(469.67, -972.1, 28.92),
            vector3(470.01, -984.83, 28.04),
            vector3(461.42, -985.16, 28.25)

        }
    },
    {
        job = "ambulance",
        coords = vector4(300.81, -597.56, 43.28, 215.5),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(299.47, -594.72, 43.72),
            vector3(298.19, -599.44, 43.28),
            vector3(301.28, -600.52, 43.28),
            vector3(303.68, -596.17, 43.28),

        }
    }
}


Config.PlayerOutfitRooms = {
    -- Sample outfit room config
--[[    {
        job = "police",
        coords = vector4(287.28, -573.41, 43.16, 79.61),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(284.83, -574.01, 43.16),
            vector3(286.33, -570.03, 43.16),
            vector3(290.33, -571.74, 43.16),
            vector3(289.0, -574.75, 43.16)
        },
        citizenIDs = {
            "BHH65156"
        }
    }]]--
}

Config.Outfits = {
    ["police"] = {
        ["Male"] = {
            {
                name = "Class B Uniform",
                outfitData = {
                    ["pants"] = {item = 180, texture = 0}, -- Pants
                    ["arms"] = {item = 0, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 203, texture = 0}, -- T Shirt
                    ["vest"] = {item = 62, texture = 0}, -- Body Vest
                    ["torso2"] = {item = 446, texture = 0}, -- Jacket
                    ["shoes"] = {item = 103, texture = 0}, -- Shoes
                    ["accessory"] = {item = 171, texture = 0}, -- Neck Accessory
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = -1, texture = -1}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 241, texture = 0} -- Mask
                },
                grades = {0, 1, 2, 3, 4, 5, 6, 7},
            },
            {
                name = "Class B ALT",
                outfitData = {
                    ["pants"] = {item = 181, texture = 0}, -- Pants
                    ["arms"] = {item = 1, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 203, texture = 0}, -- T Shirt
                    ["vest"] = {item = 60, texture = 0}, -- Body Vest
                    ["torso2"] = {item = 447, texture = 0}, -- Jacket
                    ["shoes"] = {item = 103, texture = 0}, -- Shoes
                    ["accessory"] = {item = 171, texture = 0}, -- Neck Accessory
                    ["bag"] = {item = 115, texture = 0}, -- Bag
                    ["hat"] = {item = -1, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 241, texture = 0} -- Mask
                },
                grades = {0, 1, 2, 3, 4, 5, 6, 7},
            },
            {
                name = "Class A Formals",
                outfitData = {
                    ["pants"] = {item = 176, texture = 0}, -- Pants
                    ["arms"] = {item = 12, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 202, texture = 0}, -- T Shirt
                    ["vest"] = {item = 0, texture = 0}, -- Body Vest
                    ["torso2"] = {item = 453, texture = 0}, -- Jacket
                    ["shoes"] = {item = 21, texture = 0}, -- Shoes
                    ["accessory"] = {item = 171, texture = 0}, -- Neck Accessory
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = 46, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 241, texture = 0} -- Mask
                },
                grades = {1, 2, 3, 4, 5, 6, 7},
            },
            {
                name = "Cadet",
                outfitData = {
                    ["pants"] = {item = 181, texture = 0}, -- Pants
                    ["arms"] = {item = 32, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 204, texture = 0}, -- T Shirt
                    ["vest"] = {item = 69, texture = 0}, -- Body Vest
                    ["torso2"] = {item = 454, texture = 4}, -- Jacket
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["accessory"] = {item = 184, texture = 0}, -- Neck Accessory
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = 0, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 241, texture = 0} -- Mask
                },
                grades = {0, 1, 2, 3, 4, 5, 6, 7},
            },
        },
        ["Female"] = {
            {
                name = "Class A Uniform",
                outfitData = {
                    ["pants"] = {item = 175, texture = 0}, -- Pants
                    ["arms"] = {item = 9, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 242, texture = 0}, -- T Shirt
                    ["vest"] = {item = 0, texture = 0}, -- Body Vest
                    ["torso2"] = {item = 484, texture = 1}, -- Jacket
                    ["shoes"] = {item = 113, texture = 0}, -- Shoes
                    ["accessory"] = {item = 182, texture = 0}, -- Neck Accessory
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = 0, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {0, 1, 2, 3, 4, 5, 6, 7},
            },
            {
                name = "Class B Uniform",
                outfitData = {
                    ["pants"] = {item = 150, texture = 0}, -- Pants
                    ["arms"] = {item = 32, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 247, texture = 0}, -- T Shirt
                    ["vest"] = {item = 69, texture = 0}, -- Body Vest
                    ["torso2"] = {item = 473, texture = 0}, -- Jacket
                    ["shoes"] = {item = 52, texture = 0}, -- Shoes
                    ["accessory"] = {item = 185, texture = 0}, -- Neck Accessory
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = 0, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {0, 1, 2, 3, 4, 5, 6, 7},
            },
            {
                name = "Cadet",
                outfitData = {
                    ["pants"] = {item = 172, texture = 0}, -- Pants
                    ["arms"] = {item = 32, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 247, texture = 0}, -- T Shirt
                    ["vest"] = {item = 92, texture = 21}, -- Body Vest
                    ["torso2"] = {item = 487, texture = 0}, -- Jacket
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["accessory"] = {item = 184, texture = 0}, -- Neck Accessory
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = 0, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {0, 1, 2, 3, 4, 5, 6, 7},
            },
        }
    },
    ["realestate"] = {
        ["Male"] = {
            {
                -- Outfits
                name = "Worker",
                outfitData = {
                    ["pants"]       = { item = 28, texture = 0},  -- Pants
                    ["arms"]        = { item = 1, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 31, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 294, texture = 0},  -- Jacket
                    ["shoes"]       = { item = 10, texture = 0},  -- Shoes
                    ["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 12, texture = -1},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                },
                grades = {0, 1, 2, 3, 4},
            }
        },
        ["Female"] = {
            {
                name = "Worker",
                outfitData = {
                    ["pants"]       = { item = 57, texture = 2},  -- Pants
                    ["arms"]        = { item = 0, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 34, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 105, texture = 7},  -- Jacket
                    ["shoes"]       = { item = 8, texture = 5},  -- Shoes
                    ["accessory"]   = { item = 11, texture = 3},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = -1, texture = -1},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                },
                grades = {0, 1, 2, 3, 4},
            }
        }
    },
    ["ambulance"] = {
        ["Male"] = {
            {
                name = "Recruit",
                outfitData = {
                    ["arms"] = {item = 85, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 153, texture = 0}, -- T-Shirt
                    ["torso2"] = {item = 487, texture = 0}, -- Jackets
                    ["vest"] = {item = 83, texture = 1}, -- Vest
                    ["decals"] = {item = 0, texture = 0}, -- Decals
                    ["accessory"] = {item = 0, texture = 0}, -- Neck
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["pants"] = {item = 187, texture = 0}, -- Pants
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["mask"] = {item = 0, texture = 0}, -- Mask
                    ["hat"] = {item = 0, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
            {
                name = "Winter",
                outfitData = {
                    ["arms"] = {item = 88, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 153, texture = 0}, -- T-Shirt
                    ["torso2"] = {item = 490, texture = 1}, -- Jackets
                    ["vest"] = {item = 0, texture = 0}, -- Vest
                    ["decals"] = {item = 0, texture = 0}, -- Decals
                    ["accessory"] = {item = 0, texture = 0}, -- Neck
                    ["bag"] = {item = 127, texture = 0}, -- Bag
                    ["pants"] = {item = 188, texture = 0}, -- Pants
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["mask"] = {item = 0, texture = 0}, -- Mask
                    ["hat"] = {item = 0, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
            {
                name = "Short Sleeve",
                outfitData = {
                    ["arms"] = {item = 85, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 153, texture = 0}, -- T-Shirt
                    ["torso2"] = {item = 488, texture = 1}, -- Jackets
                    ["vest"] = {item = 0, texture = 0}, -- Vest
                    ["decals"] = {item = 0, texture = 0}, -- Decals
                    ["accessory"] = {item = 197, texture = 1}, -- Neck
                    ["bag"] = {item = 125, texture = 0}, -- Bag
                    ["pants"] = {item = 188, texture = 0}, -- Pants
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["mask"] = {item = 0, texture = 0}, -- Mask
                    ["hat"] = {item = 0, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
            {
                name = "Class A",
                outfitData = {
                    ["arms"] = {item = 88, texture = 1}, -- Arms
                    ["t-shirt"] = {item = 153, texture = 0}, -- T-Shirt
                    ["torso2"] = {item = 489, texture = 0}, -- Jackets
                    ["vest"] = {item = 0, texture = 0}, -- Vest
                    ["decals"] = {item = 0, texture = 0}, -- Decals
                    ["accessory"] = {item = 197, texture = 1}, -- Neck
                    ["bag"] = {item = 125, texture = 0}, -- Bag
                    ["pants"] = {item = 25, texture = 0}, -- Pants
                    ["shoes"] = {item = 10, texture = 0}, -- Shoes
                    ["mask"] = {item = 0, texture = 0}, -- Mask
                    ["hat"] = {item = 0, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
            {
                name = "Casual Friday",
                outfitData = {
                    ["arms"] = {item = 88, texture = 1}, -- Arms
                    ["t-shirt"] = {item = 153, texture = 0}, -- T-Shirt
                    ["torso2"] = {item = 487, texture = 1}, -- Jackets
                    ["vest"] = {item = 0, texture = 0}, -- Vest
                    ["decals"] = {item = 0, texture = 0}, -- Decals
                    ["accessory"] = {item = 197, texture = 0}, -- Neck
                    ["bag"] = {item = 128, texture = 0}, -- Bag
                    ["pants"] = {item = 4, texture = 0}, -- Pants
                    ["shoes"] = {item = 48, texture = 0}, -- Shoes
                    ["mask"] = {item = 0, texture = 0}, -- Mask
                    ["hat"] = {item = 0, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
            {
                name = "Polo",
                outfitData = {
                    ["arms"] = {item = 85, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 153, texture = 0}, -- T-Shirt
                    ["torso2"] = {item = 486, texture = 1}, -- Jackets
                    ["vest"] = {item = 0, texture = 0}, -- Vest
                    ["decals"] = {item = 0, texture = 0}, -- Decals
                    ["accessory"] = {item = 197, texture = 1}, -- Neck
                    ["bag"] = {item = 127, texture = 0}, -- Bag
                    ["pants"] = {item = 188, texture = 0}, -- Pants
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["mask"] = {item = 0, texture = 0}, -- Mask
                    ["hat"] = {item = 0, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
            {
                name = "Long Sleeve",
                outfitData = {
                    ["arms"] = {item = 88, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 153, texture = 0}, -- T-Shirt
                    ["torso2"] = {item = 485, texture = 0}, -- Jackets
                    ["vest"] = {item = 0, texture = 0}, -- Vest
                    ["decals"] = {item = 0, texture = 0}, -- Decals
                    ["accessory"] = {item = 0, texture = 0}, -- Neck
                    ["bag"] = {item = 127, texture = 0}, -- Bag
                    ["pants"] = {item = 188, texture = 0}, -- Pants
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["mask"] = {item = 0, texture = 0}, -- Mask
                    ["hat"] = {item = 0, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
        },
        ["Female"] = {
            {
                name = "Recruit",
                outfitData = {
                    ["arms"] = {item = 109, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 247, texture = 0}, -- T-Shirt
                    ["torso2"] = {item = 502, texture = 0}, -- Jackets
                    ["vest"] = {item = 75, texture = 1}, -- Vest
                    ["decals"] = {item = 66, texture = 0}, -- Decals
                    ["accessory"] = {item = 0, texture = 0}, -- Neck
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["pants"] = {item = 178, texture = 0}, -- Pants
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["mask"] = {item = 0, texture = 0}, -- Mask
                    ["hat"] = {item = 0, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
            {
                name = "Polo",
                outfitData = {
                    ["arms"] = {item = 109, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 247, texture = 0}, -- T-Shirt
                    ["torso2"] = {item = 501, texture = 1}, -- Jackets
                    ["vest"] = {item = 0, texture = 0}, -- Vest
                    ["decals"] = {item = 0, texture = 0}, -- Decals
                    ["accessory"] = {item = 139, texture = 1}, -- Neck
                    ["bag"] = {item = 114, texture = 0}, -- Bag
                    ["pants"] = {item = 181, texture = 0}, -- Pants
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["mask"] = {item = 0, texture = 0}, -- Mask
                    ["hat"] = {item = 0, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
            {
                name = "Class A",
                outfitData = {
                    ["arms"] = {item = 109, texture = 1}, -- Arms
                    ["t-shirt"] = {item = 247, texture = 0}, -- T-Shirt
                    ["torso2"] = {item = 504, texture = 0}, -- Jackets
                    ["vest"] = {item = 0, texture = 0}, -- Vest
                    ["decals"] = {item = 0, texture = 0}, -- Decals
                    ["accessory"] = {item = 139, texture = 0}, -- Neck
                    ["bag"] = {item = 114, texture = 0}, -- Bag
                    ["pants"] = {item = 52, texture = 2}, -- Pants
                    ["shoes"] = {item = 29, texture = 0}, -- Shoes
                    ["mask"] = {item = 0, texture = 0}, -- Mask
                    ["hat"] = {item = 0, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
            {
                name = "Short Sleeve",
                outfitData = {
                    ["arms"] = {item = 100, texture = 2}, -- Arms
                    ["t-shirt"] = {item = 247, texture = 0}, -- T-Shirt
                    ["torso2"] = {item = 503, texture = 0}, -- Jackets
                    ["vest"] = {item = 0, texture = 0}, -- Vest
                    ["decals"] = {item = 0, texture = 0}, -- Decals
                    ["accessory"] = {item = 139, texture = 0}, -- Neck
                    ["bag"] = {item = 114, texture = 0}, -- Bag
                    ["pants"] = {item = 181, texture = 0}, -- Pants
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["mask"] = {item = 0, texture = 0}, -- Mask
                    ["hat"] = {item = 0, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
            {
                name = "Casual Friday",
                outfitData = {
                    ["arms"] = {item = 109, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 247, texture = 0}, -- T-Shirt
                    ["torso2"] = {item = 502, texture = 0}, -- Jackets
                    ["vest"] = {item = 0, texture = 0}, -- Vest
                    ["decals"] = {item = 0, texture = 0}, -- Decals
                    ["accessory"] = {item = 139, texture = 1}, -- Neck
                    ["bag"] = {item = 115, texture = 0}, -- Bag
                    ["pants"] = {item = 4, texture = 0}, -- Pants
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["mask"] = {item = 0, texture = 0}, -- Mask
                    ["hat"] = {item = 0, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
            {
                name = "Winter",
                outfitData = {
                    ["arms"] = {item = 101, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 247, texture = 0}, -- T-Shirt
                    ["torso2"] = {item = 505, texture = 0}, -- Jackets
                    ["vest"] = {item = 0, texture = 0}, -- Vest
                    ["decals"] = {item = 0, texture = 0}, -- Decals
                    ["accessory"] = {item = 0, texture = 1}, -- Neck
                    ["bag"] = {item = 115, texture = 0}, -- Bag
                    ["pants"] = {item = 181, texture = 0}, -- Pants
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["mask"] = {item = 0, texture = 0}, -- Mask
                    ["hat"] = {item = 0, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
        }
    }
}

Config.InitialPlayerClothes = {
    Male = {
        Model = "mp_m_freemode_01",
        Components = {
            {
                component_id = 0, -- Face
                drawable = 0,
                texture = 0
            },
            {
                component_id = 1, -- Mask
                drawable = 0,
                texture = 0
            },
            {
                component_id = 2, -- Hair
                drawable = 0,
                texture = 0
            },
            {
                component_id = 3, -- Upper Body
                drawable = 0,
                texture = 0
            },
            {
                component_id = 4, -- Lower Body
                drawable = 0,
                texture = 0
            },
            {
                component_id = 5, -- Bag
                drawable = 0,
                texture = 0
            },
            {
                component_id = 6, -- Shoes
                drawable = 0,
                texture = 0
            },
            {
                component_id = 7, -- Scarf & Chains
                drawable = 0,
                texture = 0
            },
            {
                component_id = 8, -- Shirt
                drawable = 0,
                texture = 0
            },
            {
                component_id = 9, -- Body Armor
                drawable = 0,
                texture = 0
            },
            {
                component_id = 10, -- Decals
                drawable = 0,
                texture = 0
            },
            {
                component_id = 11, -- Jacket
                drawable = 0,
                texture = 0
            }
        },
        Props = {
            {
                prop_id = 0, -- Hat
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 1, -- Glasses
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 2, -- Ear
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 6, -- Watch
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 7, -- Bracelet
                drawable = -1,
                texture = -1
            }
        },
        Hair = {
            color = 0,
            highlight = 0,
            style = 0,
            texture = 0
        }
    },
    Female = {
        Model = "mp_f_freemode_01",
        Components = {
            {
                component_id = 0, -- Face
                drawable = 0,
                texture = 0
            },
            {
                component_id = 1, -- Mask
                drawable = 0,
                texture = 0
            },
            {
                component_id = 2, -- Hair
                drawable = 0,
                texture = 0
            },
            {
                component_id = 3, -- Upper Body
                drawable = 0,
                texture = 0
            },
            {
                component_id = 4, -- Lower Body
                drawable = 0,
                texture = 0
            },
            {
                component_id = 5, -- Bag
                drawable = 0,
                texture = 0
            },
            {
                component_id = 6, -- Shoes
                drawable = 0,
                texture = 0
            },
            {
                component_id = 7, -- Scarf & Chains
                drawable = 0,
                texture = 0
            },
            {
                component_id = 8, -- Shirt
                drawable = 0,
                texture = 0
            },
            {
                component_id = 9, -- Body Armor
                drawable = 0,
                texture = 0
            },
            {
                component_id = 10, -- Decals
                drawable = 0,
                texture = 0
            },
            {
                component_id = 11, -- Jacket
                drawable = 0,
                texture = 0
            }
        },
        Props = {
            {
                prop_id = 0, -- Hat
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 1, -- Glasses
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 2, -- Ear
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 6, -- Watch
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 7, -- Bracelet
                drawable = -1,
                texture = -1
            }
        },
        Hair = {
            color = 0,
            highlight = 0,
            style = 0,
            texture = 0
        }
    }
}
