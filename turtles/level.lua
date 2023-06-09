get_valid_number = function (name, validation_error_message) -- shorthand
  local num = nil
  while true do
      write(name)
      write ": "
      num = tonumber(read())
      if num ~= nil then
          return num
      end
      print(validation_error_message)
  end
end

if turtle then
  tf = turtle.forward
  td = turtle.dig
  ti = turtle.inspect
  tD = function (max)
    max = max or 100
    for i=1, max do
      td()
      if ti()==false then
        return
      end
    end
  end
  tl = turtle.turnLeft
  tr = turtle.turnRight
else
  error "This script is designed for turtles"
end

local _bad_num = "Please enter a valid number"

print "Leveling Script for Digging Turtles"
y = get_valid_number("Spaces forward", _bad_num)
x = get_valid_number("Spaces left", _bad_num)

for X=1, x do
  for Y=1, y do
    tD()
    tf()
  end
  Z = X%2==1 and tl or tr
  Z()
  if X~=x then tD() tf() end
  Z()
end

print "Complete"
