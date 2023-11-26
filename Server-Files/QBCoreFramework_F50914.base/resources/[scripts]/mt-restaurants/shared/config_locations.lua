LocationsConfig = {}

LocationsConfig.Stations = {
    ["FoodStations"] = { -- Food stations
        ["atomsfood"] = { -- Station ID
            StationName = "atomsfood", -- Name of the station need to be the same as station ID
            Job = "upandatom", -- Atorized job name
            Coords = vector3(93.18, 290.01, 110.21), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            TargetIcon = "fas fa-circle", -- Target Icon
            Animation = "mechanic", -- Only can use dpemotes animations.
            Revenus = {
                ["atomic"] = {
                    ItemName = "atomic", -- Food Item name
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "bun", -- Ingredient item name
                            amount = 5, -- How many ingredients you need to make 1 food
                        },
                        [2] = {
                            item = "burger",
                            amount = 5,
                        },
                        [3] = {
                            item = "choponion",
                            amount = 5,
                        },
                    },
                },
                ["baconatom"] = {
                    ItemName = "baconatom",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "burger",
                            amount = 5,
                        },
                        [2] = {
                            item = "choponion",
                            amount = 5,
                        },
                        [3] = {
                            item = "bun",
                            amount = 5,
                        },
                        [4] = {
                            item = "bacon",
                            amount = 5,
                        },
                    },
                },
                ["frz_dried_cream"] = {
                    ItemName = "frz_dried_cream",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "whipcream",
                            amount = 5,
                        },
                        [2] = {
                            item = "milk",
                            amount = 5,
                        },
                        [3] = {
                            item = "chocolate",
                            amount = 5,
                        },
                    },
                },
                ["frz_dried_cream"] = {
                    ItemName = "frz_dried_cream",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "whipcream",
                            amount = 5,
                        },
                        [2] = {
                            item = "milk",
                            amount = 5,
                        },
                        [3] = {
                            item = "chocolate",
                            amount = 5,
                        },
                    },
                },
            }
        },
        ["nachosfood"] = { -- Station ID
            StationName = "nachosfood", -- Name of the station need to be the same as station ID
            Job = "nachodaddy", -- Atorized job name
            Coords = vector3(982.09, -1387.35, 31.58), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            TargetIcon = "fas fa-circle", -- Target Icon
            Animation = "mechanic", -- Only can use dpemotes animations.
            Revenus = {
                ["pork_tacos"] = {
                    ItemName = "pork_tacos", -- Food Item name
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "pulledpork", -- Ingredient item name
                            amount = 5, -- How many ingredients you need to make 1 food
                        },
                        [2] = {
                            item = "slicedpepper",
                            amount = 5,
                        },
                    },
                },
                ["chicken_tacos"] = {
                    ItemName = "chicken_tacos",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "chicken",
                            amount = 5,
                        },
                        [2] = {
                            item = "slicedpepper",
                            amount = 5,
                        },
                    },    
                },
                ["shrimp_tacos"] = {
                    ItemName = "shrimp_tacos",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "shrimp",
                            amount = 5,
                        },
                        [2] = {
                            item = "slicedpepper",
                            amount = 5,
                        },
                    },    
                },
                ["carnetaco"] = {
                    ItemName = "carnetaco",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "burger",
                            amount = 5,
                        },
                        [2] = {
                            item = "slicedpepper",
                            amount = 5,
                        },
                    },    
                },
                ["quesadilla"] = {
                    ItemName = "quesadilla",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "cheese_shredded",
                            amount = 5,
                        },
                        [2] = {
                            item = "tortilla",
                            amount = 5,
                        },
                    },    
                },
            }
        },
        ["phaqfood"] = { -- Station ID
            StationName = "phaqfood", -- Name of the station need to be the same as station ID
            Job = "phaq", -- Atorized job name
            Coords = vector3(-174.77, 302.97, 97.16), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            TargetIcon = "fas fa-circle", -- Target Icon
            Animation = "mechanic", -- Only can use dpemotes animations.
            Revenus = {
                ["Chow Yee Kow"] = {
                    ItemName = "chowyeekow", -- Food Item name
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "cookedtrout", -- Ingredient item name
                            amount = 5, -- How many ingredients you need to make 1 food
                        },
                        [2] = {
                            item = "slicedpepper",
                            amount = 5,
                        },
                        [3] = {
                            item = "friedrice",
                            amount = 5,
                        },
                    },
                },
                ["Jiaozi"] = {
                    ItemName = "jiaozi",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "pulledpork",
                            amount = 5,
                        },
                        [2] = {
                            item = "oystersauce",
                            amount = 5,
                        },
                        [3] = {
                            item = "rawdumpling",
                            amount = 5,
                        },
                    },
                },
                ["Shrimp Fried Rice"] = {
                    ItemName = "shrimprice",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "friedrice",
                            amount = 5,
                        },
                        [2] = {
                            item = "shrimp",
                            amount = 5,
                        },
                        [3] = {
                            item = "eggs",
                            amount = 5,
                        },
                    },
                },
                ["Chicken Fried Rice"] = {
                    ItemName = "chickenrice",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "friedrice",
                            amount = 5,
                        },
                        [2] = {
                            item = "chicken",
                            amount = 5,
                        },
                        [3] = {
                            item = "eggs",
                            amount = 5,
                        },
                    },
                },
                ["Pork Fried Rice"] = {
                    ItemName = "porkrice",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "friedrice",
                            amount = 5,
                        },
                        [2] = {
                            item = "pork",
                            amount = 5,
                        },
                        [3] = {
                            item = "eggs",
                            amount = 5,
                        },
                    },
                },
                ["beef Fried Rice"] = {
                    ItemName = "beefrice",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "friedrice",
                            amount = 5,
                        },
                        [2] = {
                            item = "meat",
                            amount = 5,
                        },
                        [3] = {
                            item = "eggs",
                            amount = 5,
                        },
                    },
                },
                ["Fish Sauce"] = {
                    ItemName = "fishsauce",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "anchovy",
                            amount = 5,
                        },
                        [2] = {
                            item = "mackerel",
                            amount = 5,
                        },
                        [3] = {
                            item = "shrimp",
                            amount = 5,
                        },
                    },
                },
                ["Oyster Sauce"] = {
                    ItemName = "oystersauce",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "oyster",
                            amount = 5,
                        },
                        [2] = {
                            item = "water_bottle",
                            amount = 5,
                        },
                        [3] = {
                            item = "sugar",
                            amount = 5,
                        },
                    },
                },
                ["dumpling wrappers"] = {
                    ItemName = "rawdumpling",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "flour",
                            amount = 5,
                        },
                        [2] = {
                            item = "water_bottle",
                            amount = 5,
                        },
                        [3] = {
                            item = "eggs",
                            amount = 5,
                        },
                    },
                },
            }
        },
        ["tavernfood"] = { -- Station ID
            StationName = "tavernfood", -- Name of the station need to be the same as station ID
            Job = "tavern", -- Atorized job name
            Coords = vector3(1236.6608886719, -419.65530395508, 67.773300170898), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            TargetIcon = "fas fa-circle", -- Target Icon
            Animation = "mechanic", -- Only can use dpemotes animations.
            Revenus = {
                ["irishstew"] = {
                    ItemName = "irishstew", -- Food Item name
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "meat", -- Ingredient item name
                            amount = 5, -- How many ingredients you need to make 1 food
                        },
                        [2] = {
                            item = "potato",
                            amount = 10,
                        },
                    },
                },
                ["irishbowl"] = {
                    ItemName = "irishbowl",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "meat",
                            amount = 5,
                        },
                        [2] = {
                            item = "potato",
                            amount = 5,
                        },
                    },    
                },
                ["cornbeef"] = {
                    ItemName = "cornbeef",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "meat",
                            amount = 5,
                        },
                        [2] = {
                            item = "carrot",
                            amount = 5,
                        },
                    },    
                },
                ["bangers"] = {
                    ItemName = "bangers",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "sausages",
                            amount = 5,
                        },
                        [2] = {
                            item = "potato",
                            amount = 5,
                        },
                    },    
                },
                ["cheesecake"] = {
                    ItemName = "cheesecake",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "baileys",
                            amount = 5,
                        },
                        [2] = {
                            item = "sugar",
                            amount = 5,
                        },
                        [3] = {
                            item = "eggs",
                            amount = 5,
                        },
                    },    
                },
            }
        },
        ["arcadefood"] = { -- Station ID
            StationName = "arcadefood", -- Name of the station need to be the same as station ID
            Job = "arcade", -- Atorized job name
            Coords = vector3(2375.57, 3068.22, 32.9), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            TargetIcon = "fas fa-circle", -- Target Icon
            Animation = "mechanic", -- Only can use dpemotes animations.
            Revenus = {
                ["popcorn"] = {
                    ItemName = "popcorn", -- Food Item name
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "corncob", -- Ingredient item name
                            amount = 5, -- How many ingredients you need to make 1 food
                        },
                        [2] = {
                            item = "butter",
                            amount = 10,
                        },
                    },
                },
                ["pizza"] = {
                    ItemName = "pizza",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "mozzarella",
                            amount = 5,
                        },
                        [2] = {
                            item = "sausages",
                            amount = 5,
                        },
                    },    
                },
                ["nachos"] = {
                    ItemName = "nachos",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "beef",
                            amount = 5,
                        },
                        [2] = {
                            item = "cheese_shredded",
                            amount = 5,
                        },
                    },    
                },
            }
        },
        ["moorefood"] = { -- Station ID
            StationName = "moorefood", -- Name of the station need to be the same as station ID
            Job = "moore", -- Atorized job name
            Coords = vector3(130.97, -1282.69, 30.35), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            TargetIcon = "fas fa-circle", -- Target Icon
            Animation = "mechanic", -- Only can use dpemotes animations.
            Revenus = {
                ["lobster_tail"] = {
                    ItemName = "lobster_tail", -- Food Item name
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "lobster", -- Ingredient item name
                            amount = 1, -- How many ingredients you need to make 1 food
                        },
                        [2] = {
                            item = "butter",
                            amount = 5,
                        },
                    },
                },
                ["steak_dinner"] = {
                    ItemName = "steak_dinner",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "beef",
                            amount = 5,
                        },
                        [2] = {
                            item = "potato",
                            amount = 5,
                        },
                    },    
                },
                ["oyster_plate"] = {
                    ItemName = "oyster_plate",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "oyster",
                            amount = 5,
                        },
                        [2] = {
                            item = "lemon",
                            amount = 5,
                        },
                    },    
                },
                ["salmon_dinner"] = {
                    ItemName = "salmon_dinner",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "salmon",
                            amount = 5,
                        },
                        [2] = {
                            item = "lemon",
                            amount = 5,
                        },
                        [3] = {
                            item = "butter",
                            amount = 5,
                        },
                    },    
                },
                ["pork_chops"] = {
                    ItemName = "pork_chops",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "pork",
                            amount = 5,
                        },
                        [2] = {
                            item = "honeycomb",
                            amount = 5,
                        },
                    },    
                },
            }
        },
    },
    ["DrinkStations"] = { -- Drink stations
        ["atomdrink"] = { -- Station ID
            StationName = "atomdrink", -- Name of the station need to be the same as station ID
            Job = "upandatom", -- Atorized job name
            Coords = vector3(92.1, 287.23, 110.21), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            Animation = "handshake", -- Only can use dpemotes animations.
            TargetIcon = "fas fa-circle",
            Revenus = {
                ["atom_soda"] = {
                    ItemName = "atom_soda",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "water_bottle",
                            amount = 5,
                        },
                        [2] = {
                            item = "kurkakola",
                            amount = 5,
                        },
                    },
                },
                ["galaxylemonade"] = {
                    ItemName = "galaxylemonade",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "water_bottle",
                            amount = 5,
                        },
                        [2] = {
                            item = "lemon",
                            amount = 5,
                        },
                    },
                },
                ["blackhole"] = {
                    ItemName = "blackhole",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "water_bottle",
                            amount = 5,
                        },
                        [2] = {
                            item = "coffeebean",
                            amount = 5,
                        },
                    },
                },
                ["marsmilk"] = {
                    ItemName = "marsmilk",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "milk",
                            amount = 5,
                        },
                        [2] = {
                            item = "chocolate",
                            amount = 5,
                        },
                    },
                },
            }
        },
        ["cooldrink"] = { -- Station ID
            StationName = "cooldrink", -- Name of the station need to be the same as station ID
            Job = "coolbeans", -- Atorized job name
            Coords = vector3(-1201.28, -1146.46, 7.85), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            Animation = "handshake", -- Only can use dpemotes animations.
            TargetIcon = "fas fa-circle",
            Revenus = {
                ["icedcoffee"] = {
                    ItemName = "icedcoffee",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "milk",
                            amount = 5,
                        },
                        [2] = {
                            item = "espresso",
                            amount = 5,
                        },
                    },
                },
                ["mocha"] = {
                    ItemName = "mocha",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "chocolate",
                            amount = 5,
                        },
                        [2] = {
                            item = "espresso",
                            amount = 5,
                        },
                    },
                },
                ["latte"] = {
                    ItemName = "latte",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "milk",
                            amount = 5,
                        },
                        [2] = {
                            item = "espresso",
                            amount = 5,
                        },
                    },
                },
                ["macchiato"] = {
                    ItemName = "macchiato",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "espresso",
                            amount = 5,
                        },
                        [2] = {
                            item = "milk",
                            amount = 5,
                        },
                    },
                },
                ["espresso"] = {
                    ItemName = "espresso",
                    ReciveAmount = 20,
                    Itens = {
                        [1] = {
                            item = "coffeebean",
                            amount = 5,
                        },
                        [2] = {
                            item = "water_bottle",
                            amount = 5,
                        },
                    },
                },
                ["frappe"] = {
                    ItemName = "frappe",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "espresso",
                            amount = 5,
                        },
                        [2] = {
                            item = "mocha",
                            amount = 5,
                        },
                    },
                },
                ["mintmocha"] = {
                    ItemName = "mintmocha",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "mint",
                            amount = 5,
                        },
                        [2] = {
                            item = "mocha",
                            amount = 5,
                        },
                    },
                },
            },           
        },
        ["nachodrink"] = { -- Station ID
            StationName = "nachodrink", -- Name of the station need to be the same as station ID
            Job = "nachodaddy", -- Atorized job name
            Coords = vector3(985.99, -1384.4, 31.87), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            Animation = "handshake", -- Only can use dpemotes animations.
            TargetIcon = "fas fa-circle",
            Revenus = {
                ["mango_jarritos"] = {
                    ItemName = "mango_jarritos",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "mango",
                            amount = 5,
                        },
                        [2] = {
                            item = "kurkakola",
                            amount = 5,
                        },
                    },
                },
                ["pineapple_jarritos"] = {
                    ItemName = "pineapple_jarritos",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "pineapple",
                            amount = 5,
                        },
                        [2] = {
                            item = "kurkakola",
                            amount = 5,
                        },
                    },
                },
                ["cafe_de_olla"] = {
                    ItemName = "cafe_de_olla",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "espresso",
                            amount = 5,
                        },
                        [2] = {
                            item = "water_bottle",
                            amount = 5,
                        },
                    },
                },
                ["espresso"] = {
                    ItemName = "espresso",
                    ReciveAmount = 20,
                    Itens = {
                        [1] = {
                            item = "coffeebean",
                            amount = 5,
                        },
                        [2] = {
                            item = "water_bottle",
                            amount = 5,
                        },
                    },
                },
                ["horchata"] = {
                    ItemName = "horchata",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "cinnamon",
                            amount = 5,
                        },
                        [2] = {
                            item = "rice",
                            amount = 5,
                        },
                    },
                },
                ["margarita"] = {
                    ItemName = "margarita",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "tequila",
                            amount = 5,
                        },
                        [2] = {
                            item = "lime",
                            amount = 5,
                        },
                    },
                },
            },           
        },
        ["phaqdrink"] = { -- Station ID
            StationName = "phaqdrink", -- Name of the station need to be the same as station ID
            Job = "phaq", -- Atorized job name
            Coords = vector3(-173.01, 295.09, 93.53), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            Animation = "handshake", -- Only can use dpemotes animations.
            TargetIcon = "fas fa-circle",
            Revenus = {
                ["Oolong Tea"] = {
                    ItemName = "oolong",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "water_bottle",
                            amount = 5,
                        },
                        [2] = {
                            item = "tealeaves",
                            amount = 5,
                        },
                    },
                },
                ["Yuja Tea"] = {
                    ItemName = "yujatea",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "yuzu",
                            amount = 5,
                        },
                        [2] = {
                            item = "tealeaves",
                            amount = 5,
                        },
                        [3] = {
                            item = "water_bottle",
                            amount = 5,
                        },
                    },
                },
                ["Green Dragon"] = {
                    ItemName = "greendragon",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "vodka",
                            amount = 5,
                        },
                        [2] = {
                            item = "mint",
                            amount = 5,
                        },
                        [3] = {
                            item = "bitters",
                            amount = 5,
                        },
                    },
                },
                ["Kombucha"] = {
                    ItemName = "kombucha",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "tealeaves",
                            amount = 5,
                        },
                        [2] = {
                            item = "lemon",
                            amount = 5,
                        },
                        [3] = {
                            item = "honey",
                            amount = 5,
                        },
                    },
                },
            }
        },
        ["pinkdrink"] = { -- Station ID
            StationName = "pinkdrink", -- Name of the station need to be the same as station ID
            Job = "pinkcage", -- Atorized job name
            Coords = vector3(331.05, -197.9, 55.33), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            Animation = "handshake", -- Only can use dpemotes animations.
            TargetIcon = "fas fa-circle",
            Revenus = {
                ["pinkbikini"] = {
                    ItemName = "pinkbikini",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "dumbbitch",
                            amount = 5,
                        },
                        [2] = {
                            item = "vodka",
                            amount = 5,
                        },
                    },
                },
                ["velvetelvis"] = {
                    ItemName = "velvetelvis",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "elvisaf",
                            amount = 5,
                        },
                        [2] = {
                            item = "whiskey",
                            amount = 5,
                        },
                    },
                },
            }
        },
        ["pinkdrink2"] = { -- Station ID
            StationName = "pinkdrink2", -- Name of the station need to be the same as station ID
            Job = "pinkcage", -- Atorized job name
            Coords = vector3(331.31, -199.32, 55.6), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            Animation = "handshake", -- Only can use dpemotes animations.
            TargetIcon = "fas fa-circle",
            Revenus = {
                ["pinkbikini"] = {
                    ItemName = "pinkbikini",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "dumbbitch",
                            amount = 5,
                        },
                        [2] = {
                            item = "vodka",
                            amount = 5,
                        },
                    },
                },
                ["velvetelvis"] = {
                    ItemName = "velvetelvis",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "elvisaf",
                            amount = 5,
                        },
                        [2] = {
                            item = "whiskey",
                            amount = 5,
                        },
                    },
                },
            }
        },
        ["taverndrink"] = { -- Station ID
            StationName = "taverndrink", -- Name of the station need to be the same as station ID
            Job = "tavern", -- Atorized job name
            Coords = vector3(1231.088, -416.233, 67.773), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            Animation = "handshake", -- Only can use dpemotes animations.
            TargetIcon = "fas fa-circle",
            Revenus = {
                ["irishcoffee"] = {
                    ItemName = "irishcoffee",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "baileys",
                            amount = 5,
                        },
                        [2] = {
                            item = "coffee",
                            amount = 5,
                        },
                    },
                },
                ["oldfashion"] = {
                    ItemName = "oldfashion",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "jamison",
                            amount = 5,
                        },
                        [2] = {
                            item = "bitters",
                            amount = 5,
                        },
                        [3] = {
                            item = "orange",
                            amount = 5,
                        },
                    },
                },
                ["coffee"] = {
                    ItemName = "coffee",
                    ReciveAmount = 20,
                    Itens = {
                        [1] = {
                            item = "water_bottle",
                            amount = 5,
                        },
                        [2] = {
                            item = "coffeebean",
                            amount = 5,
                        },
                    },
                },
                ["finnegans"] = {
                    ItemName = "finnegans",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "whiskey",
                            amount = 5,
                        },
                        [2] = {
                            item = "mint",
                            amount = 5,
                        },
                        [3] = {
                            item = "lime",
                            amount = 5,
                        },
                    },
                }, 
                ["shamrock"] = {
                    ItemName = "shamrock",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "milk",
                            amount = 5,
                        },
                        [2] = {
                            item = "mint",
                            amount = 5,
                        },
                        [3] = {
                            item = "whipcream",
                            amount = 5,
                        },
                    },
                },   
            }
        },
        ["arcadedrink"] = { -- Station ID
            StationName = "arcadedrink", -- Name of the station need to be the same as station ID
            Job = "arcade", -- Atorized job name
            Coords = vector3(2376.56, 3070.39, 33.12), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            Animation = "handshake", -- Only can use dpemotes animations.
            TargetIcon = "fas fa-circle",
            Revenus = {
                ["slush"] = {
                    ItemName = "slush",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "lime",
                            amount = 5,
                        },
                        [2] = {
                            item = "lemon",
                            amount = 5,
                        },
                    },
                },
                ["arcadecup"] = {
                    ItemName = "arcadecup",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "lime",
                            amount = 5,
                        },
                        [2] = {
                            item = "lemon",
                            amount = 5,
                        },
                    },
                },
            }
        },
        ["mooredrink"] = { -- Station ID
            StationName = "mooredrink", -- Name of the station need to be the same as station ID
            Job = "moore", -- Atorized job name
            Coords = vector3(132.62, -1286.57, 29.27), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            Animation = "handshake", -- Only can use dpemotes animations.
            TargetIcon = "fas fa-circle",
            Revenus = {
                ["pinkbikini"] = {
                    ItemName = "pinkbikini",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "dumbbitch",
                            amount = 5,
                        },
                        [2] = {
                            item = "vodka",
                            amount = 5,
                        },
                    },
                },
                ["velvetelvis"] = {
                    ItemName = "velvetelvis",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "elvisaf",
                            amount = 5,
                        },
                        [2] = {
                            item = "whiskey",
                            amount = 5,
                        },
                    },
                },
            }
        },
    },
    ["CuttingStations"] = { -- Cut stations
        ["atomcut"] = { -- Station ID
            StationName = "atomcut", -- Name of the station need to be the same as station ID
            Job = "upandatom", -- Atorized job name
            Coords = vector3(97.14, 293.03, 110.59), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            TargetIcon = "fas fa-circle", -- Target Icon
            Animation = "mechanic", -- Only can use dpemotes animations. CRIAR A ANIMAÇÃO COM A FACA NO DPEMOTES
            Itens = {
                [1] = {
                    ItemName = "choponion",
                    ReciveAmount = 15,
                    Itens = {
                        [1] = {
                            item = "onion",
                            amount = 5,
                        },
                    },
                },
                [2] = {
                    ItemName = "patty",
                    ReciveAmount = 15,
                    Itens = {
                        [1] = {
                            item = "beef",
                            amount = 5,
                        },
                    },
                },
                [3] = {
                    ItemName = "cut_potato",
                    ReciveAmount = 15,
                    Itens = {
                        [1] = {
                            item = "potato",
                            amount = 5,
                        },
                    },
                },
            }
        },
        ["coolcut"] = { -- Station ID
            StationName = "coolcut", -- Name of the station need to be the same as station ID
            Job = "coolbeans", -- Atorized job name
            Coords = vector3(-1199.57, -1146.21, 7.47), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            TargetIcon = "fas fa-circle", -- Target Icon
            Animation = "mechanic", -- Only can use dpemotes animations. CRIAR A ANIMAÇÃO COM A FACA NO DPEMOTES
            Itens = {
                [1] = {
                    ItemName = "wedding_cake",
                    ReciveAmount = 15,
                    Itens = {
                        [1] = {
                            item = "chocolate",
                            amount = 2,
                        },
                        [2] = {
                            item = "flour",
                            amount = 2,
                        },    
                    },
                },
            }
        },
        ["nachocut"] = { -- Station ID
            StationName = "nachocut", -- Name of the station need to be the same as station ID
            Job = "nachodaddy", -- Atorized job name
            Coords = vector3(979.61, -1385.43, 31.95), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            TargetIcon = "fas fa-circle", -- Target Icon
            Animation = "mechanic", -- Only can use dpemotes animations. CRIAR A ANIMAÇÃO COM A FACA NO DPEMOTES
            Itens = {
                [1] = {
                    ItemName = "tres_leches",
                    ReciveAmount = 15,
                    Itens = {
                        [1] = {
                            item = "flour",
                            amount = 2,
                        },
                        [2] = {
                            item = "caramel",
                            amount = 2,
                        },
                        [3] = {
                            item = "milk",
                            amount = 1,
                        },    
                    },
                },
                [2] = {
                    ItemName = "elote",
                    ReciveAmount = 15,
                    Itens = {
                        [1] = {
                            item = "corncob",
                            amount = 5,
                        },
                        [2] = {
                            item = "cheese_shredded",
                            amount = 5,
                        },
                        [3] = {
                            item = "lime",
                            amount = 2,
                        },    
                    },
                },
                [3] = {
                    ItemName = "slicedpepper",
                    ReciveAmount = 15,
                    Itens = {
                        [1] = {
                            item = "pepper",
                            amount = 5,
                        }, 
                    },
                },
            }
        },
        ["phaqcut"] = { -- Station ID
            StationName = "phaqcut", -- Name of the station need to be the same as station ID
            Job = "phaq", -- Atorized job name
            Coords = vector3(-178.18, 303.98, 96.99), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            TargetIcon = "fas fa-circle", -- Target Icon
            Animation = "mechanic", -- Only can use dpemotes animations. CRIAR A ANIMAÇÃO COM A FACA NO DPEMOTES
            Itens = {
                [1] = {
                    ItemName = "dicedcarrots",
                    ReciveAmount = 15,
                    Itens = {
                        [1] = {
                            item = "carrot",
                            amount = 2,
                        },   
                    },
                },
                [2] = {
                    ItemName = "slicedpepper",
                    ReciveAmount = 15,
                    Itens = {
                        [1] = {
                            item = "pepper",
                            amount = 2,
                        },   
                    },
                },
                [3] = {
                    ItemName = "slicedlemon",
                    ReciveAmount = 5,
                    Itens = {
                        [1] = {
                            item = "lemon",
                            amount = 2,
                        },   
                    },
                },
            }
        },
    },
    ["GrillStations"] = { -- Grill stations
        ["atomgrill"] = { -- Station ID
            StationName = "atomgrill", -- Name of the station need to be the same as station ID
            Job = "upandatom", -- Atorized job name
            Coords = vector3(93.96, 291.95, 110.32), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            TargetIcon = "fas fa-circle", -- Target Icon
            Animation = "bbq", -- Only can use dpemotes animations. the animation can be meatgrill or friethings -- CRIAR A ANIMAÇÃO COM A FACA NO DPEMOTES
            Itens = {
                [1] = {
                    ItemName = "burger",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "choponion",
                            amount = 5,
                        },
                        [2] = {
                            item = "patty",
                            amount = 5,
                        },
                    },
                },
                [2] = {
                    ItemName = "onion_rings",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "choponion",
                            amount = 5,
                        },
                        [2] = {
                            item = "flour",
                            amount = 5,
                        },
                    },
                },
                [3] = {
                    ItemName = "fries",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "cut_potato",
                            amount = 5,
                        },
                        [2] = {
                            item = "cut_potato",
                            amount = 5,
                        },
                    },
                },
                [4] = {
                    ItemName = "bacon",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "rawbacon",
                            amount = 5,
                        },
                    },
                },
                [5] = {
                    ItemName = "bun",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "flour",
                            amount = 5,
                        },
                        [2] = {
                            item = "yeast",
                            amount = 5,
                        },
                    },
                },
            }
        },
        ["coolgrill"] = { -- Station ID
            StationName = "coolgrill", -- Name of the station need to be the same as station ID
            Job = "coolbeans", -- Atorized job name
            Coords = vector3(-1201.38, -1141.09, 7.66), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            TargetIcon = "fas fa-circle", -- Target Icon
            Animation = "bbq", "bbqf", -- Only can use dpemotes animations. the animation can be meatgrill or friethings -- CRIAR A ANIMAÇÃO COM A FACA NO DPEMOTES
            Itens = {
                [1] = {
                    ItemName = "panini",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "bread",
                            amount = 5,
                        },
                        [2] = {
                            item = "mozzarella",
                            amount = 5,
                        },
                        [3] = {
                            item = "chicken",
                            amount = 5,
                        },
                    },
                },
                [2] = {
                    ItemName = "danish",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "pastry",
                            amount = 5,
                        },
                        [2] = {
                            item = "flour",
                            amount = 5,
                        },
                        [3] = {
                            item = "strawberry",
                            amount = 5,
                        },
                    },
                },
                [3] = {
                    ItemName = "croissant",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "flour",
                            amount = 5,
                        },
                        [2] = {
                            item = "butter",
                            amount = 5,
                        },
                    },
                },
                [4] = {
                    ItemName = "cookie",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "flour",
                            amount = 5,
                        },
                        [2] = {
                            item = "sugar",
                            amount = 5,
                        },
                    },
                },
                [5] = {
                    ItemName = "bagel",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "flour",
                            amount = 5,
                        },
                        [2] = {
                            item = "butter",
                            amount = 5,
                        },
                    },
                },
            }
        },
        ["nachoGrill"] = { -- Station ID
            StationName = "nachoGrill", -- Name of the station need to be the same as station ID
            Job = "nachodaddy", -- Atorized job name
            Coords = vector3(982.28, -1383.98, 31.83), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            TargetIcon = "fas fa-circle", -- Target Icon
            Animation = "bbq", "bbqf", -- Only can use dpemotes animations. the animation can be meatgrill or friethings -- CRIAR A ANIMAÇÃO COM A FACA NO DPEMOTES
            Itens = {
                [1] = {
                    ItemName = "burger",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "beef",
                            amount = 5,
                        },
                    },
                },
                [2] = {
                    ItemName = "chicken",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "chickenbreast",
                            amount = 5,
                        },
                    },
                },
                [3] = {
                    ItemName = "pulledpork",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "pork",
                            amount = 5,
                        },
                    },
                },
                [4] = {
                    ItemName = "shrimp",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "raw_shrimp",
                            amount = 5,
                        },
                    },
                },
                [5] = {
                    ItemName = "rice",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "dryrice",
                            amount = 5,
                        },
                    },
                },
            }
        },
        ["phaqgrill"] = { -- Station ID
            StationName = "phaqgrill", -- Name of the station need to be the same as station ID
            Job = "phaq", -- Atorized job name
            Coords = vector3(-173.02, 300.54, 97.31), -- Zone coords (need to be vector3)
            Length = 1, -- Length value for polyzone
            Width = 1, -- Width value for polyzone
            TargetIcon = "fas fa-circle", -- Target Icon
            Animation = "bbq", "bbqf", -- Only can use dpemotes animations. the animation can be meatgrill or friethings -- CRIAR A ANIMAÇÃO COM A FACA NO DPEMOTES
            Itens = {
                [1] = {
                    ItemName = "shrimp",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "raw_shrimp",
                            amount = 5,
                        },
                    },
                },
                [2] = {
                    ItemName = "pulledpork",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "pork",
                            amount = 5,
                        },
                    },
                },
                [3] = {
                    ItemName = "cookedtrout",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "trout",
                            amount = 5,
                        }, 
                    },
                },
                [4] = {
                    ItemName = "friedrice",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "dryrice",
                            amount = 5,
                        },
                        [2] = {
                            item = "fishsauce",
                            amount = 5,
                        }, 
                        [2] = {
                            item = "dicedcarrots",
                            amount = 5,
                        }, 
                    },
                },
                [5] = {
                    ItemName = "crispyflounder",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "flour",
                            amount = 5,
                        },
                        [2] = {
                            item = "flounder",
                            amount = 5,
                        }, 
                        [3] = {
                            item = "oystersauce",
                            amount = 5,
                        }, 
                    },
                },
                [6] = {
                    ItemName = "braisedpuffer",
                    ReciveAmount = 10,
                    Itens = {
                        [1] = {
                            item = "pufferfish",
                            amount = 5,
                        },
                        [2] = {
                            item = "fishsauce",
                            amount = 5,
                        }, 
                        [2] = {
                            item = "slicedlemon",
                            amount = 5,
                        }, 
                    },
                },
            }
        },
    },
}

LocationsConfig.Garages = {
    ["nachos"] = { -- Station ID need to be the same as Station Name
        StationName = "nachos", -- Station Name need to be the same as Station ID
        Job = "nachodaddy", -- Authorized job
        PedModel = "s_m_m_mariachi_01", -- Ped model
        PedHash = 0x7EA4FFA6, -- Ped hash
        PedLoc = vector3(1011.76, -1374.31, 30.35), -- Location where ped will spawn
        SpawnLoc = vector4(1006.2, -1376.69, 31.36, 181.77), -- location where vehicle will spawn
        Heading = 160.00, -- ped heading
        Width = 1, -- polyzone width
        Length = 1, -- polyzone length
        TargetIcon = "fas fa-car", -- Targget icon
        Vehicles = { -- List of vehicles
            [1] = {
                VehicleLable = "tacotruck", -- Vehicle label name
                VehicleSpawnName = "taco", -- Vehicle spawn name
            },
        },
    },
    ["coolbeans"] = { -- Station ID need to be the same as Station Name    
        StationName = "coolbeans", -- Station Name need to be the same as Station ID
        Job = "coolbeans", -- Authorized job
        PedModel = "s_m_y_valet_01", -- Ped model
        PedHash = 0x3B96F23E, -- Ped hash
        PedLoc = vector3(-1182.8, -1132.0, 4.70), -- Location where ped will spawn
        SpawnLoc = vector4(-1181.69, -1128.59, 5.7, 16.72), -- location where vehicle will spawn
        Heading = 320.00, -- ped heading
        Width = 1, -- polyzone width
        Length = 1, -- polyzone length
        TargetIcon = "fas fa-car", -- Targget icon
        Vehicles = { -- List of vehicles
            [1] = {
                VehicleLable = "coolbeans delivery", -- Vehicle label name
                VehicleSpawnName = "brioso3", -- Vehicle spawn name
            },
        }
    },
}

LocationsConfig.ClothingSpots = {
    ["upandatom"] = { -- Station ID
        StationName = "upandatom", -- Station name need to be the same as station ID
        Coords = vector3(84.75, 294.24, 110.21), -- Station coords
        Width = 1, -- Polyzone Width
        Length = 1, -- Polyzone Length
        TargetIcon = "fas fa-shirt", -- Target Icon
        Job = "upandatom", -- Job
    },
    ["coolbeans"] = { -- Station ID
        StationName = "coolbeans", -- Station name need to be the same as station ID
        Coords = vector3(-1194.0, -1142.17, 7.83), -- Station coords
        Width = 1, -- Polyzone Width
        Length = 1, -- Polyzone Length
        TargetIcon = "fas fa-shirt", -- Target Icon
        Job = "coolbeans", -- Job
    },
    ["flokis"] = { -- Station ID
        StationName = "flokis", -- Station name need to be the same as station ID
        Coords = vector3(278.07, -1155.99, 29.27), -- Station coords
        Width = 1, -- Polyzone Width
        Length = 1, -- Polyzone Length
        TargetIcon = "fas fa-shirt", -- Target Icon
        Job = "floki", -- Job
    },
    ["ambulance"] = { -- Station ID
        StationName = "EMS", -- Station name need to be the same as station ID
        Coords = vector3(298.52, -598.46, 43.28), -- Station coords
        Width = 1, -- Polyzone Width
        Length = 1, -- Polyzone Length
        TargetIcon = "fas fa-shirt", -- Target Icon
        Job = "ambulance", -- Job
    },
    ["phaq"] = { -- Station ID
        StationName = "phaq", -- Station name need to be the same as station ID
        Coords = vector3(-172.44, 306.09, 100.92), -- Station coords
        Width = 1, -- Polyzone Width
        Length = 1, -- Polyzone Length
        TargetIcon = "fas fa-shirt", -- Target Icon
        Job = "phaq", -- Job
    },
    ["pops"] = { -- Station ID
        StationName = "pops", -- Station name need to be the same as station ID
        Coords = vector3(1769.48, 3323.45, 41.44), -- Station coords
        Width = 1, -- Polyzone Width
        Length = 1, -- Polyzone Length
        TargetIcon = "fas fa-shirt", -- Target Icon
        Job = "pops", -- Job
    },
    ["autoexotics"] = { -- Station ID
        StationName = "autoexotics", -- Station name need to be the same as station ID
        Coords = vector3(549.98, -183.66, 54.66), -- Station coords
        Width = 1, -- Polyzone Width
        Length = 1, -- Polyzone Length
        TargetIcon = "fas fa-shirt", -- Target Icon
        Job = "autoexotics", -- Job
    },
    ["pdm"] = { -- Station ID
        StationName = "pdm", -- Station name need to be the same as station ID
        Coords = vector3(-27.16, -1105.4, 27.17), -- Station coords
        Width = 3, -- Polyzone Width
        Length = 3, -- Polyzone Length
        TargetIcon = "fas fa-shirt", -- Target Icon
        Job = "pdm", -- Job
    },
    ["pawn"] = { -- Station ID
        StationName = "pawn", -- Station name need to be the same as station ID
        Coords = vector3(167.14, -1324.12, 25.54), -- Station coords
        Width = 3, -- Polyzone Width
        Length = 3, -- Polyzone Length
        TargetIcon = "fas fa-shirt", -- Target Icon
        Job = "pawn", -- Job
    },
    ["rws"] = { -- Station ID
        StationName = "rws", -- Station name need to be the same as station ID
        Coords = vector3(146.01, -3219.34, 5.89), -- Station coords
        Width = 3, -- Polyzone Width
        Length = 3, -- Polyzone Length
        TargetIcon = "fas fa-shirt", -- Target Icon
        Job = "rws", -- Job
    },
}

LocationsConfig.Registers = {
    ["burgershot"] = { -- Station ID
        StationName = "burgershotRegister", -- Station name need to be the same as station ID
        Coords = vector3(-1177.53, -897.78, 13.8), -- Station coords
        Width = 0.50, -- Polyzone Width
        Length = 0.50, -- Polyzone Length 
        TargetIcon = "fas fa-clipboard", -- Target Icon
        Job = "burgershot", -- Job
    },
}

LocationsConfig.WashHands = {
    ["nachowash"] =  { -- Station ID
        StationName = "nachowash", -- Station name need to be the same as station ID
        Job = "nachodaddy", -- Job
        Coords = vector3(981.21, -1384.83, 31.39), -- Station coords
        Width = 1, -- Polyzone Width
        Length = 1, -- Polyzone Length 
        TargetIcon = "fas fa-clipboard", -- Target Icon
    },
    ["atomwash"] =  { -- Station ID
        StationName = "atomwash", -- Station name need to be the same as station ID
        Job = "upandatom", -- Job
        Coords = vector3(95.94, 290.84, 109.86), -- Station coords
        Width = 1, -- Polyzone Width
        Length = 1, -- Polyzone Length 
        TargetIcon = "fas fa-clipboard", -- Target Icon
    },
    ["coolwash"] =  { -- Station ID
        StationName = "coolwash", -- Station name need to be the same as station ID
        Job = "coolbeans", -- Job
        Coords = vector3(-1198.61, -1146.07, 7.42), -- Station coords
        Width = 1, -- Polyzone Width
        Length = 1, -- Polyzone Length 
        TargetIcon = "fas fa-clipboard", -- Target Icon
    },
    ["phaqwash"] =  { -- Station ID
        StationName = "phaqwash", -- Station name need to be the same as station ID
        Job = "phaq", -- Job
        Coords = vector3(-174.55, 300.6, 97.37), -- Station coords
        Width = 1, -- Polyzone Width
        Length = 1, -- Polyzone Length 
        TargetIcon = "fas fa-clipboard", -- Target Icon
    },
    ["tavernwash"] =  { -- Station ID
        StationName = "tavernwash", -- Station name need to be the same as station ID
        Job = "tavern", -- Job
        Coords = vector3(1233.2735595703, -416.25283813477, 68.486053466797), -- Station coords
        Width = 1, -- Polyzone Width
        Length = 1, -- Polyzone Length 
        TargetIcon = "fas fa-clipboard", -- Target Icon
    },
    ["pinkwash"] =  { -- Station ID
        StationName = "pinkwash", -- Station name need to be the same as station ID
        Job = "pinkcage", -- Job
        Coords = vector3(336.25, -196.59, 54.9), -- Station coords
        Width = 1, -- Polyzone Width
        Length = 1, -- Polyzone Length 
        TargetIcon = "fas fa-clipboard", -- Target Icon
    },
    ["arcadewash"] =  { -- Station ID
        StationName = "arcadewash", -- Station name need to be the same as station ID
        Job = "arcade", -- Job
        Coords = vector3(2376.41, 3038.68, 32.34), -- Station coords
        Width = 1, -- Polyzone Width
        Length = 1, -- Polyzone Length 
        TargetIcon = "fas fa-clipboard", -- Target Icon
    },
    ["mooreewash"] =  { -- Station ID
        StationName = "moorewash", -- Station name need to be the same as station ID
        Job = "moore", -- Job
        Coords = vector3(130.41, -1286.03, 30.24), -- Station coords
        Width = 1, -- Polyzone Width
        Length = 1, -- Polyzone Length 
        TargetIcon = "fas fa-clipboard", -- Target Icon
    },
}

LocationsConfig.ToogleDuty = {
    ["BurgerShot"] =  { -- Station ID
        StationName = "BurgerShotDuty", -- Station name need to be the same as station ID
        Job = "burgershot", -- Job
        Coords = vector3(-1177.53, -897.78, 13.8), -- Station coords
        Width = 1, -- Polyzone Width
        Length = 1, -- Polyzone Length 
        TargetIcon = "fas fa-clipboard", -- Target Icon
    },
}

LocationsConfig.MapBlips = {
    [1] = { blipvariantid = BSBlip, blipcolour = 0, blipsprite = 0, blipdisplay = 0, blipscale = 0, blipcoords = vector3(-1179.61, -885.8, 13.81), blipname = "BurgerShot" },

    -- blipvariantid - is the variant id need to be a unique id!!
    -- blipcolour - is the colour of the blip
    -- blipsprite - is the blip sprite ID
    -- blipdisplay - is the size of blip on Map
    -- blipcoords - is the coordinates of the blip
    -- blipname - is the name that shows at map
}