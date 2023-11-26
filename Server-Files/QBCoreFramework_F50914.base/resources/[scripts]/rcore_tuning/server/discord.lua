WEBHOOK_URL = ''

function logToDiscord(action, source, vehiclePlate, upgradeList)

    if WEBHOOK_URL and WEBHOOK_URL ~= '' then
        local name = GetPlayerName(source) 
        local time = os.date('%Y/%m/%d %H:%M:%S')
        local totalPrice = 0
        local upgrades = ""
        local vehiclePlate = vehiclePlate or "No plate"
        if upgradeList then
            for _, upgradeInfo in pairs(upgradeList) do
                totalPrice += upgradeInfo.price
                upgrades = upgrades .. "\n" .. upgradeInfo.upgrade .. " ($"..tostring(upgradeInfo.price)..")"
            end
        end
        local embed = {
            {
                ["fields"] = {
                    {
                        ["name"] = "",
                        ["value"] = "**".._U('DISCORD_ACTION')..":** " .. action,
                    },
                    {
                        ["name"] = "",
                        ["value"] = "**".._U('DISCORD_PLATE')..":** " ..  vehiclePlate,

                    },
                    {
                        ["name"] = "**".._U('DISCORD_ITEM_LIST')..":** " ,
                        ["value"] = upgrades,
                    },
                    {
                        ["name"] = "",
                        ["value"] = "**".._U('DISCORD_PRICE')..":** $" .. tostring(totalPrice),
                    },
                    {
                        ["name"] = "",
                        ["value"] = "**".._U('DISCORD_ID')..":** " ..tostring(source),
                    },
                    {
                        ["name"] = "**".._U('DISCORD_IDENTIFIER')..":** ",
                        ["value"] = GetPlayerIdentifierByType(source, 'license'):gsub('license:', ""),
                    },
                },
                ["color"] = 16767002,
                ["title"] = "**RCore Tuning Logs**",
                ["description"] = "",
                ["footer"] = {
                    ["text"] = time
                },
                ["thumbnail"] = {
                    ["url"] = "",
                },
            }
        }

        local discordId = GetPlayerIdentifierByType(source, 'discord')
        if discordId then
            discordId = discordId:gsub("discord:", "")
            table.insert(embed[1].fields, 
                {
                    ["name"] = "",
                    ["value"] = "**".._U('DISCORD_DISCORD')..":** <@" ..discordId..">",
                })
        end
        PerformHttpRequest(WEBHOOK_URL, function(err, text, headers) end, 'POST', json.encode({username = "RCore Tuning", embeds = embed}), { ['Content-Type'] = 'application/json' })
    end
end