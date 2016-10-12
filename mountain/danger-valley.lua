-- Ogres have taken some peasants hostage!
-- Your scouts have given you the intel required to lay an ambush.
-- this.grid holds an array of arrays.
-- Inside these sub-arrays, 0 is a peasant and 1 is an ogre!
-- Use this information to setup fire-traps to defeat the convoy.
--
-- First, remember the containing array is just an array!
-- Iterate over all the elements of this array.
for i = 1, #hero.grid do
    local row = hero.grid[i]
    -- Iterate over all the tiles in this array:
    for j = 1, #row do
        -- Do a check to see if the tile of row i at j is 1.
        if row[j] == 1 then
            hero:buildXY("fire-trap", 30 + 6 * j, 14 + 6 * i)
        end
    end
end
-- Finally, retreat back to cover.
hero:moveXY(29, 55)
