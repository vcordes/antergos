#!/bin/bash

set -e

echo "---Installing Themes---"

pacman -S papirus-icon-theme arc-gtk-theme numix-frost-themes --noconfirm --needed

echo "---Theme Installed---"
