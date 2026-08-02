local Screen = {}
local Menu = require("src.scenes.menu")
local Game = require("src.scenes.game")
local GameOver = require("src.scenes.gameover")
local Settings = require("src.scenes.settings")
local PlayerSelect = require("src.scenes.player_select")

function Screen.load()
    -- Inicializa a tela atual e o valor de fade
    screen = "menu"

    -- Configura a resolução virtual do jogo
    virtualWidth = 1280
    virtualHeight = 720

    -- Obtém a escala atual da tela em relação à resolução virtual
    local sx = love.graphics.getWidth() / virtualWidth
    local sy = love.graphics.getHeight() / virtualHeight
end

function Screen.switch(dt)
    if screen == "menu" then
        Menu.update(dt)
        Menu.draw()
    elseif screen == "game" then
        Game.update(dt)
        Game.draw()
    elseif screen == "game_over" then
        GameOver.update(dt)
        GameOver.draw()
    elseif screen == "settings" then
        Settings.update(dt)
        Settings.draw()
    else
        if screen == "player_select" then
            PlayerSelect.update(dt)
            PlayerSelect.draw()
        end
    end
end

return Screen