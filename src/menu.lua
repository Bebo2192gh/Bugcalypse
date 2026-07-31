local Menu = {}

function Menu.draw()
    -- Botões do menu
    love.graphics.draw(playButton, 40, 220)
    love.graphics.draw(configButton, 40, 320)

    love.graphics.draw(title, 400, 100)
    love.graphics.print("made by:ML studios", 1035, 690, 0, 2, 2)
    love.graphics.print("pré-alpha v1.0", 1100, 665, 0, 2, 2)
end

function Menu.update(dt)

end

    return Menu