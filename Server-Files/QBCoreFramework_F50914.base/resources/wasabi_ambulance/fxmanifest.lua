-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------

fx_version 'cerulean'
use_experimental_fxv2_oal 'yes'
game 'gta5'
lua54 'yes'

description 'Wasabi ESX/QBCore Advanced Ambulance Job'
author 'wasabirobby'
version '1.9.5'


shared_scripts { '@ox_lib/init.lua', 'configuration/strings.lua', 'data.lua', '@wasabi_bridge/import.lua', 'configuration/config.lua' }

server_scripts { '@mysql-async/lib/MySQL.lua', 'configuration/logs.lua', 'server/*.lua' }

client_scripts { 'client/*.lua' }

dependencies { 'ox_lib', 'wasabi_bridge' }

provides { 'esx_ambulancejob', 'qb-ambulancejob' }

escrow_ignore {
  'configuration/**/*.lua',
  'data.lua',
  'client/client.lua',
  'client/cl_customize.lua',
  'client/radial.lua',
  'server/sv_customize.lua'
}

dependency '/assetpacks'