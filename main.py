"""A small keyboard-driven drawing pad built with Python's turtle module."""

import turtle

MOTIONS = (2, 6, 18)
ANGLES = (5, 15, 45)
COLORS = ("black", "royal blue", "forest green", "firebrick", "dark violet")

screen = turtle.Screen()
screen.title("Drawing Pad")
screen.setup(width=900, height=700)
screen.bgcolor("white")

pen = turtle.Turtle()
pen.speed(0)
pen.pensize(2)
pen.color(COLORS[0])
pen.pendown()

status = turtle.Turtle(visible=False)
status.penup()
status.goto(-430, 310)

hidden = False
speed = 1
color_index = 0


def show_status(message: str) -> None:
    """Display the current drawing state without adding marks to the canvas."""
    status.clear()
    status.write(message, font=("Arial", 11, "normal"))


def update_status() -> None:
    state = "pen up" if hidden else "drawing"
    show_status(
        f"{state} | speed: {speed + 1}/3 | color: {COLORS[color_index]} | ? for help"
    )


def forward() -> None:
    pen.forward(MOTIONS[speed])


def backward() -> None:
    pen.backward(MOTIONS[speed])


def left() -> None:
    pen.left(ANGLES[speed])


def right() -> None:
    pen.right(ANGLES[speed])


def accelerate() -> None:
    global speed
    speed = (speed + 1) % len(MOTIONS)
    update_status()


def toggle_pen() -> None:
    global hidden
    hidden = not hidden
    if hidden:
        pen.penup()
    else:
        pen.pendown()
    update_status()


def cycle_color() -> None:
    global color_index
    color_index = (color_index + 1) % len(COLORS)
    pen.color(COLORS[color_index])
    update_status()


def home() -> None:
    was_drawing = pen.isdown()
    pen.penup()
    pen.goto(0, 0)
    pen.setheading(0)
    if was_drawing:
        pen.pendown()
    update_status()


def undo() -> None:
    pen.undo()
    update_status()


def clear() -> None:
    global hidden, speed, color_index
    pen.clear()
    hidden = False
    speed = 1
    color_index = 0
    pen.penup()
    pen.goto(0, 0)
    pen.setheading(0)
    pen.color(COLORS[color_index])
    pen.pendown()
    update_status()


def show_help() -> None:
    show_status(
        "W/S move  A/D turn  E speed  H lift/lower pen  K color  R home  "
        "U undo  C clear  Q quit"
    )


def close() -> None:
    screen.bye()


KEY_BINDINGS = {
    "w": forward,
    "s": backward,
    "a": left,
    "d": right,
    "e": accelerate,
    "h": toggle_pen,
    "k": cycle_color,
    "r": home,
    "u": undo,
    "c": clear,
    "?": show_help,
    "q": close,
}

for key, action in KEY_BINDINGS.items():
    screen.onkey(action, key)

update_status()
screen.listen()
screen.mainloop()
