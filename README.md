# Personal use dotfiles 

- Dynamically theming every program I use through Pywal16 & waypaper post commands.
- Basic installation script included but not recommended. Expect tinkering.
 
Feel free to write an issue if you're having trouble using these (~please don't, they're a mess~).


### Screenshots
<img width="2560" height="1441" alt="2025-09-29-005747_hyprshot" src="https://github.com/user-attachments/assets/1870fb13-1030-4ba6-a647-af62a1db6b80" />
<img width="2559" height="1441" alt="2025-09-29-005055_hyprshot" src="https://github.com/user-attachments/assets/261dc9da-b633-4c65-8823-2bd6949e89a8" />
<img width="2562" height="1441" alt="2025-09-29-010124_hyprshot" src="https://github.com/user-attachments/assets/261cc2f3-d0fd-404f-86f2-a8e93e086d02" />
<img width="2559" height="1441" alt="2025-09-29-010532_hyprshot" src="https://github.com/user-attachments/assets/81f0438f-d5a9-468f-8447-2ce34b14da4c" />
<img width="2554" height="1437" alt="2025-09-29-010902_hyprshot" src="https://github.com/user-attachments/assets/7a2d59ff-ee48-43b7-8083-cc056dd33007" />
<img width="2556" height="1439" alt="2025-09-29-010158_hyprshot" src="https://github.com/user-attachments/assets/9469d23b-a969-4547-befa-cbb1ea0fe807" />





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
| GTK theming | [nwg-look](github.com/nwg-piotr/nwg-look)
| Theme generation | [pywal16](https://github.com/eylles/pywal16)
| Discord theme generation | [pywal-discord](https://github.com/SnarkyDeveloper/pywal-discord)
| Firefox theme generation | [pywalfox](https://addons.mozilla.org/en-US/firefox/addon/pywalfox/)
| Firefox webpage theming | [darkreader](https://addons.mozilla.org/en-US/firefox/addon/darkreader/)



# Install

``` $ git clone https://github.com/xo-xo-xo-xo/dotfiles ```  

``` cd dotfiles ```  

``` chmod +x install.sh ```  

``` ./install.sh ```


## Post-install

There are some manual changes you must make to configs to suit your machine.

* Set your own monitor ID in ~/.config/hypr/general.conf. Check the [hyprland wiki](https://wiki.hypr.land/Configuring/Monitors/) if you're lost.

* Some programs requiring an extension (like code OSS) require a manual install of the extension.


## WARNING ⚠️

I don't currently recommend this script. I have only tested this on a virtual machine using an endeavorOS KDE image as a base. There may be some quirks you have to deal with. It's probably fine. Or not.


## Manually installing the requirements (Arch-based)

``` $ yay -S hyprland hypridle hyprlock hyprshot wlogout waybar swaync rofi wofi kvantum mpv tauon-music-box-git fish dolphin cliphist qt6ct nwg-look cava kitty ttf-nerd-fonts-symbols adobe-source-han-sans-jp-fonts fastfetch xdg-desktop-portal-hyprland code waypaper heroic-games-launcher-bin python-pywal16 python-pywalfox qview waybar-module-pacman-updates-git```

Review the AUR packages yourself.


## Random notes

* Waybar's system tray module breaks occasionally. As far as I'm aware, the workaround is attacking ```pkill kded6``` to your waybar reload scripts.
* The Waybar icons are recolored in the config json by a python script, as to avoid also coloring the module text.
* The preferred way of changing the GTK theme is calling ```gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3"```, but nwg-look config added as well
* Nearly all of this is handled by waypaper's post command calling ```unified-theme.sh```, so waypaper is currently mandatory.


| Reloads colors instantly        | Needs manual intervention
| :---------          | :-------  
| Kitty/CLI apps             | mpv (history script added for restarts) 
| Waybar     |  Qt/GTK
| SwayNC    | Waypaper
| Firefox | Heroic launcher
| Discord         | Obsidian
| VS Code | Filepickers? not sure how to reload..
| Tauon        | 4chanx/oneechan, need to re-import every generated theme
|             | Darkreader, need to re-import the json every time.

  ## Todo

- [x] GTK4
- [x] Custom SwayNC
- [x] (Very bad) installation script? 
- [ ] Make a better color backend 
- [ ] OBS
- [x] ~Darkreader pywal fork~ Darkreader template
- [x] Clean up scripts ~(especially symlinks)~. 
~- [ ] Consider switching to matugen, pywal is jank~

## Credit

Some scripts modified from [@Narsell](https://github.com/Narsell/dotfiles)'s and [@LierB](https://github.com/LierB/dotfiles)'s dotfiles
