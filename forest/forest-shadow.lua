-- Big ogres can't see you in the forest.
-- Kill only the small ogres in the forest.
-- Collect coins and gems only.
-- Don't leave the forest and don't eat/drink anything.

loop
    -- Find the nearest enemy.
    -- Attack it only if its type is "thrower" or "munchkin".
    local e = hero:findNearest(hero:findEnemies())
    if e.type == "thrower" or e.type == "munchkin" then
        hero:attack(e)
    end

    -- Find the nearest item.
    -- Collect it only if its type is "gem" or "coin".
    local i = hero:findNearest(hero:findItems())
    if i.type == "gem" or i.type == "coin" then
        hero:move(i.pos)
    end
end
