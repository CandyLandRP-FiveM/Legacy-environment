local blips = {

	{title="Cool Beans", colour=19, id=89, scale=0.7, x = -1201.89, y = -1132.47, z = 7.83},
	{title="Flokis", colour=69, id=226, scale=0.7, x = 287.65, y = -1161.42, z = 359.29},
    {title="Up and Atom", colour=1, id=76, scale=0.7, x = 87.34, y = 281.93, z = 110.21},
    {title="Nacho Daddys Taqueria", colour=11, id=79, scale=0.7, x = 985.84, y = -1393.93, z = 31.69},
    {title="Pink Cage", colour=19, id=93, scale=0.7, x = 317.67, y = -233.17, z = 53.96},
   -- {title="Toxicos", colour=47, id=446, scale=0.7, x = 261.2, y = -1822.05, z = 27.15},
    {title="Hunting Shop", colour=66, id=626, scale=0.7, x = -682.24, y = 5832.98, z = 17.33},
    {title="PDM", colour=0, id=523, scale=0.7, x = -47.985851287842, y = -1105.9705810547, z = 27.262769699097},
    {title="Wags 2 Riches", colour=15, id=273, scale=0.7, x = -449.84008789063, y = -75.190452575684, z = 41.300052642822},
    {title="Pha Q", colour=8, id=267, scale=0.7, x = -169.60708618164, y = 281.41009521484, z = 93.763847351074},
    {title="Mirror Park Tavern", colour=25, id=78, scale=0.7, x = 1216.4497070313, y = -416.46160888672, z = 67.74919128418},
    {title="Farming", colour=43, id=373, scale=0.7, x = 1959.86, y = 4853.85, z = 45.45},
    {title="Farming", colour=43, id=373, scale=0.7, x = 2229.1813964844, y = 5042.0283203125, z = 45.125732421875},
    {title="Pig Farm", colour=34, id=373, scale=0.7, x = 2301.6906738281, y = 4940.0249023438, z = 41.41499710083},
    {title="Kitchen", colour=35, id=373, scale=0.7, x = 2438.22, y = 4975.95, z = 46.83},
    {title="Farming", colour=43, id=373, scale=0.7, x = 274.19, y = 6630.9, z = 29.45}, 
    {title="Farming", colour=41, id=373, scale=0.7, x = 2327.81, y = 4757.24, z = 35.7},
    {title="Farming", colour=69, id=373, scale=0.7, x = 2403.79, y = 4401.58, z = 52.25},
    {title="Farming", colour=43, id=373, scale=0.7, x = 253.23, y = 6459.54, z = 31.41},
    {title="Farming", colour=71, id=373, scale=0.7, x = 625.95, y = 6473.73, z = 30.31},
   -- {title="Pops Autos", colour=47, id=446, scale=0.7, x = 1777.95, y = 3331.71, z = 41.22},
    {title="Fish Market", colour=15, id=68, scale=0.7, x = -2194.92, y = 4291.44, z = 49.17},
    {title="Cyber Performance", colour=47, id=446, scale=0.7, x = 709.39, y = -769.02, z = 24.99},
    {title="Auto Exotics", colour=47, id=446, scale=0.7, x = 535.29, y = -183.1, z = 54.3}, 
    {title="Pet Shop", colour=15, id=267, scale=0.7, x = -662.7, y = -936.79, z = 21.83},
    {title="Local Drs office", colour=37, id=61, scale=0.7, x = 343.16, y = -1399.76, z = 32.51}, 
    {title="Storage", colour=2, id=474, scale=0.7, x = -82.57, y = -1201.2, z = 27.57},
    {title="Tow Yard", colour=47, id=446, scale=0.7, x = 500.97, y = -1340.46, z = 29.31},
    {title="Njord Silver and Gold", colour=43, id=500, scale=0.7, x = 175.14, y = -1320.17, z = 29.35},
    {title="Rons Wholesale Supply", colour=44, id=636, scale=0.7, x = 137.24, y = -3200.6, z = 5.86},
    
    
    
    
    

}
      
Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, info.id)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, info.scale)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
	    BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
    end
end)