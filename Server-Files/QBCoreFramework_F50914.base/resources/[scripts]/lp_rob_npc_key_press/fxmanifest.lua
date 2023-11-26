fx_version 'cerulean'
game 'gta5'
author 'LlamaPalooza | Dream Scripts'
description 'QBCore NPC Mugging'
version 'R-1.0.4'

shared_script {  -- COMMENT IF YOU'RE USING OLD QB CORE EXPORT --              
    'server/shared.lua',    
    'locales/*.lua'
}

-- shared_script {  -- UNCOMMENT IF YOU'RE USING OLD QB CORE EXPORT --
--     '@qb-core/import.lua',        
--     'server/shared.lua',
--     'locales/*.lua'
-- }

client_script {
    'client/*.lua',
    'client/custom_alert.lua'
}

server_scripts {
    'server/*.lua',
}

escrow_ignore {
    'server/shared.lua',
    'locales/*.lua',
    'readme.lua',
    'client/custom_alert.lua',
}

dependency '/assetpacks'

lua54 'yes'
dependency '/assetpacks'