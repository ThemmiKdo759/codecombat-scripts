-- Collect 4 pairs of gems.
-- Each pair must contain equal valued gems.
-- Return to the start point to get hasted.

-- This function returns two items with the same value.
local function findValuePair(items)
    -- Check each possible pair in the array.
    -- Iterate indexes 'i' to the second to last one.
    for i = 1, #items - 1 do
        -- Iterate indexes 'j' from 'i+1' to the last.
        for j = i + 1, #items do
            -- If we found a pair with two equal gems, then return them.
            if items[i].value == items[j].value then
                return items[i], items[j]
            end
        end
    end
    return nil, nil
end

while true do
    local gems = hero:findItems()
    local gem1, gem2 = findValuePair(gems)
    -- If the gem pair exists, collect the gems!
    if gem1 then
        -- Move to the first gem first.
        -- Return to get the haste from the wizard.
        hero:moveXY(gem1.pos.x, gem1.pos.y)
        hero:moveXY(40, 44)
        -- Then move to the second gem.
        -- Return to get the haste from the wizard.
        hero:moveXY(gem2.pos.x, gem2.pos.y)
        hero:moveXY(40, 44)
    end
end
