#!/bin/bash

# Backup destination
BACKUP_DIR="$HOME/01_usr/dev/hyprland/Tokyoland"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# List of files/directories to back up (relative to $HOME)
DOTFILES=(
  ".bashrc"
  ".config/hypr"
  ".config/kitty"
  ".config/waybar"
  ".config/rofi"
  ".config/nvim"
  ".config/Kvantum"
  ".config/qt5ct"
  ".config/vesktop/themes"
  ".config/btop"
)

# Copy each one to the backup dir, preserving relative path from $HOME
cd "$HOME" || exit

for FILE in "${DOTFILES[@]}"; do
  echo "Backing up: $FILE"
  rsync -aR "$FILE" "$BACKUP_DIR"
done

echo "✅ Backup complete!"

