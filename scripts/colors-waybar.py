#!/usr/bin/env python3
import re
import os

def load_colors(css_file):
    """Read hex colors from colors-waybar.css and return a list."""
    colors = []
    with open(css_file, 'r') as f:
        for line in f:
            match = re.match(r'@define-color color\d+ #([0-9a-fA-F]{6});', line.strip())
            if match:
                colors.append(match.group(1))  # e.g., '150909', '5a4948'
    return colors

def replace_colors(config_str, available_colors):
    """Replace standalone hex color codes with hex values from CSS."""
    # Use colors at indices 2, 4, 6, 8 (0-based: 3rd, 5th, 7th, 9th colors)
    color_indices = [2, 4, 6, 8]
    color_cycle = [available_colors[i] for i in color_indices if i < len(available_colors)]  # Ensure indices are valid
    if not color_cycle:
        return config_str  # Return unchanged if no valid colors
    color_index = 0
    def replace_match(match):
        nonlocal color_index
        replacement = f"#{color_cycle[color_index]}"
        color_index = (color_index + 1) % len(color_cycle)
        return replacement
    # Match standalone hex codes (# followed by 6 hex digits, word boundary)
    return re.sub(r'#[0-9a-fA-F]{6}\b', replace_match, config_str)

def update_config_file(config_path, available_colors):
    """Update a single config file with new colors."""
    try:
        # Read config as raw text
        with open(config_path, 'r') as f:
            config_str = f.read()

        # Replace hex colors
        modified_config_str = replace_colors(config_str, available_colors)

        # Overwrite the original config file
        with open(config_path, 'w') as f:
            f.write(modified_config_str)
        print(f"Updated Waybar config at {config_path}")
    except FileNotFoundError:
        print(f"Error: Config file {config_path} not found")
    except Exception as e:
        print(f"Error updating {config_path}: {e}")

def main():
    config_paths = [
        os.path.expanduser('~/.config/waybar/config.jsonc'),
        os.path.expanduser('~/.config/waybar/config-monitor2.jsonc')
    ]
    css_path = os.path.expanduser('~/.cache/wal/colors-waybar.css')

    # Load colors from CSS file
    available_colors = load_colors(css_path)
    if not available_colors:
        print("Error: No colors found in colors-waybar.css")
        return

    # Update each config file
    for config_path in config_paths:
        update_config_file(config_path, available_colors)

if __name__ == '__main__':
    main()
