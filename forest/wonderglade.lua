-- You need to collect several items.
-- But, the burl wants the gems!
-- Pick up all appearing items EXCEPT gems.

while true do
    local i = hero:findNearest(hero:findItems())
    if i and i.type ~= "gem" then
        hero:moveXY(i.pos.x, i.pos.y)
    end
end
