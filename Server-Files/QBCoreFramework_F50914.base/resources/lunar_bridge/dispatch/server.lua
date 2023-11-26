Dispatch = {}

--This function dispatches all the calls
function Dispatch.call(coords, data)
    if Config.Dispatch.Type == 'normal' then
        TriggerClientEvent('lunar_bridge:dispatch:call', -1, coords, data)
    elseif Config.Dispatch.Type == 'cd_dispatch' then
        local title = string.format('%s - %s', data.Code, data.Title)

        TriggerClientEvent('cd_dispatch:AddNotification', -1, {
            job_table = Config.Dispatch.Jobs,
            coords = coords,
            title = title,
            message = data.Message,
            flash = 0,
            unique_id = tostring(math.random(0000000,9999999)),
            sound = 1,
            blip = {
                sprite = 501,
                scale = 1.2,
                colour = 3,
                flashes = false,
                text = title,
                time = (5*60*1000),
                radius = 0,
                sound = 1,
            }
        })
    elseif Config.Dispatch.Type == 'qs-dispatch' then
        local title = string.format('%s - %s', data.Code, data.Title)

        TriggerEvent('qs-dispatch:server:CreateDispatchCall', {
            job = Config.Dispatch.Jobs,
            callLocation = coords,
            callCode = { code = data.Code, snippet = data.Title },
            message = data.Message,
            flashes = false,
            image = nil,
            blip = {
                sprite = 431,
                scale = 1.2,
                colour = 3,
                flashes = true,
                text = title,
                time = (20 * 1000),     --20 secs
            }
        })
    elseif Config.Dispatch.Type == 'ps-dispatch' then
        TriggerEvent('ps-dispatch:server:notify', {
            dispatchCode = data.Code,
            priority = 2, -- priority
            origin = coords,
            dispatchMessage = data.Message, 
            job = Config.Dispatch.Jobs,
            alert = {
                displayCode = data.Code, 
                description = data.Message, 
                radius = 1.2, 
                recipientList = Config.Dispatch.Jobs, 
                blipSprite = 431, 
                blipColour = 3, 
                blipScale = 1.2, 
                blipLength = 20 * 1000, 
                sound = "Lose_1st",
                blipflash = false
            }
        })
    else
        error(('%s is not implemented, you can implement it in lunar_bridge/config/cl_edit.lua'):format(Config.Dispatch.Type))
    end
end