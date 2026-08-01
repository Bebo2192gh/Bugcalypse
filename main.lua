local Menu = require("src.menu")
local Game = require("src.game")
local Configs = require("src.configs")
local PlayerSelect = require("src.player_select")

screen = "menu"
fade = 1

function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest")
    love.window.setTitle("Bugcalypse")

    title = love.graphics.newImage("assets/sprites/arts/title.png")
    playButton = love.graphics.newImage("assets/sprites/buttons/playbutton.png")
    configButton = love.graphics.newImage("assets/sprites/buttons/configbutton.png")
    quitButton = love.graphics.newImage("assets/sprites/buttons/quitbutton.png")

    playHover = false
    configHover = false
    quitHover = false
end

function love.update(dt)
    if screen == "menu" then
        Menu.update(dt)
    elseif screen == "game" then
        Game.update(dt)
    end

    fade = math.max(fade - dt * 0.5, 0)

    local mx, my = love.mouse.getPosition()

    playHover = mx >= 1280 / 2 - playButton:getWidth() / 2 and
                mx <= 1280 / 2 + playButton:getWidth() / 2 and
                my >= 250 and
                my <= 350

    configHover = mx >= 1280 / 2 - configButton:getWidth() / 2 and
                  mx <= 1280 / 2 + configButton:getWidth() / 2 and
                  my >= 360 and
                  my <= 460
    quitHover = mx >= 1280 / 2 - quitButton:getWidth() / 2 and
                mx <= 1280 / 2 + quitButton:getWidth() / 2 and
                my >= 470 and
                my <= 570

    if screen == "configs" and love.keyboard.isDown("escape") then
        screen = "menu"
    end
end

function love.mousepressed(x, y, button)
    if button == 1 then
        if x >= 1280 / 2 - playButton:getWidth() / 2 and x <= 1280 / 2 + playButton:getWidth() / 2 and y >= 250 and y <= 350 then
            screen = "player_select"
            fade = 1
        end
    end
    if button == 1 then
        if x >= 1280 / 2 - configButton:getWidth() / 2 and x <= 1280 / 2 + configButton:getWidth() / 2 and y >= 360 and y <= 460 then
            screen = "configs"
            fade = 1
        end
    end
    if button == 1 then
        if x >= 1280 / 2 - quitButton:getWidth() / 2 and x <= 1280 / 2 + quitButton:getWidth() / 2 and y >= 470 and y <= 570 then
            love.event.quit()
        end
    end
end

function love.draw()
    if screen == "menu" then
        Menu.draw()
    elseif screen == "game" then
        Game.draw()
    end
    if screen == "configs" then
        Configs.draw()
    end
    if screen == "player_select" then
        PlayerSelect.draw()
    end

    love.graphics.setColor(0, 0, 0, fade)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setColor(1, 1, 1, 1)
end