local Menu = {}

function Menu.draw()
    -- Botões do menu
    love.graphics.draw(playButton, 1280 / 2 - playButton:getWidth() / 2, 250)
    love.graphics.draw(configButton, 1280 / 2 - configButton:getWidth() / 2, 360)

    love.graphics.draw(title, 1280 / 2 - title:getWidth() / 2, 100)
    love.graphics.print("ML studios 2026", 1075, 690, 0, 2, 2)
    love.graphics.print("pré-alpha v1.0", 1100, 665, 0, 2, 2)
end

function Menu.update(dt)

end

    return Menu