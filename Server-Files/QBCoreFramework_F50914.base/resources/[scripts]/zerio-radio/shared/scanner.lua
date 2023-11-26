Shared = Shared or {}

Shared.Scanner = Shared.Scanner or {
	-- item -> Opens through the Shared.Scanner.Item itemname, only for ESX & QBCore
	-- command -> Opens through the command Shared.Scanner.Command
	-- keybind -> Opens through a real keymapping (Shared.Scanner.Keybind)
	-- control -> Opens through a button press (Shared.Scanner.Button)
	-- custom -> Opens through the event "zerio-radio:client:openscanner" or via the export "Open" (exports["zerio-radio"]:OpenScanner())
	OpenType = "item",

	-- Only for Shared.Scanner.OpenType "item"
	-- This would be the name of the item which can be used to open the radio scanner
	Item = "radioscanner",

	-- Only for Shared.Scanner.OpenType "keybind"
	Keybind = "f6",

	-- Only for Shared.Scanner.OpenType "control"
	-- Full keybind list exists here, https://docs.fivem.net/docs/game-references/controls/
	Button = 167,

	-- Only for Shared.Scanner.OpenType "keybind"
	-- This would be the name of the command which can be used to open the radio scanner
	Command = "radioscanner",

	Distance = 100,

	-- The time it takes to scan for nearby channels (in seconds)
	Time = {
		min = 5,
		max = 5,
	},

	-- List of channels that should not show up in scans
	HiddenChannels = {
		69,
		420,
	},
}
