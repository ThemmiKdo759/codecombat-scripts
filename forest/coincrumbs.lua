local function coinsOnly(is)
    r = {}
    for i = 1, #is do
        if is[i].type == "coin" then
            r[#r + 1] = is[i]
        end
    end
    return r
end

-- Follow the trail of coins to the red X at the exit.
while true do
    -- This finds the nearest item.
    local item = hero:findNearest(coinsOnly(hero:findItems()))
    if item then
        hero:move(item.pos)
    end
end
