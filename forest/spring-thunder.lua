-- Certain coins and gems attract lightning.
-- The hero should only grab silver and blue gems.
-- To distinguish them use items' property 'value'.
-- The operator AND (&&) helps to avoid nested if-statements.

loop
    local item = hero:findNearest(hero:findItems())
    -- The silver coin has value equals 2.
    -- Collect the item if it has type 'coin' AND its value equals 2.
    if item.type == "coin" and item.value == 2 then
        hero:moveXY(item.pos.x, item.pos.y)
    end
    -- The blue gem has value equals 10.
    -- Collect the item if it has type 'gem' AND its value equals 10.
    if item.type == "gem" and item.value == 10 then
        hero:moveXY(item.pos.x, item.pos.y)
    end
end
