-- Create your own game!

-- Spawn a hero with spawnHeroXY()
game:spawnHeroXY(40, 34)

-- Add at least one goal!
game:addCollectGoal()
game:addMoveGoalXY(72, 60)

-- Spawn objects into the game with spawnXY()
local forest = { {x=40, y=42}, {x=48, y=42}, {x=48, y=34}, {x=48, y=26}, {x=32, y=42}, {x=16, y=42}, {x=16, y=50}, {x=16, y=58}, {x=24, y=58}, {x=32, y=58}, {x=40, y=58}, {x=48, y=58}, {x=56, y=58}, {x=64, y=58}, {x=64, y=50}, {x=64, y=42}, {x=64, y=34}, {x=64, y=26}, {x=64, y=18}, {x=48, y=18}, {x=40, y=18}, {x=32, y=18}, {x=24, y=18}, {x=16, y=18}, {x=16, y=26}, {x=16, y=34}}
for i = 1, #forest do
    game:spawnXY("forest", forest[i].x, forest[i].y)
end
game:spawnXY("fence", 14, 10)
game:spawnXY("fence", 14, 6)
game:spawnXY("gem", 20, 9)
game:spawnXY("munchkin", 56, 9)
game:spawnXY("thrower", 72, 60)
game:spawnXY("potion-small", 72, 9)
