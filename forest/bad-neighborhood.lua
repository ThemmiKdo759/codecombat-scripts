-- Only attack ogres who get close to you.
while true do
    local target = hero:findNearestEnemy()
    -- Use this to tell if you should attack:  hero:isClose(target)
    if target and hero:isClose(target) then
        hero:attack(target)
    end
end
