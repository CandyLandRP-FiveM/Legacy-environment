fx_version 'bodacious'
game 'gta5'

description 'RCore Tuning'

version '1.5.2'

lua54 'yes'

shared_scripts {
	'object.lua',
    'shared/*.lua',
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'locales.lua',
	'config.lua',
    'config_prices.lua',
    'common.lua',

	'server/functions.lua',
	'server/framework/*.lua',
	'server/db/*.lua',
	'server/*.lua',
    'vehCaroseriaConfig.lua',
    'server/veh_disassembly/main.lua',
    'server/veh_disassembly/*.lua',
}

client_scripts {
	'client/warmenu.lua',
	'locales.lua',
	'config.lua',
    'config_prices.lua',
    'common.lua',
	'client/framework/*.lua',
	'client/*.lua',
    'client/veh_disassembly/*.lua',
}

ui_page 'assets/index.html'

files {
    'assets/index.html',
    'assets/*.png',
    'assets/*.ogg',
    'assets/assets/img/*.png',
    'assets/icon/cat1/*.png',
    'assets/icon/cat2/*.png',
    'assets/assets/fonts/LeChantDesAlbatros.ttf',
    'assets/assets/js/app.js',
    'assets/assets/js/chunk-vendors.js',
    'assets/assets/css/app.css',

    "data/carcols_gen9.meta",
    "data/carmodcols_gen9.meta",
    "data/carmodcols.ymt",
    "stream/vehicle_paint_ramps.ytd",
    
    "vehicles.json",
    "margins.json",
}
data_file "CARCOLS_GEN9_FILE" "data/carcols_gen9.meta"
data_file "CARMODCOLS_GEN9_FILE" "data/carmodcols_gen9.meta"
data_file "FIVEM_LOVES_YOU_447B37BE29496FA0" "data/carmodcols.ymt"

escrow_ignore {
    'client/framework/custom.lua',
    'client/framework/esx.lua',
    'client/framework/qbcore.lua',

    'client/cancelable_progress.lua',
    'client/category.lua',
    'client/menu.lua',
    'client/menu_worker.lua',
    'client/nui.lua',
    'client/office.lua',
    'client/paint_booth.lua',
    'client/state.lua',
    'client/target.lua',
    'client/upgrades.lua',
    'client/warmenu.lua',
    'client/blips.lua',
    'client/nitrous.lua',
    'client/police.lua',

    'server/db/bridge.lua',
    'server/db/db.lua',
    'server/db.lua',

    'server/framework/custom.lua',
    'server/framework/esx.lua',
    'server/framework/qbcore.lua',

    'server/police.lua',
    'server/category.lua',
    'server/office.lua',
    'server/state.lua',
    'server/upgrades.lua',

    'server/discord.lua',
    'server/auto_categorize.lua',

    'client/veh_disassembly/function.lua',
    'client/veh_disassembly/getVehicle.lua',
    'client/veh_disassembly/jobNpc.lua',
    'client/veh_disassembly/main.lua',
    'client/veh_disassembly/removing.lua',
    'client/veh_disassembly/utils.lua',
    'client/veh_disassembly/vehDisassembli.lua',

    'server/veh_disassembly/removingFromVeh.lua',
    'server/veh_disassembly/takeJob.lua',

    'shared/states.lua',
    'common.lua',
    'config.lua',
    'config_prices.lua',
    'locales.lua',
    'object.lua',
    'vehBonesConfig.lua',
    'vehCaroseriaConfig.lua',
}
dependency '/assetpacks'