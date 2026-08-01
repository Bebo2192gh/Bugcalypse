local Menu = {}

function Menu.draw()
    -- Botões do menu
    love.graphics.draw(playButton, 1280 / 2, 250 + playButton:getHeight() / 2, 0, playHover and 1.02 or 1, playHover and 1.02 or 1, playButton:getWidth() / 2, playButton:getHeight() / 2)

    love.graphics.draw(configButton, 1280 / 2, 360 + configButton:getHeight() / 2, 0, configHover and 1.02 or 1, configHover and 1.02 or 1, configButton:getWidth() / 2, configButton:getHeight() / 2)

    love.graphics.draw(quitButton, 1280 / 2, 470 + quitButton:getHeight() / 2, 0, quitHover and 1.02 or 1, quitHover and 1.02 or 1, quitButton:getWidth() / 2, quitButton:getHeight() / 2)

    love.graphics.draw(title, 1280 / 2 - title:getWidth() / 2, 65)
    love.graphics.print("ML studios 2026", 1075, 690, 0, 2, 2)
    love.graphics.print("v0.1", 1220, 665, 0, 2, 2)
end

function Menu.update(dt)

end

return Menu
