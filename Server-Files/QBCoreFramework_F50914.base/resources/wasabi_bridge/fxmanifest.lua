-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
fx_version 'cerulean'
game 'gta5'
lua54 'yes'

description 'A library of functions used to ease the bridge between Wasabi Scripts'
author 'wasabirobby'
version '1.1.1'

shared_scripts { '@ox_lib/init.lua', 'config.lua' }
client_scripts { 'frameworks/**/client.lua', 'target/client.lua', 'customize/cl_customize.lua' }
server_scripts { '@oxmysql/lib/MySQL.lua', 'frameworks/**/server.lua', 'server/*.lua' }

files {'import.lua' }

dependencies { 'ox_lib', 'oxmysql' }

escrow_ignore {
    'config.lua',
    'frameworks/esx/*.lua',
    'frameworks/qb/*.lua',
    'target/*.lua',
    'customize/*.lua'
}

dependency '/assetpacks'