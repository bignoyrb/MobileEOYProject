offSet = 433

-- create the obstacles
greenTop = display.newImage("Project1Art/greentop.png")
greenTop.x = screenXwidth + 100
greenTop.y = screenYcenter - offSet

greenBottom = display.newImage("Project1Art/greenbottom.png")
greenBottom.x = screenXwidth + 100
greenBottom.y = screenYcenter + offSet

pinkTop = display.newImage("Project1Art/pinktop.png")
pinkTop.x = screenXwidth + 600
pinkTop.y = screenYcenter - (offSet - 90)

pinkBottom = display.newImage("Project1Art/pinkbottom.png")
pinkBottom.x = screenXwidth + 600
pinkBottom.y = screenYcenter + (offSet + 90)

blueTop = display.newImage("Project1Art/bluetop.png")
blueTop.x = screenXwidth + 1000
blueTop.y = screenYcenter - (offSet + 10)

blueBottom = display.newImage("Project1Art/bluebottom.png")
blueBottom.x = screenXwidth + 1000
blueBottom.y = screenYcenter + (offSet - 10)

yellowTop = display.newImage("Project1Art/yellowtop.png")
yellowTop.x = screenXwidth + 1500
yellowTop.y = screenYcenter - (offSet - 60)

yellowBottom = display.newImage("Project1Art/yellowbottom.png")
yellowBottom.x = screenXwidth + 1500
yellowBottom.y = screenYcenter + (offSet + 60)

-- this moves the obstacles position  ever time its called
-- creating a random opening location each time
function updateObstacles()
       
    openingOffSet = math.random (-200, 200)
    
   	greenTop.x = (greenTop.x - speed)
	if(greenTop.x < screenEnd) then
        greenTop.x = screenXwidth * 1.5
        greenTop.y = screenYcenter - (offSet - openingOffSet)
	end
    
    greenBottom.x = (greenBottom.x - speed)
	if(greenBottom.x < screenEnd) then
        greenBottom.x = screenXwidth * 1.5
        greenBottom.y = screenYcenter + (offSet + openingOffSet)
	end
    
    pinkTop.x = (pinkTop.x - speed)
	if(pinkTop.x < screenEnd) then
        pinkTop.x = screenXwidth * 1.5
        pinkTop.y = screenYcenter - (offSet - openingOffSet)
	end
    
    pinkBottom.x = (pinkBottom.x - speed)
	if(pinkBottom.x < screenEnd) then
        pinkBottom.x = screenXwidth * 1.5
        pinkBottom.y = screenYcenter + (offSet + openingOffSet)
	end
    
    blueTop.x = (blueTop.x - speed)
	if(blueTop.x < screenEnd) then
        blueTop.x = screenXwidth * 1.5
        blueTop.y = screenYcenter - (offSet - openingOffSet)
	end
    
    blueBottom.x = (blueBottom.x - speed)
	if(blueBottom.x < screenEnd) then
        blueBottom.x = screenXwidth * 1.5
        blueBottom.y = screenYcenter + (offSet + openingOffSet)
	end
    
    yellowTop.x = (yellowTop.x - speed)
	if(yellowTop.x < screenEnd) then
        yellowTop.x = screenXwidth * 1.5
        yellowTop.y = screenYcenter - (offSet - openingOffSet)
	end
    
    yellowBottom.x = (yellowBottom.x - speed)
	if(yellowBottom.x < screenEnd) then
        yellowBottom.x = screenXwidth * 1.5
        yellowBottom.y = screenYcenter + (offSet + openingOffSet)
	end
     
end

-- reset the original positions of the obstacales
function resetObstacles()
        
    greenTop.x = screenXwidth + 100
    greenTop.y = screenYcenter - offSet
    
    greenBottom.x = screenXwidth + 100
    greenBottom.y = screenYcenter + offSet
    
    pinkTop.x = screenXwidth + 600
    pinkTop.y = screenYcenter - (offSet + 70)
    
    pinkBottom.x = screenXwidth + 600
    pinkBottom.y = screenYcenter + (offSet - 70)
    
    blueTop.x = screenXwidth + 1000
    blueTop.y = screenYcenter - (offSet - 20)
    
    blueBottom.x = screenXwidth + 1000
    blueBottom.y = screenYcenter + (offSet + 20)
    
    yellowTop.x = screenXwidth + 1500
    yellowTop.y = screenYcenter - (offSet - 70)

    yellowBottom.x = screenXwidth + 1500
    yellowBottom.y = screenYcenter + (offSet + 70)
end
	

