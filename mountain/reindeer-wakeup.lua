-- This array contains the 'asleep' or 'awake' status for each reindeer.
local deerAwake = {}

-- And this array contains our reindeer.
local friends = hero:findFriends()

-- Loop through all the reindeer and see which ones are awake.
for i = 1, #friends do
    -- If the reindeer's Y position is greater than 30, it's out of its pen.
    -- If this is the case, set the reindeer's entry in the deer status array to 'awake'.
    deerAwake[i] = friends[i].pos.y > 30
end

-- Loop through statuses and report to Merek.
for i = 1, #deerAwake do
    -- Tell Merek the reindeer index and whether it's asleep or awake.
    -- Say something like "Reindeer 2 is asleep" or "Reindeer 4 is awake"
    hero:say("Reindeer " .. i .. " is " .. (deerAwake[i] and "awake" or "asleep"))
end
