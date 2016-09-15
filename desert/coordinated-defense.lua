-- Protect peasants from ogres.

while true do
    -- Get an array of enemies.
    local es = hero:findEnemies()
    -- If the array is not empty,
        -- Attack the first enemy from "enemies" array.
        -- Return to the start position.
    if #es > 0 then
        hero:attack(es[1])
        hero:moveXY(40, 20)
    end
end
