-- Incoming ogres!
-- Use the checkAndAttack function to make your code easy to read.

local function checkAndAttack(target)
    if target then
        hero:attack(target)
    end
    hero:moveXY(43, 34)
end

while true do
    hero:moveXY(58, 52)
    checkAndAttack(hero:findNearestEnemy())

    hero:moveXY(58, 16)
    checkAndAttack(hero:findNearestEnemy())
end
