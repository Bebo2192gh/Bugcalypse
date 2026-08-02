local Menu = require("src.scenes.menu")
local Game = require("src.scenes.game")
local Settings = require("src.scenes.settings")
local PlayerSelect = require("src.scenes.player_select")
local conf = require("conf")
local Assets = require("src.assets")
local Camera = require("src.core.camera")
local Player = require("src.entities.player")
local GameOver = require("src.scenes.gameover")
local Tilemap = require("src.core.tilemap")
local Fade = require("src.core.fade")
local Screen = require("src.core.screen")
local Mouse = require("src.core.mouse")
local Hover = require("src.core.hover")
local Keyboard = require("src.core.keyboard")

function love.load()
    
    Assets.load()
    Settings.load()
    Screen.load()
    Fade.load()

end

-- Função de atualização do jogo
function love.update(dt)

    Fade.update(dt)
    Screen.switch(dt)
    Mouse.update(dt)
    Keyboard.update(dt)
    Screen.switch(dt)

end

function love.mousepressed(x, y, button)
    if screen == "menu" then
        Menu.mousepressed(x, y, button)
    end
end

-- Função de desenho do jogo
function love.draw()
    local sx = love.graphics.getWidth() / virtualWidth
    local sy = love.graphics.getHeight() / virtualHeight

    love.graphics.push()
    love.graphics.scale(sx, sy)

        Fade.draw()
        Screen.switch()

    love.graphics.pop()
end