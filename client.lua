AddEventHandler('entityDamaged', function(one, two, three, four)
    local victim = one
    local shooter = two

    local shooterid = NetworkGetPlayerIndexFromPed(shooter)
    local victimid = NetworkGetPlayerIndexFromPed(victim)

    local aimingentity, entity = GetEntityPlayerIsFreeAimingAt(shooterid)

    if IsPedShooting(shooter) and PlayerId() == shooterid and IsPedAPlayer(victim) then
        if entity == victim then
            print('fajnie fajnie synku')
        else
            print('brat hackuje fivem') -- ban function
        end
    end
end)

AddEventHandler('CEventGunShot', function(one, two, three)
    local x = GetEntityCoords(PlayerPedId()).x
    local y = GetEntityCoords(PlayerPedId()).y
    local z = GetEntityCoords(PlayerPedId()).z

    local check = IsBulletInArea(x, y, z, 5.0, true)

    if not check and IsPedShooting(PlayerPedId()) then
        print('chiter gej') -- ban function
    end 
end)


print('Script was created by realkriss')