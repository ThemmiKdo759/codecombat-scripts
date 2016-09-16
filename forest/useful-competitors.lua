-- The coin field has been seeded with vials of deadly poison.
-- Ogres are attacking, while their peons are trying to steal your coins!
-- Attack the enemy only if the type is NOT equal to "peon".

while true do
    local e = hero:findNearest(hero:findEnemies())
    if e then
        if e.type ~= "peon" then
            hero:attack(e)
        end
    end
    local i = hero:findNearest(hero:findItems())
    if i.type ~= "poison" then
        -- Gather the item only if the type is NOT equal to "poison".
        hero:moveXY(i.pos.x, i.pos.y)
    end
end
