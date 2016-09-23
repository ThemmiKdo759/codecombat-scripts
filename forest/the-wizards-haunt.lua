-- Move to Zsofia and get the secret number from her.
hero:moveXY(18, 20)
local secret = hero:findNearest(hero:findFriends()):getSecret()

-- Follow Zsofia's instructions to get the magic number!
-- Move to Mihaly and say his magic number.
hero:moveXY(30, 15)
hero:say(secret / 4)

-- Move to Beata and say her magic number.
hero:moveXY(42, 20)
hero:say(secret / 20)

-- Move to Sandor and say his magic number.
hero:moveXY(38, 37)
hero:say(secret / 5)
