if turtle then
  tf = turtle.forward
  td = turtle.dig
  ti = turtle.inspect
  tD = function (max)
    max = max or 100
    for i=1, max do
      td()
      if ti() then
        return
      end
    end
  end
  tl = turtle.turnLeft
  tr = turtle.turnRight
else
  error "This script is designed for turtles"
end
