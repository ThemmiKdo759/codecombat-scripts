-- Ogres are disguised as coins or gems!

while true do
    local e = hero:findNearestEnemy()
    -- If you see an enemy - attack it:
    if e then
        hero:attack(e)
    end
    local item = hero:findNearestItem()
    -- If you see a coin or a gem - move to it's X and Y position:
    if item then
        hero:move(item.pos)
    end
end
