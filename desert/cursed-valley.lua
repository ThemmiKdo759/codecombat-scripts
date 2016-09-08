-- It's too hot out here! Every second you will lose health.
-- You need to kill 3 enemy skeletons.
-- You can only drink one potion. Choose your time wisely.
-- Graverobbing is bad luck! Do not steal the coins.

while true do
    local enemy = hero:findNearestEnemy()
    -- Attack only skeletons AND skeletons that are on the "ogres" team.
    if enemy and enemy.team == "ogres" and enemy.type == "skeleton" then
        hero:attack(enemy)
    end

    if hero.health < hero.maxHealth / 4 then
        local item = hero:findNearest(hero:findItems())
        -- Take only the items with a "potion" type AND only when your health is less than a quarter of the maxHealth.
        if item.type == "potion" then
            hero:moveXY(item.pos.x, item.pos.y)
        end
    end
end
