local Camera = {
    x = 0,
    y = 0,
    zoom = 3
}

function Camera.update()
    
end

function Camera:set()
    love.graphics.push()

    love.graphics.scale(self.zoom)

    love.graphics.translate(
        -self.x,
        -self.y
    )
end

function Camera:unset()
    love.graphics.pop()
end

return Camera