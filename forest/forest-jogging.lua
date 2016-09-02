-- Let's train your pet a little.
-- This function makes a pet run around.
local function runAround(event)
    while true do
        -- First, move to the left mark:
        pet:moveXY(9, 24)
        -- Next, the top mark:
        pet:moveXY(30, 43)
        -- Move your pet to the right mark:
        pet:moveXY(51, 24)
        -- Finally move your pet to the bottom mark:
        pet:moveXY(30, 5)
    end
end

-- Assign the "runAround" function for the pet's event "spawn":
pet:on("spawn", runAround)

-- Cheer on your pet!
-- Don't remove "say" commands below.
while true do
    hero:say("Good dog!")
    hero:say("You can do it!")
    hero:say("Run Run Run!")
    hero:say("Almost!")
    hero:say("One more lap!")
end
