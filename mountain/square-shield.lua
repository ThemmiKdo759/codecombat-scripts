-- Incoming yeti attack!
-- Use your paladins to form a square!
-- Command Illumina and Vaelia to create a square!

local function findByName(name, ts)
    for i = 1, #ts do
        if ts[i].id == name then return ts[i] end
    end
    return nil
end
local friends = hero:findFriends()
local celadia = findByName("Celadia", friends)
local dedalia = findByName("Dedalia", friends)
local sideLength = celadia:distanceTo(dedalia)

-- First assign the remaining paladins to variables:
local illumina = findByName("Illumina", friends)
local vaelia = findByName("Vaelia", friends)
-- Command both to move to the corners of the square.
-- Remember squares have equal-length sides!
hero:command(illumina, "move", {x=dedalia.pos.x, y=dedalia.pos.y - sideLength})
hero:command(vaelia, "move", {x=celadia.pos.x, y=celadia.pos.y - sideLength})
