name "SW-Beekeeping"
author "SH4UN"
version "v1.0"
description "Beekeeping Script By SH4UN"
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

lua54 'yes'

escrow_ignore {
	'config.lua*',
	'README.md',
}

data_file 'DLC_ITYP_REQUEST' 'stream/bzzz_props_beehive_pack.ytyp'
dependency '/assetpacks'