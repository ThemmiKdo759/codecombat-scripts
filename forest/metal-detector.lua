-- The artillery uses coins as a target.
-- You'll be the rangefinder for the artillery.

-- Write the function.
local function coinDistance()
    -- Find the nearest coin,
    local coin = hero:findNearest(hero:findItems())
    -- If there is a coin, return the distance to it.
    if coin then
        return hero:distanceTo(coin)
    end
    -- Else, return 0 (zero).
    return 0
end

while true do
    local distance = coinDistance()
    if distance > 0 then
        -- Say the distance.
        hero:say(distance)
    end
end
