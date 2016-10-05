-- Wait for ogres, defeat them and collect gold.

while true do
    local es = hero:findEnemies()
    for i = 1, #es do
        hero:attack(hero:findNearest(hero:findEnemies()))
    end
    local cs = hero:findItems()
    for i = 1, #cs do
        local c = hero:findNearest(hero:findItems())
        hero:moveXY(c.pos.x, c.pos.y)
    end
    hero:moveXY((5+40+75)/3, (34+63+34)/3)
end
