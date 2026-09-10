# Drawing Pad

A lightweight, keyboard-driven drawing pad made with Python's built-in `turtle`
module. It is deliberately simple: move the turtle with the keyboard and it
leaves a line wherever the pen is down. No network connection or account is
needed to draw after installation.

## Usage

After installation, open **Drawing Pad** from your computer's application menu.
If the drawing window does not respond to keys, click it once first. The message
at the top shows whether you are drawing, your speed, and the current color.

### Keyboard controls

| Key | Action | What it does |
| --- | --- | --- |
| `W` | Move forward | Moves in the direction the turtle is facing, drawing when the pen is down. |
| `S` | Move backward | Moves backward in a straight line. |
| `A` | Turn left | Rotates the turtle left by the current turn amount. |
| `D` | Turn right | Rotates the turtle right by the current turn amount. |
| `E` | Change speed | Cycles through slow, medium, and fast movement and turning. |
| `H` | Lift/lower pen | Toggles drawing on and off so you can reposition without making a mark. |
| `K` | Change color | Cycles through the built-in drawing colors. |
| `R` | Return home | Moves to the center and faces right without adding a line. |
| `U` | Undo | Removes the most recent turtle action. |
| `C` | Clear canvas | Erases the drawing and restores the default pen, speed, and position. |
| `?` | Show help | Shows a short list of controls in the window. |
| `Q` | Quit | Closes Drawing Pad. |

## Install

You do **not** need to download this project or open a project folder. Download
the installer for your computer below from GitHub, then open the downloaded
file. The installer downloads Drawing Pad and adds it to your application menu.

| Your computer | Download this installer |
| --- | --- |
| Debian or Ubuntu | [Download the Debian/Ubuntu installer](https://github.com/pludunn/drawing/raw/main/debinstaller.sh) |
| Fedora | [Download the Fedora installer](https://github.com/pludunn/drawing/raw/main/fedorainstaller.sh) |
| Arch Linux | [Download the Arch installer](https://github.com/pludunn/drawing/raw/main/archinstaller.sh) |
| NixOS | [Download the NixOS installer](https://github.com/pludunn/drawing/raw/main/nixosinstaller.sh) |
| macOS | [Download the macOS installer](https://github.com/pludunn/drawing/raw/main/macosinstaller.sh) |
| Windows | [Download the Windows installer](https://github.com/pludunn/drawing/raw/main/windowsinstaller.bat) |

Your computer may ask for your password before it installs the small Python
components Drawing Pad needs. This is normal. Once it finishes, search for
**Drawing Pad** in your application menu. On macOS, look in your Applications
folder. On Windows, the installer prints the location of the Drawing Pad
shortcut.

> Only download installers from the links above, which point to
> `github.com/pludunn/drawing/raw/main/`.
