# Personal use dotfiles 


These are the dotfiles I use on my own machine. They rely heavily on waypaper post commands and scripts to integrate pywal into every program I use.

Feel free to write an issue if you're having trouble using these (please don't, they're a mess).


### Screenshots
<img width="1280" height="720" alt="2025-09-26-232552_hyprshot" src="https://github.com/user-attachments/assets/a26c85ac-5f91-4d2f-9d40-8c7940d66e7c" />
<img width="1280" height="720" alt="2025-09-26-233310_hyprshot" src="https://github.com/user-attachments/assets/1bb5fb4c-2a3c-4e08-a8e2-00d1e8f4be45" />
<img width="1280" height="720" alt="2025-09-26-233725_hyprshot" src="https://github.com/user-attachments/assets/b39d0957-d77f-46ee-a598-e25ea2fc9dd4" />
<img width="1280" height="720" alt="2025-09-26-234217_hyprshot" src="https://github.com/user-attachments/assets/537d5ca5-2b28-4661-8841-f4163af77bd4" />



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
