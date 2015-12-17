loop
    local evilstone = self:findNearest(self:findItems())
    if evilstone then
        pos = evilstone.pos
        if pos.x == 34 then
            self:moveXY(46, 22)
        else
            self:moveXY(34, 22)
        end
    else
        self:moveXY(40, 22)
    end
end
