-- Ogres are strong, but cowardly.
-- Find and kill leader and they will retreat.
-- You have only have one shot, but a deadly shot it will be.

-- This function should return the enemy with the most health.
local function findStrongestEnemy(es)
    local m = nil
    local mh = 0
    -- Iterate over all the ogres to find the one with the most health.
    for i = 1, #es do
        if es[i].health > mh then
            m = i
            mh = es[i].health
        end
    end
    return m
end

local es = hero:findEnemies()
if #es > 0 then
    hero:say(es[findStrongestEnemy(es)])
end
while true do
    local e = hero:findNearest(hero:findEnemies())
    if e then
        hero:attack(e)
    end
end
