loop
    local enemy = self:findNearestEnemy()
    if self:isReady("cleave") then
        self:cleave(enemy)
    else
        self:say("DO IT! COME ON! KILL ME NOW! I'M HERE!")
    end
end
