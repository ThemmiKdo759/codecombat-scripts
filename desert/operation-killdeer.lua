-- Lure the ogres into a trap.
-- These ogres are careful.
-- They will only follow if the hero is injured.

-- This function checks the hero's health 
-- and returns a Boolean value.
local function shouldRun()
    return hero.health < hero.maxHealth / 3
end

while true do
    -- Run to the X only if shouldRun() is true
    if shouldRun() then
        self:moveXY(75, 37)
    end
    -- Otherwise, fight!
    local e = self:findNearest(self:findEnemies())
    if hero:isReady("bash") then
        hero:bash(e)
    else
        hero:attack(e)
    end
end
