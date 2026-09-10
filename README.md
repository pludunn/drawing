# Drawing Pad

A lightweight, keyboard-driven drawing pad made with Python's built-in `turtle`
module. It is deliberately simple: move the turtle with the keyboard and it
leaves a line wherever the pen is down. No network connection or account is
needed to draw after installation.

## Requirements

* Python 3.10 or newer.
* Tk support for Python (`python3-tk` on Debian/Ubuntu, `python3-tkinter` on
  Fedora, and `tk` on Arch).
* A graphical desktop session; `turtle` cannot open its window in a headless
  terminal.

## Usage

Run the app directly from a checkout:

```sh
python3 main.py
```

Click the Drawing Pad window once if it does not receive key presses. The
status text at the top of the window shows whether the pen is drawing, the
active speed, and the selected color. Press `?` at any time to show a compact
control reminder.

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
| `?` | Show help | Replaces the status text with a short list of controls. |
| `Q` | Quit | Closes Drawing Pad. |

## Install

Each installer downloads the current `main.py` and icon from this repository,
then installs files only in your user account. Run the command from a checkout
of this repository. On Linux, the app appears in your desktop application
launcher as **Drawing Pad**.

> Review a script before running it. The Linux installers use `sudo` only to
> install required system packages; the application itself is installed under
> your home directory.

### Debian and Ubuntu

The existing Debian installer has been corrected to install its desktop entry
in the standard user application directory, install the icon where desktop
environments can find it, and use a reliable launcher.

```sh
./debinstaller.sh
```

### Fedora

```sh
./fedorainstaller.sh
```

This installs `python3`, `python3-tkinter`, and `curl` through `dnf`. The
matching desktop-entry template is `fedoradrawing.desktop`.

### Arch Linux

```sh
./archinstaller.sh
```

This installs `python`, `tk`, and `curl` through `pacman`. The matching
desktop-entry template is `archdrawing.desktop`.

### NixOS

```sh
./nixosinstaller.sh
```

The launcher uses `nix shell` to provide Python and Tk, so its first launch may
download packages. The matching desktop-entry template is
`nixosdrawing.desktop`.

### macOS

Install Python 3 first if needed (for example, `brew install python`), then:

```sh
./macosinstaller.sh
```

The script creates `~/Applications/Drawing Pad.app`. macOS does not use the
Linux `.desktop` format, so `macosdrawing.desktop` is included as a documented
shortcut template while the installer creates the native `.app` bundle.

### Windows

Install Python 3 from [python.org](https://www.python.org/downloads/) with
Tcl/Tk enabled. Then use either installer from Command Prompt or PowerShell:

```bat
windowsinstaller.bat
```

```powershell
.\windowsinstaller.ps1
```

Both create `%LOCALAPPDATA%\Drawing Pad\Drawing Pad.cmd`; run that command
file to launch the application. Windows uses `.cmd`/PowerShell launch scripts
rather than a shell `.exe`; these installers avoid shipping an opaque binary
and use your installed Python runtime.

## Included install files

| Platform | Installer | Launcher/desktop file |
| --- | --- | --- |
| Debian/Ubuntu | `debinstaller.sh` | `debdrawing.desktop` |
| Fedora | `fedorainstaller.sh` | `fedoradrawing.desktop` |
| Arch | `archinstaller.sh` | `archdrawing.desktop` |
| NixOS | `nixosinstaller.sh` | `nixosdrawing.desktop` |
| macOS | `macosinstaller.sh` | `macosdrawing.desktop` and `Drawing Pad.app` |
| Windows | `windowsinstaller.bat` or `windowsinstaller.ps1` | `Drawing Pad.cmd` |
