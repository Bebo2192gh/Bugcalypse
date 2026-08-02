local Settings = {}

function Settings.load()
    -- Ajusta o filtro padrão para nearest
    love.graphics.setDefaultFilter("nearest", "nearest")
    love.window.setTitle("Bugcalypse")
end

function Settings.draw()
    love.graphics.print("Configurações:", 60, 100, 0, 2, 2)
    love.graphics.print("Fullscreen: ", 100, 200, 0, 1.5, 1.5)
    love.graphics.print("Opção 2: ...", 100, 250, 0, 1.5, 1.5)
    love.graphics.print("Opção 3: ...", 100, 300, 0, 1.5, 1.5)
end

return Settings