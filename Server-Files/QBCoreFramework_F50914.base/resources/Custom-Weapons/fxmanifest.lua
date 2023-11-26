fx_version 'cerulean'
games {'gta5'}

files{
	'metas/**/*.meta',
	'**/weaponcomponents.meta',
	'**/weaponarchetypes.meta',
	'**/weaponanimations.meta',
	'**/pedpersonality.meta',
	'**/weapons.meta',
	-- 'metas/**/audio/colbaton_game.dat151.rel',
	-- 'metas/**/audio/colbaton_sounds.dat54.rel',
	-- 'metas/**/pickups.meta',
	-- 'metas/**/clip_sets.xml'
}

data_file 'WEAPONCOMPONENTSINFO_FILE' 'metas/**/weaponcomponents.meta'
data_file 'WEAPON_METADATA_FILE' 'metas/**/weaponarchetypes.meta'
data_file 'WEAPON_ANIMATIONS_FILE' 'metas/**/weaponanimations.meta'
data_file 'PED_PERSONALITY_FILE' 'metas/**/pedpersonality.meta'
data_file 'WEAPONINFO_FILE' 'metas/**/weapons.meta'
data_file 'WEAPONCOMPONENTSINFO_FILE' '**/weaponcomponents.meta'
data_file 'WEAPON_METADATA_FILE' '**/weaponarchetypes.meta'
data_file 'WEAPON_ANIMATIONS_FILE' '**/weaponanimations.meta'
data_file 'PED_PERSONALITY_FILE' '**/pedpersonality.meta'
data_file 'WEAPONINFO_FILE' '**/weapons.meta'
-- data_file 'DLC_WEAPON_PICKUPS' 'metas/**/pickups.meta'
-- data_file 'CLIP_SETS_FILE' 'metas/**/clip_sets.xml'

--Audio Files

-- data_file 'AUDIO_GAMEDATA' 'metas/PoliceBaton/audio/colbaton_game.dat'
-- data_file 'AUDIO_SOUNDDATA' 'metas/PoliceBaton/audio/colbaton_sounds.dat'

client_script 'cl_weaponNames.lua'
