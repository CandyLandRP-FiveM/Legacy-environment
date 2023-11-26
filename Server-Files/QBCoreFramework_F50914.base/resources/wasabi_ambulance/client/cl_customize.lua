-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
if not wsb then return print((Strings.no_wsb):format(GetCurrentResourceName())) end
ESX = nil
QBCore = nil
if wsb.framework == 'esx' then
	ESX = exports['es_extended']:getSharedObject() -- Custom esx object?
end
if wsb.framework == 'qb' then
	QBCore = exports['qb-core']:GetCoreObject()
end
----------------------------------------------------------------
-- Customize text ui, notifications, target and more with the --
-- "wasabi_bridge" dependency in the "customize" directory    --
-- "wasabi_bridge/customize/cl_customize.lua"                 --
----------------------------------------------------------------


RegisterNetEvent('wasabi_ambulance:resetStatus', function() -- Set your own custom hunger/thirst reset logic?
	if wsb.framework == 'esx' then
		TriggerEvent('esx_status:set', 'hunger', 1000000)
		TriggerEvent('esx_status:set', 'thirst', 1000000)
	elseif wsb.framework == 'qb' then
		TriggerServerEvent('QBCore:Server:SetMetaData', 'hunger', 100)
		TriggerServerEvent('QBCore:Server:SetMetaData', 'thirst', 100)
	end
	if Config.MythicHospital then
        TriggerEvent('mythic_hospital:client:RemoveBleed')
        TriggerEvent('mythic_hospital:client:ResetLimbs')
    end
end)

SetCarFuel = function(vehicle, value)
	if Config.FuelSystem == 'ox' then
		Entity(vehicle).state.fuel = value
	elseif Config.FuelSystem == 'legacy' then
		exports.LegacyFuel.SetFuel(vehicle, value)
	else
		SetVehicleFuelLevel(vehicle, value)
	end
end

SendDistressSignal = function() -- Edit distress signal to implement custom dispatch
	TriggerEvent('wasabi_bridge:notify', Strings.distress_sent_title, Strings.distress_sent_desc, 'success')
	local ped = cache.ped
	local myPos = GetEntityCoords(ped)
	if Config.phoneDistress == 'gks' then
		local GPS = 'GPS: ' .. myPos.x .. ', ' .. myPos.y
		ESX.TriggerServerCallback('gksphone:namenumber', function(Races)
			local name = Races[2].firstname .. ' ' .. Races[2].lastname
			TriggerServerEvent('gksphone:gkcs:jbmessage', name, Races[1].phone_number, 'Emergency aid notification', '', GPS, '["ambulance"]', false)
		end)
    elseif Config.phoneDistress == 'qs' then
		TriggerServerEvent('qs-smartphone:server:sendJobAlert', {
			message = 'Injured person',
			location = vector3(myPos.x, myPos.y, myPos.z)
		}, Config.ambulanceJob)

		TriggerServerEvent('qs-smartphone:server:AddNotifies', {
			head = "Injured person",
			msg = 'Injured person',
			app = 'business'
		})
    elseif Config.phoneDistress == 'd-p' then
        TriggerEvent('d-phone:client:message:senddispatch', 'Unconscious person', Config.ambulanceJob)
        TriggerEvent('d-notification', 'Service Message sended', 5000,  'success')
	elseif Config.phoneDistress == 'lb' then
		exports["lb-phone"]:SendCompanyMessage(Config.ambulanceJob, 'Unconscious person')
		exports["lb-phone"]:SendCompanyCoords(Config.ambulanceJob)
	else
		TriggerServerEvent('wasabi_ambulance:onPlayerDistress') -- To add your own dispatch, comment this line out and add into here
	end
end

AddEventHandler('wasabi_ambulance:changeClothes', function(data) -- Change with your own code here if you want?
	local gender = wsb.getGender()
	if gender == 'm' then gender = 'male' elseif gender == 'f' then gender = 'female' end
	if not gender or gender == 0 then gender = 'male' elseif gender == 1 then gender = 'female' end
	if data == 'civ_wear' then
		LoadPreviousOutfit()
	elseif type(data) == 'table' then
		data = data[gender]
		SavePreviousOutfit()
		local convert
		local ids = {
			['t_shirt1'] = {component = 8, type = 'drawable'}, ['t_shirt2'] = {component = 8, type = 'texture'},
			['torso_1'] = {component = 11, type = 'drawable'}, ['torso_2'] = {component = 11, type = 'texture'},
			['arms'] = {component = 3, type = 'drawable'},
			['decals_1'] = {component = 10, type = 'drawable'}, ['decals_2'] = {component = 10, type = 'texture'},
			['pants_1'] = {component = 4, type = 'drawable'}, ['pants_2'] = {component = 4, type = 'texture'},
			['shoes_1'] = {component = 6, type = 'drawable'}, ['shoes_2'] = {component = 6, type = 'texture'},
			['mask_1'] = {component = 1, type = 'drawable'}, ['mask_2'] = {component = 1, type = 'texture'},
			['bproof_1'] = {component = 9, type = 'drawable'}, ['bproof_2'] = {component = 9, type = 'texture'},
			['chain_1'] = {component = 7, type = 'drawable'}, ['chain_2'] = {component = 7, type = 'texture'},
			['bags_1'] = {component = 5, type = 'drawable'}, ['bags_2'] = {component = 5, type = 'texture'},
		}
		for k,v in pairs(data) do
			if ids[k] then
				if not convert then convert = {} end
				if not convert[ids[k].component] then convert[ids[k].component] = {} end
				convert[ids[k].component][ids[k].type] = v
			end
		end
		if convert then
			for k,v in pairs(convert) do
				if v.drawable and v.texture then
					SetPedComponentVariation(cache.ped, k, v.drawable, v.texture, 2)
				else
					SetPedComponentVariation(cache.ped, k, v.drawable, 0, 2)
				end
			end
		end
	end
end)

-- Death screen related editables
function StartDeathTimer()
	if not Config.DisableDeathAnimation then
		SetGameplayCamRelativeHeading(-360)
	end
	local earlySpawnTimer = math.floor(Config.RespawnTimer / 1000)
	local bleedoutTimer = math.floor(Config.BleedoutTimer / 1000)
	CreateThread(function()
		while earlySpawnTimer > 0 and isDead do
			Wait(1000)
			if earlySpawnTimer > 0 then
				earlySpawnTimer = earlySpawnTimer - 1
			end
		end
		while bleedoutTimer > 0 and isDead do
			Wait(1000)

			if bleedoutTimer > 0 then
				bleedoutTimer = bleedoutTimer - 1
			end
		end
	end)
	CreateThread(function()
		local text, timeHeld
		while earlySpawnTimer > 0 and isDead do
			Wait(0)
			if not IsCheckedIn then
				text = (Strings.respawn_available_in):format(secondsToClock(earlySpawnTimer))
				DrawGenericTextThisFrame()
				BeginTextCommandDisplayText('STRING')
				AddTextComponentSubstringPlayerName(text)
				EndTextCommandDisplayText(Config.MessagePosition.respawn.x or 0.5, Config.MessagePosition.respawn.y or 0.8)
			else
				Wait(1000)
			end
		end
		while bleedoutTimer > 0 and isDead do
			Wait(0)
			if not IsCheckedIn then
				text = (Strings.respawn_bleedout_in):format(secondsToClock(bleedoutTimer)) .. Strings.respawn_bleedout_prompt
				if IsControlPressed(0, 38) and timeHeld > 60 then
					StartRPDeath()
					break
				end
				if IsControlPressed(0, 38) then
					timeHeld = timeHeld + 1
				else
					timeHeld = 0
				end
				DrawGenericTextThisFrame()
				BeginTextCommandDisplayText('STRING')
				AddTextComponentSubstringPlayerName(text)
				EndTextCommandDisplayText(Config.MessagePosition.bleedout.x or 0.5, Config.MessagePosition.bleedout.y or 0.8)
			else
				Wait(1000)
			end
		end
		if bleedoutTimer < 1 and isDead then
			StartRPDeath()
		end
	end)
end

function StartDistressSignal()
	CreateThread(function()
		local timer = Config.BleedoutTimer
		while timer > 0 and isDead do
			Wait(0)
			if not IsCheckedIn then
				timer = timer - 30
				SetTextFont(4)
				SetTextScale(0.5, 0.5)
				SetTextColour(255, 255, 255, 255)
				SetTextDropshadow(0, 0, 0, 0, 255)
				SetTextDropShadow()
				SetTextOutline()
				SetTextCentre(true)
				BeginTextCommandDisplayText('STRING')
				AddTextComponentSubstringPlayerName(Strings.distress_send)
				EndTextCommandDisplayText(Config.MessagePosition.distress.x or 0.175, Config.MessagePosition.distress.y or 0.805)
				if IsControlJustReleased(0, 47) then --Old 47
					SendDistressSignal()
					break
				end
			end
		end
	end)
end

function OnPlayerDeath(stagetwo)
	if not isDead or isDead ~= 'dead' then
		isDead = 'dead'
		TriggerServerEvent('wasabi_ambulance:setDeathStatus', 'dead', true)
		DrugIntake = {}
		if not stagetwo then
			StartDeathTimer()
			StartDistressSignal()
		end
		startDeathAnimation(false)
	else
		startDeathAnimation(true)
	end
	if Config.DeathScreenEffects then
		AnimpostfxPlay('DeathFailOut', 0, true)
	end
	if Config.CompleteDeath.enabled and wsb.framework == 'esx' then
		TriggerServerEvent('wasabi_ambulance:deathCount')
	end
end

-- Job menu edits?
function OpenJobMenu()
	if not wsb.hasGroup(Config.ambulanceJob) then return end
	if isPlayerDead() then return end
    if not wsb.isOnDuty() then return end
	Options = {
		{
			title = Strings.dispatch,
			description = Strings.dispatch_desc,
			icon = 'truck-medical',
			arrow = true,
			event = 'wasabi_ambulance:dispatchMenu',
			disabled = isPlayerDead() == true
		},
		{
			title = Strings.diagnose_patient,
			description = Strings.diagnose_patient_desc,
			icon = 'stethoscope',
			arrow = false,
			event = 'wasabi_ambulance:diagnosePatient',
			disabled = isPlayerDead() == true
		},
		{
			title = Strings.revive_patient,
			description = Strings.revive_patient_desc,
			icon = 'kit-medical',
			arrow = false,
			event = 'wasabi_ambulance:reviveTarget',
			disabled = isPlayerDead() == true
		},
		{
			title = Strings.heal_patient,
			description = Strings.heal_patient_desc,
			icon = 'bandage',
			arrow = false,
			event = 'wasabi_ambulance:healTarget',
			disabled = isPlayerDead() == true
		},
		{
			title = Strings.place_patient,
			description = Strings.place_patient_desc,
			icon = 'car',
			arrow = false,
			event = 'wasabi_ambulance:placeInVehicle',
			disabled = isPlayerDead() == true
		}
	}
	if Config.EnviPrescriptions.enabled then
		local _job, grade = wsb.hasGroup(Config.ambulanceJob)
		if grade and grade >= Config.EnviPrescriptions.minRank then
			Options[#Options+1] = {
				title = Strings.prescription_menu,
				description = Strings.prescription_menu_desc,
				icon = 'pills',
				arrow = true,
				event = 'envi-prescriptions:openPrescriptionsMenu',
				disabled = isPlayerDead() == true
			}
		end
	end
	Options[#Options+1] = {
		title = Strings.sedate_patient,
		description = Strings.sedate_patient_desc,
		icon = 'syringe',
		arrow = false,
		event = 'wasabi_ambulance:useSedative',
		disabled = isPlayerDead() == true
	}
	Options[#Options + 1] = {
		title = Strings.toggle_stretcher,
		description = Strings.toggle_stretcher_desc,
		icon = 'bed',
		arrow = false,
		event = 'wasabi_ambulance:toggleStretcher',
		disabled = isPlayerDead() == true
	}

	if Config?.wasabi_crutch?.crutchInJobMenu then
		Options[#Options + 1] = {
			title = Strings.menu_crutch,
			description = Strings.menu_crutch_desc,
			icon = 'crutch',
			arrow = false,
			event = 'wasabi_ambulance:crutchMenu',
			disabled = isPlayerDead() == true
		}

		Options[#Options + 1] = {
			title = Strings.menu_remove_crutch,
			description = Strings.menu_remove_crutch_desc,
			icon = 'crutch',
			arrow = false,
			event = 'wasabi_ambulance:crutchRemoveMenu',
			disabled = isPlayerDead() == true
		}
	end
	if Config?.wasabi_crutch?.chairInJobMenu then
		Options[#Options + 1] = {
			title = Strings.menu_chair,
			description = Strings.menu_chair_desc,
			icon = 'wheelchair',
			arrow = false,
			event = 'wasabi_ambulance:chairMenu',
			disabled = isPlayerDead() == true
		}

		Options[#Options + 1] = {
			title = Strings.menu_remove_chair,
			description = Strings.menu_remove_chair_desc,
			icon = 'wheelchair',
			arrow = false,
			event = 'wasabi_ambulance:chairRemoveMenu',
			disabled = isPlayerDead() == true
		}
	end

	if Config.billingSystem then
		Options[#Options + 1] = {
			title = Strings.bill_patient,
			description = Strings.bill_patient_desc,
			icon = 'file-invoice',
			arrow = false,
			event = 'wasabi_ambulance:billPatient',
			disabled = isPlayerDead() == true
		}
	end
	if Config.MobileMenu.enabled then
		OpenMobileMenu('ems_job_menu', Strings.JobMenuTitle, Options)
	else
		lib.registerContext({
			id = 'ems_job_menu',
			title = Strings.JobMenuTitle,
			options = Options
		})
		lib.showContext('ems_job_menu')
	end
end