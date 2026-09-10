#!/usr/bin/bash

set -e

sudo apt update;
sudo apt install -y python3 python3-tk curl;

mkdir -p "$HOME/Desktop";
mkdir -p "$HOME/Pictures";
rm -rf "$HOME/Desktop/drawing.desktop" "$HOME/drawing.py";
curl -L https://github.com/pludunn/drawing/raw/main/main.py -o "$HOME/drawing.py";
curl -L https://github.com/pludunn/drawing/raw/main/debdrawing.desktop -o "$HOME/Desktop/drawing.desktop";
curl -L https://github.com/pludunn/drawing/raw/main/icon.png -o "$HOME/drawing-pad-icon.png"
