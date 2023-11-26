fx_version 'cerulean'
games      { 'gta5' }
lua54 'yes'

author 'Lith Studios | Swizz'
description 'Real-time image placement tool by Lith Studios'
version '1.1.6'

ui_page 'nui/nui.html'

--
-- Server
--

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'config.lua',
    'server/json.lua',
    'server/database.lua',
    'server/editable/server_config.lua',
    'server/server.lua',
    'server/editable/editable.lua',
    'images/data/data.json'
}

--
-- Client
--

client_scripts {
    'config.lua',
    'client/functions.lua',
    'client/client.lua',
    'client/cache.lua'
}

escrow_ignore {
    'config.lua',
    'server/editable/editable.lua',
    'server/editable/server_config.lua'
}

files {
    'images/*.png',
    'images/*.jpg',
    'images/*.jpeg',
    'nui/nui.html',
    'nui/js/script.js',
    'nui/fonts/*.ttf',
    'nui/js/jqeury.js',
}

dependency '/assetpacks'