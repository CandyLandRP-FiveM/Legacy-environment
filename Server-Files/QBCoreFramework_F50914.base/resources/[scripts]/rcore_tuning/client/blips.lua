
if Config.BlipOptions.BlipsEnabled then
	Citizen.CreateThread(function()
		for shopName, shopInfo in pairs(TuningShops) do
			CreateTuningBlip(shopName, shopInfo)
		end
	end)
end

function CreateTuningBlip(shopName, shopInfo)
	local blip = AddBlipForCoord(shopInfo.coords)
    SetBlipSprite(blip, Config.BlipOptions.BlipSprite)
	SetBlipDisplay(blip, 4)
	SetBlipScale(blip, Config.BlipOptions.BlipScale)
	SetBlipColour(blip, Config.BlipOptions.BlipColour)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	if Config.BlipOptions.BlipLabel then
		shopName = Config.BlipOptions.BlipLabel
	end
	AddTextComponentString(firstToUpper(shopName:lower()))
	EndTextCommandSetBlipName(blip)
end

function firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end