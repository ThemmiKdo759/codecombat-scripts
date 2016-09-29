-- One gem is safe, others are bombs.
-- But you know the answer: always take the second.

while true do
    local is = hero:findItems()
    -- If there are more than or exactly two gems:
        -- Collect the second from "items".
    -- Else:
        -- Move to the center mark.
    if #is > 1 then
        hero:moveXY(is[2].pos.x, is[2].pos.y)
    else
        hero:moveXY(40, 34)
    end
end
