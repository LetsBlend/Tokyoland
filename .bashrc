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

alias vesktop='discord --enable-features=UseOzonePlatform --ozone-platform=wayland'
alias spotify='spotify --enable-features=UseOzonePlatform --ozone-platform=wayland'
alias code='code --enable-features=UseOzonePlatform --ozone-platform=wayland'
