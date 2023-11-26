Config = {}

Config.FuelExport = 'cdn-fuel'

Config.Locations = {

    boat = {
        coords = vector4(-803.34, -1495.75, 0.6, 287.08),
        pedhash = `mp_m_boatstaff_01`,
        spawnpoint = vector4(-794.95, -1506.27, 1.08, 107.79),
    },
}

Config.Blips = {
    {title= Lang:t("info.sea_veh"), colour= 42, id= 410, x= -803.34, y= -1495.75, z= 287.08}, 
}

Config.Vehicles = {
    sea = {
        [1] = {
            model = 'seashark3',
            money = 500,
        },
        [2] = {
            model = 'dinghy',
            money = 1500,
        },
        [3] = {
            model = 'tropic',
            money = 5000,
        },
    },
}