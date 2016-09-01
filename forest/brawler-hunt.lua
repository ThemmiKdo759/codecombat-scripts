-- Don't worry about small and medium-sized ogres.
-- Your targets are type "brawler".
-- When a "brawler" is closer than 50m, fire artillery.

while true do
    -- Find the nearest enemy and the distance to it.
    local e = hero:findNearest(hero:findEnemies())
    -- If the enemy's type is "brawler"
    -- AND the distance to it is less than 50 meters,
    -- Then say "Fire!" to signal the artillery.
    if e.type == "brawler" and hero:distanceTo(e) < 50 then
        hero:say("Fire!")
    end
end
