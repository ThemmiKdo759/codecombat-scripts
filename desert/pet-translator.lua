-- Your pet should translate commands.

local function onHear(event)
    -- The message the pet heard is in event.message
    local message = event.message
    -- If the message is "North":
    if message == "North" then
        -- The pet says "Htron".
        pet:say("Htron")
    -- If the message is "South":
    elseif message == "South" then
        -- The pet says "Htuos".
        pet:say("Htuos")
    -- If the message is "East":
    elseif message == "East" then
        -- The pet says "Tsae".
        pet:say("Tsae")
    end
end

-- Assign the event handler.
pet:on("hear", onHear)

local function westOfFenceAndNotBrawler(es, x)
    local rs = {}
    for i = 1, #es do
        if es[i].pos.x < x and es[i].type ~= "brawler" then
            rs[#rs + 1] = es[i]
        end
    end
    return rs
end

while true do
    local enemy = hero:findNearest(westOfFenceAndNotBrawler(hero:findEnemies(), 37))
    -- Don't attack Brawlers.
    if enemy then
        hero:attack(enemy)
    else
        hero:wait(1)
    end
end
