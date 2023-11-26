fx_version 'cerulean'
game 'gta5'

author 'SKryptz'
description 'An advanced burglary script for fivem | QBCore'
version '2.2.80'

dependencies {
    '/onesync',
    'qb-target'
}

client_scripts { 
    'client/*.lua' 
}

server_scripts { 
    'server/*.lua',
    '@oxmysql/lib/MySQL.lua',
}

shared_scripts {
    'config.lua',
    'props/*.lua',
    'houses/*.lua',
    'interiors/*.lua',
}

escrow_ignore {
    'config.lua',
    'props/*.lua',
    'houses/*.lua',
    'interiors/*.lua',
    'server/sv_carry.lua',
    'server/sv_public.lua',
    'client/cl_public.lua'
}

lua54 'yes'
dependency '/assetpacks'