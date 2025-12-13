from turtle import *
bgcolor("gray")
speed(10)
color("aqua")
pensize(2)
circle(1)
for i in range(160):
    rt(i)
    circle(100, i)
    fd(i)
    rt(80)
hideturtle()
done()