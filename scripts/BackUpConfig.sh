#!/bin/bash

# Backup destination
BACKUP_DIR="$HOME/01_sys/installer/Tokyoland"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# List of files/directories to back up (relative to $HOME)
DOTFILES=(
  ".bashrc"
  ".config/hypr"
  ".config/kitty"
  ".config/waybar"
  ".config/wlogout"
  ".config/rofi"
  ".config/nvim"
  ".config/Kvantum"
  ".config/qt5ct"
  ".config/vesktop/themes"
  ".config/btop"
  ".config/cava"
  ".config/spicetify"
  ".config/dolphinrc"
  ".config/yazi"
)

# Copy each one to the backup dir, preserving relative path from $HOME
cd "$HOME" || exit

for FILE in "${DOTFILES[@]}"; do
  echo "Backing up: $FILE"
  rsync -aR "$FILE" "$BACKUP_DIR"
done

echo "✅ Backup complete!"

