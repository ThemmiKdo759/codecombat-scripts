-- Kill at least 6 ogres on the left side.
-- Then, collect at least 30 gold on the right.
-- This variable is used for counting ogres.
local defeatedOgres = 0

-- This loop is executed while "defeatedOgres" is less than 6.
while defeatedOgres < 6 do
    local enemy = hero:findNearestEnemy()
    if enemy then
        hero:attack(enemy)
        defeatedOgres = defeatedOgres + 1
    else
        hero:say("Ogres!")
    end
end

-- Move to the right part of the map.
hero:moveXY(49, 36)

-- This loop is executed while you have less than 30 gold.
while hero.gold < 30 do
    -- Find and collect coins.
    local coin = hero:findNearest(hero:findItems())
    if coin then
        hero:move(coin.pos)
    else
        hero:say("Coins!")
    end
end

-- Move to the exit.
hero:moveXY(76, 32)
