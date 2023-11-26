WATER GUN v 2.5 script from https://store.devcore.cz/
If you have a problem with the script, contact our support Discord: https://discord.gg/zcG9KQj3sa


The script uses the escrow system

How to install the script


1. After purchasing the script, the script can be downloaded here https://keymaster.fivem.net/assets

2. Upload the contents of the zip file to your server

3. ensure devcore_watergun in server.cfg after qb-core

4. Now create items depending on the inventory.

If you are using ox_inventory 
paste this into the file ox_inventory/data/items.lua,

	['watergun'] = {
		label = 'Water Gun',
        weight = 500,
		stack = false,
		close = true,
	},

----
If you are using qs-inventory or qb-inventory
paste this into the file qb-core/shared/items.lua,
	
["watergun"] 		 		 = {["name"] = "watergun", 					["label"] = "Water  Gun", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "watergun.png", 				["unique"] = true, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
----
If you use another inventory, you use its method to add the item.


5. Restart server


Make sure your server artifacts version is above the 5181.