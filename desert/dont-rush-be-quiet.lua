-- Dodge the cannons and collect 8 gems.
-- Watch out, cannons are ready to fire!
-- Move slow along a special pattern to confuse them.

local function mod30(n)
    return n % 30
end

local function mod40(n) 
    return n % 40
end

-- You don't need to change the following code:
while true do
    local time = hero:now()
    local x = mod30(time) + 25
    local y = mod40(time) + 10
    hero:moveXY(x, y)
end
