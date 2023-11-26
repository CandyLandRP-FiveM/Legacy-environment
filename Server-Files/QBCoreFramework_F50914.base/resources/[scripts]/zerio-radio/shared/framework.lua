Shared = Shared or {}

-- DONT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING!!!!!!!!!!!!!!!!
if GetResourceState("qb-core") ~= "missing" then
	Shared.Framework = "qbcore"
	Shared.EventNames = {
		PlayerLoaded = "QBCore:Client:OnPlayerLoaded",
		PlayerUnLoaded = "QBCore:Client:OnPlayerUnload",
	}
elseif GetResourceState("es_extended") ~= "missing" then
	Shared.Framework = "esx"
	Shared.EventNames = {
		PlayerLoaded = "esx:playerLoaded",
		PlayerUnLoaded = "esx:onPlayerLogout",
	}
else
	Shared.Framework = "standalone"
	Shared.EventNames = {}
end
