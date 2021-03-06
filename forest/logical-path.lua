-- Get two secret true/false values from the wizard.
hero:moveXY(14, 24)
local secretA = hero:findNearestFriend():getSecretA()
local secretB = hero:findNearestFriend():getSecretB()

-- If BOTH secretA and secretB are true, take the high path; otherwise, take the low path.
-- Check the guide for notes on how to write logical expressions.
if secretA and secretB then
    hero:moveXY(20, 33)
else
    hero:moveXY(20, 15)
end
hero:moveXY(26, 24)

-- If EITHER secretA or secretB is true, take the high path.
if secretA or secretB then
    hero:moveXY(32, 33)
else
    hero:moveXY(32, 15)
end
--hero:moveXY(38, 24)

-- If secretB is NOT true, take the high path.
if not secretB then
    hero:moveXY(44, 33)
else
    hero:moveXY(44, 15)
end
hero:moveXY(50, 24)
