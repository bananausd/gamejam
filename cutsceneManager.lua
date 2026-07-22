local cutsceneManager = {}
local cutsceneAtiva = false 

function cutsceneManager.triggerCutscene(state)
    if state ~= nil then
        cutsceneAtiva = state
    end
    return cutsceneAtiva
end

return cutsceneManager
