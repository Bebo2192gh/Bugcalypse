local Menu = require("src.menu")

screen = "menu"

function love.load()
    love.window.setTitle("Meu Jogo")
end

function love.draw()
    if screen == "menu" then
        Menu.draw()
    end
end