Config = {}

--[[ Doctor Names Configs ]]
Config.DoctorNames = { -- List of all possible Doctor names that can be used when trying to fill a script (one is randomly selected at every server/script restart)
    'Dr. Likspeen'
}

--[[ Pharmacy Locations Configs ]]
Config.PharmacyLocations = { -- List of coordinates of Pharmacy locations (one is randomly selected at every server/script restart)
    vec3(69.2566, -1570.2457, 29.5978), -- Strawyberry ave
}

--[[ General Configs ]]
Config.startOxyRunPedModel = 's_m_m_doctor_01' -- The ped model for the starting mission
Config.StartOxyRunLocation = vector3(1177.11, -1481.3, 33.84) -- The location of the starting mission ped
Config.StartOxyRunPedHeading = 179.08 -- The heading (facing direction) of the starting mission ped
Config.StartOxyRunPedRadius = 45 -- The radius at which a player must be within for the ped to spawn
Config.BlankPrescription = 'blank_prescription' -- The name of the item that is rewarded upon a mission start
Config.SignedPerscription = 'signed_prescription' -- The name of the item that is given after filling in the information
Config.BlankPrescriptionRewardAmount = 1 -- How many of the above item is rewarded upon a mission start
Config.BlankPrescriptionPrice = 2000 -- How much it costs to start the mission
Config.Money = 'money' -- The currency to start the mission ('money' or 'black_money')
Config.RandomBlankPrescriptionPricing = true -- If true it makes the price of starting the mission random (within parameters below)
Config.MinBlankPrescriptionPrice = 250 -- The minimum price for a Blank Prescription if above is true (otherwise, ignore)
Config.MaxBlankPrescriptionPrice = 500 -- The maximum price for a Blank Prescription if above is true (otherwise, ignore)
Config.RequireItem = false -- If you'd like to require an item to start the mission, set this to true
Config.RequireItemName = 'water' -- If RequireItem = true, this is the required item name
Config.RequireItemAmount = 5 -- If RequireItem = true, this is the quantity required of the item name above
Config.OxyBottleItem = 'oxycontin_bottle' -- The name of the item that serves as an Oxy Bottle
Config.OxyBottleQuantity = 1 -- How many you want to reward when the precription is filled out correctly
Config.OxyPillItem = 'oxycontin' -- The item name of the oxy pills when you open the bottle
Config.OxyPillQuantity = 5 -- The number of pills player is given upon opening the bottle
Config.AvailableDoctorListLocation = vec3(343.1629, -1399.8206, 32.5092) -- The location at which a player can view possible Doctor names to fill the script
Config.EnableEffects = { -- When using an oxycontin, do you want effects enabled?
}

--[[ Webhook Configs ]]
Config.EnableWebhook = true -- If you want Discord webhook logs, enable this with true. If not, disable it with false.
Config.WebhookLink = 'https://discord.com/api/webhooks/1159243884354883614/_TwkDOmHFt9d5KnFkve5Ok88T0TtwqcHoyZFRcGy7gkC7Au2jeSLJUSy9q4meqR8xRYe' -- The webhook link for logs
Config.WebhookName = 'Oxy' -- The Discord bot name for the webhook
Config.WebhookAvatarIcon = '' -- The webhook avatar image
Config.WebhookFooterIcon = '' -- The webhook footer image

--[[ String Configs ]]
Notifications = {
    position = 'top', -- the notification position of all notifications
    icon = 'capsules', -- the notification icon for all notifications
    pharmacyTitle = 'Pharmacy',
    pharmacyDescription = 'You cancelled filling the script',
    pharmacyItemNotFound = 'There is nothing here for you - try again later',
    startOxyRunPedName = 'Aaron',
    notEnoughMoney = 'Quit wasting my time bro, come back when you ain\'t broke',
    startOxyRunCancelDescription = 'Come back whenever you are ready',
    startOxyRunPart2CancelDescription = 'Quit messin\' with me man, I don\'t have time for this..',
    startOxyRunDidntHaveItemDescription = 'I got nothing for you man, leave me alone.',
    startOxyRunAlreadyStarted = 'I just hooked you up bro - use what you got and then we\'ll talk again.',
    oxyBottleTitle = 'Oxy Bottle',
    oxyBottleDescription = 'You changed your mind and kept the bottle closed',
    oxycontinTitle = 'Oxycontin',
    oxycontinDescription = 'You changed your mind and didn\'t take it'
}

Target = {
    startOxyRunLabel = 'Talk',
    startOxyRunIcon = 'fas fa-comment',
    availableDoctors = 'View available Doctors',
    availableDoctorsIcon = 'fas fa-user-doctor',
    fillScriptLabel = 'Fill script',
    fillScriptIcon = 'fas fa-capsules'
}

ContextMenu = {
    availableDoctorsMenuTitle = 'Today\'s Doctors',
    availableDoctorsIcon = 'user-doctor'
}

ProgressCircle = {
    position = 'middle', -- The position for all progressCircle's
    checkingScriptLabel = 'Checking script..',
    checkingScriptDuration = 15000,
    openOxyBottleLabel = 'Opening bottle..',
    openOxyBottleDuration = 4000,
}

AlertDialog = {
    startOxyRunHeader = 'Aaron',
    startOxyRunContent = 'Whats up man, you need one of them \'scripts? I\'ll hook you up but be careful with these. If you get caught, it wasn\'t from me..',
    startOxyRunConfirm = 'Agree',
    startOxyRunCancel = 'Nevermind',
    startOxyRunPart2Header = 'Aaron',
    startOxyRunPart2Content = 'Alright man, let\'s do it. I need some cash though.. this stuff doesn\'t come easy. How\'s $',
    startOxyRunPart2Confirm = 'Pay',
    startOxyRunPart2Cancel = 'No',
    fakeScriptHeader = 'Doctor',
    fakeScriptContent = 'This is fraudulent! I will not fill this for you. This is going into my shredder.. goodbye now.'
}

InputDialog = {
    header = 'Fill Prescription Information',
    nameLabel = 'Name',
    nameDescription = 'Patient\'s first & last name',
    nameIcon = 'user',
    addressLabel = 'Address',
    addressDescription = 'Patient\'s full address',
    addressPlaceholder = '420 Strawberry Ave, Los Santos, 42069',
    addressIcon = 'house',
    firstCheckboxLabel = 'Nonacute Pain',
    secondCheckboxLabel = 'Acute Pain Exception',
    dobLabel = 'Date of Birth',
    dobFormat = "DD/MM/YYYY",
    dobIcon = 'calendar',
    doctorLabel = 'Doctor Signature',
    doctorDescription = 'Approving Doctor',
    doctorIcon = 'signature'
}