# personal use dotfiles 

hyprland dots with a focus on dynamically theming every program through pywal.  

 feel free to write an issue if you're having trouble using these (~please don't, they're a mess~).

---

### screenshots
<div style="display: flex; flex-wrap: wrap; gap: 8px;">
 <img width="5121" height="320" alt="2025-12-31-054516_hyprshot" src="https://github.com/user-attachments/assets/bbf1a098-28e5-4128-a20e-eec5e54362f6" />
<img width="5115" height="320" alt="2025-12-31-053700_hyprshot" src="https://github.com/user-attachments/assets/22ab92f9-5b4b-4654-9549-d6d35207f81b" />

  <img src="https://github.com/user-attachments/assets/1870fb13-1030-4ba6-a647-af62a1db6b80" width="320" />
  <img src="https://github.com/user-attachments/assets/261dc9da-b633-4c65-8823-2bd6949e89a8" width="320" />
  <img src="https://github.com/user-attachments/assets/261cc2f3-d0fd-404f-86f2-a8e93e086d02" width="320" />
  <img src="https://github.com/user-attachments/assets/81f0438f-d5a9-468f-8447-2ce34b14da4c" width="320" />
  <img src="https://github.com/user-attachments/assets/7a2d59ff-ee48-43b7-8083-cc056dd33007" width="320" />
  <img src="https://github.com/user-attachments/assets/9469d23b-a969-4547-befa-cbb1ea0fe807" width="320" />
</div>


<br><br>


---

# programs used
<br>

| purpose           | program
| :---------          | :-------  
| window manager      | [hyprland](https://github.com/hyprwm/hyprland)
| idle daemon         | [hypridle](https://github.com/hyprwm/hypridle)
| lockscreen | [hyprlock](https://github.com/hyprwm/hyprlock)
| logout menu | [wlogout](https://github.com/artsymacaw/wlogout)
| screenshot utility | [hyprshot](https://github.com/gustash/hyprshot)
| wallpaper tool | [waypaper](https://github.com/anufrievroman/waypaper)
| bar | [waybar](https://github.com/alexays/waybar)
| notifications | [swaync](https://github.com/erikreider/swaynotificationcenter)
| launcher/various | [rofi](https://github.com/davatorium/rofi)
| kaomoji picker | [wofi](https://sr.ht/~scoopta/wofi/)
| clipboard manager |  [cliphist](https://github.com/sentriz/cliphist)
| terminal  | [kitty](https://github.com/kovidgoyal/kitty)
| terminal shell | [fish](https://github.com/fish-shell/fish-shell)
| fetch program | [fastfetch](https://github.com/fastfetch-cli/fastfetch)
| music player | [rmpc](https://github.com/mierak/rmpc)
| music player (gui option) | [tauon music box](https://github.com/taiko2k/tauon)
| mpd mpris support (for waybar) | [mpd-mpris](https://github.com/natsukagami/mpd-mpris)
| mpd scrobbling support | [mpdscribble](https://github.com/musicplayerdaemon/mpdscribble)
| audio visualizer (rmpc) | [cava](https://github.com/karlstav/cava)
| media player | [mpv (with custom osc)](https://github.com/samillion/modernz) 
| media player (streaming) |  [stremio enhanced](https://github.com/revenge977/stremio-enhanced)
| game launcher | [heroic games launcher](https://github.com/heroic-games-launcher/heroicgameslauncher)
| text editor | [code oss](https://github.com/microsoft/vscode) + [pywal extension](https://marketplace.visualstudio.com/items?itemname=dlasagno.wal-theme) 
| markdown notes | [obsidian](https://obsidian.md/)
| qt theming |  [qt6ct](https://github.com/trialuser02/qt6ct)
| qt theming  | [kvantum](https://github.com/tsujan/kvantum)
| qt icons | [breeze-chameleon](https://github.com/l4ki/breeze-chameleon-icons)
| gtk theming | [nwg-look](github.com/nwg-piotr/nwg-look)
| theme generation | [pywal16](https://github.com/eylles/pywal16)
| discord theme generation | [pywal-discord](https://github.com/snarkydeveloper/pywal-discord)
| firefox theme generation | [pywalfox](https://addons.mozilla.org/en-us/firefox/addon/pywalfox/)
| firefox webpage theming | [darkreader](https://addons.mozilla.org/en-us/firefox/addon/darkreader/)


<br><br>

---

# automated install
<br>

```bash
git clone https://github.com/xo-xo-xo-xo/dotfiles
cd dotfiles
chmod +x install.sh
./install.sh
```

<br>

## ⚠️ warning
<br>

the above script was made for personal use and is **non-destructive** but not fully tested.  i've only verified this on a virtual machine using an endeavouros kde base. expect minor quirks. it’s probably fine. or not.

<br><br>

---

##  post-install
<br>

some manual changes are needed to fit your setup:

- **set your monitor id** in `~/.config/hypr/general.conf`.  
  check the [hyprland wiki](https://wiki.hypr.land/configuring/monitors/) if unsure.

- **certain programs** (like vs code oss) require manual installation of extensions (see above).

<br><br>

---

## manually installing dependencies (arch-based)
<br>

```bash
yay -s hyprland hypridle hyprlock hyprshot wlogout waybar swww swaync rofi wofi kvantum mpv tauon-music-box-git fish dolphin cliphist
qt6ct-kde nwg-look cava kitty ttf-nerd-fonts-symbols adobe-source-han-sans-jp-fonts
fastfetch xdg-desktop-portal-hyprland code waypaper heroic-games-launcher-bin 
python-pywal16 python-pywalfox qview waybar-module-pacman-updates-git
```

> **note:** always review aur packages before installing.

<br><br>

---

##  notes
<br>

- waybar’s system tray can break occasionally. the way around this seems to be adding ```pkill kded6``` to reload scripts.(?)

- waybar's icons are recolored by a python script to avoid also coloring module text.

- the preferred way of changing gtk themes is through calling ```gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3"``` (this is done automatically).
  (also configurable via `nwg-look`)

- most theme updates are handled by **waypaper**’s post_command calling `unified-theme.sh`,  
  so **waypaper is currently required**.

<br><br>

---

###  reload behaviour
<br>

| reloads instantly | needs manual intervention |
| :---------------- | :------------------------ |
| kitty / cli apps  | mpv *(script to resume from last playback added)* |
| waybar            | qt / gtk |
| swaync            | waypaper |
| firefox           | heroic launcher |
| discord           | obsidian |
| vs code           | filepickers? not sure how to reload.. |
| tauon (thanks taiko2k)           | 4chanx / oneechan *(re-import json)* |
| stremio enhanced                   | darkreader *(re-import json)* |

<br><br>

---

##  todo
<br>

- [x] gtk4  
- [x] custom swaync  
- [x] (very bad) installation script?  
- [ ] make a better color backend  
- [ ] obs  
- [x] ~darkreader pywal fork~ → **darkreader template**  
- [x] clean up scripts *(especially symlinks)*  
- [ ] ~consider switching to matugen; pywal is jank~

<br><br>

---

##  credit
<br>

some scripts modified from [@narsell](https://github.com/narsell/dotfiles)'s and [@lierb](https://github.com/lierb/dotfiles)'s dotfiles
