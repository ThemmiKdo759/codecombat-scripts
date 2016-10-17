-- Anya is searching for gems!
-- Add gems to the level for the player to find.
-- You must be able to beat your level to continue.

game:spawnHeroXY(9, 18)
game:addCollectGoal()

for i = 1, 3 do
    for j = 1, 4 - i do
        game:spawnXY("gem", 13 + 15 * j, 13 + 15 * i)
    end
end
