-- You need to distract "Big Bertha" until you special squad arrives.
-- The cannon always shoots at the pair of soldiers closest to each other.
-- We can predict which pair of soldiers in danger and protect them.

-- This function should find the pair of units with the minimum distance between them.
local function findNearestPair(units)
    -- These variables are used to store comparable value and results.
    local minDistance = 9001
    local nearest1 = nil
    local nearest2 = nil
    -- You need to check and compare all pairs of units.
    -- Iterate all units with indexes from 0 to 'units.length-1'.
        -- Use an additional loop through indexes 'j'from 'i+1' to 'units.length'.
            -- Find the distance between the i-th and j-th units.
            -- If the distance less than 'minDistance':
                -- Reassign 'minDistance' with the new distance.
                -- Reassign 'nearestPair' to the names of the current pair of units.
    for i = 1, #units - 1 do
        for j = i + 1, #units do
            local d = units[i]:distanceTo(units[j])
            if d < minDistance then
                minDistance = d
                nearest1 = units[i].id
                nearest2 = units[j].id
            end
        end
    end
    return nearest1, nearest2
end

while true do
    local soldiers = hero:findByType("soldier")
    -- We know when the cannon shoots.
    if hero:now() % 8 == 5 then
        local s1, s2 = findNearestPair(soldiers)
        -- Say the soldier's names and wizards will protect them.
        hero:say(s1 .. " " .. s2)
    end
end
