local Fade = {}

function Fade.load()
    fade = 1
end

function Fade.update(dt)
    -- Atualiza o valor de fade para criar um efeito de transição suave
    fade = math.max(fade - dt * 0.5, 0)
end

function Fade.draw()
    love.graphics.setColor(0, 0, 0, fade)
    love.graphics.rectangle("fill", 0, 0, virtualWidth, virtualHeight)
    love.graphics.setColor(1, 1, 1, 1)
end

return Fade