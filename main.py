import turtle

screen = turtle.Screen()
screen.title("Drawing Pad")
screen.bgcolor("white")
pen = turtle.Turtle()
pen.color("black")
pen.pendown()
pen.speed(0)
hidden = False
speed = 1
lens = (3, 9, 27)
angles = (5, 15, 45)


def accel():
    global speed
    speed += 1
    speed %= 3


def hide():
    global hidden
    if hidden:
        pen.color("black")
        hidden = False
    else:
        pen.color("red")
        hidden = True


def forward():
    pen.forward(lens[speed])


def backward():
    pen.backward(lens[speed])


def left():
    pen.left(angles[speed])


def right():
    pen.right(angles[speed])


def home():
    if hidden:
        pen.goto(0, 0)
    else:
        pen.penup()
        pen.goto(0, 0)
        pen.pendown()


def clear():
    pen.clear()
    pen.setheading(0)
    home()
    while not hidden:
        hide()
    while speed != 1:
        accel()


screen.onkey(accel, "e")
screen.onkey(hide, "h")
screen.onkey(forward, "w")
screen.onkey(backward, "s")
screen.onkey(left, "a")
screen.onkey(right, "d")
screen.onkey(home, "r")
screen.onkey(clear, "c")
screen.onkey(screen.bye, "q")
screen.listen()

if __name__ == "__main__":
    screen.mainloop()
