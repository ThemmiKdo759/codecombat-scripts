-- Peasants are trapped in a valley!
-- You only have one poison shell.
-- Calculate the required mass of the shell to defeat the ogres.
-- The poison mass needs to be equal to the health of the ogres.
-- Using too little or too much will be a disaster!

-- This function should return the total health of the enemies:
local function hsum(us)
    -- Create a variable and set it to 0 to start the sum.
    local h = 0
    -- Iterate over each enemy in the array and add their health to the sum variable.
    for i = 1, #us do
        h = h + us[i].health
    end
    return h
end

-- Use the cannon to defeat the ogres.
local cannon = hero:findNearest(hero:findFriends())

-- The cannon can see through the walls.
local es = cannon:findEnemies()

-- Calculate the sum of the ogres' health.
hero:say("Use " + hsum(es) + " grams.")
