-- Robobombs explode when they die or touch an enemy.
-- Split up your soldiers so that they don't all get exploded together.

while true do
    local es = hero:findEnemies()
    local e = hero:findNearest(es)
    local fs = hero:findFriends()
    if #es > 0 and #fs > 0 then
        local h = 0
        local d = 999
        for i = 1, #fs do
            local b = e:distanceTo(fs[i])
            if b < d then
                d = b
                h = i
            end
        end
        hero:command(fs[h], "move", e.pos)
        for i = 1, #fs do
            if i ~= h then
                hero:command(fs[i], "move", {x=fs[i].pos.x - 5, y=fs[i].pos.y})
            end
        end
    end
end
