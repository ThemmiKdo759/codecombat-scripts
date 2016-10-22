-- Wait for alchemist's commands to fetch potions.

-- The event handler for the pet's event "hear".
local function waitFetch(event)
    -- Find the nearest potion.
    local potion = pet:findNearestByType("potion")
    -- If the event's message is "Fetch"
        -- Have the pet fetch the potion.
    -- Else (for any other messages):
        -- Return the pet to the red mark.
    if event.message == "Fetch" then
        pet:fetch(potion)
    else
        pet:moveXY(54, 34)
    end
end

pet:on("hear", waitFetch)

-- You don't have to change the code below.
while true do
    local enemy = hero:findNearest( hero:findEnemies())
    if enemy and hero:isPathClear(hero.pos, enemy.pos) then
        hero:attack(enemy)
    else
        hero:moveXY(40, 34)
    end
end
