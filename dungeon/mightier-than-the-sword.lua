local passwords = {"Secret Message", "So Many Doors", "Let Me Out Of Here"}
hero:moveUp()
for i = 1, #passwords do
    hero:moveRight()
    hero:say(passwords[i])
end
