
WINDOW_WIDTH = 1288
WINDOW_HEIGHT = 728

function love.load()
    player1 = {}
    player1.x = 400
    player1.y = 200
    player1.speed = 3

    player2 = {}
    player2.x = 200
    player2.y = 100
    player2.speed = 3


    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false, 
        resizable = true 
    })
  end
  
function love.update(dt)
    if love.keyboard.isDown("d") then
        player1.x = player1.x + player1.speed
    elseif love.keyboard.isDown("a") then
        player1.x = player1.x - player1.speed
    end
  
    if love.keyboard.isDown("w") then
        player1.y = player1.y - player1.speed
    elseif love.keyboard.isDown("s") then
        player1.y = player1.y + player1.speed
    end

    if love.keyboard.isDown("right") then
		  player2.x = player2.x + 3
    elseif love.keyboard.isDown("left") then
		  player2.x = player2.x - 3
	  end
  
	  if love.keyboard.isDown("up") then
		  player2.y = player2.y - 3
    elseif love.keyboard.isDown("down") then
		  player2.y = player2.y + 3
	  end

end
  
  function love.draw()
    love.graphics.setBackgroundColor(0, 0, 255)
    love.graphics.circle('fill', player1.x, player1.y, 20)
    love.graphics.circle('fill', player2.x, player2.y, 20)
  end
  