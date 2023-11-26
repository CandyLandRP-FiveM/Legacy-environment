Config = {}
Config.newQB = true  -- Set to `false` if using old-qb
Config.Debug = false
Config.Locale = 'en'

Config.keys = "qb"  -- `qb` = qb-vehiclekeys / `okok` = okok-garage(keys) / `tebit` = TebIT: Vehicle Keys & Security / `wasabi` = Wasabi Keys -- Suggest more via discord: https://discord.gg/gqxxwt49SX

Config.walletInfo = {  
    auto_add_item = false,  -- Auto add `wallet` item upon resource start, else refer to readme.lua
    itemName = "mwallet",
    label = "Local Wallet",
    weight = 0,
    type = 'item',
    image = 'wallet.png'
}

Config.purseInfo = {  
    auto_add_item = false,  -- Auto add `purse` item upon resource start, else refer to readme.lua
    itemName = "purse",
    label = "Local Purse",
    weight = 0,
    type = 'item',
    image = 'purse.png'
}

Config.theft = { 
    distance = {
        rob = 8.0,  -- Maximum distance for mugging/robbery/carjacking attempt / recommended : 6.0
        hostage = 0.75  -- Maxmimum distance for taking hostage / recommended : 0.75 - 1.0
    },
    carJack = {  -- Carjack
        enabled = true,  -- `false` to disable carjacking - Disbale qb-vehiclekeys carjacking if this is `true`
        keysChance = 66,  -- Chance for driver to give up keys when robbing -- Lower # means less chance for NPC to give keys
        itemChance = 66  -- Chance to find `vehicleitems` while searching vehicle (carjacking)  -- COMING SOON!

    },
    coolDown = {  -- Cooldown
        time = 10,  -- In seconds, 30 = 30 seconds
        notify = true,  -- Set to `false` if you dont' want players to be notified when cooldown starts/end
        useReset = false, -- Used to reset `robbing` status, just in case ;)
        resetTime = 5   -- In minutes, 5 = 5 minutes
    },
    findLoot = 33,  -- Higher # means less chance of finding anything while searching hostage
    walletChance = 68,   -- Higher # means less chance of receiving `wallet` item
    robberyChance = 77,  -- Lower # means higher chance for NPC to flee
    fightBack  = true,    -- Set to false to disable NPC ability to fight back
    fightChance = 40,    -- Higher # means higher chance for NPC to fight back  
    mug_key = 'E',  -- [E] Key used to attempt mugging / Uses `RegisterKeyMapping` so players can change to their liking via `Fivem Keybinds` settings / https://docs.fivem.net/docs/game-references/controls/
    hostage_release = 'G',  -- [G] Key used to release NPC while holding them hostage
}

Config.loot = {  -- Reward/Loot tables
    reward = {
        min = 25,
        max = 175
    },
    walletItems = {  -- Items found in wallets
        'weed_joint',
        'weed_papers',
        'candycane',
    },
    purseItems = {  -- Items found in purses
        'weed_joint',
        'candycane',
        'diamond_ring',
        'lockpick',
        'wanka',
        'weed_papers',
    },
    pocketitems = {  -- Items found in npc pockets
        'lighter',
        'cryptostick',
        'candycane',
        'oxycontin_bottle',
    },
    vehicleitems = {  -- Items found in vehicles (carjacking) -- COMING SOON!
        'lighter',
        'weed_joint',
        'cryptostick',
        'candycane',
        'oxycontin_bottle',
    },
}

Config.alertInfo = {          
    alertChance = {  -- Higher # means less chance of police being notified
        initial = 79,  -- Initial mugging alert chance
        release = 69,  -- Release NPC alert chance
        kill    = 89,  -- Kill NPC alert chance
        carJack = 77  -- Carjacking alert chance
    },
    dispatch = 'ps-dispatch',  -- ps-dispatch / qb-dispatch / normal <--- basic police alert built-in / custom <--- readme.lua for more info
}

Config.pedSettings = {
    pedTypes = 'all',  -- `all` (every NPC) / `allowed` (only `allowed` NPC) / `denied` (every NPC except `denied`) | THE MORE YOU ADD, THE MORE PERFORMANCE HIT!
    pedList = {
        allowed = {
            [`a_f_m_soucentmc_01`] = true,
            [`a_f_m_tourist_01`] = true,
            [`a_f_m_soucent_02`] = true,
            [`a_m_m_farmer_01`] = true,
            [`a_m_m_malibu_01`] = true,
            [`a_m_m_soucent_01`] = true,
            [`a_m_m_bevhills_01`] = true,
        },
        denied = {
            [`mp_m_shopkeep_01`] = false, 
            [`csb_ballasog`] = false,
            [`ig_ballasog`] = false,
            [`g_f_y_ballas_01`] = false,
            [`g_m_y_ballaeast_01`] = false,
            [`g_m_y_ballaorig_01`] = false,
            [`g_m_y_ballasout_01`] = false,
        }
    }      
}

Config.AllowedWeapons = {
    [`weapon_g27`] = true,
    [`weapon_eagle`] = true,
    [`weapon_snubrevolver`] = true,
    [`weapon_sawnoffshotgun`] = true,
    [`weapon_compactrifle`] = true,
    [`weapon_autoshotgun`] = true,
    [`weapon_pistol`] = true,
    [`weapon_pistol_mk2`] = true,
    [`weapon_combatpistol`] = true,
    [`weapon_appistol`] = true,
    [`weapon_pistol50`] = true,
}



