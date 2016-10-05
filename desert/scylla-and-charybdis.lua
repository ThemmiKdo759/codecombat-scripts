-- Listen mages' phrases and hide.

-- The event handler for the pet.
local function hearAndDodge(event)
    -- Find a sorcerer and a warlock.
    local sorcerer = pet:findNearestByType("sorcerer")
    local warlock = pet:findNearestByType("warlock")
    -- If the sorcerer says something:
    if event.speaker == sorcerer then
        -- If the phrase is "Fire":
        if event.message == "Fire" then
            -- Hide to the left mark.
            pet:moveXY(26, 46)
        -- If the phrase is "Burn":
        elseif event.message == "Burn" then
            -- Hide near the angel statue (the top mark).
            pet:moveXY(42, 59)
        end
    -- If the warlock says something:
    elseif event.speaker == warlock then
        -- If the phrase is "Fire":
        if event.message == "Fire" then
            -- Hide to the right mark.
            pet:moveXY(53, 34)
        -- If the phrase is "Burn":
        elseif event.message == "Burn" then
            -- Hide near the viper pillar (the bottom mark).
            pet:moveXY(35, 26)
        end
    end
end
pet:on("hear", hearAndDodge)
