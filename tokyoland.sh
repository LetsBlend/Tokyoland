#!/bin/bash

echo "INSTALLING TOKYOLAND"

#copying config files
cp -r ./.config ~/
cp .bashrc ~/

#pacman packages
pacmanpkg=(
	neovim
	firefox
)

for package in ${pacmanpkg[@]}; do
	sudo pacman -S --noconfirm ${package}
done

#aur packages
aurpkg=(
)

for package in ${aurpkg[@]}; do
	yay -S --noconfirm ${package}
done
