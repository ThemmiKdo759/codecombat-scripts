-- The function maybeBuildTrap defines TWO parameters!
local function maybeBuildTrap (x, y) 
    -- Use x and y as the coordinates to move to.
    self:moveXY(x, y)
    local enemy = self:findNearest(self:findEnemies())
    if enemy then
        self:say("I should build!")
        -- Use buildXY to build a "fire-trap" at the given x and y.
        self:buildXY("fire-trap", x, y)
    end
end

while true do
    -- This calls maybeBuildTrap, with the coordinates of the left entrance.
    maybeBuildTrap(20, 34)
    -- Now use maybeBuildTrap at the bottom entrance!
    maybeBuildTrap(38, 20)
    -- Now use maybeBuildTrap at the right entrance!
    maybeBuildTrap(56, 34)
end
