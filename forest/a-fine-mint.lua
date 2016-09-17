-- Peons are trying to steal your coins!
-- Write a function to squash them before they can take your coins.

local function pickUpCoin()
    local c = self:findNearest(self:findItems())
    if c then
        self:moveXY(c.pos.x, c.pos.y)
    end
end

-- Write the attackEnemy function below.
-- Find the nearest enemy and attack them if they exist!
local function attackEnemy()
    local e = self:findNearest(self:findEnemies())
    if e then
        hero:attack(e)
    end
end

while true do
    attackEnemy()
    pickUpCoin()
end
