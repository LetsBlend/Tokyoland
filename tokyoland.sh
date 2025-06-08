#!/bin/bash

echo "
       ████████╗ ██████╗ ██╗  ██╗██╗   ██╗ ██████╗ ██╗      █████╗ ███╗   ██╗██████╗ 
       ╚══██╔══╝██╔═══██╗██║ ██╔╝ ██╗ ██╔╝██╔═══██╗██║     ██╔══██╗████╗  ██║██╔══██╗
          ██║   ██║   ██║█████╔╝   ████╔╝ ██║   ██║██║     ███████║██╔██╗ ██║██║  ██║
          ██║   ██║   ██║██╔═██╗    ██╔╝  ██║   ██║██║     ██╔══██║██║╚██╗██║██║  ██║
          ██║   ╚██████╔╝██║  ██╗   ██║   ╚██████╔╝███████╗██║  ██║██║ ╚████║██████╔╝
          ╚═╝    ╚═════╝ ╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ 
	  "

echo "---------------------------------------------------------------"
echo "COPYING CONFIG FILES"
echo "---------------------------------------------------------------"

#copying config files
cp -r ./.config ~/
cp .bashrc ~/
mkdir /etc/default
cp default.conf /etc/keyd/
mkdir ~/01_sys/programs/
cp scripts/HelpLaunch.sh ~/01_sys/programs/

echo "---------------------------------------------------------------"
echo "INSTALLING PACMAN PACKAGES"
echo "---------------------------------------------------------------"
#pacman packages
pacmanpkg=(
	neovim
	wl-clipboard
	unzip
	keyd
	qt5ct
	qt6ct
	kvantum
	rofi-wayland
	waybar
	# blueman
	btop
	cava
	fastfetch
	rsync
	hyprpicker
	firefox
)

for package in ${pacmanpkg[@]}; do
	sudo pacman -S --noconfirm ${package}
done

echo "---------------------------------------------------------------"
echo "STARTING DAEMONS"
echo "---------------------------------------------------------------"
#start daemons
sudo systemctl enable --now keyd
# sudo systemctl enable bluetooth.service
# sudo systemctl start bluetooth.service

echo "---------------------------------------------------------------"
echo "INSTALLLING AUR PACKAGES"
echo "---------------------------------------------------------------"
#aur packages
git clone https://aur.archlinux.org/yay.git ~/01_sys/installer/yay
cd ~/01_sys/installer/yay
makepkg -si
cd -

aurpkg=(
	wlogout
	wttrbar
	ttf-jetbrains-mono-nerd
	vesktop
	spotify
	spicetify-cli
)

for package in ${aurpkg[@]}; do
	yay -S --noconfirm ${package}
done

echo "---------------------------------------------------------------"
echo "LAUNCHING APPLICATIONS"
echo "---------------------------------------------------------------"
sudo systemctl enable --now keyd

sudo chmod -R a+wr /opt/spotify
spicetify backup apply
spicetify config current_theme Tokyo
spicetify config color_scheme Night
spicetify apply
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | bash
spicetify apply

echo "---------------------------------------------------------------"
echo "INSTALL COMPLETED :D"
echo "---------------------------------------------------------------"

echo "
WARNING: Some things are currently not automatically configured. 
Firefox needs to be themed manually. Install a dark reader and apply the Dark-Reader-Settings.json file.
Additionally you will need to install the Firefox Color extension and paste the url from the Firefox-Color-theme file

Vesktop also needs to load the vesktop.json file.
"
