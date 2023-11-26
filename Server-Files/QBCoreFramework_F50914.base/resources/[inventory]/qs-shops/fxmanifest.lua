fx_version 'cerulean'

game 'gta5'

lua54 'yes'

file 'json/shops-inventory.json'

shared_scripts {
    'config/*.lua',
    'locales/*.lua'
}

client_script {
    'client/custom/framework/*.lua',
    'client/custom/target/*.lua',
    'client/*.lua'
}

server_script {
    'server/custom/framework/*.lua',
    'server/*.lua'
}

escrow_ignore {
    'config/*.lua',
    'locales/*.lua',
    'client/custom/framework/*.lua',
    'client/custom/target/*.lua',
    'server/custom/framework/*.lua'
}

dependencies {
    '/server:4752', -- ⚠️PLEASE READ⚠️ This requires at least server build 4700 or higher
    'progressbar'   -- Required.
}

dependency '/assetpacks'