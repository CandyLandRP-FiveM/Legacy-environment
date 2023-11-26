if Config.newQB then
	QBCore = exports['qb-core']:GetCoreObject()
else
	QBCore = nil
	TriggerEvent("QBCore:GetObject", function(obj)
	  QBCore = obj
	end)
end

local function _U(entry)
	return Locales[Config.Locale][entry] 
end

local function GetLocation(coords)
	local zone = GetLabelText(GetNameOfZone(coords.x, coords.y, coords.z))
	local currentStreetHash = GetStreetNameAtCoord(coords.x, coords.y, coords.z)
	currentStreetName = GetStreetNameFromHashKey(currentStreetHash)
	playerStreetsLocation = currentStreetName .. ", " .. zone
	return playerStreetsLocation
end

RegisterNetEvent("lp_rob_npc:client:customAlert", function()
-- function CustomAlert()
    -- Input Your Own!
    if Config.Debug then
        print('customAlert')
    end
    local src = source
    local Player = QBCore.Functions.GetPlayerData()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = GetLocation(currentPos)  
    if Player.job.name == 'police' and Player.job.onduty then
    -- if Player.job.type == 'leo' and Player.job.onduty then  -- uncomment if you are on newQB and your shared jobs.lua has `type`.
        TriggerEvent('QBCore:Notify', _U('mugging_info')..locationInfo, 'police', 10000)
    end    
end)