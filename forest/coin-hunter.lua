-- To make the training more interesting Senick poisoned you.
-- While you aren't moving the poison is harmless.

-- This function should check if a coin is closer than 20m.
-- function isCoinClose(coin)
--    return hero:distanceTo(coin) < 20
-- end

loop
    local item = hero:findNearest(hero:findItems())
    if item then
        -- If isCoinClose(item) returns true:
        if hero:distanceTo(item) < 20 then
            -- Move to item's x, y position.
            hero:move(item.pos)
        end
    end
end
