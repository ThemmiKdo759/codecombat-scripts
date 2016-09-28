-- Call peasants one after another.
-- Neutral units are detected as enemies.
local ns = hero:findEnemies()
while true do
    if #ns > 0 then
        -- Say the first peasant in the array of neutral units.
        hero:say(ns[1].id)
    else
        hero:say("Nobody here")
    end
    -- Reassign "neutrals" with "findEnemies" method again.
    ns = hero:findEnemies()
end
