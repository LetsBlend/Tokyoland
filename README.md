# 🌃 Tokyoland - Hyprland Config Backup

> **Disclaimer:**  
> This is **not a Hyprland distribution**, but rather a personal **backup of my configuration files** — at least for now.  
> That said, contributions and improvements are always welcome!

My goal is to eventually shape this into a well-rounded, **Tokyonight-themed** Hyprland setup, inspired by the [Tokyonight Neovim plugin](https://github.com/folke/tokyonight.nvim) by **folke**.

---

## 🚀 Installation

### Welcome to Tokyoland!
So, you're crazy enough to try or mess around with my configuration — welcome!

As of now, there is only a manual installation.

#### 📁 Copy Config Files
Copy everything inside this repo's `.config` folders to your local `~/.config/` directory - or only the modules that interest you.
Then, edit the `~/.config/hypr/hyprpaper.conf` and make sure it points to the correct wallpaper path.
For firefox you will need the dark reader plugin and import the Dark-Reader-Settings.json file, then you want to get the firefox Color addon and paste the url in the Freifox-Color-theme file to load the theme.

---

#### 📦 Install Dependencies

You’ll need a few essential packages for this config to work properly.  
I couldnt keep track of all the dependencies, but here are some that i remembered.
QT Application theming is managed by kvantum, while gtk applications are managed by nwg-look
Also the tokyonight theme for Qt seems to be a bit broken, which is why I am using the cattpuccin moccha blue for dolphin, which is very similar.

```bash
hyprland waybar wofi kitty rofi
hyprpaper hyprlock hypridle
wl-clipboard
nwg-look qt5ct qt6ct kvantum
gtk-engine-murrine ttf-nerd-fonts-symbols-common
...
```
---

```bash
ttf-jetbrains-mono-nerd
nvim
vesktop
spotify
spicetify - and its tokyonighttheme
dolphin
baloon
firefox
...
```

---

### ❤️ Love goes out to

- My boy [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim) for the original color inspiration
- The Hyprland community making a desktop environmant satisfying to use.

---

#### 🧪 Enjoy the ride. Welcome to **Tokyoland**!
