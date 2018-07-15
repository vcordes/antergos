#!/bin/bash

set -e

echo "---Installing utilities---"

sudo pacman -S pandoc strace ltrace lsof sysstat iotop acpi lsscsi parted traceroute nmap --force --noconfirm --needed

echo "---Utils installed---"

