-- You must defeat the ogres
-- But they are using black magic!
-- Only the highlander soldiers are immune.
-- Find highlanders, their names always contain "mac"

local highlanderName = "mac"

-- This function should search for a string inside of a word:
local function wordInString(s, w)
    for i = 1, #s - #w + 1 do
        if string.sub(s, i, i + #w - 1) == w then
            return true
        end
    end
    return false
end

-- Look at your soldiers and choose highlanders only
local soldiers = hero:findFriends()
for i = 1, #soldiers do
    if wordInString(soldiers[i].id, highlanderName) then
        hero:say(soldiers[i].id + " be ready.")
    end
end
hero:say("ATTACK!!!")
