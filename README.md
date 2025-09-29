# Personal use dotfiles 

- Dynamically theming every program I use through Pywal (this is currently done through very jank post-waypaper script calls).
- No installation script currently, expect tinkering.
 
Feel free to write an issue if you're having trouble using these (please don't, they're a mess).


### Screenshots

<img width="2559" height="1441" alt="2025-09-28-050312_hyprshot" src="https://github.com/user-attachments/assets/9f06a24a-8ac0-4d1d-86a1-c9052e00961e" />
<img width="2560" height="1441" alt="2025-09-28-050003_hyprshot" src="https://github.com/user-attachments/assets/7773e4bc-5a2b-4992-9b99-e0871a7e51f3" />
<img width="2559" height="1441" alt="2025-09-28-050605_hyprshot" src="https://github.com/user-attachments/assets/785853c1-2223-4dab-afee-bfee1ded497f" />
<img width="2559" height="1441" alt="2025-09-28-050803_hyprshot" src="https://github.com/user-attachments/assets/23d3ffdd-fb0c-49b2-addc-8372dbd35061" />
<img width="2560" height="1441" alt="2025-09-28-051207_hyprshot" src="https://github.com/user-attachments/assets/049b3a1e-354f-4228-8009-c7eae28719b6" />
<img width="2557" height="1441" alt="image" src="https://github.com/user-attachments/assets/5440ad4e-f088-4a10-bca0-bd35c4799eb7" />



---


# Programs used

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
| Theme generation | [pywal16](https://github.com/eylles/pywal16)
| Discord theme generation | [pywal-discord](https://github.com/SnarkyDeveloper/pywal-discord)
| Firefox theme generation | [pywalfox](https://addons.mozilla.org/en-US/firefox/addon/pywalfox/)




## Installing the requirements (Arch-based)

``` $ yay -S hyprland hypridle hyprlock hyprshot wlogout waybar swaync rofi wofi kvantum mpv rmpc fish dolphin mpd cliphist qt6ct nwg-look cava kitty ttf-nerd-fonts-symbols fastfetch xdg-desktop-portal-hyprland code waypaper heroic-games-launcher-bin python-pywal16 python-pywalfox qview```

Review the AUR packages yourself.


## Random notes

* Waybar's system tray module breaks occasionally. As far as I'm aware, the workaround is attacking ```pkill kded6``` to your waybar reload scripts.
* The Waybar icons are recolored in the config json by a python script, as to avoid also coloring the module text.
* No longer using nwg-look, it kills symlinks. ```gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3"``` is called by Waypaper now.



| Reloads colors instantly        | Needs restart
| :---------          | :-------  
| Kitty/CLI apps             | mpv (history script added for restarts) 
| Waybar     |  Qt/GTK
| SwayNC    | Waypaper
| Firefox | Heroic launcher
| Discord         | Obsidian
| VS Code | Filepickers? not sure how to reload..
|         | 4chanx/oneechan, need to re-import every generated theme

  ## Todo

- [x] GTK4
- [x] Custom SwayNC
- [ ] ~Installation script?~ nope
- [ ] Make a better color backend 
- [ ] qBittorrent
- [ ] More website userstyles?
- [ ] Clean up scripts ~(especially symlinks)~. 
- [ ] Consider switching to matugen, pywal is jank

## Credit

Some scripts modified from [@Narsell](https://github.com/Narsell/dotfiles)'s and [@LierB](https://github.com/LierB/dotfiles)'s dotfiles
