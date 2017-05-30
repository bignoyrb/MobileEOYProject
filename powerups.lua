-- creating power ups
star = display.newImage("Project1Art/star.png")
star.x = screenXwidth + 350
star.y = screenYcenter + (math.random (-200,200)) 

diamond = display.newImage("Project1Art/diamond.png")
diamond.x = screenXwidth + 1750
diamond.y = screenYcenter + (math.random (-200,200)) 

star2 = display.newImage("Project1Art/star2.png")
star2.x = screenXwidth + 1250
star2.y = screenYcenter + (math.random (-200,200)) 

bolt = display.newImage("Project1Art/bolt.png")
bolt.x = screenXwidth + 750
bolt.y = screenYcenter + (math.random (-200,200)) 

 --power up  movement
function updatePowerUps()
           
  	star.x = (star.x - speed)
    star.rotation = star.rotation + 2
	if(star.x < screenEnd) then
        star.x = screenXwidth * 1.5
        star.y = screenYcenter + (math.random (-200,200)) 
    end
     
    diamond.x = (diamond.x - speed)
    diamond.rotation = diamond.rotation + 3
	if(diamond.x < screenEnd) then
       diamond.x = screenXwidth * 1.5
       diamond.y = screenYcenter + (math.random (-200,200)) 
    end
    
    star2.x = (star2.x - speed)
    star2.rotation = star2.rotation - 2
	if(star2.x < screenEnd) then
        star2.x = screenXwidth * 1.5
        star2.y = screenYcenter + (math.random (-200,200)) 
   	end
    
    bolt.x = (bolt.x - speed)
    bolt.rotation = bolt.rotation - 3
	if(bolt.x < screenEnd) then
        bolt.x = screenXwidth * 1.5
        bolt.y = screenYcenter + (math.random (-200,200)) 
    end    

end

-- resetting power ups
function resetPowerups()
    star.x = screenXwidth + 350
    star.y = screenYcenter + (math.random (-200,200))

    star2.x = screenXwidth + 1250
    star2.y = screenYcenter + (math.random (-200,200))

    diamond.x = screenXwidth + 1750
    diamond.y = screenYcenter + (math.random (-200,200))

    bolt.x = screenXwidth + 750
    bolt.y = screenYcenter + (math.random (-200,200))
end
	