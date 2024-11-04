--[[--
  Old examples from tutorials stored in here
--]]--

-- sets buffer time? makes print statements not wait for main app thread to close?
io.stdout:setvbuf("no")

--function love.draw()
--  love.graphics.print("Hello world!", 100, 100)
--end

-- comment format - print occurs at the end of a function
--print(3+7)

--name = "Maree"
--age = 27
--text = "Hello my name is " .. name .. " and I am " .. age .. " years old."
--print(text)

--function love.draw() 
--  love.graphics.rectangle("fill", 100, 200, 50, 80)
--  end

-- make rectangle move at 100 pixels per second on all computers up, down, left, right on key press down
--function love.load()
--  x = 100
--  y = 50
--  move = true
--end

--function love.update(dt)
--  if love.keyboard.isDown("right") then
--    x = x + 100 * dt
--  elseif love.keyboard.isDown("left") then
--    x = x - 100 * dt
--  elseif love.keyboard.isDown("up") then
--    y = y - 100 * dt
--  elseif love.keyboard.isDown("down") then
--    y = y + 100 * dt
--  end
--end

--function love.draw()
--  love.graphics.rectangle("line", x, y, 200, 150)
--end


-- make table of fruits and display them in a list
--function love.load()
--  fruits = {"apple", "banana"}
--  table.insert(fruits, "pear")
--  table.insert(fruits, "pineapple")
--  table.remove(fruits, 2)
--  fruits[1] = "tomato"
  
--  for i,v in ipairs(fruits) do
--    print(i, v)
--  end
--end


--function love.draw()
--  for i, frt in ipairs(fruits) do
--    love.graphics.print(frt, 100, 100 + 50 * i)
--  end
  
--end


-- create a rectangle that will move to the right on every space key press
--function love.load()
--  listOfRectangles = {}
--end

--function love.draw()
--  for i, r in ipairs(listOfRectangles) do
--    love.graphics.rectangle("line", r.x, r.y, r.width, r.height)
--  end
--end

--function love.update(dt)
--  for i, r in ipairs(listOfRectangles) do
--    r.x = r.x + r.speed * dt
--  end
--end

--function createRect()
--  rect = {}
--  rect.x = 100
--  rect.y = 100
--  rect.width = 70
--  rect.height = 90
--  rect.speed = 100
  
--  table.insert(listOfRectangles, rect)
--end

--function love.keypressed(key)
--  if key == "space" then
--    createRect()
--  end
--end


---- if this is in a subdirectory, use the path with '.' instead of '/'
--require("example")
--print(test)


----use tick library to draw rectangle after 2 second delay
--function love.load()
--  tick = require "tick"
  
--  drawRectangle = false
  
--  -- first argument is function to execute, second is time to call the function in
--  tick.delay(function () drawRectangle = true end , 2)
  
--end

--function love.update(dt) 
--  tick.update(dt)
--end

--function love.draw()
--  if drawRectangle then
--    love.graphics.rectangle("fill", 100, 100, 200, 300)
--  end
  
--end



---- draw square at random location on screen when space
--local x = 30
--local y = 50

--function love.keypressed(key)
--  if key == "space" then
--    x = math.random(100, 500)
--    y = math.random(100, 500)
--  end
--end

--function love.draw()
--  love.graphics.rectangle("fill", x, y, 100, 100)
--end




---- shape drawing using classes and files shape, rectangle, circle, classic
--local r1, r2

--function love.load()  
--  local Rectangle = require "rectangle"
--  local Circle = require "circle"
  
--  r1 = Rectangle(100, 100, 200, 50)
----  r2 = Rectangle(350, 80, 25, 140)
--  r2 = Circle(350, 80, 40)
--end

--function love.update(dt)
--  r1:update(dt)
--  r2:update(dt)
--end

--function love.draw()
--  r1:draw()
--  r2:draw()
--end


---- load and draw a sheep image
--local myImage = love.graphics.newImage("images/sheep.png")
--local width, height

--function love.load()
--  love.graphics.setBackgroundColor(1, 1, 1)  
--  width = myImage:getWidth()
--  height = myImage:getHeight()
--end


--function love.draw()
--  love.graphics.setColor(255/255, 200/255, 40/255, 127/255)
--  love.graphics.setColor(1, 0.78, 0.15, 0.5)
--  love.graphics.draw(myImage, 100, 100)
  
--  love.graphics.setColor(1, 1, 1)
--  love.graphics.draw(myImage, 200, 100)
  
--  -- operations for images follow
--  --rotate by 5 radians
----  love.graphics.draw(myImage, 100, 100, 5)
--  --double x scale, double y scale
----  love.graphics.draw(myImage, 100, 100, 0, 2, 2)
--  --mirror/flip image
----  love.graphics.draw(myImage, 100, 100, 0, -1, 1)
--  --scale by 2 from centre of image (image centre x and y coords at end). two more kx and ky for shearing an image after this
----  love.graphics.draw(myImage, 100, 100, 0, 2, 2, 39, 50)

--end




---- basic rectangle collision detection
--function love.load()
--  r1 = {
--    x = 10,
--    y = 100,
--    width = 100,
--    height = 100
--  }
--  r2 = {
--    x = 250,
--    y = 120,
--    width = 150,
--    height = 120
--  }
  
--end

--function love.update(dt)
--  r1.x = r1.x + 100 * dt
--end

--function love.draw()
--  local mode
--  if checkCollision(r1, r2) then
--    mode = "fill"
--  else
--    mode = "line"
--  end
--  love.graphics.rectangle(mode, r1.x, r1.y, r1.width, r1.height)
--  love.graphics.rectangle(mode, r2.x, r2.y, r2.width, r2.height)
--end

--function checkCollision(a,b)
--  local a_left = a.x
--  local a_right = a.x + a.width
--  local a_top = a.y
--  local a_bottom = a.y + a.height
  
--  local b_left = b.x
--  local b_right = b.x + b.width
--  local b_top = b.y
--  local b_bottom = b.y + b.height
  
--  return a_right > b_left
--    and a_left < b_right
--    and a_bottom > b_top
--    and a_top < b_bottom
--end


----make a circle follow the mouse around
--function love.load()
--  Object = require "classic"
  
--  circle = {}
  
--  circle.x = 100
--  circle.y = 100
--  circle.radius = 25
--  circle.speed = 200
--end

--function love.update(dt)
--  mouse_x, mouse_y = love.mouse.getPosition()
  
--  angle = math.atan2(mouse_y - circle.y, mouse_x - circle.x)
  
--  cos = math.cos(angle)
--  sin = math.sin(angle)
  
--  local distance = getDistance(circle.x, circle.y, mouse_x, mouse_y)
--  if distance > 50 then
--    circle.x = circle.x + circle.speed * cos * dt
--    circle.y = circle.y + circle.speed * sin * dt
--  end
--end

--function love.draw()
--  love.graphics.circle("line", circle.x, circle.y, circle.radius)
--  love.graphics.print("angle: " .. angle, 10, 10)
  
--  love.graphics.line(circle.x, circle.y, mouse_x, circle.y)
--  love.graphics.line(circle.x, circle.y, circle.x, mouse_y)
--  love.graphics.line(circle.x, circle.y, mouse_x, mouse_y)

--end

--function love.keypressed(key)
--end
  
--function getDistance(x1, y1, x2, y2)
--  local horizontal_distance = x1 - x2
--  local vertical_distance = y1 - y2
  
--  local a = horizontal_distance * horizontal_distance
--  local b = vertical_distance ^2

--  local c = a + b
--  local distance = math.sqrt(c)
--  return distance
--end


---- make arrow point at cursor
--function love.load()
--  arrow = {}
--  arrow.x = 200
--  arrow.y = 200
--  arrow.speed = 300
--  arrow.angle = 0
--  arrow.image = love.graphics.newImage("images/arrow.png")
--  arrow.origin_x = arrow.image:getWidth() / 2
--  arrow.origin_y = arrow.image:getHeight() / 2
--end

--function love.update(dt)
--  mouse_x, mouse_y = love.mouse.getPosition()
--  arrow.angle = math.atan2(mouse_y - arrow.y, mouse_x - arrow.x)
--  cos = math.cos(arrow.angle)
--  sin = math.sin(arrow.angle)
  
--  distance = getDistance(arrow.x, arrow.y, mouse_x, mouse_y)

--  if distance > arrow.origin_y then
--    arrow.x = arrow.x + arrow.speed * cos * dt
--    arrow.y = arrow.y + arrow.speed * sin * dt
--  end
--end

--function love.draw()
--  love.graphics.draw(arrow.image, arrow.x, arrow.y, arrow.angle, 1, 1, arrow.origin_x, arrow.origin_y)
--  love.graphics.circle("fill", mouse_x, mouse_y, 5)
--end
  
--function getDistance(x1, y1, x2, y2)
--  local horizontal_distance = x1 - x2
--  local vertical_distance = y1 - y2
  
--  local a = horizontal_distance * horizontal_distance
--  local b = vertical_distance ^2

--  local c = a + b
--  local distance = math.sqrt(c)
--  return distance
--end

--function love.load()
--  image = love.graphics.newImage("images/jump.png")
--  frames = {}
--  local frame_width = 117
--  local frame_height = 233
  
--  for i=0,4 do
--    table.insert(frames, love.graphics.newQuad(i * frame_width, 0, frame_width, frame_height, width, height))
--  end

--  currentFrame = 1
  
--end

--function love.update(dt)
--  currentFrame = currentFrame + 10 * dt
--  if currentFrame >= 6 then
--    currentFrame = 1
--  end
--end

--function love.draw()
--  love.graphics.draw(image, frames[math.floor(currentFrame)], 100, 100)
--end



