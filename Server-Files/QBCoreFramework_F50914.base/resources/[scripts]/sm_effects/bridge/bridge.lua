cFunctions = {}
cObject = nil

if Config.targetFramework == 'QB' then
    init_qb_functions()
elseif Config.targetFramework == 'ESX' then
    init_esx_functions()
end