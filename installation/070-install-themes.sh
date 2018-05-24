#!/bin/bash

set -e

echo "---Installing Themes---"

sudo pacman -S papirus-icon-theme arc-gtk-theme numix-frost-themes --noconfirm --needed

yaourt -S sardi-icons --noconfirm --needed
echo "---Theme Installed---"
