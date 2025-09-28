# Personal use dotfiles 


These are the dotfiles I use on my own machine. They rely heavily on waypaper post commands and scripts to integrate pywal into every program I use.

Feel free to write an issue if you're having trouble using these (please don't, they're a mess).


### Screenshots
<img width="2558" height="1441" alt="2025-09-26-232552_hyprshot" src="https://github.com/user-attachments/assets/5dc4dd71-4e60-4534-ab74-c9d621633d20" />
<img width="2557" height="1435" alt="2025-09-26-233310_hyprshot" src="https://github.com/user-attachments/assets/23ebddd0-99b0-4a30-8a98-00d03a0234b1" />
<img width="2558" height="1441" alt="2025-09-26-233725_hyprshot" src="https://github.com/user-attachments/assets/ae2b1a80-e770-49ce-b21b-10390ce277ab" />
<img width="2560" height="1441" alt="2025-09-26-234217_hyprshot" src="https://github.com/user-attachments/assets/2a840ac2-b2f9-4a78-a910-ba9a98e4138c" />
<img width="2556" height="1440" alt="2025-09-26-234258_hyprshot" src="https://github.com/user-attachments/assets/ade3c02c-db93-447e-b281-50f160e2a11c" />



---


# Programs used

| purpose           | program
| :---------          | :-------  
| Window manager      | [hyprland](https://github.com/hyprwm/Hyprland)
| Idle daemon         | [hypridle](https://github.com/hyprwm/hypridle)
| Lockscreen | [hyprlock](https://github.com/hyprwm/hyprlock)
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
| GTK theming |  [nwg-look](https://github.com/nwg-piotr/nwg-look)
| Theme generation | [pywal16](https://github.com/eylles/pywal16)
| Discord theme generation | [pywal-discord](https://github.com/NecRaul/pywal-discord)
| Firefox theme generation | [pywalfox](https://addons.mozilla.org/en-US/firefox/addon/pywalfox/)




## Installing the requirements (Arch-based)

``` $ yay -S hyprland hypridle hyprlock hyprshot waybar swaync rofi wofi kvantum mpv rmpc fish dolphin mpd cliphist qt6ct nwg-look cava kitty ttf-nerd-fonts-symbols fastfetch xdg-desktop-portal-hyprland code waypaper heroic-games-launcher-bin python-pywal16 python-pywalfox pywal-discord-git qview```

Do your own research before installing AUR packages.


## Random notes

* Waybar's system tray module breaks occasionally. As far as I'm aware, the workaround is attacking ```pkill kded6``` to your waybar reload scripts.
* ```~/.themes/pywal/gtk-3.0/colors.css``` symlinked to ```~/.cache/wal/colors-waybar.css```
* ```~/.config/heroic/heroic-themes-main/pywal/pywal.css``` symlinked to ```~/.cache/wal/heroic-pywal.css```
*  ```~/.local/share/TauonMusicBox/theme/colors-tauon.ttheme``` symlinked to ```~/.cache/wal/colors-tauon.ttheme```
* ```~/scripts/setup_symlinks``` for rofi theme symlinks.


| Reloads colors instantly        | Needs restart
| :---------          | :-------  
| kitty/cli apps             | mpv (history script added for restarts) 
| waybar     |  qt/gtk
| swaync    | waypaper
| firefox | heroic launcher
| discord         | obsidian
| vs code |


  ## Todo

- [ ] Consider switching to matugen, pywal is jank.

- [ ] Clean up scripts (especially symlinks). 

- [ ] Custom SwayNC
- [ ] ~Installation script?~ nope

## Credit

Some scripts modified from [@Narsell](https://github.com/Narsell/dotfiles)'s and [@LierB](https://github.com/LierB/dotfiles)'s dotfiles
