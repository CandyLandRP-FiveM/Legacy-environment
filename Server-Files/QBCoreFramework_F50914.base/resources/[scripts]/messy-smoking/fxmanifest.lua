fx_version 'cerulean'

games { 'gta5' }

description 'Advanced Smoking for QB-Core by Messy Scripts'

version '1.4'

author 'POWDERS'

shared_script 'config.lua'
client_script 'client.lua'
server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server.lua'
}


escrow_ignore {
  'config.lua'
}

lua54 'yes'
dependency '/assetpacks'