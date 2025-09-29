#!/bin/bash
# wal symlinks

# directories
for dir in \
  "$HOME/.config/rofi" \
  "$HOME/.local/share/TauonMusicBox/theme" \
  "$HOME/.config/heroic/heroic-themes-main/pywal" \
  "$HOME/.config/gtk-3.0" \
  "$HOME/.config/gtk-4.0"; do
    mkdir -p "$dir"
done


ln -sf ~/.cache/wal/rofi-colors.rasi       ~/.config/rofi/colors.rasi
ln -sf ~/.cache/wal/rofi-simple-config.rasi ~/.config/rofi/simple-config.rasi
ln -sf ~/.cache/wal/rofi-powermenu-config.rasi ~/.config/rofi/powermenu-config.rasi
ln -sf ~/.cache/wal/rofi-launcher-config.rasi ~/.config/rofi/launcher-config.rasi
ln -sf ~/.cache/wal/rofi-wallpaper-sel.rasi  ~/.config/rofi/wallpaper-sel-config.rasi
ln -sf ~/.cache/wal/colors-tauon.ttheme      ~/.local/share/TauonMusicBox/theme/colors-tauon.ttheme
ln -sf ~/.cache/wal/heroic-pywal.css        ~/.config/heroic/heroic-themes-main/pywal/pywal.css
ln -sf ~/.cache/wal/gtk-colors.css          ~/.config/gtk-3.0/colors.css
ln -sf ~/.cache/wal/gtk-colors.css          ~/.config/gtk-4.0/colors.css
