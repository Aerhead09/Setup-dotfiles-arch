# 🌙 Jean's Arch + Hyprland Dotfiles
Welcome to my arch setup. nothing special. i ricing my setup like this because
i quite like uma musume, personally Manhattan Cafe, but today i not quite fond with
Manhattan cafe and i switching to Aston Machan.

## 📸 Preview
![Screenshot](/Wallpapers/Cafe000.png)

---

## 🛠️ The Specs
| Component | Software |
| :--- | :--- |
| **Distro** | Arch Linux (CachyOS Kernel) |
| **WM** | Hyprland |
| **Bar** | Waybar |
| **Terminal** | Kitty |
| **Shell** | Bash + Starship Prompt |
| **Launcher** | Rofi |
| **Notify** | Swaync / Dunst |
| **File Manager**| Yazi / Dolphin |
| **Editor** | Neovim / Code-OSS |

---

## 🚀 Installation (The Bare Repo Way)
I use a bare repository to manage these dotfiles without moving them from `~/.config`. 

### 1. The Setup
To manage these files on a new machine, use this alias:
```bash
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
