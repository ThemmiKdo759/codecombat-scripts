-- The inner gate can hold against ogres for a long time.
-- But one of these peasants is an OGRE SPY!
-- We have a hint: the spy's name contains the letter "z"

-- This function should check if a word contains a certain letter
-- A string is an array of characters! You can loop over it just like an array.
local function letterInWord(word, letter)
    for i=1, #word do
        -- If character is equal to letter, return true
        if word[i] == letter then
            return true
        end
    end
    -- The letter isn't in the word, so return false
    return false
end

local spyLetter = "z"
local friends = hero:findFriends()

for j=1, #friends do
    local friendName = friends[j].id
    if letterInWord(friendName, spyLetter) then
        -- Reveal the spy!
        hero:say(friendName .. " is a spy!")
    else
        hero:say(friendName .. " is a friend.")
    end
end
