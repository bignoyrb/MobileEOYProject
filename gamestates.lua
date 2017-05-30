-- creating button and title screens
gameoverButton = display.newImage("Project1Art/gameoverbutton.png")
gameoverButton.x = -1000
gameoverButton.y = -1000

replayButton = display.newImage("Project1Art/replaybutton.png")
replayButton.x = -1000
replayButton.y = -1000

titleScreen = display.newImage("Project1Art/titlescreen.png")
titleScreen.x = screenXcenter
titleScreen.y = screenYcenter

playButton = display.newImage("Project1Art/playbutton.png")
playButton.x = screenXcenter 
playButton.y = screenYcenter + 100

helpButton = display.newImage("Project1Art/helpbutton.png")
helpButton.x = screenXcenter 
helpButton.y = screenYcenter + 220

helpScreen = display.newImage("Project1Art/howtoplay.png")
helpScreen.x = -1000
helpScreen.y = -1000

pickScreen = display.newImage("Project1Art/pickscreen.png")
pickScreen.x = -1000
pickScreen.y = -1000

pick1Button = display.newImage("Project1Art/player1pick.png")
pick1Button.x = -1000
pick1Button.y = -1000

pick2Button = display.newImage("Project1Art/player2pick.png")
pick2Button.x = -1000
pick2Button.y = -1000

pick3Button = display.newImage("Project1Art/player3pick.png")
pick3Button.x = -1000
pick3Button.y = -1000

pick4Button = display.newImage("Project1Art/player4pick.png")
pick4Button.x = -1000
pick4Button.y = -1000

-- sets the gameover screen
function GameOver()
        
    gameoverButton.x = screenXcenter
    gameoverButton.y = screenYcenter
    
    replayButton.x = screenXcenter
    replayButton.y = screenYcenter + 50
        
    replayButton:addEventListener( "tap", resetGame )
end    

-- starts the gameplay with the player numner to select what dragon is playing
function startPlay( event )
    
    audio.stop( backgroundChannel )
    
    num = event.target.num
    drawPlayer(num)
    
    pickScreen.x = -1000
    pickScreen.y = -1000
    
    pick1Button.x = -1000
    pick1Button.y = -1000
    
    pick2Button.x = -1000
    pick2Button.y = -1000
    
    pick3Button.x = -1000
    pick3Button.y = -1000
    
    pick4Button.x = -1000
    pick4Button.y = -1000
    
    scoreImage.x = 100
    scoreImage.y = 50
    
    scoreText.x = 232
    scoreText.y = 51
    
    hiScoreImage.x = 810
    hiScoreImage.y = 50
    
    hiScoreText.x = 962
    hiScoreText.y = 51
     
    timer.performWithDelay(1, updateGame, -1)
end 

-- sets up the pick dragon screen and sets the player number
function pickDragon( event )
    titleScreen.x = -1000
    titleScreen.y = -1000
    
    helpButton.x = -1000
    helpButton.y = -1000
    
    playButton.x = -1000
    playButton.y = -1000
    
    pickScreen.x = screenXcenter
    pickScreen.y = screenYcenter
     
    pick1Button.x = screenXcenter - 100
    pick1Button.y = screenYcenter + 30
    pick1Button.num = 1
    
    pick2Button.x = screenXcenter + 100
    pick2Button.y = screenYcenter + 30
    pick2Button.num = 2
    
    pick3Button.x = screenXcenter - 100
    pick3Button.y = screenYcenter + 200
    pick3Button.num = 3
    
    pick4Button.x = screenXcenter + 100
    pick4Button.y = screenYcenter + 200
    pick4Button.num = 4
    
    pick1Button:addEventListener( "tap", startPlay )
    pick2Button:addEventListener( "tap", startPlay )
    pick3Button:addEventListener( "tap", startPlay )
    pick4Button:addEventListener( "tap", startPlay )
end 

-- shows how to play screen
function howToPlay( event )
    
    helpScreen.x = screenXcenter
    helpScreen.y = screenYcenter
    helpScreen:addEventListener( "tap", removeHowToPlay )
end

-- removes how to play screen
function removeHowToPlay ( event )
    
    helpScreen.x = -1000
    helpScreen.y = -1000
end

-- resets the game objects to there original place
function resetGame()
        
    resetObstacles()
    resetPlayer()
    resetPowerups()
        
    if (score > highScore) then
        highScore = score
    end
        
    score = 0
       
    gameoverButton.x = -1000
    gameoverButton.y = -1000
    
    replayButton.x = -1000
    replayButton.y = -1000
    
end