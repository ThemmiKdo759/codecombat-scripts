-- Today is the day for a fair battle!
-- Wait until the total health of your soldiers is greater than ogre's.
-- Don't attack while your soldiers don't have the advantage.

-- Write a function to return the sum of health of an array:
local function health(as)
    local r = 0
    for i = 1, #as do
        r = r + as[i].health
    end
    return r
end

while true do
    local fs = hero.findFriends()
    local es = hero.findEnemies()
    -- Calculate and compare the total health of your soldiers and the ogres.
    -- Say "Attack" when you are ready.
    if health(fs) > health(es) then
        hero:say("Attack")
    end
    hero:wait(1)
end
