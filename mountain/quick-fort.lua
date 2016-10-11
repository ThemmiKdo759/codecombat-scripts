-- We should quickly build a fort!
-- Each peasant has one speciality and can build only one type of constructions.
-- Carpenter - fences; Mason - towers; builder - tents.
-- The foreman mixed their names in one list, but in the specific order.
-- The list looks like [builder, mason, carpenter, builder, mason, carpenter, ...] 
-- Use that list and assign the proper task for each peasant.

-- The foreman stored the list of workers' names as a property.
local foreman = hero:findNearest(hero:findFriends())
local workerNameList = foreman.workerList

-- Use loops with steps to choose each third element.
-- First, you need assign workers for the towers.
-- Use start value 1 and increase the index by 3.
for i = 2, #workerNameList, 3 do
    -- For each of them say the name and what to build.
    hero:say(workerNameList[i] .. " - tower")
end

-- Then, you need assign workers for the tents.
-- Use start value 0 and increase the index by 3.
for i = 1, #workerNameList, 3 do
    -- For each of them say to build "tent".
    hero:say(workerNameList[i] .. " - tent")
end

-- Finally, you need assign workers for the fence.
-- Use start value 2 and increase the index by 3.
for i = 3, #workerNameList, 3 do
    -- For each of them say to build "fence".
    hero:say(workerNameList[i] .. " - fence")
end

-- Now watch for the battle or help your army.
while true do
    local e = hero:findNearest(hero:findEnemies())
    if e and hero:distanceTo(e) < 12 then
        hero:attack(e)
    else
        if hero.pos.x ~= 40 or hero.pos.y ~= 37 then
            hero:moveXY(40, 37)
        else
            hero:say("Come at me!")
        end
    end
end
