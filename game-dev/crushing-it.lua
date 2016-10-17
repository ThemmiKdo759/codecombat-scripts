-- If you forget any commands, look below the code window!

-- Spawn a hero using game.spawnHeroXY(x, y).
game:spawnHeroXY(40, 32)
game:addSurviveGoal()
-- Add a goal to defeat ogres with game.addDefeatGoal()
game:addDefeatGoal()

for i = 1, 5 do
    game:spawnXY("munchkin", 10 * i, 10)
end
