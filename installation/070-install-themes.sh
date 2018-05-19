#!/bin/bash

set -e

echo "---Installing Themes---"

sudo pacman -S papirus-icon-theme arc-gtk-theme numix-frost-themes --noconfirm --needed

echo "---Theme Installed---"
