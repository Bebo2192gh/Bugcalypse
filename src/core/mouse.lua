local Mouse = {}

Mouse.x = 0
Mouse.y = 0

function Mouse.update()
    local sx = love.graphics.getWidth() / virtualWidth
    local sy = love.graphics.getHeight() / virtualHeight

    local mx, my = love.mouse.getPosition()

    Mouse.x = mx / sx
    Mouse.y = my / sy
end

function Mouse.getPosition()
    return Mouse.x, Mouse.y
end

return Mouse