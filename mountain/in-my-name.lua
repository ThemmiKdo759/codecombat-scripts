-- You must to find the treasure.
-- Use Thoktar's name as a hint.
-- The correct treasure chest is the same number as the index of 'z' in Thoktar's name.

-- This function should return the number where letter is in word:
function hero.letterIndex(word, letter) 
    -- Step through each letter as an index of the given word
    -- Compare the letter in the word with the given letter
    -- If it's required letter then return the current index
    -- If nothing, return a default value
    for i = 1, #word do
        if string.sub(word, i, i) == letter then
            return i
        end
    end
    return 0
end

local ogreLetter = "z"
local shaman = hero:findByType("thoktar")[1]
-- Find the index and use it for finding the treasure.
local chestIndex = hero.letterIndex(shaman.id, "z")
hero:moveXY(8 + chestIndex * 8, 36)
