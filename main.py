import platform
import turtle
screen=turtle.Screen()
screen.title(f"Drawing Pad for {platform.system()} {platform.release()}")
pen=turtle.Turtle()
pen.pendown()
pen.color("black")
pen.speed(0)
speed=1
hidden=False
motion_speeds=(5,10,15)
turn_speeds=(5,15,45)
def forward():
	pen.forward(motion_speeds[speed])
def backward():
	pen.backward(motion_speeds[speed])
def left():
	pen.left(turn_speeds[speed])
def right():
	pen.right(turn_speeds[speed])
def accelerate():
	global speed
	speed+=1
	speed%=3
def hide():
	global hidden
	if hidden:
		pen.color("black")
		pen.pendown()
		hidden=False
	else:
		pen.color("red")
		pen.penup()
		hidden=True
def home():
	pen.penup()
	pen.goto(0,0)
	pen.setheading(0)
	pen.pendown()
def clear():
	pen.clear()
	global speed
	speed=1
	if hidden:
		hide()
	home()
def close():
	screen.bye()
screen.onkey(forward,"w")
screen.onkey(backward,"s")
screen.onkey(left,"a")
screen.onkey(right,"d")
screen.onkey(accelerate,"e")
screen.onkey(hide,"h")
screen.onkey(home,"r")
screen.onkey(clear,"c")
screen.onkey(close,"q")
screen.listen()
screen.mainloop()