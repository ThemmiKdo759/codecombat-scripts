-- Enemies are sleeping. It's the perfect time for sabotage!
-- Be careful and stay on the route.
-- Kill the weak ogres with a deadly strike!
-- Collect only the cheap coin. Don't be greedy!

local step = 0

while step < 5 do
    hero:moveXY(9 + step * 12, 8)
    local e = hero:findNearestEnemy()
    -- If the enemy is an ogre and has less than 10 health, attack it!
    if e and e.team == "ogres" and e.health < 10 then
        hero:attack(e)
    end
    step = step + 1
end

while step < 10 do
    hero:moveXY(68, 8 + (step - 5) * 10)
    local c = hero:findNearest(hero:findItems())
    -- If the coin's value is less than 5 and is closer than 7 meters, collect it!
    if c and c.value < 5 and hero:distanceTo(c) < 7 then
        hero:moveXY(c.pos.x, c.pos.y)
    end
    step = step + 1
end

while step < 15 do
    hero:moveXY(68 - (step - 10) * 12, 58)
    local e = hero:findNearestEnemy()
    -- If the enemy has less than 10 health and is closer than 7 meters, attack it!
    if e and e.health < 10 and hero:distanceTo(e) < 7 then
        hero:attack(e)
    end
    step = step + 1
end

hero:moveXY(10, 60)
