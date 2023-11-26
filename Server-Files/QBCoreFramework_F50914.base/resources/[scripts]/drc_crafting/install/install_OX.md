OX INSTALL QUIDE

1. Download all dependencies!
    Dependencies:
    ox_lib | https://github.com/overextended/ox_lib
    es_extended / qb-core
    qtarget / qb-target

2. Add Images to your inventory
	ox_inventory > web > build > images
	Paste images from folder images to ox_inventory > web > build > img

3. Add Items to your inventory
	ox_inventory > data> items.lua

	['blueprint_carbine'] = {
		label = 'Blueprint',
		description = "Carbine Rifle Blueprint",
		weight = 50,
		stack = true
	},

	['scrap'] = {
		label = 'Scrap Metal',
		description = "Great for carfting",
		weight = 20,
		stack = true
	},

	['raw_steak'] = {
		label = 'Raw Steak',
		weight = 20,
		stack = true
	},

	['steak'] = {
		label = 'Steak',
		weight = 20,
		stack = true
	},


4. add ensure drc_crafting into your server.cfg (make sure to start it after ox_lib and your target system!)

5. Enjoy your new crafting script from DRC SCRIPTS!