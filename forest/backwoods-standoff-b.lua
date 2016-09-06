-- These Munchkins are scared of the hero!
-- Say something and they'll back off.
-- However, once there are enough Munchkins, they will gang up and ambush! Be careful!
-- Whenever you can, cleave to clear the mass of enemies.

while true do
    -- Use isReady to check if the hero can cleave, otherwise say something!
    if hero:isReady("cleave") then
        hero:cleave(hero:findNearest(hero:findEnemies()))
    else
        hero:say("Do you feel lucky, punk? Do you?")
    end
end
