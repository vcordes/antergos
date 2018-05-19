#!/bin/bash

set -e

echo "---Installing LightDM ---"

pacman -S lightdm --force --noconfirm --needed

echo "---LightDM Installed---"

sleep 3s

echo "---Installing Greeter---"

pacman -S lightdm-webkit-greeter --noconfirm --needed

echo "---Webkit Greeter Installed---"


