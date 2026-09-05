# drawing
Drawing pad for Unix and Windows! Install using instructions from README.

## Installation
Currently, there are **no files available** to fully install this programme. You can download the `main.py` for usage online, or, if you just want to try, you can run this command on Mac and Linux:
```sh
curl -LsSf https://github.com/pludunn/drawing/raw/main/main.py | python3
```
This programme was tested on Python 3.10. Be careful using this programme on earlier Python versions. You can check your Python version using this command on Mac and Linux:
```sh
python3 --version
```
If you get a message that says `curl: not found` or `python3: not found`, unfortunately that means you need to install `curl` or `python3`. These packages exist on all system package listings, including `apt`, `dnf`, `brew`, and `pacman`.

## Usage
This is a keyboard-based simple drawing pad, which works kind of like an Etch-a-Sketch or an early turtle programme. Here's what each key does:

| Key | Action |
| --- | --- |
| `w` | Move forward |
| `s` | Move backward |
| `a` | Rotate counterclockwise |
| `d` | Rotate clockwise |
| `e` | Change the speed. Speed is set to medium by default. Press for fast. Press again for slow. Press again to return to medium. |
| `h` | Hide the turtle. This makes it so it can't draw, and turns it red so you know it is hidden. Press again to reverse this. |
| `r` | Return home. This moves and rotates you to the original position.
| `c` | Start over. WARNING: This removes all your progress. |
| `q` | Close the screen. WARNING: This removes all your progress. |

## Troubleshooting

This project has no official troubleshooting guide. Please check to make sure you are on Mac or Linux, that your system supports Tk, that Python and curl are installed, and that Python is at least 3.10.ou know it is hidden. Press again to reverse this. If you still cannot run the programme, open an issue on [GitHub](https://github.com/pludunn/drawing/issues).
