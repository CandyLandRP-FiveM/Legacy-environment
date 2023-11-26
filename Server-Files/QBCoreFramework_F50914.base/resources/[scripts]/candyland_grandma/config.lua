Config = {}

Config.Framework = {
    Target = 'qb-target',
    -- 'qb-target' = QBCore Target
    -- 'qtarget' = QTarget
    Notifications = 'okok',
    -- 'qb' = QBCoreNotify
    -- 'okok' = okokNotify
    -- 'mythic' = mythic_notify
    -- 'chat' = Chat Message
    DrawText = {
        Type = 'qb-core', -- 'qb-core' or 'okok'
        Position = 'top', -- 'top' or 'left' or 'right'
    },
    Logs = false, -- Currrently setup via QBCore Logs
    -- True = Logs Enabled
    -- False = Logs Disabled
    Debug = false,
    -- True = Prints Enabled
    -- False = Prints Disabled
}

Config.IllegalMedicalTarget = {
    Coords = vector3(2485.23, 3718.75, 43.47), -- Coords for the Target
    Width = 1.0, -- Width for the Target
    Length = 1.0, -- Length for the Target
    Heading = 0, -- Heading for the Target
    minZ = 40.47, -- Minimum Z for the Target
    maxZ = 52.36, -- Maximum Z for the Target
    DebugPoly = false, -- Whether you want the Target Poly's Enabled
    TargetDistance = 1.5, -- Distance in which you can Target the Medical Aid
    TargetLabel = "Speak with Grandma about your Health Issues", -- Target Label Description | Text you see for the Target Label
    TargetIcon = "fa-solid fa-skull", -- Another Example: fa-solid fa-skull | Icon you see when Targeting the Medical Aid
    CanInteractLimit = false, -- Limits the Player to Interact with the Target if they're Dead or 'InLastStand' (Revives the player)

    -- This Configuration plays a toll with the Injury Healing.
    -- If you set 'InjuryTarget' to false than you won't have to edit the 'InjuryTargetLabel' and 'InjuryTargetIcon'
    InjuryTarget = false, -- Heals player's status effects (broken limbs, burnt, etc.. DOES NOT HEAL)
    InjuryTargetLabel = "Speak with Grandma about your Medical Injuries",
    InjuryTargetIcon = "fas fa-user-injured",
}

Config.IllegalMedical = {
    Coords = vector4(2485.23, 3718.75, 43.47, 219.79), -- Entire Vector4 Coordinate
    PedModel = 'cs_mrs_thornhill', -- Ped Hash (https://docs.fivem.net/docs/game-references/ped-models/)
    PedName = "Grandma", -- Ped Name
    PaymentType = 'cash', -- 'cash' = QBCore Player Cash Money | 'bank' = QBCore Player Bank Money | 'crypto' = QBCore Player Crypto Money | 'item' = QBCore Shared Item
    PaymentCost = 1500, -- Amount of Money | If you aren't using a Money Type(cash, bank, or crypto) than you can remove this Configuration
    Item = nil, -- 'ItemName' | ItemName = QBCore Shared Item Name | If you aren't using an Item, you can remove this Configuration and the one below.
    ItemAmount = 0, -- Amount of Items
    OkOkNotificationTitle = "Grandma Aid",
    Minigame = {
        Enabled = false,
        PSUI = true,
        QBCoreSkillBar = false,
        QBCoreNPInspiredLock = false
    }
}

Config.MedicalAidInjuries = {
    PaymentType = 'cash', -- 'cash' = QBCore Player Cash Money | 'bank' = QBCore Player Bank Money | 'crypto' = QBCore Player Crypto Money | 'item' = QBCore Shared Item
    PaymentCost = 1500, -- Amount of Money | If you aren't using a Money Type(cash, bank, or crypto) than you can remove this Configuration
    Item = nil, -- 'ItemName' | ItemName = QBCore Shared Item Name | If you aren't using an Item, you can remove this Configuration and the one below.
    ItemAmount = 0, -- Amount of Items
}
