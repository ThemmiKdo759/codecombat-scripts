-- Only your pet can wake the wizard up.
-- It's an event handler for pet's "hear".
local function barkForMaster(event)
    -- "event.speaker" exists only for "hear" events.
    -- Check if the pet has heard the hero:
    if event.speaker == hero then
        pet:say("WOOF")
    end
end

-- Assign the event handler for "hear" event.
pet:on("hear", barkForMaster)

while true do
    local es = hero:findEnemies()
    -- Check if there are any enemies in enemies array:
        -- Alarm the pet with "say".
        -- Move into the camp
        -- Then return to the look-out point.
    if #es > 0 then
        hero:say("Dum-dee-dum")
        hero:moveXY(30, 33)
        hero:moveXY(30, 17)
    end
end
