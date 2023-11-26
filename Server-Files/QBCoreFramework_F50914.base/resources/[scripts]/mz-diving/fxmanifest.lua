fx_version 'cerulean'

game 'gta5'

description 'mz-diving - An alternative, contract-based diving resource for qb-core (with or without mz-skills integration)'

version '1.2.0'

author 'Mr_Zain#4139'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'shared/*',
    'locales/en.lua',
}

client_scripts{
    'client/*',
}

server_scripts{
    'server/*',
}

lua54 'yes'

escrow_ignore {
    'shared/*',
    'locales/en.lua', 
    '@qb-core/shared/locale.lua',
    'client/open_main.lua',
    'server/main.lua',
}

dependency '/assetpacks'