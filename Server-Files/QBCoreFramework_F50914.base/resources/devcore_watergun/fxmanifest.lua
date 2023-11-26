--[[ FX Information ]]--
fx_version   'cerulean'
use_experimental_fxv2_oal 'yes'
lua54        'yes'
game         'gta5'

--[[ Resource Information ]]--
name         'water-gun'
author       'devcore'
version      '2.5'
repository   'https://store.devcore.cz/'
description  'https://discord.gg/zcG9KQj3sa'



data_file 'DLC_ITYP_REQUEST' 'stream/props.ytyp'


shared_scripts {
	'config.lua',
}

server_scripts {
	'server/*.lua'
}

escrow_ignore {
	'client/functions.lua',
	'client/client.lua',
	'server/server.lua',
	'config.lua',
	'fxmanifest.lua',
	'README.txt'
}

client_scripts {
	'client/*.lua',
}

dependency '/assetpacks'