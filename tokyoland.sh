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

# copying config files
cp -r .config ~/
cp .bashrc ~/
mkdir /etc/default
cp etc/keyd/default.conf /etc/keyd/
mkdir ~/01_sys/programs
cp scripts/HelpLaunch.sh ~/01_sys/programs/
mkdir /usr/share/sddm/themes
cp sddm/themes /usr/share/sddm/
cp sddm/sddm.conf /etc/

echo "---------------------------------------------------------------"
echo "INSTALLING PACMAN PACKAGES"
echo "---------------------------------------------------------------"
#pacman packages
pacmanpkg=(
	# core
	wl-clipboard
	# blueman
	unzip
	keyd
	rsync
	pamixer
	man
	tldr
	yazi
	fzf
	fd
	zeoxide
	trash-cli

	# theming
	qt5ct
	qt6ct
	kvantum

	# desktop apps
	rofi-wayland
	waybar
	firefox

	# useful and fun stuff
	btop
	cava
	cmatrix
	fastfetch
	ark
	kio-admin
	hyprpicker
	hyprpaper

	# development
	neovim
	cmake
	rustup
)

for package in ${pacmanpkg[@]}; do
	sudo pacman -S --noconfirm ${package}
done


echo "---------------------------------------------------------------"
echo "INSTALLLING AUR PACKAGES"
echo "---------------------------------------------------------------"
# aur packages
git clone https://aur.archlinux.org/yay.git ~/01_sys/installer/yay
cd ~/01_sys/installer/yay
makepkg -si
cd -

aurpkg=(
	#core
	ttf-jetbrains-mono-nerd
	wlogout
	wttrbar
	hyprshot

	# desktop apps
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
# sudo systemctl enable bluetooth.service
# sudo systemctl start bluetooth.service

rustup default stable
rustup component add rust-analyzer

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

The rest 'should' automatically be configured correctly.
"
