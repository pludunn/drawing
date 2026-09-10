#!/usr/bin/env bash
# Install Drawing Pad for Debian and Ubuntu systems.
set -euo pipefail

REPO_URL="https://raw.githubusercontent.com/pludunn/drawing/main"
APP_DIR="$HOME/.local/share/drawing"
DESKTOP_DIR="$HOME/.local/share/applications"
ICON_DIR="$HOME/.local/share/icons/hicolor/256x256/apps"

sudo apt update
sudo apt install -y python3 python3-tk curl
mkdir -p "$APP_DIR" "$DESKTOP_DIR" "$ICON_DIR"
curl --fail --location "$REPO_URL/main.py" -o "$APP_DIR/main.py"
curl --fail --location "$REPO_URL/icon.png" -o "$ICON_DIR/drawing-pad.png"
curl --fail --location "$REPO_URL/debdrawing.desktop" -o "$DESKTOP_DIR/drawing-pad.desktop"
cat > "$APP_DIR/drawing.sh" <<EOF
#!/usr/bin/env sh
exec python3 "$APP_DIR/main.py"
EOF
chmod +x "$APP_DIR/drawing.sh"
printf 'Drawing Pad installed. Find it in your application launcher, or run %s/drawing.sh\n' "$APP_DIR"
