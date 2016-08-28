-- Spawn a hero and add a goal.
game:spawnHeroXY(40, 15)
game:addDefeatGoal()

-- Spawn at least 2 "munchkin"s.
game:spawnXY("munchkin", 36, 18)
game:spawnXY("munchkin", 44, 18)
-- Spawn at least 2 "thrower"s.
game:spawnXY("thrower", 32, 21)
game:spawnXY("thrower", 48, 21)
-- Spawn at least 2 "soldier"s.
game:spawnXY("soldier", 28, 24)
game:spawnXY("soldier", 52, 24)
-- Spawn at least 2 "archer"s.
game:spawnXY("archer", 28, 15)
game:spawnXY("archer", 52, 15)
