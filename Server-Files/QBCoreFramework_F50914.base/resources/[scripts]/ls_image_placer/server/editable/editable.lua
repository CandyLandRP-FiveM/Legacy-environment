RegisterCommand(Config.commandNames.devMode, function(source, args)
    local player = source
    TriggerClientEvent('ls_ads:DevMode', player)
end, Config.staffOnly)

RegisterCommand(Config.commandNames.deleteImage, function(source, args)
    local player = source
    TriggerClientEvent('ls_ads:DeleteImage', player)
end, Config.staffOnly)

function SendToDiscord(x, y, z, player, image)
    local name = 'Image Placer Bot'
    local embed = {
        {
            ["color"] = 16753920,
            ["title"] = "**".. 'New Image Uploaded!' .."**",
            ["description"] = string.format("**Player** = %s \n **x** = %f \n **y** = %f \n **z** = %f \n **Image** = %s \n **PlayerID** = %d", GetPlayerName(player), x, y, z, image, player),
            ["footer"] = {
                ["text"] = 'Lith Studios | Swizz',
            },
        }
    }
    PerformHttpRequest(ServerConfig.webhook.url, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
end

