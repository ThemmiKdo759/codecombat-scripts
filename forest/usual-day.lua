-- Kill munchkins, collect coins. Everything as usual.
-- Use AND operator to check thang's existence and type in one statement.

loop
    local enemy = hero:findNearest(hero:findEnemies())
    -- The second operand after AND will only happen if the first one is true.
    if enemy and enemy.type == "munchkin" then
        hero:attack(enemy)
    end
    -- Find the nearest item. Collect it if it exist and its type is "coin".
    local item = hero:findNearest(hero:findItems())
    if item and item.type == "coin" then
        hero:moveXY(item.pos.x, item.pos.y)
    end
end
