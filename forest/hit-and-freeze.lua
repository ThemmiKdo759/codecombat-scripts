-- You are trapped, but still dangerous.
-- Don't move, it'll be painful.
-- Attack ogres only when they're within reach.

-- This function checks if the enemy is in your attack range.
-- The function returns a boolean value:  true or false
local function inAttackRange(e)
    -- Almost all swords have attack range of 3.
    return hero:distanceTo(e) <= hero.attackRange
end

while true do
    -- Find the nearest enemy and store it in a variable.
    -- Call inAttackRange(), with the enemy variable as the argument.
    -- Save the result in the variable canAttack.
    -- If the result stored in canAttack is true, then attack!
    local e = hero:findNearest(hero:findEnemies())
    if e and inAttackRange(e) then
        hero:attack(e)
    end
end
