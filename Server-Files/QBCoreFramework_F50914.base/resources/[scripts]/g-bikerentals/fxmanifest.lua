fx_version 'cerulean'

game 'gta5'

author 'Giana - github.com/Giana'
description 'g-bikerentals'
version '1.0.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'config.lua',
}

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/main.lua'
}

server_script 'server/main.lua'

dependencies {
    'qb-core',
    'qb-menu',
    'PolyZone'
}

lua54 'yes'
