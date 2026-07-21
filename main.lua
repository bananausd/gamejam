
objs = require("objs")

function  love.load()
    objs.createObj(67, 200, "cadeira")
    objs.createObj(10, 200, "mesa")
    objs.createObj(90, 200, "cadeira")
    objs.createObj(130, 200, "mesa")
    objs.createObj(180, 200, "cadeira")
    objs.createObj(220, 200, "mesa")
end

function  love.draw()
    objs.draw()
end

function objs.create(...)
    local objList = {...}
    for i, obj in ipairs(objList) do
         print("tag: " .. obj.id, "\n x: " ..obj.x, "\n y: " .. obj.y )
    end
end
