-- You can add strings together, and add numbers into strings.
-- Sing along, using string concatenation:
-- X potions of health on the wall!
-- X potions of health!
-- Take Y down, pass it around!
-- X-Y potions of health on the wall.

local potionsOnTheWall = 10
local numToTakeDown = 1
while true do
    self:say(potionsOnTheWall .. " potions of health on the wall!")
    -- Sing the next line:
    self:say(potionsOnTheWall .. " potions of health!")
    -- Sing the next line:
    self:say("Take " .. numToTakeDown .. " down, pass it around!")
    potionsOnTheWall = potionsOnTheWall - numToTakeDown
    -- Sing the last line:
    self:say(potionsOnTheWall .. " potions of health on the wall.")
end
