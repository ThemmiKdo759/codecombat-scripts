loop
    local e = self:findNearest(self:findEnemies())
    if e then
        local i = self:findNearest(self:findItems())
        if not i then
            self:say("Give me a drink!")
        elseif i.type ~= "poison" then
            self:moveXY(i.pos.x, i.pos.y)
            self:moveXY(34,47)
        end
    end
end
