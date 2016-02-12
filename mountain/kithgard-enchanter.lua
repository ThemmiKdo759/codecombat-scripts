function moveRight()
  local target = {x=self.pos.x + 12, y=self.pos.y}
  while self:distanceTo(target) > 0 do 
    self:move(target)
  end
  return
end
function moveLeft()
  local target = {x=self.pos.x - 12, y=self.pos.y}
  while self:distanceTo(target) > 0 do
    self:move(target)
  end
  return
end
function moveUp()
  local target = {x=self.pos.x, y=self.pos.y + 12}
  while self:distanceTo(target) > 0 do
    self:move(target)
  end
  return
end
function moveDown()
  local target = {x=self.pos.x, y=self.pos.y - 12}
  while self:distanceTo(target) > 0 do
    self:move(target)
  end
  return
end

moveRight()
moveDown()
moveUp()
moveUp()
moveRight()
