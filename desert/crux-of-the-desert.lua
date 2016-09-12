-- Ogres are assaulting the Crux of the Desert!
-- Defend against the waves by checking which direction the ogres are coming from.
-- Store the results of comparisons as variables to make your code easy to read.

while true do
    local e = hero:findNearestEnemy()
    if e then
        -- An enemy is to the left if the hero's x is greater than the enemy's.
        local isLeft = hero.pos.x  > e.pos.x
        -- An enemy is above if the enemy's y is greater than the hero's.
        local isAbove = hero.pos.y < e.pos.y
        -- Check if the enemy is to the right of the hero:
        -- Check if the enemy is below the hero.

        -- If an enemy is above and to the left, build a fire-trap accordingly.
        if isLeft and isAbove then
            hero:buildXY("fire-trap", 40 - 20, 34 + 17)
        elseif not isLeft and isAbove then
            hero:buildXY("fire-trap", 40 + 20, 34 + 17)
        elseif isLeft then
            hero:buildXY("fire-trap", 40 - 20, 34 - 17)
        else
            hero:buildXY("fire-trap", 40 + 20, 34 - 17)
        end
        hero:moveXY(40, 34)
    end
    hero:moveXY(40, 34)
end
