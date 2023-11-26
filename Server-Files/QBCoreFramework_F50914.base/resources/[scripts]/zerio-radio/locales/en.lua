Locales["en"] = {
	-- // MISC \\--
	["radiosuggestion"] = "Open Radio",
	["radioscannersuggestion"] = "Open Radio Scanner",
	["frequency"] = "Frequency: %s",
	["noLatestMessage"] = "No message history",
	["unknownName"] = "Unknown name",
	["unknownChannel"] = "%s MHz",

	-- // COMMAND \\--
	["command_help"] = "Change radio channel",
	["channel_name"] = "Radio channel (number)",
	["channel_help"] = "The frequency / radio channel you want to change to",

	-- // NOTIFICATIONS \\--
	["muted"] = "You muted: %s",
	["unmuted"] = "You unmuted: %s",
	["left"] = "You left the radio",
	["invalid_params"] = "The parameters you inputted are invalid",
	["change_radio"] = "You joined radio channel: %s",
	["locked_channel"] = "You dont have access to radio channel: %s",
	["player_dead"] = "You cant use the radio while being dead",
	["in_water"] = "You cant use the radio whilst being in water",

	-- // PANIC ALERT \\ --
	["panic_alert_description"] = "Someone has turned on their panic alert",
	["panic_alert_header"] = "Panic Alert",

	-- // STATUSES \\ --
	["inVehicle"] = "In vehicle",
	["onFoot"] = "On foot",
	["unknown"] = "Unknown",

	-- // UI / HTML \\--
	ui = {
		notifications = {
			leftRadioText = "You left the radio channel",

			lockedChannelText = "You dont have access to join this channel!",
			joinedRadioText = "You joined {0}",

			usedPanicButton = "You pressed the panic button",
			panicButtonCooldown = "You cant use the panic button that often",
		},

		general = {
			goback = "Go back",
			volumeUp = "Volume up",
			volumeDown = "Volume down",
			turnOff = "Turn off",
			turnOn = "Turn on",
			connect = "Connect",
			settings = "Settings",
			channels = "Channels",
			viewMessages = "View Messages",
			cancel = "Cancel",
			ok = "Ok",
			continue = "Continue",
			panicButton = "Panic Button",
		},

		scanner = {
			header = "Radio Scanner x2000",
			scan = "Scan",
			nothingFound = "There does not seem to be any visible radio channels in your area",
			channel = "{0} MHz - ~{1} meters",
		},

		months = {
			"January",
			"February",
			"Mars",
			"April",
			"May",
			"June",
			"July",
			"August",
			"September",
			"October",
			"November",
			"December",
		},

		messages = {
			header = "Messages",
			removeContact = "Remove contact",
			sent = "Sent",
			input = "Type something...",
			empty = "Seems like you do not have any contacts.<br/>You can add contacts via the radio members page.",
			removedContact = "Successfully removed the contact",
			addedContact = "Successfully added the contact",
			alreadyContact = "This person is already on your contact list",
		},

		settings = {
			darkMode = "Dark mode",
			anonymous = "Anonymous",
			useMouse = "Use mouse",
			allowDrag = "Allow drag",
			size = "Size",
			callsign = "Callsign",
			device = "Device",
			display = "Display",
			memberList = "Member List",
			connections = "Connections",
			account = "Account",
			on = "On",
			off = "Off",
		},

		channels = {
			header = "Channels",
			favorites = "Favorites",
			recents = "Recents",
			search = "Search",
			current = "Current Channel",
			newPromptHeader = "New Favorite",
			removeFavorite = "Remove Favorite",
			new = "New favorite",
			frequency = "Frequency",
		},

		radioMembers = {
			title = "Radio Members",
			notInChannel = "You are not in any radio channel",
			emptyMembersList = "This radio channel seems to be empty",
			addContact = "Add Contact",
		},

		joinRadio = {
			title = "Join Radio",
			frequency = "Frequency",
			join = "Join Frequency",
			leave = "Leave Frequency",
		},

		info = {
			statusTitle = "Your Status",
			status = "My Status",
			frequency = "Frequency: {0}",
			radioStatus = "Radio Status",
			openRadioMembers = "Open radio members",
			openSettings = "Open settings",
			openChannels = "Open channels",
			locationTitle = "Your Location",
			settings = "Settings",
			joinRadio = "Join Radio",
			notInRadio = "Not in any radio",
			inRadio = "In radio",
		},
	},
}
