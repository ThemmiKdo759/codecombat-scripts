-- The only exit is blocked by ogres.
-- Hide from the skeletons and kill ogres one by one.

-- This function should attack an enemy and hide.
-- function hitOrHide(target)
--    -- If 'target' exists:
--        -- Attack 'target' and then move to the red mark.
--    if target then
--        hero:attack(target)
--        hero:moveXY(32, 17)
--    end
-- end

loop
    local enemy = hero:findNearest(hero:findEnemies())
    if hero:distanceTo(enemy) < 10 then
        hero:attack(enemy)
        hero:moveXY(32, 17)
    end
end
