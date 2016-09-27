-- Patrol around the clearing and place traps ONLY if you see a coin.
-- Move from one mark to another moving clockwise and avoiding the coins.

-- Write this function.
local function maybeBuildTrap(x, y)
    -- Move to the x,y postion and build a 'fire-trap' if a coin is near.
    hero:moveXY(x, y)
    local c = hero:findNearest(hero:findItems())
    if c and c.type == "coin" then
        hero:buildXY("fire-trap", x, y)
    end
end

while true do
    -- Call 'maybeBuildTrap' function for the top left passage.
    maybeBuildTrap(12, 56)
    -- Now for the top right passage.
    maybeBuildTrap(68, 56)
    -- Now for the bottom right passage.
    maybeBuildTrap(68, 12)
    -- Now for the bottom left passage.
    maybeBuildTrap(12, 12)
end
