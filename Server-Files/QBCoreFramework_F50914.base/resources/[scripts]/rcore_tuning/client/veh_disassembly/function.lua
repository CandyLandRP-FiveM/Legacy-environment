
if Config.EnableScrapyard == nil or Config.EnableScrapyard then
    function spawnPed(coords, h)
        local pedHash = GetHashKey(VehDisassemblyConfig.NPC.npcType)

        RequestModel(pedHash)

        while not HasModelLoaded(pedHash) do
            Wait(1)
        end

        local ped = CreatePed(3, pedHash, coords, h, false, true)

        SetEntityAsMissionEntity(ped, true, false)
        FreezeEntityPosition(ped, true)

        SetPedCanBeKnockedOffVehicle(ped, false)
        SetPedCanRagdoll(ped, false)
        SetPedCanRagdollFromPlayerImpact(ped, false)
        SetPedRagdollOnCollision(ped, false)
        SetPedCanBeDraggedOut(ped, false)
        SetPedConfigFlag(ped, 32, false)
        ClearPedBloodDamage(ped)
        ResetPedVisibleDamage(ped)

        SetEntityProofs(ped, true, true, true, true, true, true, 1, true)
        SetCanAttackFriendly(ped, true, true)
        SetBlockingOfNonTemporaryEvents(ped, true);

        return ped
    end
end