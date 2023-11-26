Config = {}

-- If you have renamed your QBCore object replace "QBCore" with the name of your core
Config.CoreObjectName = "QBCore"

-- exports[Config.CoreResourceName]:GetCoreObject()
-- If you have renamed your resources replace "qb-core" with the name of your core
Config.CoreResourceName = "qb-core"

-- exports[TargetResourceName]:AddZone
-- If you have renamed your qb-target resource replace "qb-target" with your name
Config.TargetResourceName = "qb-target"

-- exports[LockResourceName]:StartLockPickCircle
-- https://github.com/Nathan-FiveM/qb-lock
-- If you have renamed your qb-lock resource replace "qb-lock"
Config.LockResourceName = "qb-lock"

-- If you have renamed your qb-menu resource replace "qb-menu"
Config.MenuResourceName = "qb-menu"

-- https://github.com/Project-Sloth/ps-ui
Config.PsUiResourceName = "ps-ui"

-- TriggerEvent(Config.LockpickResourceName..':client:openLockpick')
-- If you have renamed your qb-lockpick resource replace "qb-lockpick" with your name
Config.LockpickResourceName = "qb-lockpick"

-- If true the required break in item will be removed if the minigame is failed
Config.RemoveLockpick = true

-- If true the player will need a certain item to access the boss menu
Config.RequireItem = true

-- The item required to speak to the bossman
Config.RequiredItem = "cryptostick"

-- If true the item required to speak to the bossman will be removed
Config.RemoveRequiredItem = true

-- Set the skill check minigame for lockpicking a door
-- Options: "circle", "ps-circle", "square", "lockpick"
Config.DoorSkillcheck = "lockpick"

-- Set the skill check minigame for disabling the security system
-- Options: "circle", "ps-circle", "ps-scrambler", "square"
Config.SecuritySkillcheck = "ps-scrambler"

-- Set the skill check minigame for cracking the safe
-- Options: "circle", "ps-circle", "square"
Config.SafeSkillcheck = "circle"

-- Example: if the time is 5AM or later you cannot break in
-- You can remove the time check in cl_public.lua
Config.MinTime = 6

-- Example: if the time is 11PM or later you can break in
Config.MaxTime = 20

-- Set how long it takes for the player to receive a job (seconds)
Config.JobWaitTime = { 15, 120 } -- [1] = min seconds, [2] = max seconds

-- Set how long the player has to complete the job after entry (minutes)
Config.JobTime = 5

-- If true the player will be emailed a job offer using qb-phone, the offer must be accepted
-- If false the player will be notified via QB.Notify or the notify resource you are using
Config.QbPhoneMail = true

-- If true QB.Notify notifications will be used
-- If false a different notify resource can be used, you can add your own notify trigger in cl_public.lua
Config.QbNotify = true

-- You must add the boss_reputation table to your DB before setting Config.Reputation to true
-- You can do this by importing the "boss_reputation.sql" file
-- If true the player will level up when robbing houses, eventually unlocking high tier houses
-- If false the player will receive a random tier house
Config.Reputation = true

-- Max reputation = Config.MaxLevel * 10000 = 100000
-- 10% max rep = Lvl 1, 20% max rep = lvl 2, 30% max rep = lvl 3
Config.MaxLevel = 10

-- List of departments for police check
-- Dispatch alert related code can be found in cl_public.lua - Line 3
Config.Departments = {
    [1] = "police",
}

-- A random boss will be chosen onResourceStart in sv_public.lua
Config.Bossman = {
    [1] = {
        ["model"] = "ig_malc",
        ["location"] = vector4(-1782.28, -402.22, 45.47, 56.42),
        ["scenario"] = "WORLD_HUMAN_DRUG_DEALER",
    },
}    


-- Set the amount of on duty cops required
Config.MinPolice = 0

-- If true when the player completes a job they will receive a random sell location
Config.BuyersEnabled = false

-- OG sell goods ped
Config.StaticBuyer = true

-- Set the chance of the player receiving a random sell location
Config.BuyersChance = 75

-- Set how long the player has to sell before the random sell location despawns (seconds)
Config.BuyersTimeToSell = 350

-- List of sell peds, a random ped will be chosen
Config.Buyers = {
    [1] = {
        ["spawn"] = vector3(-108.83, -1590.55, 31.88 - 1.0),
        ["heading"] = 192.09,
        ["model"] = "a_m_m_beach_01",
        ["distance"] = 15,
        ["busy"] = false,
    },
    [2] = {
        ["spawn"] = vector3(26.13, -1350.9, 29.33 - 1.0), 
        ["heading"] = 220.4,
        ["model"] = "a_m_m_rurmeth_01",
        ["distance"] = 15,
        ["busy"] = false,
    },
    [3] = {
        ["spawn"] = vector3(-148.16, -933.92, 29.29 - 1.0), 
        ["heading"] = 2000.6,
        ["model"] = "a_m_m_soucent_03",
        ["distance"] = 15,
        ["busy"] = false,
    },
    [4] = {
        ["spawn"] = vector3(660.18, 231.0, 94.27 - 1.0), 
        ["heading"] = 293.4,
        ["model"] = "a_m_m_trampbeac_01",
        ["distance"] = 15,
        ["busy"] = false,
    },
    [5] = {
        ["spawn"] = vector3(781.17, 1274.52, 361.28 - 1.0), 
        ["heading"] = 357.59,
        ["model"] = "a_m_m_trampbeac_01",
        ["distance"] = 15,
        ["busy"] = false,
    },
    [6] = {
        ["spawn"] = vector3(-1699.7, -453.7, 41.28 - 1.0), 
        ["heading"] = 254.7,
        ["model"] = "a_m_o_salton_01",
        ["distance"] = 15,
        ["busy"] = false,
    },
    [7] = {
        ["spawn"] = vector3(-820.46, 268.27, 86.18 - 1.0), 
        ["heading"] = 38.02,
        ["model"] = "a_m_y_juggalo_01",
        ["distance"] = 15,
        ["busy"] = false,
    },
    [8] = {
        ["spawn"] = vector3(1538.27, -2162.25, 77.64 - 1.0), 
        ["heading"] = 303.07,
        ["model"] = "a_m_y_soucent_02",
        ["distance"] = 15,
        ["busy"] = false,
    },
    [9] = {
        ["spawn"] = vector3(1145.81, -313.92, 69.21 - 1.0), 
        ["heading"] = 199.88,
        ["model"] = "a_m_y_soucent_03",
        ["distance"] = 15,
        ["busy"] = false,
    },
    [10] = {
        ["spawn"] = vector3(2340.48, 3057.71, 48.15 - 1.0), 
        ["heading"] = 183.99,
        ["model"] = "a_m_y_surfer_01",
        ["distance"] = 15,
        ["busy"] = false,
    },
}

-- List of items for the sell ped
Config.BuyersList = {
    [1] = {
        ["itemName"] = "bigtv",
        ["itemWorth"] = { 1000, 1500 },
        ["dirtyCash"] = false,
        ["dirtyCashName"] = "markedbills"
    },
    [2] = {
        ["itemName"] = "stereo",
        ["itemWorth"] = { 1000, 1500 },
        ["dirtyCash"] = false,
        ["dirtyCashName"] = "markedbills"
    },
    [3] = {
        ["itemName"] = "microwave",
        ["itemWorth"] = { 1000, 1500 },
        ["dirtyCash"] = false,
        ["dirtyCashName"] = "markedbills"
    },
    [4] = {
        ["itemName"] = "computer",
        ["itemWorth"] = { 1000, 1500 },
        ["dirtyCash"] = false,
        ["dirtyCashName"] = "markedbills"
    },
    [5] = {
        ["itemName"] = "trojan_usb",
        ["itemWorth"] = { 400, 700 },
        ["dirtyCash"] = false,
        ["dirtyCashName"] = "markedbills"
    },
    [6] = {
        ["itemName"] = "goldchain",
        ["itemWorth"] = { 300, 500 },
        ["dirtyCash"] = false,
        ["dirtyCashName"] = "markedbills"
    },
    [7] = {
        ["itemName"] = "iphone",
        ["itemWorth"] = { 400, 700 },
        ["dirtyCash"] = false,
        ["dirtyCashName"] = "markedbills"
    },
    [8] = {
        ["itemName"] = "rolex",
        ["itemWorth"] = { 400, 700 },
        ["dirtyCash"] = false,
        ["dirtyCashName"] = "markedbills"
    },
    [9] = {
        ["itemName"] = "laptop",
        ["itemWorth"] = { 300, 500 },
        ["dirtyCash"] = false,
        ["dirtyCashName"] = "markedbills"
    },
}

-- Translate 
--TODO: add actual translation with json
Config.Prompts = {
    ["police1"] = "Not enough police",
    ["police2"] = "BREACH!",
    ["bossman1"] = "Speak to the bossman",
    ["bossman2"] = "I dont do business without secure payment",
    ["bossman3"] = "Ask the bossman for a job",
    ["bossman4"] = "I wouldn't disappoint the bossman",
    ["bossman5"] = "Cancel",
    ["bossman6"] = "The bossman will get back to you asap",
    ["requestjob1"] = "Request a job",
    ["requestjob2"] = "Already in a job",
    ["requested1"] = "Requested job, the boss will send you a message",
    ["requested2"] = "Already requested job",
    ["requested3"] = "You have received a job offer from the boss. Are you interested?",
    ["requested4"] = "You got the job! The area has been marked check your GPS.",
    ["requested5"] = "You did not get the job, try again later",
    ["breakin1"] = "Lockpick door",
    ["breakin2"] = "Sneaky beaky like",
    ["breakin3"] = "Already unlocked?",
    ["breakinitem"] = "You should probably come back more prepared",
    ["time"] = "Come back a bit later?",
    ["expired1"] = "You should probably bounce",
    ["enter"] = "Enter house",
    ["exit"] = "Bounce",
    ["pickup1"] = "Pickup",
    ["pickup2"] = "Picking up",
    ["search1"] = "Search",
    ["search2"] = "Searching",
    ["security1"] = "Disable security",
    ["security2"] = "Already disabled",
    ["safe1"] = "Use key",
    ["safe2"] = "Crack it",
    ["safe3"] = "Should be a key knocking around somewhere",
    ["group1"] = "Already in a group",
    ["group2"] = "Group is full sadge",
    ["group3"] = "Not in a group",
    ["group4"] = "Not the group leader",
    ["group5"] = "You are the group leader",
    ["group6"] = "Groups",
    ["group7"] = "Create or join a group",
    ["group8"] = "Create group",
    ["group9"] = "Disband group",
    ["group10"] = "Join group",
    ["group11"] = "Leave group",
    ["group12"] = "Members",
    ["group13"] = "Group #",
    ["sell1"] = "Sell goods?",
    ["sell2"] = "You don't have anything to sell",
    ["sell3"] = "Someone wants to buy your goods, check your GPS. They won't hang around so chop chop.",
    ["sell4"] = "You got a buyer",
    ["sell5"] = "Someone wants to buy your goods, check your GPS.",
    ["level1"] = "You must level up",
    ["level2"] = "You might find something worth taking",
    ["level3"] = "You will definitely find something valuable, probably heavy as well",
    ["level4"] = "Holy shit is that a mansion?",
    ["level5"] = "Level",
    ["back"] = "⬅ Back"
}

-- If the script thinks the player is inside the house but the distance between player & interior > 40
-- the bucket will be set to default as well as house info
-- or you can trigger the bucket fix yourself like so TriggerEvent('burglary:client:fixbucket')
Config.ResetCurrentBucket = false

-- Check the pastebin to see if we're up to date
Config.Check4Updates = true

-- Print some useful information 
Config.Debug = false