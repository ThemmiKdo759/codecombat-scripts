-- A desert storm is coming!
-- Yaks can detect when a storm is coming.

-- While there is a sand yak:
while hero:findNearestEnemy() do
    -- Collect a coin.
    local coin = hero:findNearest(hero:findItems())
    if coin then
        hero:moveXY(coin.pos.x, coin.pos.y)
    end
end
-- The yaks have hidden.
-- Move to the hideout.
hero:moveXY(38, 58)
