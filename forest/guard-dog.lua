-- You can't help the peasants across the river.
-- But, your pet can!
-- Teach your wolf to be a guard dog.

local function alarm(event)
    while true do
        -- Pets can find enemies, too.
        local enemy = pet:findNearestEnemy()
        -- If there is an enemy, have the pet say something:
        if enemy then
            pet:say("Woof!")
        end
    end
end

pet:on("spawn", alarm)
