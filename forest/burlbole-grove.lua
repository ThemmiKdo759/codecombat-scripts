-- Don't attack the burls!
-- Functions can return a value.
-- When a function is called, it will be equal to the value the function returns

local function shouldAttack(target)
    -- return False if no target
    if not target or target.type == "burl" then
        return false
    end
    -- return False if target.type == "burl"
    -- Otherwise, return True!
    return true
end

while true do
    local e = hero:findNearest(hero:findEnemies())
    -- Here we use shouldAttack() to decide if we should attack!
    if shouldAttack(e) then
        hero:attack(e)
    end
end
