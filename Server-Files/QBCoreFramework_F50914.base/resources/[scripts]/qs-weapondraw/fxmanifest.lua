fx_version 'adamant'

game 'gta5'

version '2.0.2'

lua54 'yes'

shared_scripts {
    'config/*.lua'
}

client_scripts {
    'client/custom/framework/*.lua',
    'client/*.lua'
}

escrow_ignore {
    'client/custom/framework/*.lua',
    'config/*.lua'
}

dependency '/assetpacks'
dependency 'qs-inventory'

dependency '/assetpacks'