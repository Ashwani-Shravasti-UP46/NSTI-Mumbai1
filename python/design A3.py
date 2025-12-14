from turtle import *
tracer(10)
bgcolor ("black")
col=('gold', 'green', 'blue','red')
for i in range (400):
   circle (i/2)
   pencolor (col[i%3])
   forward (i*3)
   left (121)

   hideturtle()
done()