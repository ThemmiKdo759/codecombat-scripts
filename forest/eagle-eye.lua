-- You shouldn't attack the burls, only the ogres!

while true do
    local is = hero:findEnemies()
    -- Some of the targets will be Burls. You don't want to attack them!
    local d = 999
    local t = 0
    for i = 1, #is do
        if is[i].type ~= "burl" and hero:distanceTo(is[i]) < d then
            d = hero:distanceTo(is[i])
            t = i
        end
    end
    if t > 0 then
        hero:attack(is[t])
    end
end
