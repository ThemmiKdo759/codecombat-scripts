-- This array contains the positions of the pens that we want to put the reindeer in.
local penPositions = { {x=20,y=24}, {x=28,y=24}, {x=36,y=24}, {x=44,y=24}, {x=52,y=24} }

-- This array is used to track which reindeer have been asssigned to which pen.
local penOccupants = { nil, nil, nil, nil, nil }

-- And this array contains our reindeer.
local friends = hero:findFriends()
local n = #friends

-- Figure out which reindeer are already in their pens.
for i = 1, n do
    local reindeer = friends[i]

    -- Go through each position and see if it matches the reindeer's position.
    for j = 1, #penPositions do
        local penPos = penPositions[j]

        if penPos.x == reindeer.pos.x and penPos.y == reindeer.pos.y then
            -- Put the reindeer in the occupants array in slot penIndex.
            penOccupants[j] = reindeer
            -- Remove the reindeer from the friends array.
            -- hero:say("Reindeer " .. i .. " sleeps in pen " .. j)
            friends[i] = nil
            -- break out of the inner loop here to avoid confusion.
            break
        end
    end
end

-- Assign the remaining reindeer to new positions.
for i = 1, n do
    -- If the reindeer in this array slot is null, skip this and continue to the next one.
    local reindeer = friends[i]
    if reindeer then
        -- Look for the first pen with nothing already assigned to it.
        for j = 1, #penOccupants do

            -- If there's nothing in this slot of the occupants array, then the pen is open.
            if not penOccupants[j] then
                -- Put the reindeer in the occupants array.
                penOccupants[j] = reindeer
                -- Command the reindeer to move to the pen position.
                -- hero:say("Reindeer " .. i .. ", go to pen " .. j)
                hero:command(reindeer, "move", penPositions[j])
                -- break out of the inner for loop here so we don't reassign the deer.
                break
            end
        end
    end
end
