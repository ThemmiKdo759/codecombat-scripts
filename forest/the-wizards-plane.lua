-- Move to Eszter and get the secret number from her.
hero:moveXY(16, 32)
local secret = hero:findNearest(hero:findFriends()):getSecret()

-- Follow the instructions to get the magic number!
-- Remember to use parentheses to do calculations in the right order.
local tama = secret * 3 - 2
-- Move to Tamas and say his magic number.
hero:moveXY(24, 28)
hero:say(tama)
local zsofi = (tama - 1) * 4

-- Move to Zsofi and say her magic number.
hero:moveXY(32, 24)
hero:say(zsofi)
local istvan = (zsofi + tama) / 2

-- Move to Istvan and say his magic number.
hero:moveXY(40, 20)
hero:say(istvan)
local csilla = (tama + zsofi) * (zsofi - istvan)

-- Move to Csilla and say her magic number.
hero:moveXY(48, 16)
hero:say(csilla)
