#!/bin/bash
# mpv_colors.sh


TEMPLATE_FILE=~/.config/mpv/script-opts/modernz.conf.template
OUTPUT_FILE=~/.config/mpv/script-opts/modernz.conf


# check for template file
if [ ! -f "$TEMPLATE_FILE" ]; then
  echo "Error: Template file $TEMPLATE_FILE not found!"
  exit 1
fi

# Check if wal generated colors.json
if [ ! -f ~/.cache/wal/colors.json ]; then
  echo "Error: WAL colors file ~/.cache/wal/colors.json not found!"
  exit 1
fi

# Copy template and replace placeholders with hex codes from colors.json
cat "$TEMPLATE_FILE" | \
  sed "s/{background}/$(jq -r '.special.background' ~/.cache/wal/colors.json)/" | \
  sed "s/{foreground}/$(jq -r '.special.foreground' ~/.cache/wal/colors.json)/" | \
  sed "s/{color1}/$(jq -r '.colors.color1' ~/.cache/wal/colors.json)/" | \
  sed "s/{color2}/$(jq -r '.colors.color2' ~/.cache/wal/colors.json)/" | \
  sed "s/{color3}/$(jq -r '.colors.color3' ~/.cache/wal/colors.json)/" | \
  sed "s/{color4}/$(jq -r '.colors.color4' ~/.cache/wal/colors.json)/" | \
  sed "s/{color5}/$(jq -r '.colors.color5' ~/.cache/wal/colors.json)/" | \
  sed "s/{color6}/$(jq -r '.colors.color6' ~/.cache/wal/colors.json)/" | \
  sed "s/{color7}/$(jq -r '.colors.color7' ~/.cache/wal/colors.json)/" | \
  sed "s/{color8}/$(jq -r '.colors.color8' ~/.cache/wal/colors.json)/" | \
  sed "s/{color9}/$(jq -r '.colors.color9' ~/.cache/wal/colors.json)/" \
  > "$OUTPUT_FILE"

echo "updated $OUTPUT_FILE with new WAL colors."
