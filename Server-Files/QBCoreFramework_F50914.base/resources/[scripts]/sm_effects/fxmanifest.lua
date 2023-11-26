author 'smud'

lua54 'yes'
fx_version 'adamant'
games {'gta5'}

client_scripts {
  'cl/client.lua'
}

shared_scripts {
  '@ox_lib/init.lua',
  'config.lua'
}

server_scripts {
  'bridge/esx/server.lua',
  'bridge/qb/server.lua',
  'bridge/bridge.lua',
  'sv/items.lua'
}

ui_page 'nui/index.html'
files { 
  'nui/index.html', 
  'nui/style.css', 
  'nui/script.js'
}