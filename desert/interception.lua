-- Protect the nearby peasants long enough to gather all the coins!
-- Move to the point between their position and the tower's position!

while true do
    local e = hero:findNearest(hero:findEnemies())
    local f = hero:findNearest(hero:findFriends())
    -- Find the point between the enemy's position and your friend's position.
    if e then
        if hero:distanceTo(e) < hero.attackRange then
            hero:attack(e)
        else
            hero:move({x=(e.pos.x + f.pos.x) / 2, y=(e.pos.x + f.pos.x) / 2})
        end
    end
end
