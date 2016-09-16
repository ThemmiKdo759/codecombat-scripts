-- It's an ambush and your only weapon is the old, blind wizard.
-- Your task is to tell him the distance to the coming ogres.

-- This function finds the nearest enemy and returns the distance to it.
-- If there is no enemy, the function returns 0.
local function nearestEnemyDistance()
    local e = hero:findNearest(hero:findEnemies())
    return e and hero:distanceTo(e) or 0
end

while true do
    -- Call nearestEnemyDistance() and
    -- save the result in the variable "distance"
    local distance = nearestEnemyDistance()
    -- If the variable "distance" is greater than 0: Say the distance.
    if distance > 0 then
        hero:say(distance)
    end
end
