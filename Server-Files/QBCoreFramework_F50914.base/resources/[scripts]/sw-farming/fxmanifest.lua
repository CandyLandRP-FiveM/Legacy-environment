name "SW-Farming"
author "SH4UN"
version "v1.1"
description "Farming Script By SH4UN"
fx_version "cerulean"
game "gta5"

client_scripts {
	'client/client.lua',
}

server_scripts {
    'server/server.lua'
}

shared_scripts {
    'config.lua',
}

data_file 'DLC_ITYP_REQUEST' 'stream/bzzz_props_gardenpack.ytyp'

lua54 'yes'

escrow_ignore {
	'config.lua*',
	'README.md',
}
dependency '/assetpacks'