local cutsceneManager = {}
local cutsceneAtiva = false 

function cutsceneManager.triggerCutscene(state)
    if state ~= nil then
        cutsceneAtiva = state
    end
    return cutsceneAtiva
end


--[[
ideia é a seguinte
chama essa func ai e enquanto ela for true congela o jogo

]]
