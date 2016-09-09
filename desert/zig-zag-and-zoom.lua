-- Escape from Death Valley!
-- The archers firing at you are not your allies! Dodge the arrows!
-- Move by with a zigzag pattern using real modulo functions.

local function mod15(n)
    return n % 15
end

local function mod9(n)
    return n % 9
end

-- Don't change the following code:
while true do
    local time = hero:now()
    local x = 10 + time
    local y
    if time < 30 then
        y = 10 + 3 * mod15(time)
    else
        y = 20 + 3 * mod9(time)
    end
    hero:moveXY(x, y)
end
