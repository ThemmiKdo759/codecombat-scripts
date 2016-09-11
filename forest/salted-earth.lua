-- Ogres are attacking a nearby settlement!
-- Be careful, though, for the ogres have sown the ground with poison.
-- Gather coins and defeat the ogres, but avoid the burls and poison!

while true do
    local e = hero:findNearestEnemy()
    if e.type == "munchkin" or e.type == "thrower" then
        hero:attack(e)
    end
    local i = hero:findNearest(hero:findItems())
    -- Check the item type to make sure the hero doesn't pick up poison!
    -- Look for types: 'gem' and 'coin'
    if i.type == "gem" or i.type == "coin" then
        hero:moveXY(i.pos.x, i.pos.y)
    end
end
