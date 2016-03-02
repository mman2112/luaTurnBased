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
	snow:update(dt)
end
function love.draw()
	love.graphics.draw(snow, 400, -32)
end
