-- Spawn a maze. Change the number for a different maze!
game:spawnMaze(42)

-- Spawn a hero with spawnHeroXY()
game:spawnHeroXY(12, 59)

-- Add at least one goal!
for i = 12, 60, 16 do
    for j = 28, 60, 16 do
        game:spawnXY("gem", j, i)
    end
end
game:addCollectGoal()
