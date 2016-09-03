-- Your pet should run back and forth on the marks.
-- The hero should cheer the whole time!
-- Write the event function "runBetween" for the pet.
-- This function should make the wolf run back and forth:
-- First, the pet should run to the right mark, then the left one:
local function runBetween(event)
    while true do
        pet:moveXY(48, 8)
        pet:moveXY(12, 8)
    end
end

pet:on("spawn", runBetween)
-- Cheer up your pet. Don't remove this:
while true do
    hero:say("Run!!!")
    hero:say("Faster!")
end
