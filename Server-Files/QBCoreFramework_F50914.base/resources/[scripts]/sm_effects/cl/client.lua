function getEffectCache()
    cache = {}

    cache.health = GetEntityHealth(PlayerPedId())
    cache.armor = GetPedArmour(PlayerPedId())
    cache.melee_mult = GetPlayerMeleeWeaponDamageModifier(PlayerId())
    cache.weap_mult = GetPlayerWeaponDamageModifier(PlayerId())
    cache.move_rate = 1.0 -- tick
    cache.movement_clipset = GetPedMovementClipset(PlayerPedId())

    return cache
end

freezeMovementRate = nil
freezeStamina = nil

Citizen.CreateThread(function()
    while true do
        if freezeMovementRate or freezeStamina then
            Wait(10)
            if freezeMovementRate then
                SetPedMoveRateOverride(PlayerPedId(), freezeMovementRate)
            end
            if freezeStamina then
                RestorePlayerStamina(PlayerPedId(), 1.0)
            end
        else
            Wait(1000)
        end
    end
end)

RegisterNetEvent('sm_effects:Client:useItem', function(item)
    Citizen.CreateThread(function()
        effectData = Config.itemTable[item]

        propData = effectData.gameEffects.takingProp or {}
    
        if lib.progressBar({
            duration = effectData.progressBarDuration,
            label = effectData.progressBarLabel,
            useWhileDead = false,
            canCancel = true,
            disable = {
                move = effectData.disableMovementForProgressBar,
                car = effectData.disableMovementForProgressBar,
                combat = effectData.disableMovementForProgressBar
            },
            anim = {
                dict = effectData.gameEffects.takingAnimation.dict,
                clip = effectData.gameEffects.takingAnimation.clip
            },
            prop = propData
        }) then
            TriggerServerEvent('sm_effects:Server:removeItem', item)
            effectCache = getEffectCache()
    
            if effectData.nuiEffects.imageOverlayLink ~= '' then
                SendNUIMessage({
                    action = 'enableImageOverlay',
        
                    imageOverlayLink = effectData.nuiEffects.imageOverlayLink,
                    imageOverlayOpacity = effectData.nuiEffects.imageOverlayOpacity 
                })
            end
    
            if effectData.nuiEffects.videoOverlayId ~= '' then
                SendNUIMessage({
                    action = 'enableVideoOverlay',
        
                    videoOverlayId = effectData.nuiEffects.videoOverlayId,
                    videoOverlayOpacity = effectData.nuiEffects.videoOverlayOpacity 
                })
            end
    
            if effectData.gameEffects.health.addHealth then
                SetEntityHealth(PlayerPedId(), GetEntityHealth(PlayerPedId())+effectData.gameEffects.health.healthToAdd)
            end
    
            if effectData.gameEffects.health.freezeHealth then
                SetPlayerInvincible(PlayerPedId(), true)
            end
    
            if effectData.gameEffects.armor.addArmor then
                cur_arm = GetPedArmour(PlayerPedId())
                new_arm = tonumber(cur_arm) + tonumber(effectData.gameEffects.armor.armorToAdd)
                SetPedArmour(PlayerPedId(), new_arm)
            end
    
            if effectData.gameEffects.armor.freezeArmor then
                SetPlayerInvincible(PlayerPedId(), true)
            end
    
            if effectData.gameEffects.misc.meeleeDamageMultiplier ~= 1.0 then
                SetPlayerMeleeWeaponDamageModifier(PlayerId(), effectData.gameEffects.misc.meeleeDamageMultiplier)
            end

            if effectData.gameEffects.misc.weaponDamageMultiplier ~= 1.0 then
                SetPlayerWeaponDamageModifier(PlayerId(), effectData.gameEffects.misc.weaponDamageMultiplier)
            end

            if effectData.gameEffects.misc.moveRateMultiplier ~= 1.0 then
                freezeMovementRate = effectData.gameEffects.misc.moveRateMultiplier
            end

            if effectData.gameEffects.misc.infiniteStamina then
                freezeStamina = true
            end

            if effectData.gameEffects.misc.cameraShakeType ~= '' then
                ShakeGameplayCam(effectData.gameEffects.misc.cameraShakeType, effectData.gameEffects.misc.cameraShakeIntensity)
            end

            if effectData.gameEffects.misc.pedFlagType ~= 0 then
                SetPedConfigFlag(PlayerPedId(), effectData.gameEffects.misc.pedFlagType, true)
            end

            if effectData.gameEffects.misc.pedMovementType ~= '' then
                RequestAnimSet(effectData.gameEffects.misc.pedMovementType) 
                while not HasAnimSetLoaded(effectData.gameEffects.misc.pedMovementType) do
                  Citizen.Wait(0)
                end
                SetPedMovementClipset(PlayerPedId(), effectData.gameEffects.misc.pedMovementType, true)
            end

            if effectData.gameEffects.misc.cameraEffect ~= '' then
                AnimpostfxPlay(effectData.gameEffects.misc.cameraEffect, effectData.effectDuration, false)
            end



            Wait(effectData.effectDuration)



            if effectData.gameEffects.misc.cameraEffect ~= '' then
                AnimpostfxStop(effectData.gameEffects.misc.cameraEffect)
            end
            if effectData.nuiEffects.imageOverlayLink ~= '' then
                SendNUIMessage({
                    action = 'disableImageOverlay'
                })
            end
    
            if effectData.nuiEffects.videoOverlayId ~= '' then
                SendNUIMessage({
                    action = 'disableVideoOverlay'
                })
            end
    
            if effectData.gameEffects.health.freezeHealth then
                SetPlayerInvincible(PlayerPedId(), false)
            end
    
            if effectData.gameEffects.armor.freezeArmor then
                SetPlayerInvincible(PlayerPedId(), false)
            end
    
            if effectData.gameEffects.misc.meeleeDamageMultiplier ~= 1.0 then
                SetPlayerMeleeWeaponDamageModifier(PlayerId(), effectCache.melee_mult)
            end

            if effectData.gameEffects.misc.weaponDamageMultiplier ~= 1.0 then
                SetPlayerMeleeWeaponDamageModifier(PlayerId(), effectCache.weap_mult)
            end

            if effectData.gameEffects.misc.moveRateMultiplier ~= 1.0 then
                freezeMovementRate = nil
            end

            if effectData.gameEffects.misc.infiniteStamina then
                freezeStamina = false
            end

            if effectData.gameEffects.misc.cameraShakeType ~= '' then
                ShakeGameplayCam(effectData.gameEffects.misc.cameraShakeType, 0)
            end

            if effectData.gameEffects.misc.pedFlagType ~= 0 then
                SetPedConfigFlag(PlayerPedId(), effectData.gameEffects.misc.pedFlagType, false)
            end

            if effectData.gameEffects.misc.pedMovementType ~= '' then
                for k, v in pairs(DPWalks) do
                    if GetHashKey(v) == effectCache.movement_clipset then
                        RequestAnimSet(v) 
                        while not HasAnimSetLoaded(v) do
                          Citizen.Wait(0)
                        end
                        SetPedMovementClipset(PlayerPedId(), v, true)
                        break
                    end
                end
            end
        end
    end)
end)
DPWalks = {
    ["Alien"] = "move_m@alien",
    ["Armored"] = "anim_group_move_ballistic",
    ["Arrogant"] = "move_f@arrogant@a",
    ["Brave"] = "move_m@brave",
    ["Casual"] = "move_m@casual@a",
    ["Casual2"] = "move_m@casual@b",
    ["Casual3"] = "move_m@casual@c",
    ["Casual4"] = "move_m@casual@d",
    ["Casual5"] = "move_m@casual@e",
    ["Casual6"] = "move_m@casual@f",
    ["Chichi"] = "move_f@chichi",
    ["Confident"] = "move_m@confident",
    ["Cop"] = "move_m@business@a",
    ["Cop2"] = "move_m@business@b",
    ["Cop3"] = "move_m@business@c",
    ["Default Female"] = "move_f@multiplayer",
    ["Default Male"] = "move_m@multiplayer",
    ["Drunk"] = "move_m@drunk@a",
    ["Drunk"] = "move_m@drunk@slightlydrunk",
    ["Drunk2"] = "move_m@buzzed",
    ["Drunk3"] = "move_m@drunk@verydrunk",
    ["Femme"] = "move_f@femme@",
    ["Fire"] = "move_characters@franklin@fire",
    ["Fire2"] = "move_characters@michael@fire",
    ["Fire3"] = "move_m@fire",
    ["Flee"] = "move_f@flee@a",
    ["Franklin"] = "move_p_m_one",
    ["Gangster"] = "move_m@gangster@generic",
    ["Gangster2"] = "move_m@gangster@ng",
    ["Gangster3"] = "move_m@gangster@var_e",
    ["Gangster4"] = "move_m@gangster@var_f",
    ["Gangster5"] = "move_m@gangster@var_i",
    ["Grooving"] = "anim@move_m@grooving@",
    ["Guard"] = "move_m@prison_gaurd",
    ["Handcuffs"] = "move_m@prisoner_cuffed",
    ["Heels"] = "move_f@heels@c",
    ["Heels2"] = "move_f@heels@d",
    ["Hiking"] = "move_m@hiking",
    ["Hipster"] = "move_m@hipster@a",
    ["Hobo"] = "move_m@hobo@a",
    ["Hurry"] = "move_f@hurry@a",
    ["Janitor"] = "move_p_m_zero_janitor",
    ["Janitor2"] = "move_p_m_zero_slow",
    ["Jog"] = "move_m@jog@",
    ["Lemar"] = "anim_group_move_lemar_alley",
    ["Lester"] = "move_heist_lester",
    ["Lester2"] = "move_lester_caneup",
    ["Maneater"] = "move_f@maneater",
    ["Michael"] = "move_ped_bucket",
    ["Money"] = "move_m@money",
    ["Muscle"] = "move_m@muscle@a",
    ["Posh"] = "move_m@posh@",
    ["Posh2"] = "move_f@posh@",
    ["Quick"] = "move_m@quick",
    ["Runner"] = "female_fast_runner",
    ["Sad"] = "move_m@sad@a",
    ["Sassy"] = "move_m@sassy",
    ["Sassy2"] = "move_f@sassy",
    ["Scared"] = "move_f@scared",
    ["Sexy"] = "move_f@sexy@a",
    ["Shady"] = "move_m@shadyped@a",
    ["Slow"] = "move_characters@jimmy@slow@",
    ["Swagger"] = "move_m@swagger",
    ["Tough"] = "move_m@tough_guy@",
    ["Tough2"] = "move_f@tough_guy@",
    ["Trash"] = "clipset@move@trash_fast_turn",
    ["Trash2"] = "missfbi4prepp1_garbageman",
    ["Trevor"] = "move_p_m_two",
    ["Wide"] = "move_m@bag",
    -- I cant get these to work for some reason, if anyone knows a fix lmk
    --["Caution"] = "move_m@caution",
    --["Chubby"] = "anim@move_m@chubby@a",
    --["Crazy"] = "move_m@crazy",
    --["Joy"] = "move_m@joy@a",
    --["Power"] = "move_m@power",
    --["Sad2"] = "anim@move_m@depression@a",
    --["Sad3"] = "move_m@depression@b",
    --["Sad4"] = "move_m@depression@d",
    --["Wading"] = "move_m@wading",
  }