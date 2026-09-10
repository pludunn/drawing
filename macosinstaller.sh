#!/usr/bin/env bash
# Install Drawing Pad as a native macOS application bundle.
set -euo pipefail
REPO_URL="https://raw.githubusercontent.com/pludunn/drawing/main"
APP_DIR="$HOME/Library/Application Support/Drawing Pad"
BUNDLE="$HOME/Applications/Drawing Pad.app"
mkdir -p "$APP_DIR" "$BUNDLE/Contents/MacOS" "$BUNDLE/Contents/Resources"
command -v python3 >/dev/null || { echo 'Install Python 3 (for example: brew install python) first.' >&2; exit 1; }
command -v curl >/dev/null || { echo 'curl is required.' >&2; exit 1; }
curl --fail --location "$REPO_URL/main.py" -o "$APP_DIR/main.py"
curl --fail --location "$REPO_URL/icon.png" -o "$BUNDLE/Contents/Resources/icon.png"
cat > "$BUNDLE/Contents/Info.plist" <<'PLIST'
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0"><dict><key>CFBundleExecutable</key><string>drawing-pad</string><key>CFBundleIdentifier</key><string>com.pludunn.drawing</string><key>CFBundleName</key><string>Drawing Pad</string><key>CFBundlePackageType</key><string>APPL</string></dict></plist>
PLIST
printf '#!/usr/bin/env sh\nexec python3 "%s/main.py"\n' "$APP_DIR" > "$BUNDLE/Contents/MacOS/drawing-pad"
chmod +x "$BUNDLE/Contents/MacOS/drawing-pad"
printf 'Drawing Pad installed at %s\n' "$BUNDLE"
