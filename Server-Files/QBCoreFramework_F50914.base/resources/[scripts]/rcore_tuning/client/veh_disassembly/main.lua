Ped = PlayerPedId()
CoordsPed = GetEntityCoords(Ped)
UserServerId = GetPlayerServerId(PlayerId())

Citizen.CreateThread(function()
    while true do
        Wait(600)
        Ped = PlayerPedId()
        CoordsPed = GetEntityCoords(Ped)
    end
end)


if Config.BlipOptions.BlipsEnabled and (Config.EnableScrapyard == nil or Config.EnableScrapyard) then 
	Citizen.CreateThread(function()
		Wait(100)
		local blip = AddBlipForCoord(-420.65, -1675.29, 19.02)
		SetBlipSprite(blip, Config.BlipOptions.ScrapyardBlipSprite)
		SetBlipDisplay(blip, 4)
		SetBlipScale(blip, Config.BlipOptions.ScrapyardBlipScale)
		SetBlipColour(blip, Config.BlipOptions.ScrapyardBlipColour)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(_U("scrapyard"))
		EndTextCommandSetBlipName(blip)
	end)
end