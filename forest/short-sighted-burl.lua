-- The gold is guarded by a burl.
-- The burl is short-sighted but it has good hearing.
-- Collect coins and run unless the burl will find you.

-- Write the function "checkTakeRun".
-- It should take one parameter -- an item.
-- If the item exists, take it.
-- Move to the start point (the green mark) whether the item or no.
local function checkTakeRun(item)
    if item then
        hero:moveXY(item.pos.x, item.pos.y)
    end
    hero:moveXY(40, 12)
end


-- Don't change this code. Just write the function.
while true do
    hero:moveXY(16, 56)
    local item = hero:findNearest(hero:findItems())
    checkTakeRun(item)

    hero:moveXY(64, 56)
    item = hero:findNearest(hero:findItems())
    checkTakeRun(item)
end
