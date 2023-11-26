fx_version   'cerulean'
game         'gta5'
lua54        'yes'

author       'NoLag Scripts'
version      '1.1.0'
description  'Rentable storages'

dependency '/server:5181' -- Requires at least server build 5181.

shared_scripts {
    'configs/locale.lua',
    'locale/en.lua',
    '@ox_lib/init.lua', -- uncomment if you don't want ox_lib
    'configs/config.lua'
}

client_scripts {
    'configs/client_customise_me.lua',
    "client/cl_*.lua"
}

server_scripts {
    -- '@mysql-async/lib/MySQL.lua', -- uncomment this if you are using mysql-async and comment out oxmysql
    '@oxmysql/lib/MySQL.lua',
    'configs/server_customise_me.lua',
    'server/sv_*.lua'
}

escrow_ignore {
    'configs/*.*',
    'locale/*.lua',
}
dependency '/assetpacks'
dependency '/assetpacks'