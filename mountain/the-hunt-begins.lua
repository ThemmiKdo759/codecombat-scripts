-- Senick is trying to find the elusive Burleous Majoris!
-- But he doesn't know how big a Burleous Majoris would be...
-- Find the average size of this burl population to use as a baseline!

-- This function returns average size of all the burls in an array.
local function averageSize(burls)
    local sum = sumSize(burls)
    -- Remember the average is the sum of the parts divided by the amount!
    return sum / #burls
end

-- This function should return the sum of all the burls sizes.
local function sumSize(burls)
    local sum = 0
    for i = 1, #burls do
        sum = sum + burls[i].size
    end
    return sum
end

while true do
    -- Find the average size of the burls by calling the 'averageSize' function.
    -- Say the average size of the seen burls!
    hero:say(averageSize(hero:findEnemies()))
end
