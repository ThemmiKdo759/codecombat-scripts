loop
    local enemy = self:findNearest(self:findEnemies())
    local xPos = self.pos.x + 5
    local yPos = 17
    if enemy then
        if enemy.pos.y > self.pos.y then
            yPos = yPos - 3
        elseif enemy.pos.y < self.pos.y then
            yPos = yPos + 3
        end
    end
    self:move({x=xPos, y=yPos})
end
