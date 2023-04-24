a=print b=write c=tonumber d=read e=turtle.dig f=turtle.forward g=turtle.turnLeft h=turtle.turnRight i=function () local j,k=turtle.inspect() return j end l=function () for m=1, 50 do if i() then e() else break end end end
a "level"
b "x:"
x=c(d())
b "y:"
y=c(d())
for X=1,x do
  for Y=1,y do
    l()
    f()
  end
  if X%2==1 then
    g() l() f() l()
  else
    g() h() f() h()
  end
end
