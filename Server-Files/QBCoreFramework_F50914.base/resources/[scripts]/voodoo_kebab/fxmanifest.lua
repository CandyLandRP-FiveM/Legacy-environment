fx_version 'cerulean'
game 'gta5'

description 'VooDoo_FoodTruck'
version '1.0.0'

escrow_ignore {
	'config.lua',
  'locales/*.lua',
 

}

shared_scripts {
	'@qb-core/shared/locale.lua',
	'locales/en.lua',
	'config.lua'
}

client_script {

	'client/main.lua'
}
server_script 'server/main.lua'

lua54 'yes'

dependency '/assetpacks'