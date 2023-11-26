local QBCore = exports['qb-core']:GetCoreObject()

local isMelting = false
local canTake = false
local meltTime
local meltedItem = {}


CreateThread(function()
    if Config.UseTarget then
        for key, value in pairs(Config.PawnLocation) do
            exports['qb-target']:AddBoxZone('PawnShop'..key, value.coords, value.length, value.width, {
                name = 'PawnShop'..key,
                heading = value.heading,
                minZ = value.minZ,
                maxZ = value.maxZ,
                debugPoly = value.debugPoly,
            }, {
                options = {
                    {
                        type = 'client',
                        event = 'qb-pawnshop:client:openMenu',
                        icon = 'fas fa-ring',
                        label = 'Pawn Shop',
                    },
                },
                distance = value.distance
            })
        end
    else
        local zone = {}
        for key, value in pairs(Config.PawnLocation) do
            zone[#zone+1] = BoxZone:Create(value.coords, value.length, value.width, {
                name = 'PawnShop'..key,
                heading = value.heading,
                minZ = value.minZ,
                maxZ = value.maxZ,
            })
        end
        local pawnShopCombo = ComboZone:Create( zone, { name = 'NewPawnShopCombo', debugPoly = false })
        pawnShopCombo:onPlayerInOut(function(isPointInside)
            if isPointInside then
                exports['qb-menu']:showHeader({
                    {
                        header = Lang:t('info.title'),
                        txt = Lang:t('info.open_pawn'),
                        params = {
                            event = 'qb-pawnshop:client:openMenu'
                        }
                    }
                })
            else
                exports['qb-menu']:closeMenu()
            end
        end)
    end
end)

RegisterNetEvent('qb-pawnshop:client:openMenu', function()
    if Config.UseTimes then
        if GetClockHours() >= Config.TimeOpen and GetClockHours() <= Config.TimeClosed then
            local pawnShop = {
                {
                    header = Lang:t('info.title'),
                    isMenuHeader = true,
                },
                {
                    header = Lang:t('info.sell'),
                    txt = Lang:t('info.sell_pawn'),
                    params = {
                        event = 'qb-pawnshop:client:openPawn',
                        args = {
                            items = Config.PawnItems
                        }
                    }
                }
            }
            exports['qb-menu']:openMenu(pawnShop)
        else
            QBCore.Functions.Notify(Lang:t('info.pawn_closed', { value = Config.TimeOpen, value2 = Config.TimeClosed }))
        end
    else
        local pawnShop = {
            {
                header = Lang:t('info.title'),
                isMenuHeader = true,
            },
            {
                header = Lang:t('info.sell'),
                txt = Lang:t('info.sell_pawn'),
                params = {
                    event = 'qb-pawnshop:client:openPawn',
                    args = {
                        items = Config.PawnItems
                    }
                }
            }
        }
        exports['qb-menu']:openMenu(pawnShop)
    end
end)

RegisterNetEvent('qb-pawnshop:client:openPawn', function(data)
    QBCore.Functions.TriggerCallback('qb-pawnshop:server:getInv', function(inventory)
        local PlyInv = inventory
        local pawnMenu = {
            {
                header = Lang:t('info.title'),
                isMenuHeader = true,
            }
        }
        for _, v in pairs(PlyInv) do
            for i = 1, #data.items do
                if v.name == data.items[i].item then
                    pawnMenu[#pawnMenu + 1] = {
                        header = QBCore.Shared.Items[v.name].label,
                        txt = Lang:t('info.sell_items', { value = data.items[i].price }),
                        params = {
                            event = 'qb-pawnshop:client:pawnitems',
                            args = {
                                label = QBCore.Shared.Items[v.name].label,
                                price = data.items[i].price,
                                name = v.name,
                                amount = v.amount
                            }
                        }
                    }
                end
            end
        end
        pawnMenu[#pawnMenu + 1] = {
            header = Lang:t('info.back'),
            params = {
                event = 'qb-pawnshop:client:openMenu'
            }
        }
        exports['qb-menu']:openMenu(pawnMenu)
    end)
end)

RegisterNetEvent('qb-pawnshop:client:pawnitems', function(item)
    local sellingItem = exports['qb-input']:ShowInput({
        header = Lang:t('info.title'),
        submitText = Lang:t('info.sell'),
        inputs = {
            {
                type = 'number',
                isRequired = false,
                name = 'amount',
                text = Lang:t('info.max', { value = item.amount })
            }
        }
    })
    if sellingItem then
        if not sellingItem.amount then
            return
        end

        if tonumber(sellingItem.amount) > 0 then
            TriggerServerEvent('qb-pawnshop:server:sellPawnItems', item.name, sellingItem.amount, item.price)
        else
            QBCore.Functions.Notify(Lang:t('error.negative'), 'error')
        end
    end
end)

RegisterNetEvent('qb-pawnshop:client:resetPickup', function()
    canTake = false
end)
