-- Each game must have a hero and a goal.
-- Use game.spawnHeroXY(x, y) to add a hero to the game:
-- Use game.addMoveGoalXY(x, y) to add a movement goal
game:spawnHeroXY(18, 28)
game:addMoveGoalXY(28, 28)

-- If you want to, use spawnXY("fence", x, y) to make a maze with fences...
-- Then, click "Play" to try your first playable game!
game:spawnXY("fence", 23, 24)
game:spawnXY("fence", 19, 24)
game:spawnXY("fence", 23, 28)
game:spawnXY("fence", 23, 32)
game:spawnXY("fence", 27, 32)
