-- Defeat skeletons and collect lightstones.

while true do
    local es = hero:findEnemies()
    for i = 1, #es do
        local e = es[i]
        -- Hit it while it has health
        while e.health > 0 do
            if hero:isReady("bash") then
                hero:bash(e)
            else
                hero:attack(e)
            end
        end
    end
    local is = hero:findItems()
    for i = 1, #is do
        local c = is[i]
        -- While the distance greater than 4: 
            -- Try to take the item.
        while hero:distanceTo(c) > 4 do
            hero:moveXY(c.pos.x, c.pos.y)
        end
    end
end
