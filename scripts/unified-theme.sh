#!/bin/bash

# the mega pywal script

# aybar icons

python3 /home/xo/scripts/colors-waybar.py

# discord
~/.local/bin/pywal-discord || true

#kvantum

KVANTUM_DIR="$HOME/.config/Kvantum"
WAL_CACHE_DIR="$HOME/.cache/wal"
THEME="pywal"
TEMPLATE="pywal"
KV_THEME_DIR="$KVANTUM_DIR/$THEME"

mkdir -p "$KV_THEME_DIR"
ln -sf "$WAL_CACHE_DIR/${TEMPLATE}.kvconfig" "$KV_THEME_DIR/${THEME}.kvconfig"
ln -sf "$WAL_CACHE_DIR/${TEMPLATE}.svg" "$KV_THEME_DIR/${THEME}.svg"
kvantummanager --set "$THEME" || true

# mpv (why)

TEMPLATE_FILE="$HOME/.config/mpv/script-opts/modernz.conf.template"
OUTPUT_FILE="$HOME/.config/mpv/script-opts/modernz.conf"
COLORS_FILE="$HOME/.cache/wal/colors.json"

if [ -f "$TEMPLATE_FILE" ] && [ -f "$COLORS_FILE" ]; then
    cat "$TEMPLATE_FILE" | \
    sed "s/{background}/$(jq -r '.special.background' "$COLORS_FILE")/" | \
    sed "s/{foreground}/$(jq -r '.special.foreground' "$COLORS_FILE")/" | \
    sed "s/{color1}/$(jq -r '.colors.color1' "$COLORS_FILE")/" | \
    sed "s/{color2}/$(jq -r '.colors.color2' "$COLORS_FILE")/" | \
    sed "s/{color3}/$(jq -r '.colors.color3' "$COLORS_FILE")/" | \
    sed "s/{color4}/$(jq -r '.colors.color4' "$COLORS_FILE")/" | \
    sed "s/{color5}/$(jq -r '.colors.color5' "$COLORS_FILE")/" | \
    sed "s/{color6}/$(jq -r '.colors.color6' "$COLORS_FILE")/" | \
    sed "s/{color7}/$(jq -r '.colors.color7' "$COLORS_FILE")/" | \
    sed "s/{color8}/$(jq -r '.colors.color8' "$COLORS_FILE")/" | \
    sed "s/{color9}/$(jq -r '.colors.color9' "$COLORS_FILE")/" \
    > "$OUTPUT_FILE"
fi

#tauon

curl -s http://localhost:7813/reloadtheme >/dev/null || true

#save
cp "$WALLPAPER" "$HOME/.local/share/wallpaper.jpg"

#gui

pkill kded6 || true
killall swaync waybar || true
swaync &
waybar &
waybar -c ~/.config/waybar/config-monitor2.jsonc -s ~/.config/waybar/style-monitor2.css &

gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3" || true
