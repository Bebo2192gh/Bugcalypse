local Menu = require("src.menu")
local Game = require("src.game")

screen = "menu"
fade = 1

function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest")
    love.window.setTitle("Meu Jogo")

    title = love.graphics.newImage("assets/images/title.png")
    playButton = love.graphics.newImage("assets/sprites/playbutton.png")
    configButton = love.graphics.newImage("assets/sprites/configbutton.png")
    redlight = love.graphics.newImage("assets/images/redlight.png")
end

function love.update(dt)
    if screen == "menu" then
        Menu.update(dt)
    elseif screen == "game" then
        Game.update(dt)
    end

    fade = math.max(fade - dt * 0.5, 0)
end

function love.mousepressed(x, y, button)
    if button == 1 then
        if x >= 20 and x <= 220 and y >= 200 and y <= 260 then
            screen = "game"
            fade = 1
        end
    end
end

function love.draw()

    if screen == "menu" then
        Menu.draw()
    elseif screen == "game" then
        Game.draw()
    end

    love.graphics.setColor(0, 0, 0, fade)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setColor(1, 1, 1, 1)
end