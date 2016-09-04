-- Another chest in the field for the hero to break open!
-- Attack the chest to break it open.
-- Some munchkins won't stand idly by while you attack it!
-- Defend yourself when a munchkin gets too close.

while true do
    local enemy = hero:findNearest(hero:findEnemies())
    local distance = hero:distanceTo(enemy)
    if hero:isReady("bash") then
        hero:bash("Chest")
    elseif hero:isReady("cleave") then
        -- First priority is to cleave if it's ready:
        hero:cleave("Chest")
    elseif distance < 5 then
        -- Attack the nearest munchkin that gets too close:
        hero:attack(enemy)
    else
        -- Otherwise, try to break open the chest:
        hero:attack("Chest")
    end
end
