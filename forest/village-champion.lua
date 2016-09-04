-- Incoming munchkins! Defend the town!

-- Define your own function to fight the enemy!
-- In the function, find an enemy, then cleave or attack it.
local function defend()
    local es = hero:findEnemies()
    while #es > 0 do
        local e = hero:findNearest(es)
        if #es > 1 and hero:isReady("cleave") then
            hero:cleave(e)
        else
            hero:attack(e)
        end
        es = hero:findEnemies()
    end
end

-- Move between patrol points and call the function.
while true do
    hero:moveXY(35, 34)
    -- Use whatever function name you defined above.
    defend()
    hero:moveXY(47, 27)
    -- Call the function again.
    defend()
    hero:moveXY(60, 31)
    -- Call the function again.
    defend()
end
