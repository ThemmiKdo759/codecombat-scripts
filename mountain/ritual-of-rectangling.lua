-- We need to summon the Ancient Warrior to defeat that ogre!
-- Four paladins must form a rectangle.
-- But that rectangle must have a specific area and perimeter.
-- Paladins will keep moving. Just say the spell at the right time.
-- It's impossible to be precise with floating point numbers, so use an "almost equal" comparison.

-- This function should compare valueA with valueB within 3% of the exact value.
local function almostEqual(a, b)
    -- Check if valueA is greater than 0.97 of valueB and less than 1.03 of valueB.
    if a < 0.97 * b or a > 1.03 * b then return false end
    return true
end

-- This function should calculate the perimeter of the rectangle:
local function perimeter(s1, s2)
    -- The perimeter is the sum of all four sides. Remember 2 sides are equal to the other 2 sides!
    return (s1 + s2) * 2
end

-- This function should return the area of a rectangle using both sides:
local function area(s1, s2)
    -- The area of a rectangle is the product of the two un-equal sides.
    return s1 * s2
end

-- Required values of the perimeter and the area for the summoning:
local requiredPerimeter = 104
local requiredArea = 660

-- We will use this unit as a base for our calculations:
local base = hero:findNearest(hero:findFriends())

while true do
    local sideSN = base:distanceTo("Femae")
    local sideWE = base:distanceTo("Illumina")
    local currentPerimeter = perimeter(sideSN, sideWE)
    local currentArea = area(sideSN, sideWE)
    if (almostEqual(currentArea, requiredArea) and almostEqual(currentPerimeter, requiredPerimeter)) then
        hero.say("VENITE!")
        break
    end
end
