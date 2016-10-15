-- Ogres are going to attack soon.
-- Move near each of tents (to the X marks)
-- say() something at each X to wake your soldiers.
-- Beware: leave the camp when the battle begins!
-- Ogres will send reinforcements if they see the hero.

-- The sergeant knows the distance between tents.
local sergeant =  hero:findNearest(hero:findFriends())

-- The distances between the X marks.
local stepX = sergeant.tentDistanceX
local stepY = sergeant.tentDistanceY
-- The number of tents.
local tentsInRow = 5
local tentsInColumn = 4

-- The first tent mark has constant coordinates.
local firstX = 10
local firstY = 14

-- Use nested loops and visit all 20 tents.
-- IMPORTANT: move row by row - it's faster.
    -- Move at the marks near tents and say anything.
for i = firstY, firstY + (tentsInColumn - 1) * stepY, stepY * 2 do
    for j = firstX, firstX + (tentsInRow - 1) * stepX, stepX do
        hero:moveXY(j, i)
        hero:say("Wake up! It's already " .. hero:now())
    end
    if i > firstY + (tentsInColumn - 2) * stepY then break end
    for j = firstX + (tentsInRow - 1) * stepX, firstX, -stepX do
        hero:moveXY(j, i + stepY)
        hero:say("Wake up! It's already " .. hero:now())
    end
end
-- Now watch the battle.
hero:moveXY(3, 3)
