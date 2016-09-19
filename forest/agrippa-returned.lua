local function enemyInRange(enemy)
    return hero:distanceTo(enemy) < 5
end

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
    if e and enemyInRange(e) then
        cleaveOrAttack(e)
    end
end
