fx_version 'cerulean'
game 'gta5'

description 'qb-bossmenu'
version '2.1.2'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua',
}

client_scripts {
    'client/*.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua'
}

server_exports {
    'AddMoney',
    'AddGangMoney',
    'RemoveMoney',
    'RemoveGangMoney',
    'GetAccount',
    'GetGangAccount',
    'AddMoneyOkokBanking', -- add this
    'RemoveMoneyOkokBanking', -- add this
    'TransferMoneyOkokBanking' -- add this
}

lua54 'yes'
