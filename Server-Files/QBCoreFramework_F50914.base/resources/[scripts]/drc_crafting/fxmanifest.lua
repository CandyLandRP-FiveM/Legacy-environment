fx_version 'cerulean'

game 'gta5'

author 'DRC Scripts'
description 'DRC CRAFTING'

version '1.0.0'

lua54 'yes'

shared_scripts {
	'@ox_lib/init.lua',
	'shared/*.lua',
}

client_scripts {
	'@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/CircleZone.lua',
	'client/cl_Utils.lua',
	'client/*.lua',
}

server_scripts {
	'server/sv_Utils.lua',
	'server/*.lua',
	'@oxmysql/lib/MySQL.lua',
}

files {
	'locales/*.json'
}

escrow_ignore {
	'shared/*.lua',
	'client/cl_Utils.lua',
	'server/sv_Utils.lua',
}

dependency '/assetpacks'