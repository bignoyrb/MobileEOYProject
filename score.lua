-- create score text and graphic

scoreImage = display.newImage("Project1Art/score.png")
scoreImage.x = -1000
scoreImage.y = -1000

scoreText = display.newText(score, -1000, -1000, "Lemon.ttf" , 50)
scoreText:setTextColor(0,0,0)

hiScoreImage = display.newImage("Project1Art/hiscore.png")
hiScoreImage.x = -1000
hiScoreImage.y = -1000

scoreText = display.newText(score, -1000, -1000, "Lemon.ttf" , 50)
scoreText:setTextColor(0,0,0)

hiScoreText = display.newText(score, -1000, -1000, "Lemon.ttf" , 50)
hiScoreText:setTextColor(0,0,0)

-- updates the score
function updateScore()
    scoreText.text = score
    hiScoreText.text = highScore
end    
