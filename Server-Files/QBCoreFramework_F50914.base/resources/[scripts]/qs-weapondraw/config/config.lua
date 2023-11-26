--██╗░░██╗░█████╗░██╗░░░░░░██████╗████████╗███████╗██████╗░
--██║░░██║██╔══██╗██║░░░░░██╔════╝╚══██╔══╝██╔════╝██╔══██╗
--███████║██║░░██║██║░░░░░╚█████╗░░░░██║░░░█████╗░░██████╔╝
--██╔══██║██║░░██║██║░░░░░░╚═══██╗░░░██║░░░██╔══╝░░██╔══██╗
--██║░░██║╚█████╔╝███████╗██████╔╝░░░██║░░░███████╗██║░░██║
--╚═╝░░╚═╝░╚════╝░╚══════╝╚═════╝░░░░╚═╝░░░╚══════╝╚═╝░░╚═╝
--
--░░░▒█ █▀▀█ █▀▀▄ 　 ▒█░▒█ █▀▀█ █░░ █▀▀ ▀▀█▀▀ █▀▀ █▀▀█
--░▄░▒█ █░░█ █▀▀▄ 　 ▒█▀▀█ █░░█ █░░ ▀▀█ ░░█░░ █▀▀ █▄▄▀
--▒█▄▄█ ▀▀▀▀ ▀▀▀░ 　 ▒█░▒█ ▀▀▀▀ ▀▀▀ ▀▀▀ ░░▀░░ ▀▀▀ ▀░▀▀

Config = Config or {}

Config.Framework = 'qb' -- qb or esx options

Config.CheckJob = true

Config.Jobs = {
    ['police'] = true,
    ['ambulance'] = false,
}

Config.CustomHolsterCloth = false

function CheckHolsterClothes()
    if Config.CustomHolsterCloth then
        local MyCloth = GetPedDrawableVariation(PlayerPedId(), 8)
        if MyCloth == 130 or MyCloth == 122 then
            return true
        else
            return false
        end
    else
        return true
    end
end

Config.JobHolster = {
    'weapon_stungun_mp',
    'weapon_m9',
    'weapon_M1',
    'weapon_nightstick',
}

-- ▒█▄░▒█ █▀▀█ █▀▀█ █▀▄▀█ █▀▀█ █░░ 　 ▒█░▒█ █▀▀█ █░░ █▀▀ ▀▀█▀▀ █▀▀ █▀▀█
-- ▒█▒█▒█ █░░█ █▄▄▀ █░▀░█ █▄▄█ █░░ 　 ▒█▀▀█ █░░█ █░░ ▀▀█ ░░█░░ █▀▀ █▄▄▀
-- ▒█░░▀█ ▀▀▀▀ ▀░▀▀ ▀░░░▀ ▀░░▀ ▀▀▀ 　 ▒█░▒█ ▀▀▀▀ ▀▀▀ ▀▀▀ ░░▀░░ ▀▀▀ ▀░▀▀

Config.NormalHolster = {
    --- Meele
    'weapon_dagger',
    'weapon_bat',
    'weapon_bottle',
    'weapon_crowbar',
    'weapon_flashlight',
    'weapon_golfclub',
    'weapon_hammer',
    'weapon_hatchet',
    'weapon_knuckle',
    'weapon_knife',
    'weapon_machete',
    'weapon_switchblade',
    'weapon_nightstick',
    'weapon_wrench',
    'weapon_battleaxe',
    'weapon_poolcue',
    'weapon_stone_hatchet',
    'weapon_elecknuckle',
    'weapon_shadowdagger',
    'weapon_butterfly',
    'weapon_nordicaxe',
    'weapon_kratos',
    'weapon_tridagger',

    -- Pistols
    'weapon_m9',
    'weapon_stungun_mp',
    'weapon_g27',
    'weapon_eagle',
    'weapon_snubrevolver',
    'weapon_pistolxm3',
    'weapon_snspistol',
    'weapon_snspistol_mk2',
    'weapon_heavypistol',
    'weapon_vintagepistol',
    'weapon_flaregun',
    'weapon_marksmanpistol',
    'weapon_revolver',
    'weapon_hit_by_water_cannon',
    'weapon_doubleaction',
    'weapon_raypistol',
    'weapon_ceramicpistol',
    'weapon_navyrevolver',
    'weapon_gadgetpistol',
    'weapon_stungun_mp',
    -- Submachine Guns
    'weapon_microsmg',
    'weapon_smg',
    'weapon_smg_mk2',
    'weapon_assaultsmg',
    'weapon_combatpdw',
    'weapon_machinepistol',
    'weapon_minismg',
    'weapon_raycarbine',
    -- Shotguns
    'weapon_pumpshotgun',
    'weapon_bullpupshotgun',
    'weapon_musket',
    'weapon_heavyshotgun',
    'weapon_dbshotgun',
    'weapon_autoshotgun',
    'weapon_combatshotgun',
    -- Assault Rifles
    'weapon_assaultrifle',
    'weapon_assaultrifle_mk2',
    'weapon_carbinerifle',
    'weapon_carbinerifle_mk2',
    'weapon_advancedrifle',
    'weapon_specialcarbine',
    'weapon_specialcarbine_mk2',
    'weapon_bullpuprifle',
    'weapon_bullpuprifle_mk2',
    'weapon_compactrifle',
    'weapon_militaryrifle',
    'weapon_heavyrifle',
    'weapon_tacticalrifle',
    -- Light Machine Guns
    'weapon_mg',
    'weapon_combatmg',
    'weapon_combatmg_mk2',
    'weapon_gusenberg',
    -- Sniper Rifles
    'weapon_sniperrifle',
    'weapon_heavysniper',
    'weapon_heavysniper_mk2',
    'weapon_marksmanrifle',
    'weapon_marksmanrifle_mk2',
    'weapon_precisionrifle',
    -- Heavy Weapons
    'weapon_rpg',
    'weapon_grenadelauncher',
    'weapon_grenadelauncher_smoke',
    'weapon_minigun',
    'weapon_firework',
    'weapon_railgun',
    'weapoweapon_hominglaunchern_mg',
    'weapon_compactlauncher',
    'weapon_rayminigun',
    'weapon_emplauncher',
}
