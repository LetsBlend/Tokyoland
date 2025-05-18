# 🌃 Tokyoland - Hyprland Config Backup

> **Disclaimer:**  
> This is **not a Hyprland distribution**, but rather a personal **backup of my configuration files** — at least for now.  
> That said, contributions and improvements are always welcome!

My goal is to eventually shape this into a well-rounded, **Tokyonight-themed** Hyprland setup, inspired by the [Tokyonight Neovim plugin](https://github.com/folke/tokyonight.nvim) by **folke**.

---

## 🚀 Installation

### Welcome to Tokyoland!
So, you're crazy enough to try or mess around with my configuration — welcome!

As of now, there is only a manual installation. Here's what to do:

### 📁 Step 1: Copy Config Files
Copy everything inside this repo's `.config` folders to your local `~/.config/` directory - or only the modules that interest you.

---

### 🖼️ Step 2: Set the Wallpaper
Copy the `wallpaper.png` to any folder of your choice.  
Then, edit the `~/.config/hypr/hyprpaper.conf` and make sure it points to the correct wallpaper path.

---

### 📦 Step 3: Install Dependencies

You’ll need a few essential packages for this config to work properly.  
I couldnt keep track of all the dependencies, but here are some of the main requirement

#### 🧪 From Official Repos (Pacman):
```bash
sudo pacman -S hyprland waybar wofi kitty rofi \
             hyprpaper hyprlock hypridle \
             grim slurp wl-clipboard \
             nwg-look qt5ct qt6ct \
             gtk-engine-murrine ttf-nerd-fonts-symbols-common \
             playerctl brightnessctl
```

#### 🧪 From AUR (via yay):
```bash
yay -S swww cava tokyonight-gtk-theme-git tokyonight-icons-git
```

> Make sure `yay` is installed: `sudo pacman -S yay`

---

## ❤️ Love goes out to

- My boy [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim) for the original color inspiration
- The Hyprland community making a desktop environmant satisfying to use.

---

### 🧪 Enjoy the ride. Welcome to **Tokyoland**!
