-- Collect exactly no more than 7 spinach potions.
-- With these potions you'll be strong enough to kill ogres.

local potionCount = 0

-- Use while with a condition to check the number of collected potions.
-- Δ Wrap the next code block into while loop.
while potionCount < 7 do
    local item = hero:findNearest(hero:findItems())
    if item then
        hero:moveXY(item.pos.x, item.pos.y)
        potionCount = potionCount + 1
    end
end

-- When the while loop is finished.
-- Go and fight!.
while true do
    local e = hero:findNearest(hero:findEnemies())
    if e then
        if hero:isReady("bash") then
            hero:bash(e)
        else
            hero:attack(e)
        end
    end
end
