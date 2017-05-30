soundGroundCounter = 0
soundWallCounter = 0

-- creating player
function drawPlayer( playerNum )
    options =
    {
        width = 116,
        height = 102,
        numFrames = 16
    }

    if (playerNum == 1) then

        imageSheet = graphics.newImageSheet( "Project1Art/player1sheet.png", options )

    elseif (playerNum == 2) then

        imageSheet = graphics.newImageSheet( "Project1Art/player2sheet.png", options )

    elseif (playerNum == 3) then

        imageSheet = graphics.newImageSheet( "Project1Art/player3sheet.png", options )

    else    

        imageSheet = graphics.newImageSheet( "Project1Art/player4sheet.png", options )
    end    

     sequenceData =
    {
        { name="flying", frames={ 13,14,15,16 }, time=300, loopCount = 0, loopDirection = "forward"  },
        { name="dead", frames={ 1,2,3,4 }, time=100, loopCount = 0, loopDirection = "forward"   },
        { name="dizzy", frames={ 5,6,7,8,9,10,11,12 }, time=300, loopCount = 0, loopDirection = "forward" }
    }

    player = display.newSprite( imageSheet, sequenceData )
    player.x = 200
    player.y = screenYcenter -- fall from middle of screen to start
    player:setSequence("flying")
    player:play()
    player.rotation = 0
    player.acc = 1.5
    player.rotationSpeed = 2
    
    hitBox = display.newRect( 0,0, player.width - 50, player.width - 50 )
    
    hitBox.x = player.x
    hitBox.y = player.y
    hitBox.rotation = player.rotation
    hitBox.alpha = 0.0

    Runtime:addEventListener("tap", movePlayer )    
    
end    

-- updates the players position and checks to see if it has hit the ground or
-- a obstacle
function updatePlayer(event)
      
    player.y = player.y + player.acc
    player.acc = player.acc + 0.4
       
    player.rotation = player.rotation + player.rotationSpeed
      
    if (player.rotation > 90) then 
        player.rotation = 90
    end
    
    if (player.acc > 15) then
        player.acc = 15
    end
    
    if (player.y > 650) then
        player.y = 650
        speed = 0
        player.rotationSpeed = 0 
        player:setSequence("dead")
        player:play()
        -- so it only plays sound once
        if soundGroundCounter == 0 then
            audio.play(soundGround)
            soundGroundCounter = 1
        end  
        GameOver() 
        
    elseif (collision > 0) then   
        speed = 0
        player:setSequence("dizzy")
        player:play()
        player.acc = player.acc + 10
        player.rotationSpeed = 5
        -- so it only plays sound once
         if soundWallCounter == 0 then
            audio.play(soundWall)
            soundWallCounter = 1
        end    
       
        if (player.y > 630) then
            GameOver() 
        end    
    else 
        speed = 10
        player.rotationSpeed = 2 
    end    
    
    hitBox.x = player.x
    hitBox.y = player.y
    hitBox.rotation = player.rotation
    
end   

-- moves the player up and plays a flapping sound
function movePlayer (event)
   
    flapNum = (math.random (1,4))
        
    if (flapNum == 1) then
         audio.play(flapSound1) 
    elseif (flapNum == 2) then
         audio.play(flapSound2)
    elseif (flapNum == 3) then
         audio.play(flapSound3)
    else
         audio.play(flapSound4) 
    end        
       
    player.y = player.y - 70
    player.rotation = player.rotation - .1
    if (player.rotation > -45) then 
        player.rotation = -45
    end
               
    if (player.y < 0) then
        player.y = 0
    end    
    
    player.acc = 1.01
end 

-- resets the player to its original position
function resetPlayer()
    
    player.x = 200
    player.y = screenYcenter -- fall from middle of screen to start
    player:setSequence("flying")
    player:play()
    player.rotation = 0
    player.acc = 1.5
    player.rotationSpeed = 2
    
    collision = 0
    soundGroundCounter = 0
    soundWallCounter = 0
end
  


