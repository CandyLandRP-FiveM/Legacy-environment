Config = {}


Config.Title = 'Lets Cook!'
Config.Text = 'I am hungry'
Config.Exit = 'Exit'
Config.Quit = 'Quit Job' 


Config.CraftItems = { -- Crafting item
    [1] = {
		label = 'Street Corn',
		subtitle = 'Best Elote around',
        name = 'elote',
		job = 'nachodaddy',
        ingredient = {
			[1] = {
                item = 'corncob',
                amount = 1,
            },
            [2] = {
                item = 'cheese_shredded',
                amount = 1,
            },
            [3] = {
                item = 'lime',
                amount = 1,
            },					
        },

    },
    [2] = {
			label = 'Tacos Al Pastor',
		subtitle = 'Pork Tacos',			
        name = 'pork_tacos',
        job = 'nachodaddy',
        ingredient = {
            [1] = {
                item = 'pulledpork',
                amount = 1,
            },
            [2] = {
                item = 'slicedpepper',
                amount = 1,
            },
        },

    },
    [3] = {
			label = 'Tinga De Pollo',
		subtitle = 'Chicken Tacos',			
        name = 'chicken_tacos',
		job = 'nachodaddy',
        ingredient = {
 			[1] = {
                item = 'chicken',
                amount = 1,
            },
            [2] = {
                item = 'slicedpepper',
                amount = 1,
            },			
        },

    },
    [4] = {
        label = 'Tacos de Camarones',
        subtitle = 'Shrimp Tacos',			
        name = 'shrimp_tacos',
        job = 'nachodaddy',
        ingredient = {
            [1] = {
               item = 'shrimp',
               amount = 1,
            },
            [2] = {
                item = 'slicedpepper',
                amount = 1,
            },			
        },
    },
    [5] = {
        label = 'Carne Taco',
        subtitle = 'Steak Tacos',			
        name = 'carnetaco',
        job = 'nachodaddy',
        ingredient = {
            [1] = {
               item = 'burger',
               amount = 1,
            },
            [2] = {
                item = 'slicedpepper',
                amount = 1,
            },			
        },
    },
    [6] = {
        label = 'Quesadilla',
        subtitle = 'Juciest Quesadilla youll ever eat',			
        name = 'quesadilla',
        job = 'nachodaddy',
        ingredient = {
            [1] = {
               item = 'cheese_shredded',
               amount = 1,
            },
            [2] = {
                item = 'tortilla',
                amount = 1,
            },			
        },
    },
  
 
}





	-- VOODOO CUSTOM ITEMS
--	['bread'] 		= {['name'] = 'bread', 			['label'] = 'rBead', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'bread.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = ''},
--	['meat'] 			= {['name'] = 'meat', 			 	['label'] = 'Meat', 		['weight'] = 200, 		['type'] = 'item', 		['image'] = 'meat.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = ''},
--	['salad'] 			= {['name'] = 'salad', 			['label'] = 'Salad', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'salad.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = ''},
--	['basil'] 				= {['name'] = 'basil', 			 	['label'] = 'Basil', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'basil.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = ''},
--	['tomato_sauce'] 				= {['name'] = 'tomato_sauce', 			 	['label'] = 'Tomato Sauce', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'tomato_sauce.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = ''},
--	['spicy_sauce'] 		= {['name'] = 'spicy_sauce', 			['label'] = 'Hot Sauce', 		['weight'] = 200, 		['type'] = 'item', 		['image'] = 'spicy_sauce.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = ''},
--	['onion'] 			= {['name'] = 'onion', 			 	['label'] = 'Onion', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'onion.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = ''},
--	['kebab'] 				= {['name'] = 'kebab', 			 		['label'] = 'Kebab', 						['weight'] = 200, 		['type'] = 'item', 		['image'] = 'kebab.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = ''},
--	['pizza'] 				= {['name'] = 'pizza', 			 		['label'] = 'Pizza', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'pizza.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = ''},
--	['dough'] 				= {['name'] = 'dough', 			 	['label'] = 'Dough', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'dough.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = ''},
--	['salt'] 				= {['name'] = 'salt', 			 		['label'] = 'Salt', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'salt.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = ''},
--	['mozzarella'] 				= {['name'] = 'mozzarella', 			 		['label'] = 'Mozzarella', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'mozzarella.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = ''},
--	['oil'] 				= {['name'] = 'oil', 			 		['label'] = 'Oil', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'oil.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = ''},

--	['voodoo_kebabtool'] 				= {['name'] = 'voodoo_kebabtool', 			 		['label'] = 'Cooking Book v2', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'pasta.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = ''},





