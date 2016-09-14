-- Remember that enemies may not yet exist.
while true do
    local enemy = hero:findNearestEnemy()
    -- If there is an enemy, attack it!
    if enemy then
        hero:attack(enemy)
    end
end
