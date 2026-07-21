objs = {}

objList = {}
objCount = 0

---------------------------------------------------------------
---
---     Constructors
---
---------------------------------------------------------------

local function ObjContruct(_x, _y, _type, _uuid)
    return {x = _x, y = _y, type = _type, uuid = _uuid}
end

---------------------------------------------------------------
---
---     Public Methods
---
---------------------------------------------------------------

-- objs.CreateObj retorna o uuid do objeto
function objs.CreateObj(_x, _y, _type)
    objCount = objCount + 1
    obj = ObjContruct(_x, _y, _type, objCount)
    table.insert(objList, obj)
    return obj
end

-- find an object by uuid
function objs.FindByUUID(_uuid)
    for i, obj in ipairs(objList) do
        if obj.uuid == _uuid then
            return obj
        end
    end
    return nil
end

function objs.SetObjectPos(_obj, _x, _y)
    if _x then
        _obj.x = _x
    end
    if _y then
        _obj.y = _y
    end
end

function objs.ChangeObjectPos(_obj, _x, _y)
    if _x then
        _obj.x = _obj.x + _x
    end
    if _y then
        _obj.y = _obj.y + _y
    end
end

---------------------------------------------------------------
---
---     Private Methods
---
---------------------------------------------------------------



---------------------------------------------------------------
---
---     Love Methods
---
---------------------------------------------------------------

function objs.load()
    
end

function objs.draw()
    for i, obj in ipairs(objList) do
        type = obj.type
        if type == "cadeira" then
            love.graphics.setColor(1, 0, 0)
            love.graphics.rectangle("fill", obj.x, obj.y, 40, 80)
        elseif type == "mesa" then
            love.graphics.setColor(0, 1, 0)
            love.graphics.rectangle("fill", obj.x, obj.y, 40, 40)
        end
    end
end


return objs