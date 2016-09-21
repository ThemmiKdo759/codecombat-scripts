-- The warlock used the "clone" spell and created evil antipodes of our archers.
-- But even that evil spell has weakness.
-- If your archer touches his antipode, then it will disappear.
-- If an archer touches the wrong clone or attacks one of them, then the clones start to fight.
-- We can find antipodes by their names - they are each other's reverse.

-- This function check two units whether they are antipodes or not.
local function areAntipodes(unit1, unit2)
    return unit1.id == string.reverse(unit2.id)
end

local friends = hero:findFriends()
local enemies = hero:findEnemies()

-- Find antipodes for each of your archers.
-- Iterate all friends.
    -- For each of friends iterate all enemies.
        -- Check if the pair of the current friend and the enemy are antipodes.
            -- If they are antipodes, command the friend move to the enemy.
for i = 1, #friends do
    for j = 1, #enemies do
        if areAntipodes(friends[i], enemies[j]) then
            hero:command(friends[i], "move", enemies[j].pos)
        end
    end
end

-- When all clones disappear, attack the warlock.
while true do
    local e = hero:findNearest(hero:findEnemies())
    if e and e.type ~= "archer" then
        local fs = hero:findFriends()
        for i = 1, #fs do
            hero:command(fs[i], "attack", e)
        end
    end
end
