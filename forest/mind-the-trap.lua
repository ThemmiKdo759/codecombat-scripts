loop
    local enemy = self:findNearest(self:findEnemies())
    local flag = self:findFlag()
    if flag then
        self:pickUpFlag(flag)
    elseif enemy and enemy.pos.x < 42 then
        self:attack(enemy)
    end
end
