-- Gems will disappear soon. Hurry!

local is = hero:findItems()

hero:say("Bruno " + is[1])
hero:say("Matilda " + is[2])
hero:moveXY(is[3].pos.x, is[3].pos.y)
