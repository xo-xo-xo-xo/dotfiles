#!/usr/bin/env bash
set -euo pipefail

# Optional args: input output
WAYBAR_FILE="${1:-$HOME/.cache/wal/colors-waybar.css}"
OUT_FILE="${2:-$HOME/.cache/wal/pywal-darkreader-from-waybar.css}"

if [ ! -f "$WAYBAR_FILE" ]; then
  echo "ERROR: $WAYBAR_FILE not found."
  exit 1
fi

cat > "$OUT_FILE" <<EOF
/* Generated from $WAYBAR_FILE on $(date) */
:root {
EOF

# Convert lines like:
# @define-color foreground #fafafa;
# into:
#   --pywal-foreground: #fafafa;
# This keeps the full value (handles rgba(...) with spaces).
sed -n 's/@define-color \([^ ]*\) \(.*\);$/  --pywal-\1: \2;/p' "$WAYBAR_FILE" | sed 's/[{}]//g' >> "$OUT_FILE"

cat >> "$OUT_FILE" <<'EOF'

  /* Dark Reader mappings (convenience) */
  --dr-background: var(--pywal-background);
  --dr-text: var(--pywal-foreground);
  --dr-accent: var(--pywal-color4);
  --dr-link: var(--pywal-color12);
  --dr-selection: var(--pywal-color11);
}

/* Minimal Dark Reader-friendly overrides */
html, body, .darkreader--root {
  background-color: var(--dr-background) !important;
  color: var(--dr-text) !important;
}

/* Links */
a, a * {
  color: var(--dr-link) !important;
}
a:visited, a:visited * {
  color: var(--pywal-color13) !important;
}

/* Selection */
::selection {
  background: var(--dr-selection) !important;
  color: var(--dr-text) !important;
}

/* Forms */
button, input, select, textarea {
  color: var(--dr-text) !important;
  background-color: transparent !important;
  border-color: var(--pywal-color7) !important;
}

/* Scrollbar (Firefox) */
* {
  scrollbar-color: var(--dr-accent) var(--dr-background) !important;
}
EOF

echo "Wrote $OUT_FILE"
