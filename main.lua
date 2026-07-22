
local objs = require("objs")
local teste
local player2 = require("player2")
local player = require("player")

function  love.load()
    player.load()
   -- player2.load()
    objs.CreateObj(67, 200, "cadeira")
    teste = objs.CreateObj(10, 200, "mesa")
    objs.CreateObj(90, 200, "cadeira")
    objs.CreateObj(130, 200, "mesa")
    objs.CreateObj(180, 200, "cadeira")
end

function love.update(dt)
    player.update(dt)
    --player2.update(dt)
    objs.ChangeObjectPos(teste, 100 * dt, 100 * dt)
end

function  love.draw()
    player.draw()
    objs.draw()
end
