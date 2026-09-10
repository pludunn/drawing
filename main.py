import turtle
screen=turtle.Screen()
screen.title("Drawing Pad")
pen=turtle.Turtle()
pen.speed(0)
pen.pendown()
hidden=False
speed=1
motions=(2,6,18)
angles=(5,15,45)
def forward():
	pen.forward(motions[speed])
def backward():
	pen.backward(motions[speed])
def left():
	pen.left(angles[speed])
def right():
	pen.right(angles[speed])
def accelerate():
	global speed
	speed+=1
	speed%=3
def hide():
	global hidden
	if hidden:
		pen.pendown()
		pen.color("black")
		hidden=False
	else:
		pen.penup()
		pen.color("red")
		hidden=True
def home():
	if hidden:
		pen.goto(0,0)
		pen.setheading(0)
	else:
		pen.penup()
		pen.goto(0,0)
		pen.pendown()
		pen.setheading(0)
def clear():
	pen.clear()
	if hidden:
		hide()
	while speed!=1:
		accelerate()
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