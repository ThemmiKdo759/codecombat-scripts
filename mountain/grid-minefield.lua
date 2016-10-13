-- The ogre formation is marching at the village.
-- We have 90 seconds to build a minefield.
-- We'll use their strict formation against them.

-- Use nested loops to build the grid minefield.
-- First iterate x coordinates from 12 to 60 with step 8.
for x = 12, 12 + 8 * 5, 16 do
    -- For each x iterate y cordinates from 12 to 68 with step 8.
    for y = 12, 12 + 8 * 6, 8 do
        -- For each point build "fire-trap" there.
        hero:buildXY("fire-trap", x, y)
    end
    for y = 12 + 8 * 6, 12, -8 do
        -- For each point build "fire-trap" there.
        hero:buildXY("fire-trap", x + 8, y)
    end
end

for y = 12, 12 + 8 * 6, 8 do
    hero:buildXY("fence", 10 + 8 * 6, y)
end

hero:moveXY(hero.pos.x + 8, hero.pos.y)
hero:wait(18)
hero:buildXY("fence", 58, 56)
