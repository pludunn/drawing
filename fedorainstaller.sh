#!/usr/bin/env bash
# Install Drawing Pad for Fedora.
set -euo pipefail
REPO_URL="https://raw.githubusercontent.com/pludunn/drawing/main"
APP_DIR="$HOME/.local/share/drawing"
mkdir -p "$APP_DIR" "$HOME/.local/share/applications" "$HOME/.local/share/icons/hicolor/256x256/apps"
sudo dnf install -y python3 python3-tkinter curl
curl --fail --location "$REPO_URL/main.py" -o "$APP_DIR/main.py"
curl --fail --location "$REPO_URL/icon.png" -o "$HOME/.local/share/icons/hicolor/256x256/apps/drawing-pad.png"
curl --fail --location "$REPO_URL/fedoradrawing.desktop" -o "$HOME/.local/share/applications/drawing-pad.desktop"
printf '#!/usr/bin/env sh\nexec python3 "%s/main.py"\n' "$APP_DIR" > "$APP_DIR/drawing.sh"
chmod +x "$APP_DIR/drawing.sh"
printf 'Drawing Pad installed.\n'
