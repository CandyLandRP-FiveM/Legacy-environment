fx_version 'bodacious'
games { 'gta5' }

author 'London Studios'
description 'Create custom vinewood signs'
version '1.0.0'
lua54 'yes'

this_is_a_map 'yes'

client_scripts {
    'config.lua',
    'cl_vinewoodsign.lua',
}

server_scripts {
    "config.lua",
    "sv_vinewoodsign.lua"
}

escrow_ignore {
    'config.lua',
    'stream/*/bv_vine_signnumbers.ytyp',
    'stream/*/*.ymap',
    'stream/*/*.ymf',
}

files {
    'stream/*/bv_vine_signnumbers.ytyp',
}

data_file 'DLC_ITYP_REQUEST' 'stream/*/bv_vine_signnumbers.ytyp'
dependency '/assetpacks'