-- A forgotten tomb in the forest!
-- But the ogres are hot on your heels.
-- Break open the tomb, while defending yourself from the munchkins.

-- This function should attack an enemy if it exists, otherwise attack the door!
local function checkToDefend(target)
    -- Check if the target exists
        -- If so, attack the target
    -- Otherwise attack the "Door"
    if target then
        hero:attack(target)
    elseif hero:isReady("bash") then
        hero:bash("Door")
    else
        hero:attack("Door")
    end
end

while true do
    checkToDefend(hero:findNearestEnemy());
end
