local Core = exports[Config.CoreResourceName]:GetCoreObject()

--- Alerting the coppers
local copsAlerted = true
local function AlertCoppers(housePos)
    if not copsAlerted then
        local street1, street2 = GetStreetNameAtCoord(housePos.x, housePos.y, housePos.z, Citizen.ResultAsInteger(),
            Citizen.ResultAsInteger())
        local street1name = GetStreetNameFromHashKey(street1)
        local street2name = GetStreetNameFromHashKey(street2)
        local gender = Core.Functions.GetPlayerData().charinfo.gender == 1 and "Female" or "Male"

        ------- You can remove this export and add your own dispatch export/event -------
        exports['ps-dispatch']:HouseRobbery({
        message = "Possible B&E in progress",
        dispatchCode = "10-90",
        description = "Possible B&E in progress, "..gender.." ".."suspect",
        radius = 0,
        sprite = 40,
        color = 2,
        scale = 1.0,
        length = 3,
        })
        ------- You can remove this export and add your own dispatch export/event -------

        --copsAlerted = true
    end
end

--[[***************************************************************--]]
--[[**************************BOSSMAN MENU*************************--]]
--[[***************************************************************--]]

--- Return a random tier house only if Config.Reputation = false
local function RandomTier()
    if Chance(Config.T3_HouseChance) then
        return 3
    elseif Chance(Config.T2_HouseChance) then
        return 2
    end
    return 1
end

local function OpenMainMenu()
    local notEnoughCops = false
    Core.Functions.TriggerCallback('burglary:NotEnoughCopsOnline', function(enough)
        notEnoughCops = enough
        local copStatus = notEnoughCops and Config.Prompts["police1"] or Config.Prompts["bossman6"]
        if Config.Reputation then
            GetRepInfo(function(repData)
                local currentLevel = repData[1]
                local currentRep = repData[2]
                local nextRep = repData[3]
                local expInfo = string.format("EXP: %s/%s", currentRep, nextRep)
                local mainMenu = {
                    {
                        header = Config.Prompts["level5"] .. " " .. currentLevel,
                        txt = expInfo,
                        isMenuHeader = true,
                    },
                    {
                        header = Config.Prompts["group6"],
                        txt = Config.Prompts["group7"],
                        params = {
                            event = "burglary:client:OpenGroupMenu",
                        },
                    },
                    {
                        header = Config.Prompts["requestjob1"],
                        txt = Config.Prompts["bossman3"],
                        params = {
                            event = "burglary:client:OpenJobMenu",
                        },
                    },
                    {
                        header = Config.Prompts["bossman5"],
                        txt = Config.Prompts["bossman4"],
                        params = {
                            isServer = true,
                            event = "burglary:server:CancelRobbery",
                            args = InGroup and Groups[CurrentGroup].members or nil,
                        },
                    },
                }

                exports[Config.MenuResourceName]:openMenu(mainMenu)
            end)
        else
            local mainMenu = {
                {
                    header = Config.Prompts["group6"],
                    txt = Config.Prompts["group7"],
                    params = {
                        event = "burglary:client:OpenGroupMenu",
                    },
                },
                {
                    header = Config.Prompts["requestjob1"],
                    txt = copStatus,
                    disabled = notEnoughCops,
                    params = {
                        event = "burglary:client:StartRobbery",
                        args = RandomTier(),
                    },
                },
                {
                    header = Config.Prompts["bossman5"],
                    txt = Config.Prompts["bossman4"],
                    params = {
                        isServer = true,
                        event = "burglary:server:CancelRobbery",
                        args = InGroup and Groups[CurrentGroup].members or nil,
                    },
                },
            }
            exports[Config.MenuResourceName]:openMenu(mainMenu)
        end
    end)
end

RegisterNetEvent("burglary:client:OpenMainMenu", function()
    OpenMainMenu()
end)

local function OpenGroupMenu()
    local groupMenu = {
        {
            header = Config.Prompts["group6"],
            isMenuHeader = true
        }
    }
    for id, group in pairs(Groups) do
        if group and group.members then
            for _, member in ipairs(group.members) do
                if member and member.leader then
                    local leaderName = member.name
                    local header = string.format("%s%d - %s", Config.Prompts["group13"], #groupMenu, leaderName)
                    groupMenu[#groupMenu + 1] = {
                        header = header,
                        txt = "ID: " .. id,
                        params = {
                            event = "burglary:client:OpenMemberMenu",
                            args = id
                        }
                    }
                end
            end
        end
    end
    if not InGroup then
        groupMenu[#groupMenu + 1] = {
            header = Config.Prompts["group8"],
            txt = "",
            params = {
                event = "burglary:client:CreateGroup"
            }
        }
    else
        groupMenu[#groupMenu + 1] = {
            header = Config.Prompts["group9"],
            txt = "",
            params = {
                event = "burglary:client:DisbandGroup"
            }
        }
    end
    groupMenu[#groupMenu + 1] = {
        header = Config.Prompts["back"],
        txt = "",
        params = {
            event = "burglary:client:OpenMainMenu"
        }
    }
    exports[Config.MenuResourceName]:openMenu(groupMenu)
end

RegisterNetEvent("burglary:client:OpenGroupMenu", function()
    OpenGroupMenu()
end)

local function OpenMembersMenu(groupId)
    local memberMenu = {
        {
            header = Config.Prompts["group12"],
            isMenuHeader = true
        }
    }
    if Groups and Groups[groupId] and Groups[groupId].members then
        for _, member in ipairs(Groups[groupId].members) do
            local memberName = member.name
            if memberName then
                memberMenu[#memberMenu + 1] = {
                    header = "#" .. #memberMenu .. " " .. memberName,
                    isMenuHeader = false
                }
            end
        end
    end
    memberMenu[#memberMenu + 1] = {
        header = Config.Prompts["group10"],
        txt = "",
        params = {
            event = "burglary:client:JoinGroup",
            args = groupId
        }
    }
    memberMenu[#memberMenu + 1] = {
        header = Config.Prompts["group11"],
        txt = "",
        params = {
            event = "burglary:client:LeaveGroup",
            args = groupId
        }
    }
    memberMenu[#memberMenu + 1] = {
        header = Config.Prompts["back"],
        txt = "",
        params = {
            event = "burglary:client:OpenGroupMenu"
        }
    }
    exports[Config.MenuResourceName]:openMenu(memberMenu)
end

RegisterNetEvent("burglary:client:OpenMemberMenu", function(groupId)
    OpenMembersMenu(groupId)
end)

local function OpenJobMenu()
    local notEnoughCops = false
    Core.Functions.TriggerCallback('burglary:NotEnoughCopsOnline', function(enough)
        notEnoughCops = enough
        GetRepInfo(function(repData)
            local currentLevel = repData[1]
            local copStatus = notEnoughCops and Config.Prompts["police1"]
            local lvl1Status = currentLevel < Config.T1_RequiredLvl and Config.Prompts["level1"] or
                Config.Prompts["level2"]
            local lvl2Status = currentLevel < Config.T2_RequiredLvl and Config.Prompts["level1"] or
                Config.Prompts["level3"]
            local lvl3Status = currentLevel < Config.T3_RequiredLvl and Config.Prompts["level1"] or
                Config.Prompts["level4"]
            local jobMenu = {
                {
                    header = "Jobs available",
                    txt = "Request a job",
                    isMenuHeader = true
                }, {
                header = "Tier #1",
                txt = copStatus or lvl1Status,
                disabled = currentLevel < Config.T1_RequiredLvl and true or notEnoughCops,
                params = {
                    event = "burglary:client:StartRobbery",
                    args = 1,
                }
            }, {
                header = "Tier #2",
                txt = copStatus or lvl2Status,
                disabled = currentLevel < Config.T2_RequiredLvl and true or notEnoughCops,
                params = {
                    event = "burglary:client:StartRobbery",
                    args = 2,
                }
            }, {
                header = "Tier #3",
                txt = copStatus or lvl3Status,
                disabled = currentLevel < Config.T3_RequiredLvl and true or notEnoughCops,
                params = {
                    event = "burglary:client:StartRobbery",
                    args = 3,
                }
            }, {
                header = Config.Prompts["back"],
                params = {
                    event = "burglary:client:OpenMainMenu",
                }
            },
            }
            exports[Config.MenuResourceName]:openMenu(jobMenu)
        end)
    end)
end

RegisterNetEvent("burglary:client:OpenJobMenu", function()
    OpenJobMenu()
end)

--[[***************************************************************--]]
--[[**************************BOSSMAN PED**************************--]]
--[[***************************************************************--]]
local bossEntity = nil

--- Remove the item required to speak to the bossman
local function RemoveRequiredItem()
    if Config.RemoveRequiredItem then
        local item = Config.RequiredItem
        TriggerServerEvent("burglary:server:RemoveRequired", item)
    end
end

--- Add target to bossman ped
--- @param remove boolean
local function TargetBoss(remove)
    if not remove then
        while not DoesEntityExist(bossEntity) do
            Wait(100)
        end
        exports[Config.TargetResourceName]:AddEntityZone("bossEntityBurglary", bossEntity, {
            name = "bossEntityBurglary",
            heading = GetEntityHeading(bossEntity),
            debugPoly = false,
        }, {
            options = {
                {
                    icon = "fas fa-house",
                    label = Config.Prompts["bossman1"],
                    action = function()
                        if Config.RequireItem then
                            if not PlyHasItem(Config.RequiredItem, 1) then
                                QbNotify(Config.Prompts["bossman2"], "error")
                                return
                            end
                        end
                        RemoveRequiredItem()
                        OpenMainMenu()
                    end,
                },
            },
            distance = 1.5
        })
    else
        RemoveTarget("bossEntityBurglary")
        --exports[Config.TargetResourceName]:RemoveZone("bossEntityBurglary")
    end
end

--- Create the bossman ped
local function SpawnBoss()
    if bossEntity == nil then
        Core.Functions.TriggerCallback("burglary:GetBossmanID", function(currentBossID) -- Get the random ped spawn ID from the server
            local boss = Config.Bossman[currentBossID]
            local model = boss["model"]
            local scenario = boss["scenario"]
            local pos = boss["location"]
            
            RequestModel(model)
            while not HasModelLoaded(model) do
                Wait(0)
            end
    
            bossEntity = CreatePed(0, model, pos.x, pos.y, pos.z, pos.w, false, false)
            FreezeEntityPosition(bossEntity, true)
            SetEntityInvincible(bossEntity, true)
            SetBlockingOfNonTemporaryEvents(bossEntity, true)
            if scenario then TaskStartScenarioInPlace(bossEntity, scenario, 0, false) end
        end)
    end
end

--- Call SpawnBoss() when the resource starts
AddEventHandler("onResourceStart", function(name)
    if name == GetCurrentResourceName() then
        SpawnBoss()
        Wait(200)
        TargetBoss(false)
    end
end)

--- Call SpawnBoss() when the player loads
RegisterNetEvent(Config.CoreObjectName .. ":" .. "Client:OnPlayerLoaded", function()
    SpawnBoss()
    Wait(200)
    TargetBoss(false)
end)

--- Yeet the bossman ped
local function DeleteBoss()
    if bossEntity ~= nil then
        DeletePed(bossEntity)
        bossEntity = nil
    end
end

--- Call DeleteBoss() when the resource stops
AddEventHandler("onResourceStop", function(name)
    if name == GetCurrentResourceName() then
        TargetBoss(true)
        DeleteBoss()
    end
end)

--- Call DeleteBoss() when the player leaves
RegisterNetEvent(Config.CoreObjectName .. ":" .. "Client:OnPlayerUnload", function()
    TargetBoss(true)
    DeleteBoss()
end)

--[[***************************************************************--]]
--[[**********************SELL GOODS PED/JOB***********************--]]
--[[***************************************************************--]]

local buyerEntity = nil
local sellingGoods = false
local sellBlip = nil

local function CreateSellBlip(x, y, z)
    sellBlip = AddBlipForCoord(x, y, z)
    SetBlipSprite(sellBlip, 683)
    SetBlipDisplay(sellBlip, 4)
    SetBlipScale(sellBlip, 1.05)
    SetBlipColour(sellBlip, 2)
    SetBlipRoute(sellBlip, true)
    SetBlipRouteColour(sellBlip, 2)
    SetBlipAsShortRange(sellBlip, true)
    AddTextComponentString(Config.Prompts["sell1"])
    EndTextCommandSetBlipName(sellBlip)
end

--- Add target to buying goods ped
--- @param remove boolean
function TargetBuyer(remove)
    if not remove then
        while not DoesEntityExist(buyerEntity) do
            Wait(100)
        end
        exports[Config.TargetResourceName]:AddEntityZone("buyerEntity", buyerEntity, {
            name = "buyerEntity",
            heading = GetEntityHeading(buyerEntity),
            debugPoly = false,
        }, {
            options = {
                {
                    icon = "fa fa-dollar",
                    label = Config.Prompts["sell1"],
                    action = function()
                        TriggerEvent('burglary:client:RemovePed')
                        LoadAnimDict("mp_ped_interaction")
                        TaskPlayAnim(buyerEntity, "mp_ped_interaction", "handshake_guy_b", 1.0, 1.0, -1, 1 | 32 | 47, 0.0,
                            0, 0, 0)
                        Core.Functions.Progressbar("selling", "Evaluating", 5000, false, true, {
                            disableMovement = true,
                            disableCarMovement = true,
                            disableMouse = false,
                            disableCombat = true,
                        }, {
                            animDict = "mp_ped_interaction",
                            anim = "handshake_guy_b",
                            flags = 16,
                        }, {}, {}, function() -- Done
                            TriggerServerEvent("burglary:server:SellGoods", buyerEntity)
                            ClearPedTasks(PlayerPedId())
                            ClearPedTasks(buyerEntity)
                        end, function() -- Cancel
                            ClearPedTasks(PlayerPedId())
                            ClearPedTasks(buyerEntity)
                        end)
                    end,
                },
            },
            distance = 0.85
        })
    else
        RemoveTarget("buyerEntity")
        --exports[Config.TargetResourceName]:RemoveZone("buyerEntity")
    end
end

local function DeleteBuyer()
    if buyerEntity ~= nil then
        for i = 255, 0, -51 do
            Wait(50)
            SetEntityAlpha(buyerEntity, i, false)
        end
        DeletePed(buyerEntity)
        buyerEntity = nil
        TargetBuyer(true)
    end
end

--- Spawn sell ped when close, despawn when not -- Only if Config.StaticBuyer = false
local function SpawnBuyerForJob(id)
    local pedSpawn = Config.Buyers[id]["spawn"]
    local pedModel = Config.Buyers[id]["model"]
    local pedDistance = Config.Buyers[id]["distance"]

    CreateThread(function()
        while sellingGoods do
            local plyPos = GetEntityCoords(PlayerPedId())
    
            if #(plyPos - pedSpawn) < pedDistance then
                if buyerEntity == nil then
                    RequestModel(pedModel)
                    while not HasModelLoaded(pedModel) do
                        Wait(0)
                    end
    
                    buyerEntity = CreatePed(0, pedModel, pedSpawn.x, pedSpawn.y, pedSpawn.z, Config.Buyers[id].heading, true, false)
    
                    SetEntityAlpha(buyerEntity, 0, false)
                    for i = 0, 255, 51 do
                        Wait(50)
                        SetEntityAlpha(buyerEntity, i, false)
                    end
    
                    FreezeEntityPosition(buyerEntity, true)
                    SetEntityInvincible(buyerEntity, true)
                    SetBlockingOfNonTemporaryEvents(buyerEntity, true)
    
                    TargetBuyer(false)
                    RemoveBlip(sellBlip)
                end
            else
                DeleteBuyer()
            end
    
            Wait(1000)
        end
    end)
end

--- Set the sell ped as busy to prevent overlapping
RegisterNetEvent("burglary:client:SetSellBusyState", function(id, state)
    Config.Buyers[id]["busy"] = state
end)

--- This event will be called if the player has no items to sell
RegisterNetEvent("burglary:client:NoItemsToSell", function()
    LoadAnimDict("anim@mp_player_intcelebrationmale@slow_clap")
    TaskPlayAnim(buyerEntity, "anim@mp_player_intcelebrationmale@slow_clap", "slow_clap", 1.0, 1.0, -1, 1 | 32 | 47, 0.0,
        0, 0, 0)
    QbNotify(Config.Prompts["sell2"], "error")
end)

--[[***************************************************************--]]
--[[*********************SELL GOODS PED STATIC*********************--]]
--[[***************************************************************--]]

--- Create the bossman ped
local function SpawnBuyer()
    if buyerEntity == nil then
        Core.Functions.TriggerCallback("burglary:GetBuyerID", function(currentBuyerID) -- Get the random ped spawn ID from the server
            local buyer = Config.Buyers[currentBuyerID]
            local model = buyer["model"]
            local pos = buyer["spawn"]
            local heading = buyer["heading"]
            
            RequestModel(model)
            while not HasModelLoaded(model) do
                Wait(0)
            end
    
            buyerEntity = CreatePed(0, model, pos.x, pos.y, pos.z, heading, false, false)
            FreezeEntityPosition(buyerEntity, true)
            SetEntityInvincible(buyerEntity, true)
            SetBlockingOfNonTemporaryEvents(buyerEntity, true)
        end)
    end
end

--- Call SpawnBoss() when the resource starts
AddEventHandler("onResourceStart", function(name)
    if name == GetCurrentResourceName() then
        SpawnBuyer()
        Wait(200)
        TargetBuyer(false)
    end
end)

--- Call SpawnBoss() when the player loads
RegisterNetEvent(Config.CoreObjectName .. ":" .. "Client:OnPlayerLoaded", function()
    SpawnBuyer()
    Wait(200)
    TargetBuyer(false)
end)

--- Yeet the bossman ped
local function DeleteBuyer()
    if buyerEntity ~= nil then
        DeletePed(buyerEntity)
        buyerEntity = nil
    end
end

--- Call DeleteBoss() when the resource stops
AddEventHandler("onResourceStop", function(name)
    if name == GetCurrentResourceName() then
        TargetBuyer(true)
        DeleteBuyer()
        TriggerEvent('burglary:client:RemovePed')
    end
end)

--- Call DeleteBoss() when the player leaves
RegisterNetEvent(Config.CoreObjectName .. ":" .. "Client:OnPlayerUnload", function()
    TargetBuyer(true)
    DeleteBuyer()
    TriggerEvent('burglary:client:RemovePed')
end)

--[[***************************************************************--]]
--[[****************************BREAK IN***************************--]]
--[[***************************************************************--]]

local function RemoveLockpick()
    if Config.RemoveLockpick then
        local item = exports[GetCurrentResourceName()]:GetBreakIn()
        TriggerServerEvent("burglary:server:RemoveBreakIn", item)
    end
end

local function LockpickFinish(success)
    if success then
        exports[GetCurrentResourceName()]:TpToInterior() -- We're teleporting to the interior
        exports[GetCurrentResourceName()]:SetupRobbery() -- Setting up interior
        TriggerServerEvent("burglary:server:ResetGroupZone", InGroup and Groups[CurrentGroup].members or nil) -- Resetting the house door zone
    else
        RemoveLockpick()
    end
    ClearPedTasks(PlayerPedId())
end

local SucceededAttempts = 0
local NeededAttempts = 4

local lockpickAnim = "low_force_entry_ds"
local lockpickAnimDic = "veh@break_in@0h@p_m_one@"

--- Breaking into the house
--  Config.DoorSkillcheck = "square"
RegisterNetEvent("lockpicks:UseLockpickSquare", function()
    local house = exports[GetCurrentResourceName()]:GetTier()
    local currentId = exports[GetCurrentResourceName()]:GetCurrentHouse()
    if house == nil then
        return
    end

    local hours = GetClockHours()
    if hours >= Config.MinTime and hours < Config.MaxTime then
        QbNotify(Config.Prompts["time"], "error")
        return
    end

    if not house[currentId]["unlocked"] then
        LoadAnimDict(lockpickAnimDic)
        TaskPlayAnim(PlayerPedId(), lockpickAnimDic, lockpickAnim, 1.0, 1.0, -1, 1 | 16 | 32, 0.0, 0, 0, 0)
        local Skillbar = exports["qb-skillbar"]:GetSkillbarObject()
        Skillbar.Start({
            duration = math.random(7500, 15000),
            pos = math.random(10, 30),
            width = math.random(10, 20),
        }, function()
            if SucceededAttempts + 1 >= NeededAttempts then
                SucceededAttempts = 0
                exports[GetCurrentResourceName()]:TpToInterior() -- Teleporting to the interior
                exports[GetCurrentResourceName()]:SetupRobbery() -- Setting up the interior
                TriggerServerEvent("burglary:server:ResetGroupZone", InGroup and Groups[CurrentGroup].members or nil) -- Resetting the house door zone
                QbNotify(Config.Prompts["breakin2"], "primary")
            else
                Skillbar.Repeat({
                    duration = math.random(700, 1250),
                    pos = math.random(10, 40),
                    width = math.random(10, 13),
                })
                SucceededAttempts = SucceededAttempts + 1
            end
        end, function()
            ClearPedTasks(PlayerPedId())
        end)
    else
        QbNotify(Config.Prompts["breakin3"], "error")
    end
end)

--- Breaking into the house
--  Config.DoorSkillcheck = "circle"
RegisterNetEvent("lockpicks:UseLockpickCircle", function()
    local house = exports[GetCurrentResourceName()]:GetTier()
    local currentId = exports[GetCurrentResourceName()]:GetCurrentHouse()
    if house == nil then
        return
    end

    local hours = GetClockHours()
    if hours >= Config.MinTime and hours < Config.MaxTime then
        QbNotify(Config.Prompts["time"], "error")
        return
    end

    local difficulty = exports[GetCurrentResourceName()]:GetDifficulty()

    if not house[currentId]["unlocked"] then
        LoadAnimDict(lockpickAnimDic)
        TaskPlayAnim(PlayerPedId(), lockpickAnimDic, lockpickAnim, 1.0, 1.0, -1, 1 | 16 | 32, 0.0, 0, 0, 0)
        local time = math.random(difficulty["speed"][1], difficulty["speed"][2])
        local circles = math.random(difficulty["circles"][1], difficulty["circles"][2])
        local success = exports[Config.LockResourceName]:StartLockPickCircle(circles, time, success)
        if success then
            exports[GetCurrentResourceName()]:TpToInterior() -- We're teleporting to the interior
            exports[GetCurrentResourceName()]:SetupRobbery() -- Setting up interior
            TriggerServerEvent("burglary:server:ResetGroupZone", InGroup and Groups[CurrentGroup].members or nil) -- Resetting the house door zone
            QbNotify(Config.Prompts["breakin2"], "primary")
        else
            RemoveLockpick()
        end
    else
        QbNotify(Config.Prompts["breakin3"], "error")
    end
end)

--- Breaking into the house
--  Config.DoorSkillcheck = "ps-circle"
RegisterNetEvent("lockpicks:UseLockpickCirclePS", function()
    local house = exports[GetCurrentResourceName()]:GetTier()
    local currentId = exports[GetCurrentResourceName()]:GetCurrentHouse()
    if house == nil then
        return
    end

    local hours = GetClockHours()
    if hours >= Config.MinTime and hours < Config.MaxTime then
        QbNotify(Config.Prompts["time"], "error")
        return
    end

    local difficulty = exports[GetCurrentResourceName()]:GetDifficulty()

    if not house[currentId]["unlocked"] then
        LoadAnimDict(lockpickAnimDic)
        TaskPlayAnim(PlayerPedId(), lockpickAnimDic, lockpickAnim, 1.0, 1.0, -1, 1 | 16 | 32, 0.0, 0, 0, 0)
        local time = math.random(difficulty["speed"][1], difficulty["speed"][2])
        local circles = math.random(difficulty["circles"][1], difficulty["circles"][2])
        exports[Config.PsUiResourceName]:Circle(function(success)
            if success then
                exports[GetCurrentResourceName()]:TpToInterior() -- We're teleporting to the interior
                exports[GetCurrentResourceName()]:SetupRobbery() -- Setting up interior
                TriggerServerEvent("burglary:server:ResetGroupZone", InGroup and Groups[CurrentGroup].members or nil) -- Resetting the house door zone
                QbNotify(Config.Prompts["breakin2"], "primary")
            else
                RemoveLockpick()
            end
            ClearPedTasks(PlayerPedId())
        end, circles, time) -- NumberOfCircles, MS
    else
        QbNotify(Config.Prompts["breakin3"], "error")
    end
end)

--- Breaking into the house
--  Config.DoorSkillcheck = "default"
RegisterNetEvent("lockpicks:UseLockpickDefault", function()
    local house = exports[GetCurrentResourceName()]:GetTier()
    local currentId = exports[GetCurrentResourceName()]:GetCurrentHouse()
    if house == nil then
        return
    end

    local hours = GetClockHours()
    if hours >= Config.MinTime and hours < Config.MaxTime then
        QbNotify(Config.Prompts["time"], "error")
        return
    end

    if not house[currentId]["unlocked"] then
        LoadAnimDict(lockpickAnimDic)
        TaskPlayAnim(PlayerPedId(), lockpickAnimDic, lockpickAnim, 1.0, 1.0, -1, 1 | 16 | 32, 0.0, 0, 0, 0)
        TriggerEvent(Config.LockpickResourceName .. ":client:openLockpick", LockpickFinish)
    else
        QbNotify(Config.Prompts["breakin3"], "error")
    end
end)

--[[***************************************************************--]]
--[[************************SECURITY PANEL*************************--]]
--[[***************************************************************--]]

--local tooMuchNoise = false
local manuallyDisabled = false
local beeps = 0 -- Current beep count

--- Security panel thread
--  beeps - after x amount of beeps the security system will auto disable and alert the cops
function StartSecurityPanel(id, spawnId)
    local house = exports[GetCurrentResourceName()]:GetTier()
    local houseInterior = exports[GetCurrentResourceName()]:GetInterior()
    if house ~= nil and houseInterior ~= nil then
        local currentId = exports[GetCurrentResourceName()]:GetCurrentHouse()
        local housePos = house[currentId]["location"]
        local interiorId = house[currentId]["interior"]
        local maxBeeps = houseInterior[interiorId]["security"][id]["beeps"]
        local secPos = houseInterior[interiorId]["security"][id]["spawn"][spawnId]
        CreateThread(function()
            while beeps <= maxBeeps do
                Wait(1000)
                local disabled = houseInterior[interiorId]["security"][id]["disabled"]
                if not disabled --[[and tooMuchNoise]] then
                    TriggerServerEvent("burglary:server:PlayBeepSound", false, true, secPos,
                        InGroup and Groups[CurrentGroup].members or nil)
                    beeps = beeps + 1
                    -- Auto disable
                    if beeps == maxBeeps then
                        beeps = 0
                        manuallyDisabled = false
                        TriggerServerEvent("burglary:server:PlayBeepSound", false, false, secPos,
                            InGroup and Groups[CurrentGroup].members or nil)
                        TriggerServerEvent("burglary:server:SetSecurityState", true, id, interiorId,
                            InGroup and Groups[CurrentGroup].members or nil)
                        AlertCoppers(housePos)
                        break
                    end
                    -- Manual disable
                    if manuallyDisabled then
                        TriggerServerEvent("burglary:server:PlayBeepSound", true, false, secPos,
                            InGroup and Groups[CurrentGroup].members or nil)
                        TriggerServerEvent("burglary:server:SetSecurityState", true, id, interiorId,
                            InGroup and Groups[CurrentGroup].members or nil)
                        beeps = 0
                        manuallyDisabled = false
                        break
                    end
                end
            end
        end)
    end
end

local hackAnimDic = "anim@heists@keypad@"
local hackAnim = "idle_a"

--- Disabling the security panel
--  Config.SecuritySkillcheck = "sqaure"
RegisterNetEvent("lockpicks:HackSecuritySquare", function(id, spawnId)
    local house = exports[GetCurrentResourceName()]:GetTier()
    local houseInterior = exports[GetCurrentResourceName()]:GetInterior()
    if house == nil or houseInterior == nil then
        return
    end

    local currentId = exports[GetCurrentResourceName()]:GetCurrentHouse()
    local housePos = house[currentId]["location"]
    local interiorId = house[currentId]["interior"]
    local disabled = houseInterior[interiorId]["security"][id]["disabled"]
    local secPos = houseInterior[interiorId]["security"][id]["spawn"][spawnId]

    if not disabled then
        local heading = houseInterior[interiorId]["security"][id]["rotation"][spawnId].z
        SetEntityHeading(PlayerPedId(), heading)
        LoadAnimDict(hackAnimDic)
        TaskPlayAnim(PlayerPedId(), hackAnimDic, hackAnim, 1.0, 1.0, -1, 1 | 16 | 32, 0.0, 0, 0, 0)
        local Skillbar = exports["qb-skillbar"]:GetSkillbarObject()
        Skillbar.Start({
            duration = math.random(7500, 15000),
            pos = math.random(10, 30),
            width = math.random(10, 20),
        }, function()
            if SucceededAttempts + 1 >= NeededAttempts then
                manuallyDisabled = true
                SucceededAttempts = 0
            else
                Skillbar.Repeat({
                    duration = math.random(700, 1250),
                    pos = math.random(10, 40),
                    width = math.random(10, 13),
                })
                SucceededAttempts = SucceededAttempts + 1
            end
        end, function()
            AlertCoppers(housePos)
            TriggerServerEvent("burglary:server:PlayBeepSound", false, false, secPos,
                InGroup and Groups[CurrentGroup].members or nil)
            copsAlerted = false
            ClearPedTasks(PlayerPedId())
        end)
    else
        TriggerServerEvent("burglary:server:PlayBeepSound", false, false, secPos,
            InGroup and Groups[CurrentGroup].members or nil)
        QbNotify(Config.Prompts["security2"], "error")
    end
end)

--- Disabling the security panel
--  Config.SecuritySkillcheck = "circle"
RegisterNetEvent("lockpicks:HackSecurityCircle", function(id, spawnId)
    local house = exports[GetCurrentResourceName()]:GetTier()
    local houseInterior = exports[GetCurrentResourceName()]:GetInterior()
    if house == nil or houseInterior == nil then
        return
    end

    local currentId = exports[GetCurrentResourceName()]:GetCurrentHouse()
    local housePos = house[currentId]["location"]
    local interiorId = house[currentId]["interior"]
    local disabled = houseInterior[interiorId]["security"][id]["disabled"]
    local secPos = houseInterior[interiorId]["security"][id]["spawn"][spawnId]

    local difficulty = exports[GetCurrentResourceName()]:GetDifficulty()

    if not disabled then
        local heading = houseInterior[interiorId]["security"][id]["rotation"][spawnId].z
        SetEntityHeading(PlayerPedId(), heading)
        LoadAnimDict(hackAnimDic)
        TaskPlayAnim(PlayerPedId(), hackAnimDic, hackAnim, 1.0, 1.0, -1, 1 | 32 | 47, 0.0, 0, 0, 0)
        local time = math.random(difficulty["speed"][1], difficulty["speed"][2])
        local circles = math.random(difficulty["circles"][1], difficulty["circles"][2])
        local success = exports[Config.LockResourceName]:StartLockPickCircle(circles, time, success)
        ClearPedTasks(PlayerPedId())
        if success then
            manuallyDisabled = true
        else
            AlertCoppers(housePos)
            TriggerServerEvent("burglary:server:PlayBeepSound", false, false, secPos,
                InGroup and Groups[CurrentGroup].members or nil)
            copsAlerted = false
        end
    else
        TriggerServerEvent("burglary:server:PlayBeepSound", false, false, secPos,
            InGroup and Groups[CurrentGroup].members or nil)
        QbNotify(Config.Prompts["security2"], "error")
    end
end)

--- Disabling the security panel
--  Config.SecuritySkillcheck = "ps-circle"
RegisterNetEvent("lockpicks:HackSecurityCirclePS", function(id, spawnId)
    local house = exports[GetCurrentResourceName()]:GetTier()
    local houseInterior = exports[GetCurrentResourceName()]:GetInterior()
    if house == nil or houseInterior == nil then
        return
    end

    local currentId = exports[GetCurrentResourceName()]:GetCurrentHouse()
    local housePos = house[currentId]["location"]
    local interiorId = house[currentId]["interior"]
    local disabled = houseInterior[interiorId]["security"][id]["disabled"]
    local secPos = houseInterior[interiorId]["security"][id]["spawn"][spawnId]

    local difficulty = exports[GetCurrentResourceName()]:GetDifficulty()

    if not disabled then
        local heading = houseInterior[interiorId]["security"][id]["rotation"][spawnId].z
        SetEntityHeading(PlayerPedId(), heading)
        LoadAnimDict(hackAnimDic)
        TaskPlayAnim(PlayerPedId(), hackAnimDic, hackAnim, 1.0, 1.0, -1, 1 | 32 | 47, 0.0, 0, 0, 0)
        local time = math.random(difficulty["speed"][1], difficulty["speed"][2])
        local circles = math.random(difficulty["circles"][1], difficulty["circles"][2])
        exports[Config.PsUiResourceName]:Circle(function(success)
            if success then
                manuallyDisabled = true
            else
                AlertCoppers(housePos)
                TriggerServerEvent("burglary:server:PlayBeepSound", false, false, secPos,
                    InGroup and Groups[CurrentGroup].members or nil)
                copsAlerted = false
            end
            ClearPedTasks(PlayerPedId())
        end, circles, time) -- NumberOfCircles, MS
    else
        TriggerServerEvent("burglary:server:PlayBeepSound", false, false, secPos,
            InGroup and Groups[CurrentGroup].members or nil)
        QbNotify(Config.Prompts["security2"], "error")
    end
end)

--- Disabling the security panel
--  Config.SecuritySkillcheck = "ps-scrambler"
RegisterNetEvent("lockpicks:HackSecurityScramblerPS", function(id, spawnId)
    local house = exports[GetCurrentResourceName()]:GetTier()
    local houseInterior = exports[GetCurrentResourceName()]:GetInterior()
    if house == nil or houseInterior == nil then
        return
    end

    local currentId = exports[GetCurrentResourceName()]:GetCurrentHouse()
    local housePos = house[currentId]["location"]
    local interiorId = house[currentId]["interior"]
    local disabled = houseInterior[interiorId]["security"][id]["disabled"]
    local secPos = houseInterior[interiorId]["security"][id]["spawn"][spawnId]

    local difficulty = exports[GetCurrentResourceName()]:GetDifficulty()

    if not disabled then
        local heading = houseInterior[interiorId]["security"][id]["rotation"][spawnId].z
        SetEntityHeading(PlayerPedId(), heading)
        LoadAnimDict(hackAnimDic)
        TaskPlayAnim(PlayerPedId(), hackAnimDic, hackAnim, 1.0, 1.0, -1, 1 | 32 | 47, 0.0, 0, 0, 0)
        local time = math.random(difficulty["speed"][1], difficulty["speed"][2])
        local types = { "alphabet", "numeric", "alphanumeric", "greek", "braille", "runes" }
        exports[Config.PsUiResourceName]:Scrambler(function(success)
            if success then
                manuallyDisabled = true
            else
                AlertCoppers(housePos)
                TriggerServerEvent("burglary:server:PlayBeepSound", false, false, secPos,
                    InGroup and Groups[CurrentGroup].members or nil)
                copsAlerted = false
            end
            ClearPedTasks(PlayerPedId())
        end, types[math.random(1, #types)], time * 2, 0) -- Type (alphabet, numeric, alphanumeric, greek, braille, runes), Time (Seconds), Mirrored (0: Normal, 1: Normal + Mirrored 2: Mirrored only )
    else
        TriggerServerEvent("burglary:server:PlayBeepSound", false, false, secPos,
            InGroup and Groups[CurrentGroup].members or nil)
        QbNotify(Config.Prompts["security2"], "error")
    end
end)

--- Play security system sound
local soundID = GetSoundId()
RegisterNetEvent("burglary:client:PlayBeepSound", function(success, tick, secPos)
    if success then
        PlaySoundFromCoord(soundID, "CONFIRM_BEEP", secPos.x, secPos.y, secPos.z, "HUD_MINI_GAME_SOUNDSET", false, 70, 0)
        Wait(250)
        PlaySoundFromCoord(soundID, "CONFIRM_BEEP", secPos.x, secPos.y, secPos.z, "HUD_MINI_GAME_SOUNDSET", false, 70, 0)
        Wait(250)
        PlaySoundFromCoord(soundID, "CONFIRM_BEEP", secPos.x, secPos.y, secPos.z, "HUD_MINI_GAME_SOUNDSET", false, 70, 0)
    elseif tick then
        PlaySoundFromCoord(soundID, "CONFIRM_BEEP", secPos.x, secPos.y, secPos.z, "HUD_MINI_GAME_SOUNDSET", false, 70, 0)
    else
        PlaySoundFromCoord(soundID, "Beep_Red", secPos.x, secPos.y, secPos.z, "DLC_HEIST_HACKING_SNAKE_SOUNDS", false, 70,
            0)
        Wait(250)
        PlaySoundFromCoord(soundID, "Beep_Red", secPos.x, secPos.y, secPos.z, "DLC_HEIST_HACKING_SNAKE_SOUNDS", false, 70,
            0)
    end
end)

--[[***************************************************************--]]
--[[**************************CRACK SAFE***************************--]]
--[[***************************************************************--]]

local crackAnimDic = "veh@break_in@0h@p_m_one@"
local crackAnim = "low_force_entry_ds"

--- Cracking safe
--  Config.SafeSkillcheck = "square"
RegisterNetEvent("lockpicks:LockpickSafeSquare", function(id)
    local house = exports[GetCurrentResourceName()]:GetTier()
    local houseInterior = exports[GetCurrentResourceName()]:GetInterior()
    if house == nil or houseInterior == nil then
        return
    end

    local currentId = exports[GetCurrentResourceName()]:GetCurrentHouse()
    local interiorId = house[currentId]["interior"]
    local searched = houseInterior[interiorId]["safe"][id]["disabled"]

    local searchAnim = houseInterior[interiorId]["safe"][id]["animation"]
    local searchAnimDict = houseInterior[interiorId]["safe"][id]["animDict"]

    if not searched then
        LoadAnimDict(searchAnimDict)
        TaskPlayAnim(PlayerPedId(), searchAnimDict, searchAnim, 1.0, 1.0, -1, 1, 0.0, 0, 0, 0)
        Wait(500)
        LoadAnimDict(crackAnimDic)
        TaskPlayAnim(PlayerPedId(), crackAnimDic, crackAnim, 1.0, 1.0, -1, 1 | 16 | 32, 0.0, 0, 0, 0)
        local Skillbar = exports["qb-skillbar"]:GetSkillbarObject()
        Skillbar.Start({
            duration = math.random(7500, 15000),
            pos = math.random(10, 30),
            width = math.random(10, 20),
        }, function()
            if SucceededAttempts + 1 >= NeededAttempts then
                SucceededAttempts = 0
                SafeReward(id, true)
            else
                Skillbar.Repeat({
                    duration = math.random(700, 1250),
                    pos = math.random(10, 40),
                    width = math.random(10, 13),
                })
                SucceededAttempts = SucceededAttempts + 1
            end
        end, function()
            ClearPedTasks(PlayerPedId())
        end)
    end
end)

--- Cracking safe
--  Config.SafeSkillcheck = "circle"
RegisterNetEvent("lockpicks:LockpickSafeCircle", function(id)
    local house = exports[GetCurrentResourceName()]:GetTier()
    local houseInterior = exports[GetCurrentResourceName()]:GetInterior()
    if house == nil or houseInterior == nil then
        return
    end

    local currentId = exports[GetCurrentResourceName()]:GetCurrentHouse()
    local interiorId = house[currentId]["interior"]
    local searched = houseInterior[interiorId]["safe"][id]["disabled"]

    local difficulty = exports[GetCurrentResourceName()]:GetDifficulty()

    local searchAnim = houseInterior[interiorId]["safe"][id]["animation"]
    local searchAnimDict = houseInterior[interiorId]["safe"][id]["animDict"]

    if not searched then
        LoadAnimDict(searchAnimDict)
        TaskPlayAnim(PlayerPedId(), searchAnimDict, searchAnim, 1.0, 1.0, -1, 1, 0.0, 0, 0, 0)
        Wait(500)
        LoadAnimDict(crackAnimDic)
        TaskPlayAnim(PlayerPedId(), crackAnimDic, crackAnim, 1.0, 1.0, -1, 1 | 32 | 47, 0.0, 0, 0, 0)
        local time = math.random(difficulty["speed"][1], difficulty["speed"][2])
        local circles = math.random(difficulty["circles"][1], difficulty["circles"][2])
        local success = exports[Config.LockResourceName]:StartLockPickCircle(circles, time, success)
        ClearPedTasks(PlayerPedId())
        if success then
            SafeReward(id, true)
        end
    end
end)

--- Cracking safe
--  Config.SafeSkillcheck = "ps-circle"
RegisterNetEvent("lockpicks:LockpickSafeCirclePS", function(id)
    local house = exports[GetCurrentResourceName()]:GetTier()
    local houseInterior = exports[GetCurrentResourceName()]:GetInterior()
    if house == nil or houseInterior == nil then
        return
    end

    local currentId = exports[GetCurrentResourceName()]:GetCurrentHouse()
    local interiorId = house[currentId]["interior"]
    local searched = houseInterior[interiorId]["safe"][id]["disabled"]

    local difficulty = exports[GetCurrentResourceName()]:GetDifficulty()

    local searchAnim = houseInterior[interiorId]["safe"][id]["animation"]
    local searchAnimDict = houseInterior[interiorId]["safe"][id]["animDict"]

    if not searched then
        LoadAnimDict(searchAnimDict)
        TaskPlayAnim(PlayerPedId(), searchAnimDict, searchAnim, 1.0, 1.0, -1, 1, 0.0, 0, 0, 0)
        Wait(500)
        LoadAnimDict(crackAnimDic)
        TaskPlayAnim(PlayerPedId(), crackAnimDic, crackAnim, 1.0, 1.0, -1, 1 | 32 | 47, 0.0, 0, 0, 0)
        local time = math.random(difficulty["speed"][1], difficulty["speed"][2])
        local circles = math.random(difficulty["circles"][1], difficulty["circles"][2])
        exports[Config.PsUiResourceName]:Circle(function(success)
            if success then
                SafeReward(id, true)
            end
            ClearPedTasks(PlayerPedId())
        end, circles, time) -- NumberOfCircles, MS
    end
end)

--[[***************************************************************--]]
--[[**************************GLOBAL FUNCS*************************--]]
--[[***************************************************************--]]

--- Temp item check, you can edit this if you're using another inventory
--- @param item string item name
--- @param amt integer amount of items
function PlyHasItem(item, amt)
    return Core.Functions.HasItem(item, amt)
end

--- Trigger the break in minigame
function BreakIn()
    local requiredItem = exports[GetCurrentResourceName()]:GetBreakIn()
    if not PlyHasItem(requiredItem, 1) then
        QbNotify(Config.Prompts["breakinitem"], "error")
        return
    end

    local skillCheck = string.lower(Config.DoorSkillcheck)
    if skillCheck == "circle" then
        TriggerEvent("lockpicks:UseLockpickCircle")
    elseif skillCheck == "ps-circle" then
        TriggerEvent("lockpicks:UseLockpickCirclePS")
    elseif skillCheck == "square" then
        TriggerEvent("lockpicks:UseLockpickSquare")
    elseif skillCheck == "lockpick" then
        TriggerEvent("lockpicks:UseLockpickDefault")
    end
end

--- Trigger the disable security minigame
function DisableSecurity(id, spawnId)
    local skillCheck = string.lower(Config.SecuritySkillcheck)
    if skillCheck == "circle" then
        TriggerEvent("lockpicks:HackSecurityCircle", id, spawnId)
    elseif skillCheck == "ps-circle" then
        TriggerEvent("lockpicks:HackSecurityCirclePS", id, spawnId)
    elseif skillCheck == "ps-scrambler" then
        TriggerEvent("lockpicks:HackSecurityScramblerPS", id, spawnId)
    elseif skillCheck == "square" then
        TriggerEvent("lockpicks:HackSecuritySquare", id, spawnId)
    end
end

--- Trigger the crack safe minigame
function CrackSafe(id)
    local skillCheck = string.lower(Config.SafeSkillcheck)
    if skillCheck == "circle" then
        TriggerEvent("lockpicks:LockpickSafeCircle", id)
    elseif skillCheck == "ps-circle" then
        TriggerEvent("lockpicks:LockpickSafeCirclePS", id)
    elseif skillCheck == "square" then
        TriggerEvent("lockpicks:LockpickSafeSquare", id)
    end
end

--- After completing the job send the player to a random location to sell
function StartBuyJob()
    if sellingGoods then return end
    if not Chance(Config.BuyersChance) then return end

    local busyAmount = 0
    for id, ped in ipairs(Config.Buyers) do
        if ped["busy"] then
            busyAmount = busyAmount + 1
        end
    end
    if busyAmount == #Config.Buyers then return end -- All sell peds busy

    local randyBuyerId = math.random(1, #Config.Buyers)
    if Config.Buyers[randyBuyerId]["busy"] then
        repeat
            randyBuyerId = math.random(1, #Config.Buyers)
        until (not Config.Buyers[randyBuyerId]["busy"])
    end

    sellingGoods = true

    TriggerServerEvent("burglary:server:SetSellBusyState", randyBuyerId, sellingGoods)

    if Config.QbPhoneMail then SendMail(Config.Prompts["sell3"], Config.Prompts["sell4"]) end
    if not Config.QbPhoneMail then QbNotify(Config.Prompts["sell5"], "primary") end

    RemoveBlip(sellBlip)
    CreateSellBlip(table.unpack(Config.Buyers[randyBuyerId]["spawn"]))
    SpawnBuyerForJob(randyBuyerId)

    SetTimeout(Config.BuyersTimeToSell * 1000, function()
        sellingGoods = false
        TriggerServerEvent("burglary:server:SetSellBusyState", randyBuyerId, sellingGoods)
        --TriggerEvent('burglary:client:RemovePed')
        RemoveBlip(sellBlip)
    end)
end

--- Create radius blip
function CreateBlip(x, y, z)
    local blip = AddBlipForRadius(x, y, z, 65.0)
    SetBlipAsShortRange(blip, true)
    SetBlipDisplay(blip, 2)
    SetBlipRotation(blip, 0)
    SetBlipColour(blip, 6)
    SetBlipAlpha(blip, 128)
    return blip
end

--- Is the player a coppa
function PoliceCheck(pData)
    for id, job in pairs(Config.Departments) do
        if job == pData.job.name then
            if pData.job.onduty then
                return true
            end
        end
    end
    return false
end

function LoadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(5)
    end
end

--[[***************************************************************--]]
--[[**************************BOSSMAN MAIL*************************--]]
--[[***************************************************************--]]

--- Send job offer via mail qb-phone
--- @param tier integer
function SendJobMail(tier)
    TriggerServerEvent("qs-smartphone:server:sendNewMail", {
        sender = "Bossman",
        subject = "T" .. tier .. " " .. "job offer",
        message = Config.Prompts["requested3"],
        button =
        {
            enabled = true,
            buttonEvent = "burglary:client:AcceptHouse",
            buttonData = tier
        }
    })
end

--- Send job info via mail qb-phone
--- @param message string
--- @param subject string
function SendMail(message, subject)
    TriggerServerEvent("qs-smartphone:server:sendNewMail", {
        sender = "Bossman",
        subject = subject,
        message = message,
        button = {}
    })
end

--- Handle notifications
--- @param message string
--- @param type string
function QbNotify(message, type)
    if Config.QbNotify then
        Core.Functions.Notify(message, type)
    else
        --- Add your own notify trigger here, you must set Config.QbNotify = false in config.lua
        --- Example: using okokNotify

        --local time = GetClockHours()
        --exports['okokNotify']:Alert("Bossman", message, time, type)
    end
end

--[[***************************************************************--]]
--[[*****************************TARGET****************************--]]
--[[*************************FOR CL_ESCROW*************************--]]
--[[***************************************************************--]]

--- Add qb-target entity zone from cl_escrow.lua, this function will handle every entity
function AddEntityTarget(targetId, entity, options)
    local pos = GetEntityCoords(entity)
    local heading = GetEntityHeading(entity)
    -- You can add support for your own target resource here
    exports[Config.TargetResourceName]:AddEntityZone(targetId, entity, {
        name = targetId,
        heading = heading,
        debugPoly = false,
        minZ = pos.z - 0.1,
		maxZ = pos.z + 0.1,
    }, {
        options = options,
        distance = 1.5
    })
end

--- Add qb-target box zone from cl_escrow.lua, this function will handle all box zones 
function AddBoxTarget(targetId, placement, minMaxZ, size, options)
    local pos = placement[1]
    local heading = placement[2]
    -- You can add support for your own target resource here
    exports[Config.TargetResourceName]:AddBoxZone(targetId, pos, size[1], size[2], {
        name = targetId,
        heading = heading,
        debugPoly = false,
        minZ = minMaxZ[1],
        maxZ = minMaxZ[2],
    }, {
        options = options,
        distance = 1.5
    })
end

--- Remove qb-target zone from cl_escrow.lua, this function will handle all zones 
function RemoveTarget(targetId)
    exports[Config.TargetResourceName]:RemoveZone(targetId)
end

--[[***************************************************************--]]
--[[****************************REWARDS****************************--]]
--[[***************************************************************--]]

--- Search location reward
--- @param id integer
function SearchReward(id)
    local house = exports[GetCurrentResourceName()]:GetTier()
    local houseInterior = exports[GetCurrentResourceName()]:GetInterior()
    if house == nil or houseInterior == nil then return end
    local tierId = GetTierId()
    local currentId = exports[GetCurrentResourceName()]:GetCurrentHouse()
    local interiorId = house[currentId]["interior"]
    TriggerServerEvent("burglary:server:SetSearchedState", true, id, interiorId,
        InGroup and Groups[CurrentGroup].members or nil)
    --exports[Config.TargetResourceName]:RemoveZone("T" .. tierId .. "_Search_" .. id)
    RemoveTarget("T" .. tierId .. "_Search_" .. id)
    if houseInterior[interiorId]["locations"][id]["searched"] then return end
    local searchAnim = houseInterior[interiorId]["locations"][id]["animation"]
    local searchAnimDict = houseInterior[interiorId]["locations"][id]["animDict"]
    local time = houseInterior[interiorId]["locations"][id]["time"] or 5000
    local displayName = houseInterior[interiorId]["locations"][id]["name"][1]
    Core.Functions.Progressbar("Searching", Config.Prompts["search2"] .. " " .. displayName, time, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = searchAnimDict,
        anim = searchAnim,
        flags = 16,
    }, {}, {}, function()
        TriggerServerEvent("burglary:server:SearchReward", tierId)
    end, function()
        ClearPedTasks(PlayerPedId())
    end)
end

--- Pickup location reward
--- @param id integer
function PickupReward(id, spawnId)
    local house = exports[GetCurrentResourceName()]:GetTier()
    local houseInterior = exports[GetCurrentResourceName()]:GetInterior()
    if house == nil or houseInterior == nil then return end
    local tierId = GetTierId()
    local currentId = exports[GetCurrentResourceName()]:GetCurrentHouse()
    local interiorId = house[currentId]["interior"]
    TriggerServerEvent("burglary:server:SetSearchedState", true, id, interiorId,
        InGroup and Groups[CurrentGroup].members or nil)
    --exports[Config.TargetResourceName]:RemoveZone("T" .. tierId .. "_Pickup_" .. id)
    RemoveTarget("T" .. tierId .. "_Pickup_" .. id)
    if houseInterior[interiorId]["locations"][id]["searched"] then return end
    local pickupAnim = houseInterior[interiorId]["locations"][id]["animation"]
    local pickupAnimDict = houseInterior[interiorId]["locations"][id]["animDict"]
    local created = houseInterior[interiorId]["locations"][id]["create"]
    local pickupName = houseInterior[interiorId]["locations"][id]["name"][1]
    local itemName = houseInterior[interiorId]["locations"][id]["name"][2]
    local time = houseInterior[interiorId]["locations"][id]["time"] or 5000
    local cash = string.find(string.lower(pickupName), "cash") and true or false
    Core.Functions.Progressbar("Pickup", Config.Prompts["pickup2"] .. " " .. pickupName, time, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = pickupAnimDict,
        anim = pickupAnim,
        flags = 16,
    }, {}, {}, function()
        TriggerServerEvent("burglary:server:PickupReward", itemName, tierId, cash)
        if created then
            RemoveProp("T" .. tierId .. "_Pickup_" .. id)
        else
            local model = houseInterior[interiorId]["locations"][id]["model"]
            local pos = houseInterior[interiorId]["locations"][id]["spawn"][spawnId]
            RemoveExistingProp(model, pos)
        end
    end, function()
        ClearPedTasks(PlayerPedId())
    end)
end

--- Safe location reward
--- @param id integer
--- @param cracked boolean
function SafeReward(id, cracked)
    local house = exports[GetCurrentResourceName()]:GetTier()
    local houseInterior = exports[GetCurrentResourceName()]:GetInterior()
    if house == nil or houseInterior == nil then return end
    local tierId = GetTierId()
    local currentId = exports[GetCurrentResourceName()]:GetCurrentHouse()
    local interiorId = house[currentId]["interior"]
    if houseInterior[interiorId]["safe"][id]["searched"] then return end
    local searchAnim = houseInterior[interiorId]["safe"][id]["animation"]
    local searchAnimDict = houseInterior[interiorId]["safe"][id]["animDict"]
    local displayName = houseInterior[interiorId]["safe"][id]["name"]
    local time = houseInterior[interiorId]["safe"][id]["time"] or 5000
    if houseInterior[interiorId]["key"][id]["name"][2] == nil then return end
    local keyItem = houseInterior[interiorId]["key"][id]["name"][2]
    Core.Functions.Progressbar("Searching", Config.Prompts["search2"] .. " " .. displayName, time, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = searchAnimDict,
        anim = searchAnim,
        flags = 0,
    }, {}, {}, function()
        if not cracked and not PlyHasItem(keyItem, 1) then
            QbNotify(Config.Prompts["safe3"], "primary")
            return
        end
        TriggerServerEvent("burglary:server:SetSafeSearchedState", true, id, interiorId,
            InGroup and Groups[CurrentGroup].members or nil)
        --exports[Config.TargetResourceName]:RemoveZone("T" .. tierId .. "_Safe_" .. id)
        RemoveTarget("T" .. tierId .. "_Safe_" .. id)
        TriggerServerEvent("burglary:server:SafeReward", keyItem, tierId, cracked)
    end, function()
        ClearPedTasks(PlayerPedId())
    end)
end

--- Pickup key reward
--- @param id integer
function PickupKey(id)
    local house = exports[GetCurrentResourceName()]:GetTier()
    local houseInterior = exports[GetCurrentResourceName()]:GetInterior()
    if house == nil or houseInterior == nil then return end
    local tierId = GetTierId()
    local currentId = exports[GetCurrentResourceName()]:GetCurrentHouse()
    local interiorId = house[currentId]["interior"]
    local pickupAnim = houseInterior[interiorId]["key"][id]["animation"]
    local pickupAnimDict = houseInterior[interiorId]["key"][id]["animDict"]
    local time = houseInterior[interiorId]["key"][id]["time"] or 5000
    local displayName = houseInterior[interiorId]["key"][id]["name"][1]
    local name = houseInterior[interiorId]["key"][id]["name"][2]
    Core.Functions.Progressbar("Pickup", Config.Prompts["pickup2"] .. " " .. displayName, time, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = pickupAnimDict,
        anim = pickupAnim,
        flags = 16,
    }, {}, {}, function()
        TriggerServerEvent("burglary:server:PickupKey", name, tierId)
        --exports[Config.TargetResourceName]:RemoveZone("T" .. tierId .. "_Key_" .. id)
        RemoveTarget("T" .. tierId .. "_Key_" .. id)
        RemoveKeyProp("T" .. tierId .. "_Key_" .. id)
    end, function()
        ClearPedTasks(PlayerPedId())
    end)
end

--[[***************************************************************--]]
--[[***************************STRING GEN**************************--]]
--[[***************************************************************--]]

local character_set = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ123456789"
local string_sub = string.sub
local math_random = math.random
local table_concat = table.concat
local character_set_amount = #character_set
local number_one = 1
local default_length = 7

--- Generate random string for the group ID
function GenerateKey()
    local random_string = {}

    for int = number_one, default_length do
        local random_number = math_random(number_one, character_set_amount)
        local character = string_sub(character_set, random_number, random_number)
        random_string[#random_string + number_one] = character
    end

    return table_concat(random_string)
end

---@param percent integer
---@return boolean
function Chance(percent)
    assert(percent >= 0 and percent <= 100)
    return percent >= math.random(1, 100)
end