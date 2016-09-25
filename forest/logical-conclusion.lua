-- Move to Eszter and get three secret values from her.
hero:moveXY(24, 16)
local a = hero:findNearestFriend():getSecretA()
local b = hero:findNearestFriend():getSecretB()
local c = hero:findNearestFriend():getSecretC()

-- Say "TRUE" to Tamas if A AND B are true, OR if C is true. Otherwise, say "FALSE."
-- Remember to use parentheses to do your logic in the proper order.
local tam = (a and b) or c
hero:moveXY(19, 26)
hero:say(tam)

-- Say "TRUE" to Zsofi if A OR B is true, AND if C is true. Otherwise, say "FALSE."
local zsofi = (a or b) and c
hero:moveXY(26, 36)
hero:say(zsofi)

-- Say "TRUE" to Istvan if A OR C is true, AND if B OR C is true. Otherwise, say "FALSE."
local istvan = tam
hero:moveXY(37, 34)
hero:say(istvan)

-- Say "TRUE" to Csilla if A AND B are true, OR if B is true AND C is NOT true. Otherwise, say "FALSE."
local csilla = b and (a or not c)
hero:moveXY(40, 22)
hero:say(csilla)
