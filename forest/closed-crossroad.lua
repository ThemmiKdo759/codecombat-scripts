-- Use fire traps for the top and the bottom passages.
-- Use fences for the left and the right passages.
-- Only build if you see an enemy, there are also peasants using the crossroad.

local function north(x1, y1, x2, y2)
    return y2 > y1
end

local function east(x1, y1, x2, y2)
    return x2 > x1
end

local function south(x1, y1, x2, y2)
    return y2 < y1
end

local function west(x1, y1, x2, y2)
    return x2 < x1
end

local function checkEnemy(direction)
    local es = hero:findEnemies()
    for i = 1, #es do
        if direction(hero.pos.x, hero.pos.y, es[i].pos.x, es[i].pos.y) then
            return "enemy"
        end
    end
    local fs = hero:findFriends()
    for i = 1, #fs do
        if direction(hero.pos.x, hero.pos.y, fs[i].pos.x, fs[i].pos.y) then
            return "friend"
        end
    end
    return nil
end

-- The function defines THREE parameters: a string and two numbers.
local function maybeBuildSomething(buildType, x, y, direction)
    -- Move to the position specified by the x and y parameters.
    hero:moveXY(x, y)
    -- Find a friend or enemy in a specific direction

    -- local e = self:findNearest(self:findEnemies())
    -- If there is an enemy
    local c = checkEnemy(direction)
    while not c do
        hero:say("Boring.")
        c = checkEnemy(direction)
    end
    if c == "enemy" then
        -- buildXY() using the parameters: buildType, x, and y
        hero:buildXY(buildType, x, y)
        return true
    end
    return false
end

local leftFence = false
local rightFence = false

while true do
    -- Call maybeBuildSomething() with "fire-trap" and the coordinates of the bottom X.
    maybeBuildSomething("fire-trap", 40, 21, south)
    -- Call maybeBuildSomething(), with "fence" at the left X!
    if not leftFence then
        leftFence = maybeBuildSomething("fence", 26, 34, west)
    end
    -- Call maybeBuildSomething() with "fire-trap" at the top X!
    maybeBuildSomething("fire-trap", 40, 49, north)
    -- Call maybeBuildSomething() with "fence" at the right X!
    if not rightFence then
        rightFence = maybeBuildSomething("fence", 54, 34, east)
    end
end
