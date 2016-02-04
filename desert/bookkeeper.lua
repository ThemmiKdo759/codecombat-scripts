function bestCoin(xs)
    local r, maxR = nil, 0
    for i = 1, #xs do
        local v = xs[i].value/self:distanceTo(xs[i])
        if v > maxR then
            r, maxR = xs[i], v
        end
    end
    return r
end

local phase, count = 0, 0
local nx, ny = 59, 33
loop
-- Fight enemies for 15 seconds.
-- Keep count whenever an enemy is defeated.
    if phase == 0 then
        local e = self:findNearest(self:findEnemies())
        if self:now() > 15 then
            phase = 1
        elseif e then
            while e.health > 0 do
                self:attack(e)
            end
            count = count + 1
        else
            self:move({x=nx, y=ny})
        end
-- Tell Naria how many enemies you defeated.
    elseif phase == 1 then
        self:moveXY(nx, ny)
        self:say(count)
        phase, count = 2, self.gold
-- Collect coins until the clock reaches 30 seconds.
    elseif phase == 2 then
        local c = bestCoin(self:findItems())
        if self:now() > 30 then
            phase = 3
        elseif c then
            self:move(c.pos)
        else
            self:move({x=nx, y=ny})
        end
-- Tell Naria how much gold you collected.
    elseif phase == 3 then
        self:moveXY(nx, ny)
        self:say(self.gold - count)
        phase, count = 4, 0
-- Fight enemies until the clock reaches 45 seconds.
-- Remember to reset the count of defeated enemies!
    elseif phase == 4 then
        local e = self:findNearest(self:findEnemies())
        if self:now() > 45 then
            phase = 5
        elseif e then
            while e.health > 0 do
                self:attack(e)
            end
            count = count + 1
        else
            self:move({x=nx, y=ny})
        end
-- Tell Naria how many enemies you defeated.
    elseif phase == 5 then
        self:moveXY(nx, ny)
        self:say(count)
        phase, count = 6, 0
    else
        local c = bestCoin(self:findItems())
        if c then
            self:move(c.pos)
        else
            self:move({x=nx, y=ny})
        end
    end
end
