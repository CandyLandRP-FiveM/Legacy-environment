Config = {}


----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-------------CHANGE ALERT IN policeAlert() TO YOUR LIKING-------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

Config.Cash = true
                            --use either cash or markedbills if u want cash then set true vice versa
Config.BlackMoney = false

Config.MinCash = 75 --if Config.Cash = true
Config.MaxCash = 175

Config.MinMarkedBills = 1 --if Config.BlackMoney = true
Config.MaxMarkedBills = 5


Config.Models = {
    'prop_parknmeter_02',
    'prop_parknmeter_01'
}

Config.ModelHashes = {
    -1940238623,        --prop_parknmeter_02
    2108567945          --prop_parknmeter_01

}
