QBCORE INSTALL QUIDE

1. Download all dependencies!
    Dependencies:
    ox_lib | https://github.com/overextended/ox_lib
    es_extended / qb-core
    qtarget / qb-target

2. Add Images to your inventory
    qb-inventory > html > images
    Paste images from folder images to qb-inventory > html > images 

3. Add Items to your inventory
    qb-core > shared.lua
    ["blueprint_carbine"] 		 	 	 	 = {["name"] = "blueprint_carbine",           			["label"] = "Blueprint",	 		["weight"] = 50, 		["type"] = "item", 		["image"] = "blueprint_carbine.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil, ["description"] = "Carbine Rifle Blueprint"},
    ["scrap"] 		 	 	 	 = {["name"] = "scrap",           			["label"] = "Scrap Metal",	 		["weight"] = 20, 		["type"] = "item", 		["image"] = "scrap.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil, ["description"] = "Great for carfting"},
    ["raw_steak"] 		 	 	 	 = {["name"] = "raw_steak",           			["label"] = "Raw Steak",	 		["weight"] = 20, 		["type"] = "item", 		["image"] = "raw_steak.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil, ["description"] = ""},
    ["steak"] 		 	 	 	 = {["name"] = "steak",           			["label"] = "Steak",	 		["weight"] = 20, 		["type"] = "item", 		["image"] = "steak.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil, ["description"] = ""},

4. add ensure drc_crafting into your server.cfg (make sure to start it after ox_lib and your target system!)

5. Enjoy your new crafting script from DRC SCRIPTS!