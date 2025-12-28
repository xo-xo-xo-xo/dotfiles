#!/bin/bash

# Prioritize Tauon, fallback to other players except Firefox
get_active_player() {
    if playerctl -p tauon status &>/dev/null; then
        echo "tauon"
        return
    fi
    playerctl -l 2>/dev/null | grep -v firefox | head -n 1
}

player=$(get_active_player)

if [[ -z "$player" ]]; then
    zenity --info --no-wrap --text="🎵 No active player" --title="Now Playing" --width=250
    exit 0
fi

artist=$(playerctl -p "$player" metadata xesam:artist 2>/dev/null)
title=$(playerctl -p "$player" metadata xesam:title 2>/dev/null)
album=$(playerctl -p "$player" metadata xesam:album 2>/dev/null)
arturl=$(playerctl -p "$player" metadata mpris:artUrl 2>/dev/null)
status=$(playerctl -p "$player" status 2>/dev/null)
artpath="${arturl#file://}"

case "$status" in
    "Playing") icon="▶" ;;
    "Paused")  icon="⏸" ;;
    "Stopped") icon="⏹" ;;
    *) icon="🎶" ;;
esac

if [[ -z "$artist" && -z "$title" ]]; then
    zenity --info --no-wrap --text="🎵 No music playing" --title="Now Playing" --width=250
    exit 0
fi

if [[ -f "$artpath" ]]; then
    zenity --info \
        --no-wrap \
        --window-icon="$artpath" \
        --title="N
