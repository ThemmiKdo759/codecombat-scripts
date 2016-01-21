loop
    local enemy = self:findNearest(self:findEnemies());
    if enemy then
        if enemy.pos.x < self.pos.x then
            -- If the enemy is to the left, build a fire-trap to the left.
            self:buildXY("fire-trap", 25, 34)
        elseif enemy.pos.x > self.pos.x then
            -- If the enemy is to the right, build a fire-trap to the right.
            self:buildXY("fire-trap", 55, 34)
        elseif (enemy.pos.y < self.pos.y) then
            -- If the enemy is below the hero, build a fire-trap below.
            self:buildXY("fire-trap", 40, 19)
        elseif (enemy.pos.y > self.pos.y) then
            -- If the enemy is above the hero, build a fire-trap above.
            self:buildXY("fire-trap", 40, 49)
        end
    end
    self:moveXY(40, 34);
end
