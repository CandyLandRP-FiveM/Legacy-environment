--[[
    Vending machine configuration.
    Here you can choose all the Vending
    machines and their items.
]]

Config.VendingMachines = {
    ['drinks'] = {
        ['Label'] = 'Drinks',
        ['Items'] = {
            [1] = {
                ['name'] = 'kurkakola',
                ['price'] = 4,
                ['amount'] = 50,
                ['info'] = {},
                ['type'] = 'item',
                ['slot'] = 1,
            },
            [2] = {
                ['name'] = 'water_bottle',
                ['price'] = 4,
                ['amount'] = 50,
                ['info'] = {},
                ['type'] = 'item',
                ['slot'] = 2,
            },
            [3] = {
                ['name'] = 'dumbbitch',
                ['price'] = 4,
                ['amount'] = 50,
                ['info'] = {},
                ['type'] = 'item',
                ['slot'] = 3,
            },
        }
    },
    ['candy'] = {
        ['Label'] = 'Candy Vending',
        ['Items'] = {
            [1] = {
                ['name'] = 'chocolate',
                ['price'] = 4,
                ['amount'] = 50,
                ['info'] = {},
                ['type'] = 'item',
                ['slot'] = 1,
            },
            [2] = {
                ['name'] = 'chips',
                ['price'] = 4,
                ['amount'] = 50,
                ['info'] = {},
                ['type'] = 'item',
                ['slot'] = 2,
            },
            [3] = {
                ['name'] = 'snikkel_candy',
                ['price'] = 4,
                ['amount'] = 50,
                ['info'] = {},
                ['type'] = 'item',
                ['slot'] = 3,
            },
            [4] = {
                ['name'] = 'twerks_candy',
                ['price'] = 4,
                ['amount'] = 50,
                ['info'] = {},
                ['type'] = 'item',
                ['slot'] = 4,
            },
        }
    },
    ['coffee'] = {
        ['Label'] = 'Coffee',
        ['Items'] = {
            [1] = {
                ['name'] = 'coffee',
                ['price'] = 4,
                ['amount'] = 50,
                ['info'] = {},
                ['type'] = 'item',
                ['slot'] = 1,
            },
        }
    },
    ['water'] = {
        ['Label'] = 'Water Dispenser',
        ['Items'] = {
            [1] = {
                ['name'] = 'water_bottle',
                ['price'] = 4,
                ['amount'] = 50,
                ['info'] = {},
                ['type'] = 'item',
                ['slot'] = 1,
            },
        }
    },
}

Config.Vendings = {
    [1] = {
        ['Model'] = 'prop_vend_coffe_01', -- Model name of prop
        ['Category'] = 'coffee',          -- Category from list above
        ['Label'] = 'Coffee',             -- Name of vending
    },
    [2] = {
        ['Model'] = 'prop_vend_water_01',
        ['Category'] = 'water',
        ['Label'] = 'Water Dispenser',
    },
    [3] = {
        ['Model'] = 'prop_watercooler',
        ['Category'] = 'water',
        ['Label'] = 'Water Dispenser',
    },
    [4] = {
        ['Model'] = 'prop_watercooler_Dark',
        ['Category'] = 'water',
        ['Label'] = 'Water Dispenser',
    },
    [5] = {
        ['Model'] = 'prop_vend_snak_01',
        ['Category'] = 'candy',
        ['Label'] = 'Candy Vending',
    },
    [6] = {
        ['Model'] = 'prop_vend_snak_01_tu',
        ['Category'] = 'candy',
        ['Label'] = 'Candy Vending',
    },
    [7] = {
        ['Model'] = 'prop_vend_fridge01',
        ['Category'] = 'drinks',
        ['Label'] = 'Drinks Vending',
    },
    [8] = {
        ['Model'] = 'prop_vend_soda_01',
        ['Category'] = 'drinks',
        ['Label'] = 'Drinks Vending',
    },
    [9] = {
        ['Model'] = 'prop_vend_soda_02',
        ['Category'] = 'drinks',
        ['Label'] = 'Drinks Vending',
    },
}
