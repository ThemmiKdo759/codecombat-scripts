-- The treasure somewhere between trees.
-- The coordinates are 'x: ?0, y: ?0'. 
-- Move at all potential points and show to peasants where to dig.

local leftBorder = 20
local rightBorder = 61
local bottomBorder = 20
local topBorder = 51
local step = 10

-- Iterate X coordinates from the left to right border with step 10.
for i = leftBorder, rightBorder, step do
    -- Use a nested loop to iterate through Y coordinates for each X.
    -- Iterate y coordinates from the bottom to top border with step 10.
        -- Move to the point with coordinates X, Y and say anything.
    if (i / 10) % 2 == 0 then
        for j = bottomBorder, topBorder, step do
            hero:moveXY(i, j)
            hero:say("Here.")
        end
    else
        for j = topBorder - 1, bottomBorder - 1, -step do
            hero:moveXY(i, j)
            hero:say("Here.")
        end
    end
end

-- Allow peasants to check the last point.
hero:moveXY(20, 10)
