-- We have lured the huge ogre in the temple of the Moon and the Sun.
-- There are four pairs of twins, they should pray by pairs.
-- You need to find twins and call them.

-- Twins have almost the same names, only the last letter is different.
-- This function checks if the pair of units are twins.
local function areTwins(unit1, unit2)
    return string.sub(unit1.id, 1, #unit1.id - 1) == string.sub(unit2.id, 1, #unit2.id - 1)
end

-- Iterate over all pairs of paladins and say() their name by pairs if they are twins.
-- For example: hero.say("NameTwin1 NameTwin2")
local paladins = hero:findByType("paladin")
for i = 1, #paladins - 1 do
    for j = i + 1, #paladins do
        if areTwins(paladins[i], paladins[j]) then
            hero:say(paladins[i].id .. " " .. paladins[j].id)
        end
    end
end
-- When twins are in their spots, lure the ogre.
-- Don't be afraid of beams - they are dangerous only for ogres.
hero:moveXY(65, 38)
hero:moveXY(14, 38)
