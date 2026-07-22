
local objs = require("objs")
local teste
local player2 = require("player2")
local player = require("player")
local cutsceneManager = require("cutsceneManager")

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
<<<<<<< Updated upstream
    while not cutsceneManager.triggerCutscene() do
        player.update(dt)
        --player2.update(dt)
        objs.ChangeObjectPos(teste, 100 * dt, 100 * dt)
=======
 if not cutsceneManager.triggerCutscene() then
    player.update(dt)
    --player2.update(dt)
    objs.ChangeObjectPos(teste, 100 * dt, 100 * dt)
>>>>>>> Stashed changes
    end
end

function  love.draw()
    player.draw()
    objs.draw()
end

function love.keypressed(key, scancode, isrepeat)
    if key == "o" then
        cutsceneManager.triggerCutscene(true)
    elseif key == "space" and cutsceneManager.triggerCutscene() then
        cutsceneManager.triggerCutscene(false)
    end
end