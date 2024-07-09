-- very sigma silent aim detection

AddEventHandler('entityDamaged', function(one, two)
    local victim = one
    local shooter = two

    local shooterid = NetworkGetPlayerIndexFromPed(shooter)

    local aimingentity, entity = GetEntityPlayerIsFreeAimingAt(shooterid)

    if IsPedShooting(shooter) and PlayerId() == shooterid and IsPedAPlayer(victim) then
        if entity == victim then
            print('fajnie fajnie synku')
        else
            print('brat hackuje fivem') -- ban function
        end
    end
end)

-- pseudo magicbullet detection

AddEventHandler('CEventGunShot', function()
    local x = GetEntityCoords(PlayerPedId()).x
    local y = GetEntityCoords(PlayerPedId()).y
    local z = GetEntityCoords(PlayerPedId()).z

    local check = IsBulletInArea(x, y, z, 5.0, true)

    if not check and IsPedShooting(PlayerPedId()) then
        print('chiter gej') -- ban function
    end 
end)


print('Script was created by realkriss')
