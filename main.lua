
local objs = require("objs")
local teste

function  love.load()
    objs.CreateObj(67, 200, "cadeira")
    teste = objs.CreateObj(10, 200, "mesa")
    objs.CreateObj(90, 200, "cadeira")
    objs.CreateObj(130, 200, "mesa")
    objs.CreateObj(180, 200, "cadeira")
end

function love.update(dt)
    objs.ChangeObjectPos(teste, 100 * dt, 100 * dt)
end

function  love.draw()
    objs.draw()
end
