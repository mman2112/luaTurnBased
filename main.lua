boxVel = 0
boxPos = 0
function love.update(dt)
	boxPos = boxPos + boxVel * dt
	boxVel = boxVel - 1600 * dt
	if boxPos < 0 then	--so box can't fall through floor
		boxPos = 0
		boxVel = 0
	end
end
function jump()
	boxVel = math.max(0, boxVel)
	boxVel = boxVel + 800
end
function love.keypressed(key)
	if key == " " then
		jump()
	end
end
function love.draw()
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 0, 0, 800, 600)	--draw white background
	love.graphics.setColor(200, 0, 255)
	love.graphics.rectangle("fill", 350, 520-boxPos, 80, 80)	--draw fred
end
