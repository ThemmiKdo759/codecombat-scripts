-- This function attacks the nearest enemy.
local function findAndAttackEnemy()
    local enemy = hero:findNearestEnemy()
    if enemy then
        hero:attack(enemy)
    end
end

local function findAndCleaveEnemy()
    -- Define a function to cleave enemies (but only when the ability is ready).
    local enemy = hero:findNearestEnemy()
    if enemy and hero:isReady("cleave") then
        hero:cleave(enemy)
    end
end

-- In your main loop, patrol, cleave, and attack.
while true do
    -- Move to the patrol point, cleave, and attack.
    hero:moveXY(35, 34)
    findAndCleaveEnemy()
    findAndAttackEnemy()

    -- Move to the other point, cleave, and attack.
    hero:moveXY(60, 31)
    findAndCleaveEnemy()
    findAndAttackEnemy()
end
