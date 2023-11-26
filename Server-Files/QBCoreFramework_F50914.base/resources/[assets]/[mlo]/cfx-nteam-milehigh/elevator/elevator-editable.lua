Config = {}

Config.EnableElevator = true

Config.DrawSprite = true  -- Set this true|false only if using ox_target

Config.Distance = 2
Config.Marker = 2
Config.MarkerSize = { x = 0.3, y = 0.3, z = 0.3 }

Config.Text = {

	['elevator'] = 'Elevator',
	['lobby'] = 'Lobby',
	['use_elevator'] = '[E] - To use Elevator',
	['wrong_pin'] = 'Wrong PIN',
	['app_one'] = 'Appartment I',
	['app_two'] = 'Appartment II',
	['app_one_desc'] = 'On Sale | PIN: 0000',
	['app_two_desc'] = 'On Sale | PIN: 0000',

	['off_one'] = 'Office I',
	['off_one_desc'] = 'On Sale',
	['off_two'] = 'Office II',
	['off_two_desc'] = 'On Sale',
}



-- only if using ox_lib point | Config.Teleporter = 3

Config.EnterKey = 38 -- E (only ox_lib point)


Config.AppartmentLobby = { x = -165.3342, y = -991.4573, z = 29.5126 }
Config.AppartmentIcon = "home"

Config.AppartmentOne = { x = -151.4349, y = -954.3071, z = 239.2305 }
Config.AppartmentOnePIN = "0000"

Config.AppartmentTwo = { x = -160.5766, y = -994.4111, z = 252.4352 }
Config.AppartmentTwoPIN = "0000"


Config.SpaLobby = { x = -163.9335, y = -987.7642, z = 29.5126 }

Config.SpaLoc = { x = -146.7868, y = -990.8665, z = 189.1334 }


Config.OfficeLobby = { x = -162.4958, y = -983.8782, z = 29.5126 }
Config.OfficeIcon = "building"

Config.OfficeOne = { x = -153.6317, y = -963.6077, z = 227.0400 }

Config.OfficeTwo = { x = -153.7554, y = -979.8663, z = 219.8031 }


-- You can add here checks you want. For Example: Did player bought ticket for spad
--                                                Does he has VIP 
--                                                ETC...

AddEventHandler("ndev_elevator:enterSpa", function()
	local pid = PlayerPedId()
	SetEntityCoords(pid, Config.SpaLoc.x, Config.SpaLoc.y, Config.SpaLoc.z, false, false, false, true)
end)


-- Here you can make checks for jobs or smth like that
AddEventHandler("ndev_elevator:enterOfficeOne", function()
	local pid = PlayerPedId()
	SetEntityCoords(pid, Config.OfficeOne.x, Config.OfficeOne.y, Config.OfficeOne.z, false, false, false, true)
end)

AddEventHandler("ndev_elevator:enterOfficeTwo", function()
	local pid = PlayerPedId()
	SetEntityCoords(pid, Config.OfficeTwo.x, Config.OfficeTwo.y, Config.OfficeTwo.z, false, false, false, true)
end)