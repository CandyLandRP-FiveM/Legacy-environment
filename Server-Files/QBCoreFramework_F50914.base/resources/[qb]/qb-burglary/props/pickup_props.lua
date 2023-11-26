Pickup = {}

-- List of carriable props
Pickup.Props = {
    -- This ID must match the QB item name
    ["bigtv"] = 
    {
        ["model"] = "prop_tv_flat_02b",
        ["bone"] = 60309,
        ["pos"] = {0.075, 0.19, 0.295, 223.0, 110.0, 0.0},
    },
    -- This ID must match the QB item name
    ['bigtv_fat'] =
    {
        ["model"] = "prop_tv_03",
        ["bone"] = 60309,
        ["pos"] = {0.100, 0.293, 0.155, -98.0, 200.0, -25.0},
    },
    -- This ID must match the QB item name
    ["computer"] =
    {
        ["model"] = "prop_dyn_pc",
        ["bone"] = 60309,
        ["pos"] = {0.095, 0.08, 0.255, -175.0, 200.0, 225.0},
    },
    -- This ID must match the QB item name
    ["microwave"] =
    { 
        ["model"] = "prop_micro_02",
        ["bone"] = 60309,
        ["pos"] = {0.105, 0.015, 0.195, -98.0, 200.0, -25.0},
    },
    -- This ID must match the QB item name
    ["stereo"] =
    {
        ["model"] = "prop_hifi_01",
        ["bone"] = 60309,
        ["pos"] = {0.025, 0.08, 0.255, -145.0, 290.0, 0.0},
    },
    -- This ID must match the QB item name
    ["coffeemach"] =
	{
        ["model"] = "prop_coffee_mac_02",
        ["bone"] = 60309,
        ["pos"] = {0.095, 0.08, 0.255, -175.0, 200.0, 225.0},
	}
}

-- If you add an item to this list you must create a usable item in server/sv_carry.lua
-- Bone ID list: https://wiki.gtanet.work/index.php?title=Bones
-- GTAV object list: https://forge.plebmasters.de/objects

-- If you are using Renewed-Weaponscarry and you have renamed the resource replace "Renewed-Weaponscarry" with your name
Pickup.RenewedCarryResourceName = "Renewed-Weaponscarry"

-- If you are using Renewed-Weaponscarry issues may occur when entering/exiting the house
-- This option should fix it
Pickup.FixRenewedConflict = true

Pickup.DisableBuiltInCarry = true
