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
| window manager      | [hyprland](https://github.com/hyprwm/Hyprland)
| idle daemon         | [hypridle](https://github.com/hyprwm/hypridle)
| lockscreen | [hyprlock](https://github.com/hyprwm/hyprlock)
| screenshot utility | [hyprshot](https://github.com/Gustash/Hyprshot)
| wallpaper tool | [waypaper](https://github.com/anufrievroman/waypaper)
| bar | [waybar](https://github.com/Alexays/Waybar)
| notifications | [swaync](https://github.com/ErikReider/SwayNotificationCenter)
| music player | [rmpc](https://github.com/mierak/rmpc)
| launcher/various | [rofi](https://github.com/davatorium/rofi)
| qt theming  | [kvantum](https://github.com/tsujan/Kvantum)
| media player | [mpv (with custom OSC)](https://github.com/Samillion/ModernZ) 
| game launcher | [heroic games launcher](https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher)
| terminal shell | [fish](https://github.com/fish-shell/fish-shell)
| text editor | [code oss](https://github.com/microsoft/vscode) + [pywal extension](https://marketplace.visualstudio.com/items?itemName=dlasagno.wal-theme) 
| mpd mpris support (for waybar) | [mpd-mpris](https://github.com/natsukagami/mpd-mpris)
| clipboard manager |  [cliphist](https://github.com/sentriz/cliphist)
| qt theming |  [qt6ct](https://github.com/trialuser02/qt6ct)
| gtk theming |  [nwg-look](https://github.com/nwg-piotr/nwg-look)
| fetch program | [fastfetch](https://github.com/fastfetch-cli/fastfetch)
| terminal  | [kitty](https://github.com/kovidgoyal/kitty)
| audio visualizer (rmpc) | [cava](https://github.com/karlstav/cava)
| theme generation | [pywal16](https://github.com/eylles/pywal16)
| discord theme generation | [pywal-discord](https://github.com/NecRaul/pywal-discord)
| firefox theme generation | [pywalfox](https://addons.mozilla.org/en-US/firefox/addon/pywalfox/)
| qt icons | [breeze-chameleon](https://github.com/L4ki/Breeze-Chameleon-Icons)



## Installing the requirements (Arch-based)

``` $ pacman -S hyprland hypridle hyprlock hyprshot waybar swaync rofi kvantum mpv rmpc fish dolphin mpd cliphist qt6ct nwg-look cava kitty ttf-nerd-fonts-symbols fastfetch xdg-desktop-portal-hyprland code```

--- 

## AUR

``` $ yay -S waypaper heroic-games-launcher-bin python-pywal16 python-pywalfox pywal-discord-git qview```


## Credit

Some scripts modified from [@Narsell](https://github.com/Narsell/dotfiles)'s and [@LierB](https://github.com/LierB/dotfiles)'s dotfiles
