local Hover = {}
local Mouse = require("src.core.mouse")

function Hover.check(x, y, width, height)
    return Mouse.x >= x and
           Mouse.x <= x + width and
           Mouse.y >= y and
           Mouse.y <= y + height
end

return Hover