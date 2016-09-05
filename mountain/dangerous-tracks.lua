-- Protect the village with fire traps.
-- Mine all passages in four directions.
-- You have 80 seconds before ogre attack.

-- Build traps on the line y=114 from x=40 to x=112 with step=24.
local function buildNorthLine()
    for x = 40, 112, 24 do
        hero:buildXY("fire-trap", x, 114)
    end
end

-- Build traps on the line x=140 from y=110 to y=38 with step=18.
local function buildEastLine()
    for y = 110, 38, -18 do
        hero:buildXY("fire-trap", 140, y)
    end
end

-- Build traps on the line y=22 from x=132 to x=32 with step=20.
local function buildSouthLine()
    for x = 132, 32, -20 do
        hero:buildXY("fire-trap", x, 22)
    end
end

-- Build traps on the line x=20 from y=28 to y=108 with step=16.
local function buildWestLine()
    for y = 28, 108, 16 do
        hero:buildXY("fire-trap", 20, y)
    end
end

buildNorthLine()
buildEastLine()
buildSouthLine()
buildWestLine()
hero:moveXY(40, 94)
