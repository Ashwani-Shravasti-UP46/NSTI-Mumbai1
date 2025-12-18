from colorsys import hsv_to_rgb
from turtle import *

tracer(0)
bgcolor("black")
speed(0)
pensize(3)

h = 0

def heart_curve():
    for i in range(200):
        h = i / 200
        color = hsv_to_rgb(h % 1, 1, 1)
        pencolor(color)
        angle = 180 - i * 1.8
        right(angle)
        forward(1.5)

penup()
goto(0, -100)   # Start at bottom center of heart
pendown()
left(140)

# Draw left side of heart
for i in range(100):
    h = i / 100
    color = hsv_to_rgb(h % 1, 1, 1)
    pencolor(color)
    forward(i * 0.5)
    right(2)

# Draw right side of heart
right(120)
for i in range(100):
    h = (100 - i) / 100
    color = hsv_to_rgb(h % 1, 1, 1)
    pencolor(color)
    forward(i * 0.5)
    right(2)

hideturtle()
update()
done()
