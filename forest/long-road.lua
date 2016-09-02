-- Move to the right side of the forest.
-- This function should check for items near the pet and fetch them.
local function fetchPotions(event)
    -- Complete this function:
    -- Don't forget to use a "while-true loop":
    while true do
        local i = hero:findNearest(hero:findItems())
        if i then
            pet:fetch(i)
        end
    end
end

-- Assign the function 'fetchPotions' for the pet event "spawn".
pet:on("spawn", fetchPotions)
hero:moveXY(78, 35)
