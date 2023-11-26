Config = Config or {}

-- Set to true or false or GetConvar('UseTarget', 'false') == 'true' to use global option or script specific
-- These have to be a string thanks to how Convars are returned.
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.Timeout = 5 * (60 * 2000)
Config.RequiredCops = 2
Config.techLocation = {
    ["coords"] = vector3(-1524.61, -409.32, 35.59),
}

Config.WhitelistedWeapons = {
    [`weapon_snubrevolver`] = {
        ["timeOut"] = 10000
    },
    [`weapon_g27`] = {
        ["timeOut"] = 10000
    },
    [`weapon_eagle`] = {
        ["timeOut"] = 10000
    },
}

Config.VitrineRewards = {
    [1] = {
        ["item"] = "electronickit",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 1
        },
    },
    [2] = {
        ["item"] = "laptop",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 4
        },
    },
    [3] = {
        ["item"] = "tablet",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 4
        },
    },
    [4] = {
        ["item"] = "trojan_usb",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 2
        },
    },
    [5] = {
        ["item"] = "calling_card",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 1
        },
    },
    [6] = {
        ["item"] = "iphone",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 4
        },
    },
    [7] = {
        ["item"] = "computer",
        ["amount"] = {
            ["min"] = 1,
            ["max"] = 1
        },
    },
    [8] = {
        ["item"] = "thermite",
        ["amount"] = {
            ["min"] = 0,
            ["max"] = 1
        },
    },
}

Config.Locations = {
    [1] = {
        ["coords"] = vector3(-1528.67, -408.62, 35.64),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [2] = {
        ["coords"] = vector3(-1523.12, -405.54, 35.64),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [3] = {
        ["coords"] = vector3(-1524.01, -403.84, 35.64),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [4] = {
        ["coords"] = vector3(-1532.07, -402.77, 35.64),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [5] = {
        ["coords"] = vector3(-1531.92, -400.05, 35.63),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [6] = {
        ["coords"] = vector3(-1533.84, -402.09, 35.7),
      ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [7] = {
        ["coords"] = vector3(-1535.26, -399.0, 35.63),
        ["isOpened"] = false,
        ["isBusy"] = false,
    },
    [8] = {
        ["coords"] = vector3(-1533.01, -396.8, 35.63),
        ["isOpened"] = false,
        ["isBusy"] = false,
    }
}

Config.MaleNoGloves = {
    [0] = true, [1] = true, [2] = true, [3] = true, [4] = true, [5] = true, [6] = true, [7] = true, [8] = true, [9] = true, [10] = true, [11] = true, [12] = true, [13] = true, [14] = true, [15] = true, [18] = true, [26] = true, [52] = true, [53] = true, [54] = true, [55] = true, [56] = true, [57] = true, [58] = true, [59] = true, [60] = true, [61] = true, [62] = true, [112] = true, [113] = true, [114] = true, [118] = true, [125] = true, [132] = true,
}

Config.FemaleNoGloves = {
    [0] = true, [1] = true, [2] = true, [3] = true, [4] = true, [5] = true, [6] = true, [7] = true, [8] = true, [9] = true, [10] = true, [11] = true, [12] = true, [13] = true, [14] = true, [15] = true, [19] = true, [59] = true, [60] = true, [61] = true, [62] = true, [63] = true, [64] = true, [65] = true, [66] = true, [67] = true, [68] = true, [69] = true, [70] = true, [71] = true, [129] = true, [130] = true, [131] = true, [135] = true, [142] = true, [149] = true, [153] = true, [157] = true, [161] = true, [165] = true,
}
