game("gta5")
fx_version("cerulean")

version("2.0.5")
author("Zerio#0880")
description("Beautiful and easy to use radio")

lua54("yes")
escrow_ignore({
	"shared/*.lua",
	"client/functions.lua",
	"server/functions.lua",
	"locales/*.lua",
})

-- MAIN
shared_scripts({
	-- UNCOMMENT THIS LINE IF YOU HAVE ESX LEGACY 1.8.5+
	"@es_extended/imports.lua",

	"shared/main.lua",
	"shared/animation.lua",
	"shared/channels.lua",
	"shared/framework.lua",
	"shared/opentype.lua",
	"shared/scanner.lua",

	"locale.lua",
	"locales/*.lua",
})

client_scripts({
	"client/functions.lua",
	"client/main.lua",
})

server_scripts({
	-- UNCOMMENT THIS LINE IF YOU USE MYSQL-ASYNC
	-- "@mysql-async/lib/MySQL.lua",

	"server/versioncheck.lua",
	"server/functions.lua",
	"server/main.lua",
})

-- PROP
data_file("DLC_ITYP_REQUEST")("zerio_radio_ytyp.ytyp")

-- UI
files({
	"html/index.html",

	"html/assets/*.png",

	"html/assets/*.css",
	"html/assets/*.js",

	"html/assets/*.eot",

	"html/assets/*.woff",
	"html/assets/*.ttf",
	"html/assets/*.woff2",

	"html/sounds/*.ogg",
})

ui_page("html/index.html")
-- ui_page("http://localhost:5173")

dependency '/assetpacks'