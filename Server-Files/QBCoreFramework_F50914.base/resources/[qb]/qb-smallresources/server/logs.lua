local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/1159712701161939035/1JMUDdELokNCy47cz1h6YkyY_zmt3WiS3D5jgWOii2idlOfWeq9kIeWY1MXvNHXW1Dn3',
    ['testwebhook'] = 'https://discord.com/api/webhooks/1159712854740574208/ya8tvFuuOf1dmcfT53ouSvU_lvh8VGf0ofRwnySxcTxhmp6uPbpE032ZS6cQouQcVHMA',
    ['playermoney'] = 'https://discord.com/api/webhooks/1159712976639623178/r1fsQvnc6KyyfezrOjSBvZsxzaWx7G5JqOQvwkgmEM4iph578f6DUBtXjN83--I9zAcr',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1159713058613112932/m6fJd_Qn9a7i_46kwqDon2FzpcKvff6NFBRHoKEzuc_dBBn3kmoMyNDYqj2BkhMoaprJ',
    ['robbing'] = 'https://discord.com/api/webhooks/1159713168378040330/bOfWwzay4NIS5FeGrHQu_HbnMX5mSke5lp-3c-R6eeixzAiuBXvoxq6vnM5DnigfMX-F',
    ['cuffing'] = 'https://discord.com/api/webhooks/1159713246153035816/A-UWH-hMQX6UBSpF3RlrL8NTRmsCTc51HkI6ZAZJxATN0crtrdyAN3UtwWA_qR8r3RYP',
    ['drop'] = 'https://discord.com/api/webhooks/1159713314742476800/BFdukPbU3RVrYXbEY9MgE0wUgvSDSOqX6yqcS-Z8XDftCkxXJBqrpA48tappNvNiJQ9n',
    ['trunk'] = 'https://discord.com/api/webhooks/1159713388100845600/UD-bLoq-My7Yf-2BB1AAb73pL5RkRyToCLwz8trAx79C1dhgtkufxzqzJ5CGr2bvjPNA',
    ['stash'] = 'https://discord.com/api/webhooks/1159713458258972792/wslGnnGab4AfxaVXJYrsRb8_yullLD-JfqCCU4GqY5E5hB5zI4SiiZ1ZOBX2Lho055KK',
    ['glovebox'] = 'https://discord.com/api/webhooks/1159713543478841435/f6RoTJ8wyuLLCpGsdaEGpjJlsoqd4mMsWpSkXDYd0yRcHVLAERlw8sE7ax9bVPp_tkkz',
    ['banking'] = 'https://discord.com/api/webhooks/1159713653675798539/WAlPVOlHNzM4TtbJotFEhERbSizoei-F4GLgfnLlI_QQValbgr4FAt1jmnj5a4nIdLGE',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/1159713731262038036/6aqxhSUc0uRrcUK1Ni60n7a7VRfKJjgOuLRAm8zrILjUmcLX48s2JbC0ZOA13Vyb5ith',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/1159713855136608327/zrClPw5Wwxlip8GAvcAswQ5sZlSG_vsWyIzHs_6S5pJw_4mVPgMR_eQ5uct8uQxZ858Q',
    ['shops'] = 'https://discord.com/api/webhooks/1159713960111652864/lDP9l-cxbOuOFt9YQ689QC2cpKgmcZtMEGXn1jHE_BcdQ9f97Ioz1bwHDI8oldkCYjSw',
    ['dealers'] = 'https://discord.com/api/webhooks/1159714044014514198/TPyVirvnYrh1El-O-XB4Syi-wrCrEHyL3C40eUCsAmsFvmAawT1oejtA9rHDHQ0DzaAB',
    ['storerobbery'] = 'https://discord.com/api/webhooks/1159713818931363920/8ICLKVr7FjyHJCrH8uSgvjuiX8b64dnKXM_g3mBFxFCD-o05veckTMRdtkyDMg6g1Hym',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/1159714247232725094/m1-lN4RE6j0lW2f9L-NE3uO-QK_j_MT2c12qHoj47EkgCbC0pUEbsq2R4uOCTQr30Uav',
    ['powerplants'] = 'https://discord.com/api/webhooks/1159714345480093747/2VVtzfMiuRYrPTSVConNWUy5LdJF736dkTLm4nIAjoftk3IyTGNY0CCrtrpSeZhl4deG',
    ['death'] = 'https://discord.com/api/webhooks/1159714424769237013/URwhD5KPoLgN3ZlkfRRivkAHCpNH1y8_CIMMgpvXoMnEi5jNC4xNdF3cn2ouDYUr3Rib',
    ['joinleave'] = 'https://discord.com/api/webhooks/1159714498748370954/IkQt8lQk5cjv9RaJnWJfiKEp1USlU19jD4ELFJDERq48euAiGiUm6Oth-Lr_VSRf-aQX',
    ['ooc'] = 'https://discord.com/api/webhooks/1159714578570170398/gM0GZbxlBHr8YMswMgcEblapkoXZQvP3rL9_Vw73jJTGpDAif09hfE0pYlHqYPMyIuMp',
    ['report'] = 'https://discord.com/api/webhooks/1159714652926791710/iRdizJqpG8FbMM3ZXIBkCu_jWZtN7PnuFukewPMbUwtAAKhZ8KQkt2dsdVx3aQdATRtf',
    ['me'] = 'https://discord.com/api/webhooks/1159714731335102514/T8s_ba5lqkEaLTfYNGZyCA5yHLI3PMRN6rN7Eb22di0cRlulDj0f1yiQXGFUfaHHSaKJ',
    ['pmelding'] = 'https://discord.com/api/webhooks/1159714817347682334/zYO0OdC1zysG6MQOQPaxciqahRMQBmNDmybP3FXddNJbQ2NDHwfgQ4LsZn4D5NVUnQOW',
    ['112'] = 'https://discord.com/api/webhooks/1159714925548146688/h6b-CcY8CP-gQg6KzVbKUGDToLIGqTNU9jBxfLA-UTROh5Du9CU3Ih8zxcwWAEsyJdcp',
    ['bans'] = 'https://discord.com/api/webhooks/1159715087775449178/HFHwAUDwOdgDmYV76wst_7jRzQrLX4FQJnmENwqpdNVqtZQdklU2mdFGYzqqGFUWYNFe',
    ['anticheat'] = 'https://discord.com/api/webhooks/1159715189416013905/BTQHjkPpyeLiW6bU853WKuDGsAf7_ydpg-rmjwEjlO4xeqZ4pIjmRi3P_THg0e_GHEMw',
    ['weather'] = '',
    ['moneysafes'] = 'https://discord.com/api/webhooks/1159715273427931137/iwXgFB5AcXBMCXtGtvrzmeZbBACyrHOP6bxIrD4qibE72UO4-dhUj8K5klaQa1wyoqwK',
    ['bennys'] = '',
    ['bossmenu'] = 'https://discord.com/api/webhooks/1159715433692278875/2EV15zB7N-b88zIu9oZcORbWggGxph0ePolJjIZJo99X3sKQ3AxKVZSmhmb5DzKmjXLT',
    ['robbery'] = 'https://discord.com/api/webhooks/1159715533776769094/5u6zD9zMaiTdnTDD30KmTfR5s54X-m_vsNahncPPeMgXLJy9kll4pqwgxn0tVkWwpcfn',
    ['casino'] = '',
    ['traphouse'] = '',
    ['911'] = 'https://discord.com/api/webhooks/1159718229636304916/YEAyzHMo0VAoJ9p3yZLkpTBaGaa89NsvYAG4fkRFn-K1g92aDxSIZ988gqXSA9F15gPo',
    ['palert'] = 'https://discord.com/api/webhooks/1159718340999266405/FTbOSTL9CvomuKlEHRI59K0_eZqFhzURt5z4W3jvIRw63nLNUF-klnsnr2dUB19u4hHa',
    ['house'] = 'https://discord.com/api/webhooks/1159718436700692501/0uZFJ07Iaml7-MU6jKlKO5spvoHQxtrDOWUYdTegihkxs6ALaDCO3zvAmBDw7VWBuW_n',
    ['qbjobs'] = 'https://discord.com/api/webhooks/1159718525242454066/x49Tac1hlEUGjwhWOSWmUtiyur3LKhHm3slxPx13xbEpVDdOSembbJlSEQUeJ19O5WQt',
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

local logQueue = {}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'QBCore Logs',
                ['icon_url'] = 'https://media.discordapp.net/attachments/870094209783308299/870104331142189126/Logo_-_Display_Picture_-_Stylized_-_Red.png?width=670&height=670',
            },
        }
    }

    if not logQueue[name] then logQueue[name] = {} end
    logQueue[name][#logQueue[name]+1] = {webhook = webHook, data = embedData}

    if #logQueue[name] >= 10 then
        local postData = { username = 'QB Logs', embeds = {} }

        for i = 1, #logQueue[name] do
            postData.embeds[#postData.embeds+1] = logQueue[name][i].data[1]
        end

        PerformHttpRequest(logQueue[name][1].webhook, function() end, 'POST', json.encode(postData), { ['Content-Type'] = 'application/json' })

        logQueue[name] = {}
    end
end)

Citizen.CreateThread(function()
    local timer = 0
    while true do
        Wait(1000)
        timer = timer + 1
        if timer >= 60 then -- If 60 seconds have passed, post the logs
            timer = 0
            for name, queue in pairs(logQueue) do
                if #queue > 0 then
                    local postData = { username = 'QB Logs', embeds = {} }
                    for i = 1, #queue do
                        postData.embeds[#postData.embeds+1] = queue[i].data[1]
                    end
                    PerformHttpRequest(queue[1].webhook, function() end, 'POST', json.encode(postData), { ['Content-Type'] = 'application/json' })
                    logQueue[name] = {}
                end
            end
        end
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
