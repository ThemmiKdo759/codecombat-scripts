-- You need to find and kill 3 skeletons.
-- Skeletons and useful items can be summoned in the points of Power.
-- You should move to the point and say the spell "VENI".
-- To find the required points use the map from the wizard.
-- 0 is a wrong point. Positive numbers are skeletons or useful items.

local spell = "VENI"
-- The map of points is represented as 2d array of numbers.
local wizard = hero:findNearest(hero:findFriends())
local powerMap = wizard.powerMap

-- This function convert grid coordinates to x-y coordinates.
local function convert(row, col)
    return 16 + col * 12, 16 + row * 12
end

-- You need loop through powerMap and find all positive numbers.
-- First, loop through indexes of rows.
for i = 1, #powerMap do
    -- Each row is an array. Iterate through it.
    for j = 1, #powerMap[i] do
        -- Get the value of the i-th row and j-th column.
        -- If it's a positive number:
            -- Use the 'convert' function to get coordinates.
            -- Move there, say "VENI", fight or pick up an item.
        if powerMap[i][j] > 0 then
            hero:moveXY(convert(i-1, j-1))
            hero:say(spell)
            local es = hero:findEnemies()
            for k = 1, #es do
                while es[k].health > 0 do
                    if hero:isReady("bash") then
                        hero:bash(es[k])
                    else
                        hero:attack(es[k])
                    end
                end
            end
            local is = hero:findItems()
            for k = 1, #is do
                hero:moveXY(is[k].pos.x, is[k].pos.y)
            end
        end
    end
end
