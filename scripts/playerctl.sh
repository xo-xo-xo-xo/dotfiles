#!/bin/bash



get_active_player() {
    if playerctl -p tauon status &>/dev/null; then
        echo "tauon"
        return
    fi

    playerctl -l 2>/dev/null | grep -v firefox | head -n 1
}

player=$(get_active_player)

if [[ -z "$player" ]]; then
  echo '{"text": "", "tooltip": "No player found"}'
  exit 0
fi


artist=$(playerctl -p "$player" metadata xesam:artist 2>/dev/null)
title=$(playerctl -p "$player" metadata xesam:title 2>/dev/null)
arturl=$(playerctl -p "$player" metadata mpris:artUrl 2>/dev/null)

if [[ -z "$artist" && -z "$title" ]]; then
  echo '{"text": "", "tooltip": "No music playing"}'
  exit 0
fi


artpath="${arturl#file://}"


artist_escaped=$(echo "$artist" | sed 's/"/\\"/g')
title_escaped=$(echo "$title" | sed 's/"/\\"/g')


if [[ -f "$artpath" ]]; then
  echo "{\"text\": \"$artist_escaped - $title_escaped\", \"tooltip\": \"<img src='$artpath' width='200'><br><b>$artist_escaped</b><br>$title_escaped\"}"
else
  echo "{\"text\": \"$artist_escaped - $title_escaped\", \"tooltip\": \"$artist_escaped - $title_escaped\"}"
fi
