-- Move to the wizard and get their secret values.
hero:moveXY(20, 24)
local secretA = hero:findNearestFriend():getSecretA()
local secretB = hero:findNearestFriend():getSecretB()
local secretC = hero:findNearestFriend():getSecretC()

-- If ALL three values are true, take the high path. Otherwise, take the low path.
if secretA and secretB and secretC then
    hero:moveXY(30, 33)
else
    hero:moveXY(30, 15)
end

-- If ANY of the three values are true, take the left path. Otherwise, go right.
if secretA or secretB or secretC then
    hero:moveXY(20, 24)
else
    hero:moveXY(40, 24)
end

-- If ALL five values are true, take the high path. Otherwise, take the low path.
if secretA and secretB and secretC then
    hero:moveXY(30, 33)
else
    hero:moveXY(30, 15)
end
