-- This defines a function called findAndAttackEnemy
local function findAndAttackEnemy(x, y)
    hero:moveXY(x, y)
    local e = hero:findNearestEnemy()
    if e then
        hero:attack(e)
    end
end

-- This code is not part of the function.
while true do
    -- Now you can patrol the village using findAndAttackEnemy
    findAndAttackEnemy(35, 34)
    findAndAttackEnemy(60, 31)
end
