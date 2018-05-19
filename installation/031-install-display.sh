#!/bin/bash

set -e

echo "---Installing LightDM ---"

sudo pacman -S lightdm --force --noconfirm --needed

echo "---LightDM Installed---"

sleep 3s

echo "---Installing Greeter---"

sudo pacman -S lightdm-webkit-greeter --noconfirm --needed

echo "---Webkit Greeter Installed---"

sleep 3s

# Replace greeter-session with corresponding greeter
echo "---Modifying lightdm.conf---"

sudo sed -i '/greeter.session/c\greeter-session=lightdm-webkit2-greeter' /etc/lightdm/lightdm.conf

grep greeter-session /etc/lightdm/lightdm.conf

echo "---Modification complete---"

sleep 3s

echo "---Enabling lightdm service---"

systemctl enable lightdm.service

echo "---Complete---"
