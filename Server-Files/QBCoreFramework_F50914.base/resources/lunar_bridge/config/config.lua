Config = {}
Config.Target = true -- Whether to use target or text UI.

-- You can ignore this if you use target.
-- This cannot be changed on clients that already cached this.
Config.Keybinds = {
    'E', 'G', 'C'
}

Config.Dispatch = {
    Enable = true, -- Enable dispatch
    Type = 'qs-dispatch', --['normal'/'cd_dispatch'/'qs-dispatch'/'ps-dispatch']
	Jobs = {
		'police',
		'sheriff'
	}
}