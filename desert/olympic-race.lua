-- The pet must win the race.
-- Runners should touch their teams mark and run back.

local function waitAndRun(event)
    local referee = pet:findNearestByType("wizard")
    -- If the referee is speaker and the message is "Start":
        -- Make the pet run to the red mark.
        -- Then run back.
    if event.speaker == referee and event.message == "Start" then
        pet:moveXY(54, 27)
        pet:moveXY(6, 27)
    end
end

-- Assign the waitAndRun function to handle "hear" events.
pet:on("hear", waitAndRun)
