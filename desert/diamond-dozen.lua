-- Claim the coins while defeating the marauding ogres.
-- If you defeat the ogre with the most health, the rest of the ogres will run!
-- Coins vanish quickly after appearing, so be sure to find the best value!

local function findMostHealth(es)
    local target = nil
    local targetHealth = 0
    for i = 1, #es do
        if es[i].health > targetHealth then
            target = es[i]
            targetHealth = es[i].health
        end
    end
    return target
end

-- Make a function named findOptimalCoin which returns the coin with the best value.
-- Coins rapidly appear and disappear, so pick the best coin.
-- Optimize your path by going for the coin with the largest value over distance.
local function findOptimalCoin(cs)
    local coin = nil
    local vpd = 0
    for i = 1, #cs do
        local d = hero:distanceTo(cs[i])
        if cs[i].value / d > vpd then
            coin = cs[i]
            vpd = cs[i].value / d
        end
    end
    return coin
end

while true do
    local e = findMostHealth(hero:findEnemies())
    if e and e.health > 15 then
        while e.health > 0 do
            hero:attack(e)
        end
    else
        local c = findOptimalCoin(hero:findItems())
        if c then
            hero.moveXY(c.pos.x, c.pos.y)
        end
    end
end
