#!/bin/bash

set -e

echo "---Installing fonts---"

sudo pacman -S noto-fonts ttf-roboto ttf-google-fonts-typewolf --noconfirm --needed

echo "---Fonts installed---"

