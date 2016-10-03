-- You need exactly 104 gold. 
-- Calculate how much gold is on the field, and say the phrases to increase or decrease the amount.

local less = "Nimis"
local more = "Non satis"
local requiredGold = 104

-- This function calculates the sum of coin values. 
local function sumCoinValues(cs)
    local s = 0
    for i = 1, #cs do
        s = s + cs[i].value
    end
    return s
end

while true do
    local is = hero:findItems()
    if #is > 0 then
        local s = sumCoinValues(is)
        -- If there is not enough gold, then say "Non satis".
        -- If there is too much gold, then say "Nimis".
        -- If there is exactly 104 gold, then collect all coins.
        if s < requiredGold then
            hero:say(more)
        elseif s > requiredGold then
            hero:say(less)
        else
            while #is > 0 do
                local c = hero:findNearest(is)
                hero:moveXY(c.pos.x, c.pos.y)
                is = hero:findItems()
            end
        end
    end
end
