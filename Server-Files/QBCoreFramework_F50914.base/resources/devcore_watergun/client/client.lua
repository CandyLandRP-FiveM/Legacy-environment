QBCore = Config.QBExport()

STATE = {}
STATE.PUMP = 0
STATE.TANK = 0

RegisterNetEvent(GetCurrentResourceName()..':client:useWaterGun')
AddEventHandler(GetCurrentResourceName()..':client:useWaterGun', function(item)

        STATE.USING = false
        STATE.WATER_ITEM = item
		PullOutWaterGun(item)
        Aiming(item)
end)
