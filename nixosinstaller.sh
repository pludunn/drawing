#!/usr/bin/env bash
# Install Drawing Pad for NixOS. Nix supplies Python and Tk when the app launches.
set -euo pipefail
REPO_URL="https://raw.githubusercontent.com/pludunn/drawing/main"
APP_DIR="$HOME/.local/share/drawing"
command -v nix >/dev/null || { echo 'Nix is required. Install NixOS or the Nix package manager first.' >&2; exit 1; }
mkdir -p "$APP_DIR" "$HOME/.local/share/applications" "$HOME/.local/share/icons/hicolor/256x256/apps"
curl --fail --location "$REPO_URL/main.py" -o "$APP_DIR/main.py"
curl --fail --location "$REPO_URL/icon.png" -o "$HOME/.local/share/icons/hicolor/256x256/apps/drawing-pad.png"
curl --fail --location "$REPO_URL/nixosdrawing.desktop" -o "$HOME/.local/share/applications/drawing-pad.desktop"
printf '#!/usr/bin/env sh\nexec nix shell nixpkgs#python3 nixpkgs#tk -c python3 "%s/main.py"\n' "$APP_DIR" > "$APP_DIR/drawing.sh"
chmod +x "$APP_DIR/drawing.sh"
printf 'Drawing Pad installed. The first launch may download Nix packages.\n'
