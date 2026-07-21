objs = {}

objList = {}
objCount = 0

function objs.load()
    
end

function obj(x, y, id)
    return {x = x, y = y, id = id}
end

function objs.createObj(x, y, id)
    objCount = objCount + 1
    table.insert(objList, obj(x, y, id))
end

function objs.draw()
    for i, obj in ipairs(objList) do
        id = obj.id
        if id == "cadeira" then
            love.graphics.setColor(1, 0, 0)
            love.graphics.rectangle("fill", obj.x, obj.y, 40, 80)
        elseif id == "mesa" then
            love.graphics.setColor(0, 1, 0)
            love.graphics.rectangle("fill", obj.x, obj.y, 40, 40)
        end
    end
end

return objs