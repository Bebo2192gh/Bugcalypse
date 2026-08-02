local Game = {}
local Camera = require("src.core.camera")
local Tilemap = require("src.core.tilemap")

function Game.draw()
    Camera:set()

    Tilemap:draw()

    Camera:unset()
end

function Game.update(dt)
    Camera.x = Tilemap.width * Tilemap.tilewidth / 2 - 1280 / (2 * Camera.zoom)
    Camera.y = Tilemap.height * Tilemap.tileheight / 2 - 720 / (2 * Camera.zoom)
end

return Game