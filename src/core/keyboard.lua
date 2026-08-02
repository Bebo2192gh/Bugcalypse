local Keyboard = {}

function Keyboard.update(dt)
    -- Função para lidar com eventos de teclado
    function love.keypressed(key)
        if key == "f11" then
            love.window.setFullscreen(not love.window.getFullscreen())
        end
    end
end

return Keyboard