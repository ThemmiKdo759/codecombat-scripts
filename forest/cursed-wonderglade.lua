-- Wonderglade has changed since our last visit.
-- Ogres cursed it and we should defeat them.
-- The burl still is collecting gems, so don't touch them.
-- Also don't attack the burl.

while true do
    -- Find the nearest item.
    -- Collect it (if it exists) only if its type isn't "gem".
    local i = hero:findNearest(hero:findItems())
    if i and i.type ~= "gem" then
        hero:moveXY(i.pos.x, i.pos.y)
    end
    -- Find the nearest enemy.
    -- Attack it if it exists and its type isn't "burl".
    local e = hero:findNearest(hero:findEnemies())
    if e and e.type ~= "burl" then
        hero:attack(e)
    end
end
