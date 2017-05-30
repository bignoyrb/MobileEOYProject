-- CS2430 Project 1 Tappy Dragon Endless runner
-- Bryon Reynolds
-- ID: 0514518

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- game Variables
screenXwidth = display.contentWidth
screenXcenter = screenXwidth/2
screenYheight = display.contentHeight
screenYcenter = screenYheight/2
score = 0
highScore = 0

-- sound stuff
flapSound1 = audio.loadSound ("Project1Sound/soundFlap1.wav")
flapSound2 = audio.loadSound ("Project1Sound/soundFlap2.wav")
flapSound3 = audio.loadSound ("Project1Sound/soundFlap3.wav")
flapSound4 = audio.loadSound ("Project1Sound/soundFlap4.wav")
soundTap = audio.loadSound("Project1Sound/soundClick.wav")
soundWall = audio.loadSound("Project1Sound/soundHitWall.wav")
soundGround = audio.loadSound("Project1Sound/soundHitGround.wav")
soundScore = audio.loadSound("Project1Sound/soundScore.wav")
soundScore2 = audio.loadSound("Project1Sound/soundScore2.wav")
soundBackground = audio.loadStream ( "Project1Sound/soundBackground.mp3")

backgroundChannel = audio.play (soundBackground, { loops = -1}) -- needed so I can stop it later

-- groups
screen = display.newGroup()

require("background")
require("player")
require("obstacles")
require("collisions")
require("powerups")
require("gamestates")
require("score")

-- inserts object into the screen in the order i want them so they overlap properly
screen:insert(backbackground)
screen:insert(backbackgroundlayer1)
screen:insert(backbackgroundlayer12)
screen:insert(backbackgroundlayer2)
screen:insert(backbackgroundlayer22)
screen:insert(backbackgroundlayer3)
screen:insert(backbackgroundlayer32)
screen:insert(cloud1)
screen:insert(cloud2)
screen:insert(greenTop)
screen:insert(greenBottom)
screen:insert(pinkTop)
screen:insert(pinkBottom)
screen:insert(blueTop)
screen:insert(blueBottom)
screen:insert(yellowTop)
screen:insert(yellowBottom)
screen:insert(star)
screen:insert(star)
screen:insert(ground1)
screen:insert(ground2)

-- updates the game by calling all the update functions
function updateGame( event )
	
	updateBackgrounds()
    updatePlayer()
    updateObstacles()
    updatePowerUps()
    checkCollisions()
    updateScore()
end

playButton:addEventListener("tap", pickDragon )
helpButton:addEventListener("tap", howToPlay )

