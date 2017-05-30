speed = 10

-- creating Background
backbackground = display.newImage("Project1Art/layer-6.png")
backbackground.x = screenXcenter
backbackground.y = screenYcenter

backbackgroundlayer1 = display.newImage("Project1Art/layer-5.png")
backbackgroundlayer1.x = screenXcenter
backbackgroundlayer1.y = screenYcenter

backbackgroundlayer12 = display.newImage("Project1Art/layer-5.png")
backbackgroundlayer12.x = screenXwidth*1.5
backbackgroundlayer12.y = screenYcenter

backbackgroundlayer2 = display.newImage("Project1Art/layer-4.png")
backbackgroundlayer2.x = screenXcenter
backbackgroundlayer2.y = screenYcenter

backbackgroundlayer22 = display.newImage("Project1Art/layer-4.png")
backbackgroundlayer22.x = screenXwidth*1.5
backbackgroundlayer22.y = screenYcenter

backbackgroundlayer3 = display.newImage("Project1Art/layer-3.png")
backbackgroundlayer3.x = screenXcenter
backbackgroundlayer3.y = screenYcenter

backbackgroundlayer32 = display.newImage("Project1Art/layer-3.png")
backbackgroundlayer32.x = screenXwidth*1.5
backbackgroundlayer32.y = screenYcenter

ground1 = display.newImage("Project1Art/layer-2.png")
ground1.x = screenXcenter
ground1.y = screenYcenter

ground2 = display.newImage("Project1Art/layer-2.png")
ground2.x = screenXwidth*1.5
ground2.y = screenYcenter

cloud1 = display.newImage("Project1Art/layer-1.png")
cloud1.x = screenXcenter
cloud1.y = screenYcenter

cloud2 = display.newImage("Project1Art/layer-1.png")
cloud2.x = screenXwidth*1.5
cloud2.y = screenYcenter

screenEnd = -513

-- moves the background at different speeds to create parallax scrolling
function updateBackgrounds()
    
    --backbackgroundlayer1 movement
  	backbackgroundlayer1.x = backbackgroundlayer1.x - (speed/10)
	if(backbackgroundlayer1.x < screenEnd) then
        backbackgroundlayer1.x = (screenXwidth *1.5) - 10
	end

	backbackgroundlayer12.x = backbackgroundlayer12.x - (speed/10)
	if(backbackgroundlayer12.x < screenEnd) then
		backbackgroundlayer12.x = (screenXwidth *1.5) - 10
	end
    
     --backbackgroundlayer2 movement
  	backbackgroundlayer2.x = backbackgroundlayer2.x - (speed/7.5)
	if(backbackgroundlayer2.x < screenEnd) then
        backbackgroundlayer2.x = (screenXwidth *1.5) - 10
	end

	backbackgroundlayer22.x = backbackgroundlayer22.x - (speed/7.5)
	if(backbackgroundlayer22.x < screenEnd) then
		backbackgroundlayer22.x = (screenXwidth *1.5) - 10
	end
    
    --backbackgroundlayer3 movement
  	backbackgroundlayer3.x = backbackgroundlayer3.x - (speed/5)
	if(backbackgroundlayer3.x < screenEnd) then
        backbackgroundlayer3.x = (screenXwidth *1.5) - 10
	end

	backbackgroundlayer32.x = backbackgroundlayer32.x - (speed/5)
	if(backbackgroundlayer32.x < screenEnd) then
		backbackgroundlayer32.x = (screenXwidth *1.5) - 10
       
	end
        
	--ground movement
  	ground1.x = ground1.x - (speed/2)
	if(ground1.x < screenEnd) then
      ground1.x = (screenXwidth *1.5) - 10
	end

	ground2.x = ground2.x - (speed/2)
	if(ground2.x < screenEnd) then
		ground2.x = (screenXwidth *1.5) - 10
	end
	
	--cloud movement
	cloud1.x = cloud1.x - (speed/3)
	if(cloud1.x < screenEnd) then
        cloud1.x = (screenXwidth *1.5) - 10
	end
	 
	cloud2.x = cloud2.x - (speed/3)
	if(cloud2.x < screenEnd) then
       cloud2.x = (screenXwidth *1.5) - 10
	end
end

-- reset the background to its original position
function resetBackgrounds()
	backbackground.x = screenXcenter
	backbackground.y = screenYcenter-groundOffset

	backgroundfar1.x = screenXcenter
	backgroundfar1.y = screenYcenter-groundOffset

	backgroundfar2.x = screenXwidth*1.5
	backgroundfar2.y = screenYcenter-groundOffset

	backgroundnear1.x = screenXcenter
	backgroundnear1.y = screenYcenter-groundOffset

	backgroundnear2.x = screenXwidth*1.5
	backgroundnear2.y = screenYcenter-groundOffset
end
