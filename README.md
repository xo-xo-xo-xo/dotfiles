# Personal use dotfiles 

Hyprland dots with a focus on dynamically theming every program through pywal.  

 Feel free to write an issue if you're having trouble using these (~please don't, they're a mess~).

---

### Screenshots
<div style="display: flex; flex-wrap: wrap; gap: 8px;">
  <img src="https://github.com/user-attachments/assets/1870fb13-1030-4ba6-a647-af62a1db6b80" width="320" />
  <img src="https://github.com/user-attachments/assets/261dc9da-b633-4c65-8823-2bd6949e89a8" width="320" />
  <img src="https://github.com/user-attachments/assets/261cc2f3-d0fd-404f-86f2-a8e93e086d02" width="320" />
  <img src="https://github.com/user-attachments/assets/81f0438f-d5a9-468f-8447-2ce34b14da4c" width="320" />
  <img src="https://github.com/user-attachments/assets/7a2d59ff-ee48-43b7-8083-cc056dd33007" width="320" />
  <img src="https://github.com/user-attachments/assets/9469d23b-a969-4547-befa-cbb1ea0fe807" width="320" />
</div>


<br><br>


---

# Programs used
<br>

| purpose           | program
| :---------          | :-------  
| Window manager      | [hyprland](https://github.com/hyprwm/Hyprland)
| Idle daemon         | [hypridle](https://github.com/hyprwm/hypridle)
| Lockscreen | [hyprlock](https://github.com/hyprwm/hyprlock)
| Logout menu | [wlogout](https://github.com/ArtsyMacaw/wlogout)
| Screenshot utility | [hyprshot](https://github.com/Gustash/Hyprshot)
| Wallpaper tool | [waypaper](https://github.com/anufrievroman/waypaper)
| Bar | [waybar](https://github.com/Alexays/Waybar)
| Notifications | [swaync](https://github.com/ErikReider/SwayNotificationCenter)
| Launcher/various | [rofi](https://github.com/davatorium/rofi)
| Kaomoji picker | [wofi](https://sr.ht/~scoopta/wofi/)
| Clipboard manager |  [cliphist](https://github.com/sentriz/cliphist)
| Terminal  | [kitty](https://github.com/kovidgoyal/kitty)
| Terminal shell | [fish](https://github.com/fish-shell/fish-shell)
| Fetch program | [fastfetch](https://github.com/fastfetch-cli/fastfetch)
| Music player | [rmpc](https://github.com/mierak/rmpc)
| Music player (gui option) | [tauon music box](https://github.com/Taiko2k/Tauon)
| MPD mpris support (for waybar) | [mpd-mpris](https://github.com/natsukagami/mpd-mpris)
| MPD scrobbling support | [mpdscribble](https://github.com/MusicPlayerDaemon/mpdscribble)
| Audio visualizer (rmpc) | [cava](https://github.com/karlstav/cava)
| Media player | [mpv (with custom OSC)](https://github.com/Samillion/ModernZ) 
| Game launcher | [heroic games launcher](https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher)
| Text editor | [code oss](https://github.com/microsoft/vscode) + [pywal extension](https://marketplace.visualstudio.com/items?itemName=dlasagno.wal-theme) 
| Markdown notes | [obsidian](https://obsidian.md/)
| Qt theming |  [qt6ct](https://github.com/trialuser02/qt6ct)
| Qt theming  | [kvantum](https://github.com/tsujan/Kvantum)
| Qt icons | [breeze-chameleon](https://github.com/L4ki/Breeze-Chameleon-Icons)
| GTK theming | [nwg-look](github.com/nwg-piotr/nwg-look)
| Theme generation | [pywal16](https://github.com/eylles/pywal16)
| Discord theme generation | [pywal-discord](https://github.com/SnarkyDeveloper/pywal-discord)
| Firefox theme generation | [pywalfox](https://addons.mozilla.org/en-US/firefox/addon/pywalfox/)
| Firefox webpage theming | [darkreader](https://addons.mozilla.org/en-US/firefox/addon/darkreader/)


<br><br>

---

# Automated Install
<br>

```bash
git clone https://github.com/xo-xo-xo-xo/dotfiles
cd dotfiles
chmod +x install.sh
./install.sh
```

<br>

## ⚠️ Warning
<br>

This script is **non-destructive** but not fully tested.  
It has only been verified on a virtual machine using an EndeavourOS KDE base. Expect minor quirks. It’s probably fine. Or not.

<br><br>

---

##  Post-install
<br>

Some manual changes are needed to fit your setup:

- **Set your monitor ID** in `~/.config/hypr/general.conf`.  
  Check the [Hyprland wiki](https://wiki.hypr.land/Configuring/Monitors/) if unsure.

- **Certain programs** (like VS Code OSS) require manual installation of extensions (see above).

<br><br>

---

## Manually installing dependencies (Arch-based)
<br>

```bash
yay -S hyprland hypridle hyprlock hyprshot wlogout waybar swww swaync rofi wofi \
kvantum mpv tauon-music-box-git fish dolphin cliphist qt6ct nwg-look cava \
kitty ttf-nerd-fonts-symbols adobe-source-han-sans-jp-fonts fastfetch \
xdg-desktop-portal-hyprland code waypaper heroic-games-launcher-bin \
python-pywal16 python-pywalfox qview waybar-module-pacman-updates-git
```

> **Note:** Always review AUR packages before installing.

<br><br>

---

##  Notes
<br>

- Waybar’s system tray can break occasionally. The way around this seems to be adding ```pkill kded6``` to reload scripts.(?)

- Waybar's icons are recolored by a Python script to avoid also coloring module text.

- The Preferred way of changing GTK themes is through calling ```gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3"``` (this is done automatically).
  (also configurable via `nwg-look`)

- Most theme updates are handled by **waypaper**’s post_command calling `unified-theme.sh`,  
  so **waypaper is currently required**.

<br><br>

---

###  Reload behavior
<br>

| Reloads instantly | Needs manual intervention |
| :---------------- | :------------------------ |
| Kitty / CLI apps  | mpv *(script to resume from last playback added)* |
| Waybar            | Qt / GTK |
| SwayNC            | Waypaper |
| Firefox           | Heroic Launcher |
| Discord           | Obsidian |
| VS Code           | Filepickers? not sure how to reload.. |
| Tauon (thanks Taiko2k)           | 4chanX / Oneechan *(re-import JSON)* |
|                   | DarkReader *(re-import JSON)* |

<br><br>

---

##  Todo
<br>

- [x] GTK4  
- [x] Custom SwayNC  
- [x] (Very bad) installation script?  
- [ ] Make a better color backend  
- [ ] OBS  
- [x] ~DarkReader Pywal fork~ → **DarkReader template**  
- [x] Clean up scripts *(especially symlinks)*  
- [ ] ~Consider switching to matugen; Pywal is jank~

<br><br>

---

##  Credit
<br>

Some scripts modified from [@Narsell](https://github.com/Narsell/dotfiles)'s and [@LierB](https://github.com/LierB/dotfiles)'s dotfiles
