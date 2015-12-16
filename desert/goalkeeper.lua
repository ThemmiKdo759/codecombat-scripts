loop
    b = self:findByType("ball")[1]
    p = self:findByType("peasant")
    self:command(p[1], "move", {x=18, y=b.pos.y+2})
    self:command(p[2], "move", {x=17, y=b.pos.y-1})
end
