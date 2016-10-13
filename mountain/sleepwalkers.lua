-- Our sleepwalking peasants are returning.
-- But sleeping yetis are also coming.
-- DONT WAKE THEM UP!
-- We need to build fences to pass peasants and stop yetis.


-- Senick's prepared the grid map how to build fences.
local hunter = hero:findNearest(hero:findFriends())
local fenceMap = hunter:getMap()

-- This function converts grid map coordinates to x-y coordinates.
local function convertCoor(row, col)
    return 30 + col * 4, 22 + row * 4
end

-- Iterate fenceMap and if an element equals 1, then build there a fence.
for i = 1, #fenceMap do
    for j = 1, #fenceMap[i] do
        if fenceMap[i][j] == 1 then
            hero:buildXY("fence", convertCoor(i, j))
        end
    end
end

-- Yetis wake up if they smell the hero near. Hide in the village.
hero:moveXY(20, 15)
