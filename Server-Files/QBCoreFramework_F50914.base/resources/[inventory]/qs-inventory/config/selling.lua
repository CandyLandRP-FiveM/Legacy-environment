--[[
    Store setup!
    Now we have some news here, such as a new system for
    the sale of items, you can configure all this here.

    You will also find the vending system and little else :)
]]

Config.SellItems = {
    ['Seller item'] = {
        coords = vec3(2682.7588, 3284.8857, 55.2103),
        blip = {
            active = true,
            name = 'Seller',
            sprite = 89,
            color = 1,
            scale = 0.5,
            account = 'money' -- Account associated with the seller's blip
        },
        items = {
            {
                name = 'sandwich',
                price = 3,
                amount = 1,
                info = {},
                type = 'item',
                slot = 1
            },
            {
                name = 'tosti',
                price = 2,
                amount = 1,
                info = {},
                type = 'item',
                slot = 2
            },
        }
    },
    ['24/7'] = {
        coords = vec3(2679.9326, 3276.6897, 54.4058),
        blip = {
            active = true,
            name = 'Seller',
            sprite = 89,
            color = 1,
            scale = 0.5,
            account = 'money' -- Account associated with the seller's blip
        },
        items = {
            {
                name = 'tosti',
                price = 1,
                amount = 1,
                info = {},
                type = 'item',
                slot = 1
            },
        }
    },
    ['Fish Market'] = {
        coords = vec3(-2193.52, 4290.15, 49.17),
        blip = {
            active = false,
            name = 'Fish Market',
            sprite = 89,
            color = 1,
            scale = 0.5,
            account = 'money' -- Account associated with the seller's blip
        },
        items = {
            {
                name = 'tuna',
                price = 6,
                amount = 1,
                info = {},
                type = 'item',
                slot = 1
            },
            {
                name = 'salmon',
                price = 6,
                amount = 1,
                info = {},
                type = 'item',
                slot = 2
            },
            {
                name = 'trout',
                price = 6,
                amount = 1,
                info = {},
                type = 'item',
                slot = 3
            },
            {
                name = 'anchovy',
                price = 4,
                amount = 1,
                info = {},
                type = 'item',
                slot = 4
            },
            {
                name = 'raw_shrimp',
                price = 6,
                amount = 1,
                info = {},
                type = 'item',
                slot = 5
            },
            {
                name = 'sturgeon',
                price = 8,
                amount = 1,
                info = {},
                type = 'item',
                slot = 6
            },
            {
                name = 'large_bass',
                price = 8,
                amount = 1,
                info = {},
                type = 'item',
                slot = 7
            },
            {
                name = 'flounder',
                price = 6,
                amount = 1,
                info = {},
                type = 'item',
                slot = 8
            },
            {
                name = 'oyster',
                price = 6,
                amount = 1,
                info = {},
                type = 'item',
                slot = 9
            },
            {
                name = 'scallop',
                price = 6,
                amount = 1,
                info = {},
                type = 'item',
                slot = 10
            },
            {
                name = 'mackerel',
                price = 6,
                amount = 1,
                info = {},
                type = 'item',
                slot = 11
            },
            {
                name = 'catfish',
                price = 8,
                amount = 1,
                info = {},
                type = 'item',
                slot = 12
            },
            {
                name = 'blue_tang',
                price = 10,
                amount = 1,
                info = {},
                type = 'item',
                slot = 13
            },
            {
                name = 'clownfish',
                price = 10,
                amount = 1,
                info = {},
                type = 'item',
                slot = 14
            },
            {
                name = 'sea_urchin',
                price = 10,
                amount = 1,
                info = {},
                type = 'item',
                slot = 15
            },
            {
                name = 'lionfish',
                price = 10,
                amount = 1,
                info = {},
                type = 'item',
                slot = 16
            },
            {
                name = 'lobster',
                price = 8,
                amount = 1,
                info = {},
                type = 'item',
                slot = 17
            },
            {
                name = 'crab',
                price = 8,
                amount = 1,
                info = {},
                type = 'item',
                slot = 18
            },
            {
                name = 'pufferfish',
                price = 6,
                amount = 1,
                info = {},
                type = 'item',
                slot = 19
            },
            {
                name = 'blobfish',
                price = 10,
                amount = 1,
                info = {},
                type = 'item',
                slot = 20
            },
            {
                name = 'wolf_fish',
                price = 10,
                amount = 1,
                info = {},
                type = 'item',
                slot = 21
            },
            {
                name = 'nori',
                price = 4,
                amount = 1,
                info = {},
                type = 'item',
                slot = 22
            },
        }
    }