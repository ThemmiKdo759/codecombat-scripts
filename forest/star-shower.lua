-- A star shower is a time when gems and coins appear around you.
-- Metal coins disappear quickly, run for them only they are close (< 20m).
-- Gems don't disappear, run for them every time when you see them.

loop
    local item = self:findNearest(self:findItems())
    -- If the item's type is 'gem' OR the distance to the item less than 20 metres: Take it.
    if item.type == "gem" or self:distanceTo(item) < 20 then
        self:move(item.pos)
    end
end
