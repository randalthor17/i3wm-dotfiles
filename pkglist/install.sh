#!/bin/bash
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key FBA220DFC880C036
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
cat chaotic-aur.txt | sudo tee -a /etc/pacman.d/mirrorlist > /dev/null
sudo pacman -S --needed - <  native.txt
yay -S --needed - < aur.txt
echo "Done!"
