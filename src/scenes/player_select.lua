local PlayerSelect = {}

function PlayerSelect.draw()
    love.graphics.print("Escolha seu personagem:", 1280 / 2 - 125, 70, 0, 2, 2)
    love.graphics.print("Homem", 380, 200, 0, 1.5, 1.5)
    love.graphics.print("Mulher", 900, 200, 0, 1.5, 1.5)
end

return PlayerSelect