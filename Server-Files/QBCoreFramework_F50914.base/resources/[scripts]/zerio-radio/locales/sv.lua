Locales["sv"] = {
	-- // MISC \\--
	["radiosuggestion"] = "Öppna Radio",
	["radioscannersuggestion"] = "Öppna Radio Skannern",
	["frequency"] = "Frekvens: %s",
	["noLatestMessage"] = "Ingen meddelande historik",
	["unknownName"] = "Okänt namn",

	-- // COMMAND \\--
	["command_help"] = "Byt radio kanal",
	["channel_name"] = "Radio kanal (nummer)",
	["channel_help"] = "Frekvensen / radio kanalen som du vill byta till",

	-- // NOTIFICATIONS \\--
	["muted"] = "Du muteade: %s",
	["unmuted"] = "Du unmuteade: %s",
	["left"] = "Du lämnade radion",
	["onanonymous"] = "Du satt igång anonymnt läge",
	["offanonymous"] = "Du stängde av anonymnt läge",
	["invalid_params"] = "Värdena som du skrev in är ogiltiga",
	["change_radio"] = "Du gick med i radio kanal %s",
	["locked_channel"] = "Du har inte tillgång till radio kanal %s",
	["player_dead"] = "Du kan inte använda radion medans du är död",
	["in_water"] = "Du kan inte använda radion medans du är i vattnet",

	-- // PANIC ALERT \\ --
	["panic_alert_description"] = "Någon satte precis på sitt överfallslarm",
	["panic_alert_header"] = "Överfallslarm",

	-- // STATUSES \\ --
	["inVehicle"] = "I ett fordon",
	["onFoot"] = "Till fots",
	["unknown"] = "Okänt",

	-- // UI / HTML \\--
	ui = {
		notifications = {
			leftRadioText = "Du lämnade radio frekvensen",

			lockedChannelText = "Du har inte tillgång till denna radio frekvens!",

			joinedRadioText = "Du gick med i radio frekvensen {0}",

			usedPanicButton = "Du klickade överfallslarmet",
			panicButtonCooldown = "Du kan inte använda överfallslarmet så ofta",
		},

		general = {
			goback = "Gå tillbaka",
			volumeUp = "Höj volymen",
			volumeDown = "Sänk volymen",
			turnOff = "Stäng av",
			turnOn = "Sätt på",
			connect = "Anslut",
			settings = "Inställningar",
			channels = "Kanaler",
			viewMessages = "Se Meddelanden",
			cancel = "Avbryt",
			ok = "Ok",
			continue = "Fortsätt",
			panicButton = "Överfallslarm",
		},

		scanner = {
			header = "Radio Skanner x2000",
			scan = "Skanna",
			nothingFound = "Det verkar inte vara några radio frekvenser tillgängliga i ditt område.",
			channel = "{0} MHz - ~{1} meter",
		},

		months = {
			"Januari",
			"Februari",
			"Mars",
			"April",
			"Maj",
			"Juni",
			"Juli",
			"Augusti",
			"September",
			"Oktober",
			"November",
			"December",
		},

		messages = {
			header = "Meddelanden",
			removeContact = "Ta bort kontakt",
			sent = "Skickat",
			input = "Skriv något...",
			empty = "Det verkar som att du inte har några kontakter.<br/>Du kan lägga till kontakter via radio medlemms listan.",
			alreadyContact = "Denna person finns redan på din kontaktlista",
		},

		settings = {
			darkMode = "Mörkt läge",
			anonymous = "Anonymtläge",
			allowDrag = "Tillåt dragging",
			useMouse = "Använd musen",
			size = "Storlek",
			callsign = "Rakelnummer",
			device = "Enhet",
			display = "Utseende",
			connections = "Anslutningar",
			memberList = "Medlemms lista",
			account = "Konto",
			on = "På",
			off = "Av",
		},

		channels = {
			header = "Kanaler",
			favorites = "Favoriter",
			recents = "Senaste",
			search = "Sök",
			current = "Aktiv Kanal",
			newPromptHeader = "Ny Favorit",
			removeFavorite = "Radera Favorit",
			new = "Ny favorit",
			frequency = "Frekvens",
		},

		radioMembers = {
			title = "Radio Medlemmar",
			notInChannel = "Du är inte med i någon radio frekvens",
			emptyMembersList = "Denna radio kanal är tom",
			addContact = "Lägg till kontact",
		},

		joinRadio = {
			title = "Gå med i radio",
			frequency = "Frekvens",
			join = "Joina frekvens",
			leave = "Lämna frekvens",
		},

		info = {
			statusTitle = "Din status",
			status = "Min status",
			frequency = "Frekvens: {0}",
			radioStatus = "Radio Status",
			openRadioMembers = "Öppna radio medlemmar",
			openSettings = "Öppna inställningar",
			openChannels = "Öppna kanal-lista",
			locationTitle = "Din Position",
			settings = "Inställningar",
			joinRadio = "Gå med i radio",
			notInRadio = "Inte i nån radio",
			inRadio = "I en radio",
		},
	},
}
