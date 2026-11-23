# Drawing

A keyboard-controlled drawing pad built with Python's `turtle` graphics
module.

## Features

- Move and turn a drawing pen using the keyboard
- Cycle through three movement and turning speeds
- Hide the pen while repositioning it
- Return the pen to the center
- Clear the canvas and reset the drawing state

## Requirements

- Python 3.11 or newer
- A graphical desktop environment that supports Tk/Turtle

## Run

Using `uv`:

```sh
uv run python main.py
```

Or directly with Python:

```sh
python main.py
```

## Controls

| Key | Action |
| --- | --- |
| `W` | Move forward |
| `S` | Move backward |
| `A` | Turn left |
| `D` | Turn right |
| `E` | Cycle movement and turning speed |
| `H` | Toggle the pen between visible and hidden |
| `R` | Return to the center |
| `C` | Clear the drawing and reset to the default state |
| `Q` | Quit |

There are three speed levels. The available forward/backward distances are
`3`, `9`, and `27` units, and the turning angles are `5`, `15`, and `45`
degrees.

## License

This project is released under [The Unlicense](LICENSE).
