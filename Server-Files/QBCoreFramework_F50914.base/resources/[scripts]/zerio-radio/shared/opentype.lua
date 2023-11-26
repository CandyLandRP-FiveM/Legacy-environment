Shared = Shared or {}

Shared.OpenType = {}

-- item -> Opens through the Shared.OpenType.Item itemname, only for ESX & QBCore
-- command -> Opens through the command Shared.OpenType.Command
-- keybind -> Opens through a real keymapping (Shared.OpenType.Keybind)
-- control -> Opens through a button press (Shared.OpenType.Button)
-- custom -> Opens through the event "zerio-radio:client:open" or via the export "Open" (exports["zerio-radio"]:Open())
Shared.OpenType.Value = "item"

-- Only for Shared.OpenType.Value "item"
-- This would be the name of the item which can be used to open the radio
Shared.OpenType.Item = "radio"

-- Only for Shared.OpenType.Value "keybind"
Shared.OpenType.Keybind = "f3"

-- Only for Shared.OpenType.Value "control"
-- Full keybind list exists here, https://docs.fivem.net/docs/game-references/controls/
Shared.OpenType.Button = 318

-- Only for Shared.OpenType.Value "keybind"
-- This would be the name of the command which can be used to open the radio
Shared.OpenType.Command = "radio"
