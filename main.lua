local Menu = require("src.menu")
local Game = require("src.game")

screen = "menu"

function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest")
    love.window.setTitle("Meu Jogo")
    title = love.graphics.newImage("assets/images/title.png")
    playButton = love.graphics.newImage("assets/sprites/playbutton.png")
    configButton = love.graphics.newImage("assets/sprites/configbutton.png")
end

function love.update(dt)
    if screen == "menu" then
        Menu.update(dt)
    elseif screen == "game" then
        Game.update(dt)
    end
end

function love.mousepressed(x, y, button)
    if button == 1 then
        if x >= 20 and x <= 220 and y >= 200 and y <= 260 then
            screen = "game"
        end
    end
end

function love.draw()
    if screen == "menu" then
        Menu.draw()
    elseif screen == "game" then
        Game.draw()
    end
end
