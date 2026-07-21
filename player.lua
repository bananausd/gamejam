grav = 100
atrito = .5
mvel = 10
gmvel = 2
joystick = nil
player = {
    indiv = {
        y  = 30, x = 30, vely = 0, velx = 0,
        stats = {
            saude = 100,
            dmg = 10,
            penis = "67 cm",
            recPsec = 0.2

        }
    }

}

function player.load()
     joysticks = love.joystick.getJoysticks()
     joystick = joysticks[1]
end

function player.update(dt)
    player.phisics(dt, player.indiv)
end

function player.draw()
    local p = player.indiv
    love.graphics.setColor(.54, 0, .77)
    love.graphics.rectangle("fill", p.x, p.y, 40, 90)
end

function player.phisics(dt, tablePlayer)
     
    local andou = false
    local p = tablePlayer
    p.y = p.y + p.vely * dt
    p.x = p.x + p.velx * dt
    if joystick then
        local axisX = joystick:getGamepadAxis("leftx")
        local axisY = joystick:getGamepadAxis("lefty")
        if math.abs(axisX) > .2 then
            p.x = p.x + (gmvel * axisX)
            andou = true
        end
        if math.abs(axisY) > .2 then
            p.y = p.y + (gmvel * axisY)
            andou = true
        end
    end
    keydown("right", function()
        p.velx = p.velx + mvel
        andou = true
    end)
    keydown("left", function()
        p.velx = p.velx - mvel
        andou = true
     end)
     keydown("up", function()
        p.vely = p.vely - mvel
        andou = true
     end)
     keydown("down", function()
        p.vely = p.vely + mvel
        andou = true
     end)
     if not andou then
        p.velx = p.velx * atrito
        p.vely = p.vely * atrito
     end
end

function keydown(key, cond) --só pra n terr q ficar chamando o keybord toda ora.(tenho preguiça de fazer esse capeta de desse if toda hora)
    if love.keyboard.isDown(key) then    
        cond()
    end 
end

return player