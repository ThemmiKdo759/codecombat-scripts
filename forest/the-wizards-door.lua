-- Move to Laszlo and get his secret number.
hero:moveXY(30, 13)
local secret = hero:findNearest(hero:findFriends()):getSecret() + 7

--# Follow Laszlo's instructions to get Erzsebet's magic number!
--# Move to Erzsebet and say her magic number.
hero:moveXY(17, 26)
hero:say(secret)
secret = secret / 4

--# Go to Simonyi and tell him his number.
hero:moveXY(30, 39)
hero:say(secret)
secret = secret * (secret * 4 - 7)

--# Go to Agata and tell her her number.
hero:moveXY(43, 26)
hero:say(secret)
