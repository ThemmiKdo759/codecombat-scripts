-- Let's ask your pet a little.

-- Write an event handler function "petSay".
-- The pet should say something in this function.
local function petSay()
    pet:say("Meow")
end

pet:on("hear", petSay)

hero:say("Do you understand me?")
hero:say("Are you a cougar?")
hero:say("How old are you?")
-- Ask two more questions.
hero:say("What is the answer to life, the universe, and everything?")
hero:say("Will there be cake?")
