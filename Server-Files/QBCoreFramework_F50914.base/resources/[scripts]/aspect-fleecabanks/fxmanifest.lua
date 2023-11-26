fx_version 'cerulean'
game 'gta5'

description 'Script Labs - Aspect Fleeca Bank Heist'
version '1.0' 

shared_scripts {
    'config.lua',
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
}

escrow_ignore {
    'config.lua',
    'client/functions.lua',
    'locales/en.lua',
}

client_scripts {
    'client/functions.lua',
    '@mka-lasers/client/client.lua',
    'client/main.lua',
}

server_scripts {
    'server/main.lua',
}

dependencies {
    'qb-target',
    'qb-menu',
}

lua54 'yes'
dependency '/assetpacks'
dependency '/assetpacks'