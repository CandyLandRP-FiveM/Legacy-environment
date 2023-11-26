------------------
--- DISCLAIMER ---
------------------

-- You will need to create each item in your shared items.lua file before it can be used in this config.
-- Check the README for the shared items.lua template

Config = {}

Config.Storage = {
	[1] = {
		name = "cigarettebox", 
		label = "Cigarette Box", 
		weight = 12,	-- This is the max weight this item can hold (make it less than this items weight to prevent this item being added to itself)
		slots = 12, 	-- This is the number of slots this item has
		items = { 		-- This is where you can define items that are stored within by default
			[1] = {
				description = "A single cigarette",
				name = "cigarette",
				useable = true,
				type = "item",
				amount = 1,
				weight = 1,
				unique = false,
				image = "69-brand-pack.png",
				slot = 1,
				label = "Cigarette",
				info = nil,
			}
		}
	},
	[2] = {
		name = "wallet", 
		label = "Wallet", 
		weight = 10000,	-- This is the max weight this item can hold (make it less than this items weight to prevent this item being added to itself)
		slots = 5, 	-- This is the number of slots this item has
		items = { 		-- This is where you can define items that are stored within by default
		}
	},
	[3] = {
		name = "wallet2", 
		label = "Pink Wallet", 
		weight = 10000,	-- This is the max weight this item can hold (make it less than this items weight to prevent this item being added to itself)
		slots = 5, 	-- This is the number of slots this item has
		items = { 		-- This is where you can define items that are stored within by default
		}
	},
	[4] = {
		name = "atombag", 
		label = "Atom bag", 
		weight = 25000,	-- This is the max weight this item can hold (make it less than this items weight to prevent this item being added to itself)
		slots = 10, 	-- This is the number of slots this item has
		items = { 		-- This is where you can define items that are stored within by default
		}
	},
	[5] = {
		name = "coolbag", 
		label = "Cool Beans Bag", 
		weight = 25000,	-- This is the max weight this item can hold (make it less than this items weight to prevent this item being added to itself)
		slots = 10, 	-- This is the number of slots this item has
		items = { 		-- This is where you can define items that are stored within by default
		}
	},
	[6] = {
		name = "phaqbox", 
		label = "Pha Q Box", 
		weight = 25000,	-- This is the max weight this item can hold (make it less than this items weight to prevent this item being added to itself)
		slots = 10, 	-- This is the number of slots this item has
		items = { 		-- This is where you can define items that are stored within by default
		}
	},
	[7] = {
		name = "nachodaddy", 
		label = "Taco Box", 
		weight = 25000,	-- This is the max weight this item can hold (make it less than this items weight to prevent this item being added to itself)
		slots = 10, 	-- This is the number of slots this item has
		items = { 		-- This is where you can define items that are stored within by default
		}
	},
	[8] = {
		name = "tavern", 
		label = "Tavern Takeout", 
		weight = 25000,	-- This is the max weight this item can hold (make it less than this items weight to prevent this item being added to itself)
		slots = 10, 	-- This is the number of slots this item has
		items = { 		-- This is where you can define items that are stored within by default
		}
	},
	[9] = {
		name = "briefcase", 
		label = "Briefcase", 
		weight = 25000,	-- This is the max weight this item can hold (make it less than this items weight to prevent this item being added to itself)
		slots = 10, 	-- This is the number of slots this item has
		items = { 		-- This is where you can define items that are stored within by default
		}
	},
	
}
