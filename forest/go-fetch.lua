-- You've been caught in a burl trap!
-- Send your pet to fetch the health potions!
local function goFetch()
    -- You can use loops in a handler function.
    loop
        local potion = self:findNearest(self:findItems())
        if potion then
            -- Use pet.fetch() to have your pet fetch a potion:
            pet:fetch(potion)
        end
    end
end

-- When your pet is summoned, it triggers a "spawn" event.
-- This tells your pet to run goFetch() at the start of the level
pet:on("spawn", goFetch)
