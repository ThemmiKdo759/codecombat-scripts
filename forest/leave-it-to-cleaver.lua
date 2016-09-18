-- This shows how to define a function called cleaveWhenClose
-- The function defines a parameter called target
local function cleaveWhenClose(target)
     if hero:distanceTo(target) < 5 then
         -- If cleave is ready, then cleave target
         -- else, just attack target!
        if hero:isReady("cleave") then
            hero:cleave(target)
        elseif hero:isReady("bash") then
            hero:bash(target)
        else
            hero:attack(target)
        end
    end
end

while true do
    local enemy = hero:findNearestEnemy()
    if enemy then
        cleaveWhenClose(enemy)
     end
end
