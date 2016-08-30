-- Use what you've learned to defeat the ogres.
-- Remember: it takes two attacks to defeat an ogre munchkin!
while true do
    hero:moveRight()
    hero:attack(hero:findNearest(hero:findEnemies()))
end
