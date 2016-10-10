-- Incoming Ogre Brawlers!
-- Make use of a commandeered Robot Walker to dispatch these foul enemies.
-- The Robot Walker requires commands in the form of a string:
-- In the first part of the string, you must say the enemy's health as Ternary.
-- The second part of the string should be the enemy's type as Binary.

local function toTernary(n)
    -- Start with an empty string.
    local s = ""
    -- Then, while the number isn't zero:
    while n ~= 0 do
        -- We grab the remainder of our number.
        local r = n % 3
        -- This is our iterator method. 'number' decrements here.
        n = (n - r) / 3
        -- Append the string to the remainder.
        s = r .. s
    end
    -- Finally, we want to return our constructed string.
    return s
end

local function toBinary(n)
    -- Start with an empty string.
    local s = ""
    -- Then, while the number isn't zero:
    while n ~= 0 do
        -- We grab the remainder of our number.
        local r = n % 2
        -- This is our iterator method. 'number' decrements here.
        n = (n - r) / 2
        -- Append the string to the remainder.
        s = r .. s
    end
    -- Finally, we want to return our constructed string.
    return s
end

--# In this level the Ogre Brawlers are more powerful if they have more health.
local function findMostDangerous(es)
    local mostDangerous = nil
    local mostHealth = 0
    for i = 1, #es do
        local e = es[i]
        if e.health > mostHealth then
            mostDangerous = e
            mostHealth = e.health
        end
    end
    return mostDangerous
end

while true do
    local es = hero:findEnemies()
    local dangerous = findMostDangerous(es)
    if dangerous then
        -- The way the robot takes commands is in the form of:
        -- ternary(enemyHealth) + " " + binary(enemyType)
        hero:say(toTernary(dangerous.health) .. " " .. toBinary(dangerous.type))
    end
end
