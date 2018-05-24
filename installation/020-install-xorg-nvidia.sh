#!/bin/bash

# Install xserver (assume base system)
set -e

echo "---Xserver setup---"

# --noconfirm don't ask --needed Do not reinstall the targets that are already up to date
sudo pacman -S xorg-server xorg-apps xorg-xinit xorg-twm xterm --noconfirm --needed

sudo pacman -S nvidia --noconfirm --needed

echo "---xorg installed---"
