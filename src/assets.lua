local Assets = {}

function Assets.load()
    -- Carrega as imagens dos botões e do título
    title = love.graphics.newImage("assets/sprites/arts/title.png")
    playButton = love.graphics.newImage("assets/sprites/buttons/playbutton.png")
    configButton = love.graphics.newImage("assets/sprites/buttons/configbutton.png")
    quitButton = love.graphics.newImage("assets/sprites/buttons/quitbutton.png")
end

return Assets