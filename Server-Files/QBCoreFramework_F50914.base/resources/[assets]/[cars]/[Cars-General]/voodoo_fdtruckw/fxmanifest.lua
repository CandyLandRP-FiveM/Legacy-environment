fx_version 'adamant'

games {'gta5'}

lua54 'yes'
 
files {
	'*.meta',
}

escrow_ignore {
	'*.meta',
  'stream/*.ytd',    
  'stream/**/*.ytd'  

}

data_file 'CARCOLS_FILE' 'carcols.meta'
data_file 'HANDLING_FILE' 'handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'carvariations.meta'



 

dependency '/assetpacks'