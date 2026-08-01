local Menu = require("src.menu")
local Game = require("src.game")
local Configs = require("src.configs")
local PlayerSelect = require("src.player_select")
local conf = require("conf")

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

    virtualWidth = 1280
    virtualHeight = 720
end

function love.update(dt)
    if screen == "menu" then
        Menu.update(dt)
    elseif screen == "game" then
        Game.update(dt)
    end

    fade = math.max(fade - dt * 0.5, 0)

    local sx = love.graphics.getWidth() / virtualWidth
    local sy = love.graphics.getHeight() / virtualHeight

    local mx, my = love.mouse.getPosition()
    mx = mx / sx
    my = my / sy

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
end

function love.keypressed(key)
    if key == "f11" then
        love.window.setFullscreen(not love.window.getFullscreen())
    end
end

function love.mousepressed(x, y, button)
    local sx = love.graphics.getWidth() / virtualWidth
    local sy = love.graphics.getHeight() / virtualHeight

    x = x / sx
    y = y / sy

    if screen == "menu" and button == 1 then
        if x >= 1280 / 2 - playButton:getWidth() / 2 and x <= 1280 / 2 + playButton:getWidth() / 2 and y >= 250 and y <= 350 then
            screen = "player_select"
            fade = 1
        end
    end

    if screen == "menu" and button == 1 then
        if x >= 1280 / 2 - configButton:getWidth() / 2 and x <= 1280 / 2 + configButton:getWidth() / 2 and y >= 360 and y <= 460 then
            screen = "configs"
            fade = 1
        end
    end

    if screen == "menu" and button == 1 then
        if x >= 1280 / 2 - quitButton:getWidth() / 2 and x <= 1280 / 2 + quitButton:getWidth() / 2 and y >= 470 and y <= 570 then
            love.event.quit()
        end
    end



end

function love.draw()
    local sx = love.graphics.getWidth() / virtualWidth
    local sy = love.graphics.getHeight() / virtualHeight

    love.graphics.push()
    love.graphics.scale(sx, sy)

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
    love.graphics.rectangle("fill", 0, 0, virtualWidth, virtualHeight)
    love.graphics.setColor(1, 1, 1, 1)

    love.graphics.print("FPS: " .. love.timer.getFPS(), 10, 10)
    love.graphics.print("Fullscreen: F11", 10, 30)

    love.graphics.pop()
end