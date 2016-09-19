local function cleaveOrAttack(enemy)
    -- If "cleave" is ready, cleave; otherwise, attack.
    if hero:isReady("cleave") then
        hero:cleave(enemy)
    elseif hero:isReady("bash") then
        hero:bash(enemy)
    else
        hero:attack(enemy)
    end
end
  
while true do
    local e = hero:findNearest(hero:findEnemies())
    if e and hero:distanceTo(e) < 5 then
        cleaveOrAttack(e)
    end
end
