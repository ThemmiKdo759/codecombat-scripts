-- Stuck in the ogre forest!
-- Check both mining point for ogres and call peasants if it's safe.
-- Don't call peasants when you kill an ogre because ogre guards will be there.
-- This function should check the if there is 'target' or it's safe.
local function checkEnemyOrSafe(target)
    -- If 'target' exist, then attack it.
    -- Otherwise say something to call peasants.
    if target and hero:distanceTo(target) < 25 then
        hero:attack(target)
    else
        hero:say("Come here!")
    end
end

-- Move and check the marks: the top right first, then the bottom left one.
loop
    -- Move and check the top right point.
    hero:moveXY(64, 54)
    local enemy = hero:findNearest(hero:findEnemies())
    checkEnemyOrSafe(enemy)
    hero:moveXY(57, 34) -- avoid running into peasants
    -- Move and check the bottom left point.
    hero:moveXY(16, 14)
    enemy = hero:findNearest(hero:findEnemies())
    checkEnemyOrSafe(enemy)
    hero:moveXY(21, 29) -- avoid running into peasants
end
