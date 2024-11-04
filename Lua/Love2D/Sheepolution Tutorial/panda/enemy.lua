Enemy = Object:extend()

function Enemy:new()
  self.image = love.graphics.newImage("images/snake.png")
  self.x = 325
  self.y = 450
  self.speed = 100
  self.width = self.image:getWidth()
  self.height = self.image:getHeight()
end

function Enemy:draw()
  love.graphics.draw(self.image, self.x, self.y)
end

function Enemy:update(dt)
  self.x = self.x + self.speed * dt
  
  local_width = love.graphics.getWidth()
  
  if self.x < 0 then
    self.x = 0
    self.speed = -self.speed
  elseif self.x + self.width > local_width then
    self.x = local_width - self.width
    self.speed = -self.speed
  end
  
end

