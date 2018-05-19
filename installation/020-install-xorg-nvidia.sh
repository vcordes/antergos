#!/bin/bash

# Install xserver (assume base system)
set -e

echo "---Xserver setup---"

# --noconfirm don't ask --needed Do not reinstall the targets that are already up to date
sudo pacman -S xorg-server xorg-apps xorg-xinit xorg-twm xterm --noconfirm --neded

sudo pacman -S nvidia -video-intel --noconfirm --needed

echo "---xorg installed---"
