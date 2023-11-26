Shared = Shared or {}

Shared.Locale = "en"

-- If true, a radio list will be displayed on the players screen when they are in a radio channel
Shared.ShowPlayerList = false

-- If true, then anonymous mode will be disabled
Shared.DisableAnonymous = false

-- The command name for changing radio channels, if you remove this line then the command will be removed
Shared.ChangeRadioChannelCommand = "changeradio"

-- ONLY FOR MUMBLE-VOIP, has to be the same as the talking key for the animation to work
Shared.RadioKey = 137

-- If set to true, players will be disconnected from their radio channel upon dying
Shared.DisconnectOnDeath = true

-- If set to true, the radio will be navigated via your arrow keys instead of your mouse.
-- This only changes the default value for your server, it can also be manually changed via the players ingame radio settings
Shared.NavigateWithArrowKeys = false

-- If this is set to true, an panic button will be enabled.
Shared.EnablePanicButton = false

-- How long of a cooldown the panic button should have, in seconds
Shared.PanicButtonCooldown = 60 * 5

-- Requires either high_3dsounds or sounity
Shared.PanicButtonSound = {
	Name = "https://cdn.discordapp.com/attachments/868962490120302616/1150199972596306012/discord-notification.mp3", -- A link to the sound
	Enabled = true, -- Whether the sound should be played or not
	Duration = 10, -- How long the sound will play
}

-- If set to true, this will enable pma-voice's radio filter
-- Aka the `voice_enableRadioSubmix` & `voice_enableSubmix` convar
Shared.RadioFilter = true

-- How many messages to fetch when looking at messages ingame
-- If set to -1, all messages will be fetched
Shared.MessageLimit = 50

-- If set to true, the radio will disconnect upon the player going into water.
Shared.DisconnectInWater = false

-- If set to true, an option for call signs will be added to the radio.
Shared.AllowCallSigns = true

-- Dont change this unless told by support to change it :)
Shared.Debug = false
