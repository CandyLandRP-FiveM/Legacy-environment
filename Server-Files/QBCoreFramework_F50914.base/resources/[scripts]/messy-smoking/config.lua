Config = {}

--[[
	ADD TO QB-CORE/SHARED/ITEMS.LUA
	
	["ajoint"]	= {["name"] = "ajoint",	["label"] = "a joint",		["weight"] = 200,	["type"] = "item",	["image"] = "ajoint.png",	["unique"] = false,	["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,   ["description"] = "a joint"},
	["acigar"]	= {["name"] = "acigar",	["label"] = "a cigar",		["weight"] = 200,	["type"] = "item",	["image"] = "acigar.png",	["unique"] = false,	["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,   ["description"] = "a cigar"},
	["aciggy"]	= {["name"] = "aciggy",	["label"] = "a cigarette",		["weight"] = 200,	["type"] = "item",	["image"] = "acigarette.png",	["unique"] = false,	["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,   ["description"] = "a cigarette"},
	
	ADD IMAGES TO QB-INVENTORY/HTML/IMAGES
	
	List of Screen Effects you can use if you want to change: https://pastebin.com/dafBAjs0 / https://www.youtube.com/watch?v=JtW9hcKKumQ
	
	Adjust stress relief and armor given below
	
	If you add additional items you must also add it to your Shared/Items.Lua to be able to use it
	
	Join our Discord if you have any questions / need help! https://discord.gg/tg6g2hZgGg
--]]

Config.Items = {
	[1] = {prop = 'p_cs_joint_02', name = "ajoint", seffect = "FocusOut", puffs = 5, stress = 20, armor= 10, maxarmor = 30 },
	[2] = {prop = 'prop_cigar_01', name = "acigar", seffect = "", puffs = 20, stress = 15, armor= 10, maxarmor = 20},
	[3] = {prop = 'prop_cs_ciggy_01', name = "aciggy", seffect = "", puffs = 5, stress = 20, armor= 0, maxarmor = 0 },
}

-- If LighterCheck is true will check for the LighterItem before smoking
Config.LighterCheck = true
Config.LighterItem = "lighter"

-- Add pack items here, ex. pack of ciggarettes, box of cigars
-- givenitem is the item the pack will give after use
Config.PackItems = {
	[1] = {
		name = "pack_cig",
		givenitem = "aciggy",
		quantity = 20,
		dispname = "A pack of cigarettes",
		description = "A pack of cigarettes",
		image = "np_redwood-pack.png",
	},	
}

Config.AddItemFix = false
--[[
Only use if you have an Error with AddItem Exports
Must add pack items to qb-core/shared/items.lua manually if you have to use this

["pack_cigtest"]	= {["name"] = "pack_cigtest",	["label"] = "A pack of cigarettes",		["weight"] = 1,	["type"] = "item",	["image"] = "np_redwood-pack.png",	["unique"] = true,	["useable"] = true,		["shouldClose"] = true,		["combinable"] = false,   ["description"] = "A pack of cigarettes"},

]]--