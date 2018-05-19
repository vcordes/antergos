#!/bin/bash

#

set -e

echo "---Finding Servers---"

# fixing the fastest antergros servers
sudo rankmirrors -n 666666 /etc/pacman.d/antergos-mirrorlist > /tmp/antergos-mirrorlist && sudo cp /tmp/antergos-mirrorlist /etc/pacman.d

echo "---Saved---"

cat /etc/pacman.d/antergos-mirrorlist

sudo pacman -Suy

echo "---System up to date---"
