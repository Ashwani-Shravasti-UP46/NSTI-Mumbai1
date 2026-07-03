
# Questions 1
# for i in range(1, 6):
#     print(" * " * i)
    # ///////////////////

# Questions 2
# for i in range(5, 0, -1):
#     print(" * " * i)

# ########################
# Questions 3
         

    
# ########################
# Questions 4
# ########################
# Questions 3
import turtle
import colorsys
t = turtle.Turtle()
s = turtle.Screen()
s.bgcolor("black")
t.speed(0)
turtle.tracer(1, 0)
h = 0.5
n = 130
for i in range(360):
    c = colorsys.hsv_to_rgb(h, 0.9, 1)
    h += 1/n
    t.color(c)
    t.forward(i)
    t.circle(i*0.5, 360)
    t.left(150)
    t.forward(i * 0.9)
    t.width(i/180 + 2)
turtle.done()

