fx_version 'cerulean'
game 'gta5'

lua54 'yes'

author 'Clementinise'
name 'KC Better Tricks'
description 'Elevate your rides with sky-high tricks, wheelie/stoppies, and some cheeky emotes to show off'
github 'https://github.com/clementinise/kc-bettertricks'
version '1.0'

client_scripts {
	'locales/*.lua',
	'config.lua',
	'client/client.lua'
}

server_script 'server/server.lua'

ui_page "html/menu.html"

files {
	"html/menu.html",
	"html/raphael.min.js",
    "html/wheelnav.min.js",
}

escrow_ignore {
	'config.lua',
	'locales/*.lua'
}

fivem_checker 'yes'
dependency '/assetpacks'