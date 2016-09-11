while true do
    local e = self:findNearest(self:findEnemies())
        -- Find the distance to the enemy with distanceTo.
        -- If the distance is less than 5 meters...
            -- ... if "cleave" is ready, cleave!
            -- ... else, just attack.
    if e then
        if hero:distanceTo(e) < 5 and hero:isReady("cleave") then
            hero:cleave(e)
        else
            hero:attack(e)
        end
    end
end
