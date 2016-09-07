-- Change the names of variables to make gems appear!
-- Change the name of variable "enemy1" to "chunky".
local chunky = hero:findNearestEnemy()
hero:attack(chunky)
-- hero:attack(chunky)

-- Change the name of variable "enemy2" to "monkey".
local monkey = hero:findNearestEnemy()
hero:attack(monkey)
-- hero:attack(monkey)

-- Collect the gems after changing the variables.
hero:moveUp()
hero:moveRight(2)
