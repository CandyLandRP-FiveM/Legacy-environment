-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------

local seconds, minutes = 1000, 60000
Config = {}

Config.checkForUpdates = true -- Check for updates?
Config.oldESX = false -- Nothing to do with qb / Essentially when set to true it disables the check of if player can carry item

Config.sellShop = {
    enabled = true,
    coords = vector3(-2193.52, 4290.15, 48.17), -- X, Y, Z Coords of where fish buyer will spawn
    heading = 50.63, -- Heading of fish buyer ped
    ped = 'cs_old_man2' -- Ped name here
}

Config.bait = {
    itemName = 'fishbait', -- Item name of bait
    loseChance = 50 -- Chance of loosing bait(Setting to 100 will use bait every cast)
}

Config.fishingRod = {
    itemName = 'fishingrod', -- Item name of fishing rod
    breakChance = 5 --Chance of breaking pole when failing skillbar (Setting to 0 means never break)
}

Config.timeForBite = { -- Set min and max random range of time it takes for fish to be on the line.
    min = 2 * seconds,
    max = 20 * seconds
}

Config.fish = {
    { item = 'tuna', label = 'Tuna', price = {300, 350}, difficulty = {'easy', 'medium', 'easy'} }, -- name is the item name of the fish(must be in DB of items) / Price is the range of price it will sell to fish buyer / difficulty is how many & how hard skillcheck is
    { item = 'salmon', label = 'Salmon', price = {250, 300}, difficulty = {'easy', 'easy'} },
    { item = 'trout', label = 'Trout', price = {175, 225}, difficulty = {'easy'} },
    { item = 'anchovy', label = 'Anchovy', price = {50, 75}, difficulty = {'easy'} },
    { item = 'raw_shrimp', label = 'shrimp', price = {75, 125}, difficulty = {'easy'} },
    { item = 'sturgeon', label = 'Sturgeon', price = {75, 125}, difficulty = {'easy', 'easy'} },
    { item = 'large_bass', label = 'largemouth Bass', price = {250, 300}, difficulty = {'easy', 'easy'} },
    { item = 'flounder', label = 'Flounder', price = {250, 300}, difficulty = {'easy'} },
    { item = 'oyster', label = 'Oyster', price = {75, 125}, difficulty = {'easy'} },
    { item = 'scallop', label = 'Scallop', price = {75, 125}, difficulty = {'easy', 'easy'} },
    { item = 'mackerel', label = 'Mackerel', price = {75, 125}, difficulty = {'easy'} },
    { item = 'catfish', label = 'Catfish', price = {75, 125}, difficulty = {'easy', 'easy'} },
    { item = 'blue_tang', label = 'Blue Tang', price = {300, 350}, difficulty = {'easy', 'medium', 'easy'} },
    { item = 'clownfish', label = 'Clownfish', price = {300, 350}, difficulty = {'easy', 'medium', 'easy'} },
    { item = 'sea_urchin', label = 'Sea Urchin', price = {175, 225}, difficulty = {'easy', 'easy'} },
    { item = 'lionfish', label = 'Lionfish', price = {175, 225}, difficulty = {'easy', 'easy'} },
    { item = 'lobster', label = 'Lobster', price = {300, 350}, difficulty = {'easy', 'medium', 'easy'} },
    { item = 'crab', label = 'Crab', price = {175, 225}, difficulty = {'easy', 'easy'} },
    { item = 'pufferfish', label = 'Pufferfish', price = {75, 125}, difficulty = {'easy'} },
    { item = 'blobfish', label = 'Blobfish', price = {300, 350}, difficulty = {'easy', 'medium', 'easy'} },
    { item = 'wolf_fish', label = 'Nordic Wolf Fish', price = {75, 125}, difficulty = {'easy', 'easy'} },
    { item = 'nori', label = 'Seaweed', price = {25, 50}, difficulty = {'easy'} },
}

RegisterNetEvent('wasabi_fishing:notify')
AddEventHandler('wasabi_fishing:notify', function(title, message, msgType)
     --Place notification system info here, ex: exports['okoknotify']:SendAlert('inform', message)
    if not msgType then
        lib.notify({
            title = title,
            description = message,
            type = 'inform'
        })
    else
        lib.notify({
            title = title,
            description = message,
            type = msgType
        })
    end
end)
