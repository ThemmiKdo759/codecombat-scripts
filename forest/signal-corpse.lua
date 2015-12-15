loop
    local enemy = self:findNearest(self:findEnemies())
    local green = self:findFlag("green")
    local black = self:findFlag("black")
    if green then
        self:pickUpFlag(green)
    elseif black and self:isReady("cleave") then
        self:pickUpFlag(black)
        enemy = self:findNearest(self:findEnemies())
        self:cleave(enemy)
    elseif enemy and self:distanceTo(enemy) < 10 then
        self:attack(enemy)
    end
end
