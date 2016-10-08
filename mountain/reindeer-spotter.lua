-- This array contains the positions of the pens that we want to put the reindeer in.
local penPositions = { {x=20,y=24}, {x=28,y=24}, {x=36,y=24}, {x=44,y=24}, {x=52,y=24} }

-- This array is used to track which reindeer (if any) is in each pen.
local penOccupants = { "empty", "empty", "empty", "empty", "empty" }

-- And this array contains our reindeer.
local friends = hero:findFriends()

-- This array contains the positions of the pens that we want to put the reindeer in.
local penPositions = { {x=20,y=24}, {x=28,y=24}, {x=36,y=24}, {x=44,y=24}, {x=52,y=24} }

-- This array is used to track which reindeer (if any) is in each pen.
local penOccupants = { "empty", "empty", "empty", "empty", "empty" }

-- And this array contains our reindeer.
local friends = hero:findFriends()

-- Figure out which reindeer are already in their pens.
for i = 1, #friends do
    local reindeer = friends[i]

    -- Go through each position and see if it matches the reindeer's position.
    local done = false
    for j = 1, #penPositions do
        if not done then
            local penPos = penPositions[j]
            if penPos.x == reindeer.pos.x and penPos.y == reindeer.pos.y then
                -- Put the reindeer's ID in the penOccupants array in slot penIndex.
                penOccupants[j] = reindeer.id
                -- break out of the inner loop here to avoid confusion.
                done = true
            end
        end
    end
end

-- Tell Merek what's in each pen.
for i = 1, #penOccupants do
    -- Tell Merek the pen index and the occupant.
    -- Say something like "Pen 2 is empty" or "Pen 3 is Dasher"
    hero:say("Pen " .. i .. " is " .. penOccupants[i])
end
