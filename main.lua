<<<<<<< HEAD
function love.load()
	snowflake = love.graphics.newImage("snow.png")
	snow = love.graphics.newParticleSystem(snowflake, 256)
	snow:setParticleLifetime(10)
	snow:setEmissionRate(25)
	snow:setDirection(math.pi / 2)
	snow:setSpeed(100)
	snow:setAreaSpread("uniform", 400, 0)
	snow:setSizes(0.5)
	snow:setLinearAcceleration(-10, -5, 10, 15)
end
function love.update(dt)
	snow:update(math.min(dt, 1/20))
end
function love.draw()
	love.graphics.draw(snow, 400, -32)
=======
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
>>>>>>> parent of d37f0ea... circle bro
end
