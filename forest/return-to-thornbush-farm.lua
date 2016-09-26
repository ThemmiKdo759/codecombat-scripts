-- The function maybeBuildTrap defines TWO parameters!
local function maybeBuildTrap(x, y) 
    hero:moveXY(x, y)
    local e = self:findNearest(self:findEnemies())
    if e then
        -- self:say("I should build!")
        -- Use buildXY to build a "fire-trap" at the given x and y.
        hero:buildXY("fire-trap", x, y)
    end
end

while true do
    -- This calls maybeBuildTrap, with the coordinates of the top entrance.
    maybeBuildTrap(43, 50)

    -- Now use maybeBuildTrap at the left entrance!
    maybeBuildTrap(25, 34)
    -- Now use maybeBuildTrap at the bottom entrance!
    maybeBuildTrap(43, 20)
end
