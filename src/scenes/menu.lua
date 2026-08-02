local Menu = {}
local Fade = require("src.core.fade")
local Assets = require("src.assets")
local Mouse = require("src.core.mouse")
local Hover = require("src.core.hover")

function Menu.draw()
    -- Botões do menu
    love.graphics.draw(playButton, 1280 / 2, 250 + playButton:getHeight() / 2, 0, playHover and 1.02 or 1, playHover and 1.02 or 1, playButton:getWidth() / 2, playButton:getHeight() / 2)

    love.graphics.draw(configButton, 1280 / 2, 360 + configButton:getHeight() / 2, 0, configHover and 1.02 or 1, configHover and 1.02 or 1, configButton:getWidth() / 2, configButton:getHeight() / 2)

    love.graphics.draw(quitButton, 1280 / 2, 470 + quitButton:getHeight() / 2, 0, quitHover and 1.02 or 1, quitHover and 1.02 or 1, quitButton:getWidth() / 2, quitButton:getHeight() / 2)

    love.graphics.draw(title, 1280 / 2 - title:getWidth() / 2, 65)
    love.graphics.print("ML studios 2026", 1075, 690, 0, 2, 2)
    love.graphics.print("v0.1", 1220, 665, 0, 2, 2)

    love.graphics.print("FPS: " .. love.timer.getFPS(), 10, 10)
    love.graphics.print("Fullscreen: F11", 10, 30)
end

function Menu.update(dt)
    local x, y = Mouse.getPosition()

        playHover = Hover.check(
        1280 / 2 - playButton:getWidth() / 2,
        250,
        playButton:getWidth(),
        100
        )

        configHover = Hover.check(
        1280 / 2 - configButton:getWidth() / 2,
        360,
        configButton:getWidth(),
        100
        )

        quitHover = Hover.check(
        1280 / 2 - quitButton:getWidth() / 2,
        470,
        quitButton:getWidth(),
        100
        )
end

function Menu.mousepressed(x, y, button)
    if button ~= 1 then
        return
    end

    if playHover then
        screen = "game"
        fade = 1
    elseif configHover then
        screen = "settings"
        fade = 1
    elseif quitHover then
        love.event.quit()
    end
end

return Menu