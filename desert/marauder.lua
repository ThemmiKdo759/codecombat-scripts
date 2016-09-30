-- Destroy mechs and collect gold from them.

while true do
    local c = hero:findNearest(hero:findItems())
    -- While a coin exists:
        -- Collect the coin.
        -- Reassign the variable "coin" to the nearest item.
    while c do
        hero:moveXY(c.pos.x, c.pos.y)
        c = hero:findNearest(hero:findItems())
    end
    local e = hero:findNearest(hero:findEnemies())
    if e then
        -- While the enemy's health greater than 0.
            -- Attack it.
        while e.health > 0 do
            if hero:isReady("bash") then
                hero:bash(e)
            else
                hero:attack(e)
            end
        end
    end
end
