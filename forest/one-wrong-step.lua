-- The hero is all confused!
-- Correct their path so they don't walk on the mines.
while true do
    local is = hero:findItems()
    local d = 999
    local t = 0
    for i = 1, #is do
        if is[i].type == "gem" and hero:distanceTo(is[i]) < d then
            d = hero:distanceTo(is[i])
            t = i
        end
    end
    if t > 0 then
        hero:moveXY(is[t].pos.x, is[t].pos.y)
    end
end
