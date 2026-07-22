
objs = require("objs")
player2 = {
    selfObj,
    x = 0,
    y = 0,
    vel = {x = 0, y = 0},
    accel = 3,
    maxSpeed = 100
}

function player2.load()
    player2.selfObj = objs.CreateObj(player2.x, player2.y, "player")
end

function player2.update(dt)
    movePlayer(dt, 100)
    player2.vel.x = player2.vel.x + 10 * dt
    player2.vel.y = player2.vel.y + 5 * dt
    objs.ChangeObjectPos(player2.selfObj, player2.vel.x * dt, player2.vel.y * dt)
end

function movePlayer(dt, mvel)
    keydown("left", function (dt)
        player.velx = player.velx - mvel * dt
end, 
    function ()
        player.velx = 0
    end)
     keydown("right", function (dt)
        player.velx = player.velx - mvel * dt
end, 
    function ()
        player.velx = 0
    end)
end

function keydown(key, cond, cond2)
    if love.keyboard.isDown(key) then
        cond()
    else
        cond2()
    end
end
return player2