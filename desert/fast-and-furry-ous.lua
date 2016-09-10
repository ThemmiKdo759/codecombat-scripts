-- Fix the code to outrun the ogre.
local function petRun(event)
    pet:moveXY(50, 21)
end
pet:on("spawn", petRun)
hero:moveXY(50, 12)
