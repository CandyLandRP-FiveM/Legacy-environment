fx_version('cerulean')
author 'Marttins#8421'
description 'Simple full configurable restaurant script for QBCore by Marttins#8421'
game 'gta5'

shared_scripts {
    '@ox_lib/init.lua',
    "shared/config_main.lua",
    "shared/config_translations.lua",
    "shared/config_props.lua",
    "shared/config_stashes.lua",
    "shared/config_locations.lua",
    "shared/config_consumeables.lua"
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    "server/server_main.lua",
    "server/server_consumeables.lua"
}

client_scripts {
    "client/client_blips.lua",
    "client/client_main.lua",
    "client/client_menus.lua",
    "client/client_consumeables.lua",
    "shared/config_functions.lua"
}

escrow_ignore {
    "shared/config_main.lua",
    "shared/config_translations.lua",
    "shared/config_props.lua",
    "shared/config_menus.lua",
    "shared/config_stashes.lua",
    "shared/config_locations.lua",
    "shared/config_consumeables.lua",
    "shared/config_functions.lua"
}

lua54 "yes"
dependency '/assetpacks'