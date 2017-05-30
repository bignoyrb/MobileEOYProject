collision = 0

-- checks for collision by using the objects min and max bounds
local function hasCollided( obj1, obj2 )
    
    if ( obj1 == nil ) then  -- Make sure the first object exists
        return false
    end
    if ( obj2 == nil ) then  -- Make sure the other object exists
        return false
    end
 
    local left = obj1.contentBounds.xMin <= obj2.contentBounds.xMin and obj1.contentBounds.xMax  >= obj2.contentBounds.xMin
    local right = obj1.contentBounds.xMin >= obj2.contentBounds.xMin and obj1.contentBounds.xMin  <= obj2.contentBounds.xMax
    local up = obj1.contentBounds.yMin  <= obj2.contentBounds.yMin and obj1.contentBounds.yMax  >= obj2.contentBounds.yMin
    local down = obj1.contentBounds.yMin >= obj2.contentBounds.yMin and obj1.contentBounds.yMin  <= obj2.contentBounds.yMax
 
    return (left or right) and (up or down)
end

-- checks to see if anything has collided
function checkCollisions()
    
    if (hasCollided(hitBox, greenTop) or hasCollided(hitBox, greenBottom) or hasCollided(hitBox, pinkTop) or hasCollided(hitBox, pinkBottom) or hasCollided(hitBox, blueTop) or hasCollided(hitBox, blueBottom) or hasCollided(hitBox, yellowTop) or hasCollided(hitBox, yelloBottom)) then 
      
        collision = 1
    end  
    
    if (hasCollided(hitBox, star)) then
        
        star.y = -100
        score = score + 2 
        audio.play(soundScore)
    end
    
    if (hasCollided(hitBox, star2)) then
        
        star2.y = -100
        score = score + 2 
        audio.play(soundScore)
   	end
    
    if (hasCollided(hitBox, diamond)) then
        
        diamond.y = -100
        score = score + 2 
        audio.play(soundScore)
    end
    
    if (hasCollided(hitBox, bolt)) then
        
        bolt.y = -100
        score = score + 2
        audio.play(soundScore)
	end
    
   if ((greenTop.x < 200 and greenTop.x > 190) or (pinkTop.x < 200 and pinkTop.x > 190) or (blueTop.x < 200 and blueTop.x > 190) or (yellowTop.x < 200 and yellowTop.x >      190)) then
        
        score = score + 1
        audio.play(soundScore2)
    end    
end