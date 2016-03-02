object = {
	x=400,
	y=300,
	r=8
}
function love.load()

end
function love.update(dt)

end
function love.draw()
	love.graphics.setColor(255, 255, 255)
	love.graphics.circle("fill", object.x, object.y, object.r, 16)
end
