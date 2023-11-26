fx_version 'cerulean'
games      { 'gta5' }
lua54 'yes'

author 'KuzQuality | Kuzkay'
description 'Traction control by KuzQuality'
version '1.1.0'


--
-- Server
--

server_scripts {
    'config.lua',
    'locale.lua',
    'server/server.lua',
}

--
-- Client
--

client_scripts {
    'config.lua',
    'locale.lua',
    'client/cache.lua',
    'client/editable/editable.lua',
    'client/client.lua',
    'client/handling.lua',
}

escrow_ignore {
    'config.lua',
    'locale.lua',
    'client/editable/*.lua',
}

dependency '/assetpacks'