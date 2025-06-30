AddEventHandler('entityDamaged', function(one, two)
    local victim = one
    local shooter = two

    local shooterid = NetworkGetPlayerIndexFromPed(shooter)

    local aimingentity, entity = GetEntityPlayerIsFreeAimingAt(shooterid)

    local weaponHash = GetSelectedPedWeapon(shooter)

    local rpgWeapons = {
        ["weapon_rpg"] = true,
        ["weapon_firework"] = true, 
        ["weapon_hominglauncher"] = true,
        ["weapon_compactlauncher"] = true
    }

    if IsPedShooting(shooter) and PlayerId() == shooterid and IsPedAPlayer(victim) then
        if rpgWeapons[weaponHash] then
            return
        end

        if entity == victim then
            print('legit player')
        else
            print('cheater') 
        end
    end
end)



AddEventHandler('CEventGunShot', function()
    local coords = GetEntityCoords(PlayerPedId())
    
    if not IsBulletInArea(coords, 5.0, true) and IsPedShooting(PlayerPedId()) then
        print('cheater')
    end
end)
