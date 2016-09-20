-- Peasants and peons are gathering in the forest.
-- Command the peasants to battle and the peons to go away!

while true do
    local f = hero:findNearest(hero:findFriends())
    if f then
        hero:say("To battle, " + f.id + "!")
    end
    -- Now find the nearest enemy and tell them to go away.
    local e = hero:findNearest(hero:findEnemies())
    if e then
        hero:say("Get thee hence, " + e.id + "!")
    end
end
