
if Config.EnableScrapyard == nil or Config.EnableScrapyard then
    RegisterNetEvent('rcore_vehDisassembly:displayStartJob', function()
        Citizen.CreateThread(function()
            local timeToEnd = 2500
        
            while timeToEnd > 0 do
                DrawSubtitleLabel(_U("disassembly_start"))
                timeToEnd -= GetFrameTime() * 1000
                Wait(0)
            end
        end)
    end)
end

