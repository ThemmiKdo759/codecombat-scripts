-- Survive while wizards are casting to escape you.
-- The medic and the cannon can help you.

-- An event handler function for the pet.
local function deliverCommand(event)
    -- "event.message" contains the text that was said.
    -- If somebody said "Fire":
    if event.message == "Fire" then
        -- Move the pet to the bottom mark.
        -- Make the pet say anything.
        pet:moveXY(64, 16)
        pet:say("Mooh")
    -- If somebody said "Heal":
    elseif event.message == "Heal" then
        -- Move the pet to the top mark.
        -- Make the pet say anything.
        pet:moveXY(64, 52)
        pet:say("Mooh")
    else
        pet:moveXY(64, 34)
    end
end

pet:on("hear", deliverCommand);

-- You haven't change the code below.
while true do
    local e = hero:findNearest(hero:findEnemies())
    if e then
        -- If an enemy is too strong.
        if e.type == "brawler" then
            hero:say("Fire")
        else
            hero:attack(e)
        end
    else 
        -- If your hero needs medicine.
        if hero.health < hero.maxHealth / 2 then
            hero.say("Heal")
        end
    end
end
