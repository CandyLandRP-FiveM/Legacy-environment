fx_version 'cerulean'
game 'gta5'
author 'QP scripts'

lua54 'yes'

escrow_ignore {
    'config.lua',
}

shared_script {
    'config.lua'
}

client_scripts {
    'cl_main.lua',
}


server_scripts {
    --'@oxmysql/lib/MySQL.lua', --use it if you have the oxmysql latest version (> v1.9.0)
    'sv_main.lua',
}


dependencies {
	'qb-core',
	'qb-target'
}
dependency '/assetpacks'