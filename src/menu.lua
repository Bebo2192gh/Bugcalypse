local Menu = {}

function Menu.draw()
    -- Botão Play
    love.graphics.setColor(255, 255, 255)
    love.graphics.rectangle("fill", 20, 200, 200, 60)
    love.graphics.setColor(0, 0, 0) 
    love.graphics.print("play", 40, 220, 0, 2, 2)
    -- Botão Configs
    love.graphics.setColor(255, 255, 255) 
    love.graphics.rectangle("fill", 20, 300, 200, 60)
    love.graphics.setColor(0, 0, 0) 
    love.graphics.print("configs", 40, 320, 0, 2, 2)
    -- Botão Characters
    love.graphics.setColor(255, 255, 255) 
    love.graphics.rectangle("fill", 20, 400, 200, 60)
    love.graphics.setColor(0, 0, 0) 
    love.graphics.print("characters", 40, 420, 0, 2, 2)
    love.graphics.setColor(255, 255, 255) 
    love.graphics.rectangle("fill", 20, 500, 200, 60)
    love.graphics.setColor(0, 0, 0) 
    love.graphics.print("exit", 40, 520, 0, 2, 2)
    love.graphics.setColor(1, 0, 0) 
    love.graphics.draw(title, 400, 100)
    love.graphics.print("made by:ML studios", 1035, 690, 0, 2, 2)
    love.graphics.print("pré-alpha v1.0", 1100, 665, 0, 2, 2)
end

function Menu.update(dt)

end

    return Menu