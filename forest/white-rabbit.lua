-- Follow the lightstone to navigate the traps.

while true do
    local item = hero:findNearestItem()
    if item then
        -- Move to the coordinates using moveXY() and the X and Y variables:
        hero:moveXY(item.pos.x, item.pos.y)
    end
end
