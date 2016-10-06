-- Collect all the coins!
-- The peasants are unable to get the coins from other areas
-- However, each area only spawns a certain value of coin!
-- Filter through all the items and command the peasants accordingly.

local function dist2(a, b)
    local dx = a.pos.x - b.pos.x
    local dy = a.pos.y - b.pos.y
    return dx*dx + dy*dy
end

local function commandPeasant(peasant, coins)
    -- Command the peasant to find the nearest of their coins array:
    local mindist = 99999
    local c = 0
    for i = 1, #coins do
        local d = dist2(peasant, coins[i])
        if d < mindist then
            mindist = d
            c = i
        end
    end
    if c > 0 then
        hero:command(peasant, "move", coins[c].pos)
    end
end

local friends = hero:findFriends()
--local peasants =
--    "Aurum":friends[0],
--    "Argentum":friends[1],
--    "Cuprum":friends[2]

while true do
    local is = hero:findItems()
    local goldCoins = {}
    local silverCoins = {}
    local bronzeCoins = {}
    for i = 1, #is do
        local item = is[i]
        if item.value == 3 then
            goldCoins[#goldCoins + 1] = item
        elseif item.value == 2 then
            silverCoins[#silverCoins + 1] = item
        elseif item.value == 1 then
            bronzeCoins[#bronzeCoins + 1] = item
        end
    end
    commandPeasant(friends[1], goldCoins)
    commandPeasant(friends[2], silverCoins)
    commandPeasant(friends[3], bronzeCoins)
end
