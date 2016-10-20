-- Move your pet to the left or right button as needed.

local function onHear(event)
    -- Find the guards to listen to.
    local archer = pet:findNearestByType("archer")
    local soldier = pet:findNearestByType("soldier")
    -- If event.speaker is the archer:
        -- Move to the left button.
    -- If event.speaker is the soldier:
        -- Move to the right button.
    if event.speaker == archer then
        pet:moveXY(32, 30)
    elseif event.speaker == soldier then
        pet:moveXY(48, 30)
    end
end

pet:on("hear", onHear)

local function southeast(es)
    local rs = {}
    for i = 1, #es do
        if es[i].pos.x > 56 and es[i].pos.y < 36 then
            rs[#rs + 1] = es[i]
        end
    end
    return rs
end

-- You don't have to change the code below.
-- Your hero should protect the bottom right passage.
while true do
    local enemies = southeast(hero:findEnemies())
    if #enemies > 0 then
        local e = hero:findNearest(enemies)
        while e.health > 0 do
            hero:attack(e)
        end
    else
        hero:wait(0.3)
    end
end
