#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export DRI_PRIME=1
export MESA_LOADER_DRIVER_OVERRIDE=amdgpu
export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.x86_64.json
export QT_QPA_PLATFORMTHEME=qt5ct
export PATH="$HOME/02_sys/programs:$PATH"

alias vesktop='discord --enable-features=UseOzonePlatform --ozone-platform=wayland'
alias spotify='spotify --enable-features=UseOzonePlatform --ozone-platform=wayland'

# ~/01_sys/programs/HelpLaunch.sh

# Powerline-style prompt without git info

PS1='\[\e[30;44m\] \u@\h \[\e[30;45m\] \w \[\e[0m\] '

export PATH=$PATH:/home/david/.spicetify

function toggle_yazi() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

function toggle_nvim() {
	nvim
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"

}
