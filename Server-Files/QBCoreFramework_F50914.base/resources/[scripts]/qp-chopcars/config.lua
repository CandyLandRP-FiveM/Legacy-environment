--desmancho
ConfigDesmancho = {}
ConfigDesmancho.CanChopDb = 'temporary' -- Pesonal Cars chop ### 'none' - nothing happen to personal cars, 'temporary' - personal car desapear until next server restart -> actions in readme, 'permanent' - delete from database
ConfigDesmancho.ResourceDatabaseName = 'oxmysql' --oxmysql or ghmattimysql
ConfigDesmancho.MainCoreEvent = 'QBCore:GetObject'
ConfigDesmancho.CoreResourceName = 'qb-core'
ConfigDesmancho.PlayerLoadEvent   = 'QBCore:Client:OnPlayerLoaded'
ConfigDesmancho.SetPoliceUpdateEvent  = 'police:SetCopCount'
ConfigDesmancho.MinNumberOfCopsToChop = 0 --min num of cops to chop
ConfigDesmancho.TargetResourceName  = 'qb-target' --If you have a custom target, change the name
ConfigDesmancho.ItemBoxEvent = 'inventory:client:ItemBox' --event to show the items, ex: 'inventory:client:ItemBox' , or 'none'
ConfigDesmancho.DiscordLogEvent = 'qb-log:server:CreateLog'
ConfigDesmancho.DiscordLogEventIdentifier = 'qp-chopcars' -- identifier to put in qbcore webhooks identifiers

ConfigDesmancho.HasPossibilityLoseTools = true
ConfigDesmancho.ProgressTimer = 3000 --3 seconds
ConfigDesmancho.ChopshopZones = {
    [1] = vector3(302.32, -1180.07, 29.39),
    [2] = vector3(308.77, -1219.19, 29.63),
    [3] = vector3(314.45, -1194.26, 29.34),
    [4] = vector3(312.76, -1201.26, 29.02),
    [5] = vector3(317.99, -1194.86, 28.74),
    [6] = vector3(309.52, -1214.51, 29.12),
}
ConfigDesmancho.DrawCarBlipDistance = 1
ConfigDesmancho.ChangeToReceiveItem = 70 -- 70%
ConfigDesmancho.DistanceToLeaveZone = 10.0
ConfigDesmancho.MoneyForNpcCar = 500
ConfigDesmancho.MoneyForPlayerCar = 2000
ConfigDesmancho.ItemNeededToChop = 'toolkit'
ConfigDesmancho.WheelItemsRewards = {
    ['rubber'] = {min = 10, max = 25},
    ['aluminum'] = {min = 10, max = 25}, 
}
ConfigDesmancho.DoorsItemsRewards = {
    ['metalscrap'] = {min = 10, max = 25},
    ['glass'] = {min = 10, max = 25},
}
ConfigDesmancho.BonnetItemsRewards = {
    ['plastic'] = {min = 10, max = 25},
}
ConfigDesmancho.BonnetExtraItemsRewardsGroup1 = {
    ['iron'] = {min = 10, max = 25},
    ['steel'] = {min = 10, max = 25},
    ['copper'] = {min = 10, max = 25},
    ['rubber'] = {min = 10, max = 25},
}
ConfigDesmancho.BonnetExtraItemsRewardsGroup2 = {
    ['aluminum'] = {min = 10, max = 25},
    ['plastic'] = {min = 10, max = 25},
    ['steel'] = {min = 10, max = 25},
}
ConfigDesmancho.BootItemsRewards = {
    ['metalscrap'] = {min = 10, max = 25},
}
ConfigDesmancho.BootExtraItemsRewards = {
    ['lockpick'] = {min = 0, max = 1},

}
ConfigDesmancho.Locale = 'EN'
ConfigDesmancho.Locales = {
    ['PT'] = {
        ['NO_REWARDS'] = 'Optimo, deste-me um carro novinho. Adeus...',
        ['SUCCESS_REWARDS'] = 'Este já não o voltam a ver, toma a tua recompensa!',
        ['OWNED_CAR'] = "Envias-te para a sucata um veiculo teu! Não vais receber nenhuma recompensa por esta porcaria.",
        ['NO_BIKES'] = 'Não podes desmantelar bicicletas',
        ['NO_PASSENGERS'] = 'Não podes desmontar com passageiros dentro',
        ['NO_TOOLS'] = 'Não tens as ferramentas para desmantelar o veiculo',
        ['ACTION_DOORS'] = 'Desmantelar',
        ['ACTION_WHEEL'] = 'Desmantelar Pneu',
        ['LEAVE_ZONE'] = 'Saiste da zona de desmancho!',
        ['PROGRESSBAR_DOORS_LABEL'] = 'A desmontar...',
        ['PROGRESSBAR_WHEEL_LABEL'] = 'A cortar...',
        ['LOSE_TOOLS'] = 'As tuas ferramentas ficam na sucata, já estão velhotas. Podes ir.',
        ['CHOP_DONE'] = 'Enviar para sucata',
        ['CHOP_BEGIN'] = 'Desmantelar Veiculo',
        ['BLACKLIST_CAR'] = 'Não podes desmantelar estes tipos de carros',
        ['NO_COPS'] = 'Não existem policias para desmantelar carros',
    },
    ['EN'] = {
        ['NO_REWARDS'] = 'Well, thank you for the new car. Bye bye...',
        ['SUCCESS_REWARDS'] = 'This car will not be seen again, take your reward!',
        ['OWNED_CAR'] = "You sent your own vehicle to the scrap yard?! You're not getting any rewards for this crap.",
        ['NO_BIKES'] = 'You cannot chop bicycles',
        ['NO_PASSENGERS'] = 'You cannot chop with passengers inside',
        ['NO_TOOLS'] = 'You have no tools to chop',
        ['ACTION_DOORS'] = 'Chopping Door(s)',
        ['ACTION_WHEEL'] = 'Chopping Tire(s)',
        ['LEAVE_ZONE'] = 'You left the chop zone!',
        ['PROGRESSBAR_DOORS_LABEL'] = 'Chopping...',
        ['PROGRESSBAR_WHEEL_LABEL'] = 'Cutting...',
        ['LOSE_TOOLS'] = 'Your tools broke while scrapping, they were old. You can go now, find more..',
        ['CHOP_DONE'] = 'Sent for scrap',
        ['CHOP_BEGIN'] = 'Chop Vehicle',
        ['BLACKLIST_CAR'] = 'You cannot chop this type of cars',
        ['NO_COPS'] = 'No Police to chop cars.',
    }
}

ConfigDesmancho.BlacklistCars = {
    'Tractor2'
}

function notifyPolice(playerPedId, coords)
    --your code to call police, if you dont want notify the police just remove the code inside this function
    
    -- exports['core_dispatch']:addCall("10-90", "Chop cars", {
    --     {icon="fa-ruler", info="Choping Cars"}
    -- }, {coords.x, coords.y, coords.z}, "police", 3000, 11, 5 )
 
end