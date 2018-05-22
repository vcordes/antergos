#!/bin/bash

set -e

echo "---Installing Ricing Tools---"

sudo pacman -S tint2 conky compton feh neofetch rofi --noconfirm --needed

echo "---Ricing Tools Installed---"

sleep 3s

echo "---Installing Firefox theme ShadowFox---"

yaourt -S shadowfox-updater --noconfirm

echo "---ShadowFox installed---"
