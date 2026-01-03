from turtle import *
import math

bgcolor("black")
speed(200)
color("red")
pensize(2)

def heart(n, scale):
    x = scale * (15 * math.sin(n)**3)
    y = scale * (12 * math.cos(n) - 5 * math.cos(2*n) - 2 * math.cos(3*n) - math.cos(4*n))
    return x, y

# Starting scale
scale = 1   # <-- 3mm approx

# How many hearts you want
hearts = 40   # renge of hearts

increment = 1.13   # <-- 0.3mm approx (1.13 px)

for h in range(hearts):
    penup()
    goto(0, 0)
    pendown()
    
    for j in range(0, 628):  # 0 to 2π*100
        n = j / 100
        x, y = heart(n, scale)
        goto(x, y)
    
    scale += increment   # Increase scale for next heart

hideturtle()
done()
