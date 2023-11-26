fx_version 'cerulean'
game 'gta5'
version '8.0.0'
lua54 'yes'
this_is_a_map 'yes'



data_file('DLC_ITYP_REQUEST')('stream/ytyp/nteam-mile.ytyp')
data_file('DLC_ITYP_REQUEST')('stream/mlo/nteam_lobby.ytyp')
data_file('DLC_ITYP_REQUEST')('stream/mlo/nteam_offices.ytyp')
data_file('DLC_ITYP_REQUEST')('stream/mlo/nteam_pool.ytyp')


file "sp_manifest.ymt"
data_file "SCENARIO_POINTS_OVERRIDE_PSO_FILE" "sp_manifest.ymt"

shared_scripts {
	--'@ox_lib/init.lua',
}

client_script{
	"elevator/*.lua",
}

escrow_ignore {
	'elevator/elevator-editable.lua',
}


dependency '/assetpacks'