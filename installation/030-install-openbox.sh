#!/bin/bash

set -e

echo "---Install Openbox---"

sudo pacman -S openbox --noconfirm --needed

echo "---Openbox Complete---"

sleep 3s

echo "---Install Openbox config tools---"

sudo pacman -S obconf lxappearance --noconfirm --needed

echo "---Openbox config tools complete---"
