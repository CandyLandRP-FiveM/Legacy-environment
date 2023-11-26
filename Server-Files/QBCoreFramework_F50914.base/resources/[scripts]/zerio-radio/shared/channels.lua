Shared = Shared or {}

Shared.Channels = {
	-- Example for Jobs, requires esx or qbcore
	[1] = {
		label = "PD Patrol",
		jobs = { "police", "ambulance" },
	},
	[2] = {
		label = "Tac 1",
		jobs = { "police", "ambulance" },
	},
	[3] = {
		label = "Tac 2",
		jobs = { "police", "ambulance" },
	},
	[4] = {
		label = "Tac 3",
		jobs = { "police", "ambulance" },
	},
	[5] = {
		label = "Tac 4",
		jobs = { "police", "ambulance" },
	},
	[6] = {
		label = "Police Radio",
		jobs = { "police", "ambulance" },
	},
	[7] = {
		label = "Police Radio",
		jobs = { "police", "ambulance" },
	},
	[8] = {
		label = "Police Radio",
		jobs = { "police", "ambulance" },
	},
	[9] = {
		label = "EMS Radio",
		jobs = { "police", "ambulance" },
	},
	[10] = {
		label = "DOJ Radio",
		jobs = { "lawyer", "police" },
	},
	[11] = {
		label = "City Hall Radio",
		jobs = { "cityhall", "lawyer", "police" },
	},
	-- Example for Gangs, requires qbcore
	[420] = {
		label = "Ballas Radio",
		gangs = { "ballas" },
	},
	-- Example for identifiers, citizenid's etc
	[321] = {
		label = "Identifier Radio",
		-- List of whitelisted values
		whitelisted = { "license:66f114916edbe95a1fbb0928800533106de1ac2c" },
	},
	-- Example for Discord Roles, requires zdiscord or Badger_Discord_API
	[123] = {
		label = "Discord Radio",
		-- Role IDs, has to be strings not numbers
		discordRoles = {
			"931643836562804798",
		},
	},
}
