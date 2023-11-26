-- Please join the Discord for support: https://discord.gg/gqxxwt49SX
-- Please join the Discord for support: https://discord.gg/gqxxwt49SX
-- Please join the Discord for support: https://discord.gg/gqxxwt49SX
---------------------------------------------------------
If Config.walletInfo.auto_add_item and Config.purseInfo.auto_add_item = `false` then add these 2 items to your `qb-core/shared/items.lua`
Even if you do not use `auto_add_item`, please make sure you set the `itemName` in the `Config.walletInfo.name` and `Config.purseInfo.name` settings to match what you add into items.lua!
Use your own item images....
---------------------------------------------------------
-- LP NPC Mugging
['mwallet']      = {['name'] = 'mwallet', 	  ['label'] = 'Local Wallet', 		    ['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'wallet.png', 	   ['unique'] = true, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A wallet with too many cards in it'},
['purse']        = {['name'] = 'purse',  	  ['label'] = 'Local Purse', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'purse.png', 	   ['unique'] = true, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A purse with too much makeup inside'},
---------------------------------------------------------
-- Add the below snippets to the respective files: [ps-dispatch]
---------------------------------------------------------
Add to ps-dispatch/client./cl_extraalerts.lua
---------------------------
----dream scripts--------
---------------------------
local function StreetMugging()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    local gender = GetPedGender()
    TriggerServerEvent("dispatch:server:notify",{
        dispatchcodename = "streetmugging", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-65",
        firstStreet = locationInfo,
        gender = gender,
        model = nil,
        plate = nil,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('streetmugging'), -- message
        job = {"police"} -- jobs that will get the alerts
    })
end exports('StreetMugging', StreetMugging)
---------------------------------------------------------
Add to ps-dispatch/server./sv_dispatchcodes.lua
-- Dream Scripts NPC Mugging
["streetmugging"] =  {displayCode = '10-65', description = "Mugging in progress", radius = 20.0, recipientList = {'police'}, blipSprite = 66, blipColour = 37, blipScale = 0.6, blipLength = 1, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
---------------------------------------------------------
Add to ps-dispatch/locales.lua - Add to the bottom of which ever language table you use.
['streetmugging'] = "Street Mugging",
---------------------------------------------------------
-- Please join the Discord for support: https://discord.gg/gqxxwt49SX
-- Please join the Discord for support: https://discord.gg/gqxxwt49SX
-- Please join the Discord for support: https://discord.gg/gqxxwt49SX


