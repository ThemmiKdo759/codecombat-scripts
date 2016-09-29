-- Walk through the minefield
-- To find the path use a cubic equation
-- You can find coefficients for the equation on the tower

-- This function returns the number multiplied by the times
local function mult(a, b)
    return a * b
end

-- This function returns the number to the exponent power.
local function power(a, b)
    return a ^ b
end

local tower = hero:findFriends()[1]
local a = tower.a
local b = tower.b
local c = tower.c
local d = tower.d
local x = hero.pos.x

while true do
    local y = a * power(x, 3) + b * power(x, 2) + c * power(x, 1) + d * power(x, 0)
    hero:moveXY(x, y)
    x = x + 10
end
