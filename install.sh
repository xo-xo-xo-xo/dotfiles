#!/bin/bash
set -euo pipefail

# ─── colors ───
RED="\033[0;31m"; GREEN="\033[0;32m"; YELLOW="\033[1;33m"; BLUE="\033[0;34m"; RESET="\033[0m"

echo "╭─────────────────────╮"
echo "│💖✨ xo dotfiles ✨💖│"
echo "╰─────────────────────╯"
echo


echo -e "${RED}DISCLAIMER:${RESET}"
echo "this will copy the dotfiles to the appropriate locations, make scripts executable,"
echo "create symlinks in directories, set a wallpaper, and install several packages, some from the AUR."
echo "an effort was made to make backups of existing configs, but use at your own risk."
echo "by default, the script does a dry run, detailing what would be done."
echo -e "${RED}no changes are made until running the script with the --apply flag.${RESET}"
echo


read -rp "do you want to continue? [y/N] " ack
if [[ ! "$ack" =~ ^[Yy]$ ]]; then
    echo "aborting"
    exit 1
fi
echo


DRY_RUN=1
[ "${1-}" == "--apply" ] && DRY_RUN=0
echo "$( [ $DRY_RUN -eq 1 ] && echo '🧪 dry-run mode (default)' || echo ' install mode enabled!')"
echo

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP="$HOME/dotfiles-backup-$(date +%Y%m%d-%H%M%S)"


OFFICIAL_PACKAGES=(hyprland hypridle hyprlock hyprshot waybar swaync rofi wofi mpv
    fish dolphin cliphist cava kitty ttf-nerd-fonts-symbols
    adobe-source-han-sans-jp-fonts fastfetch xdg-desktop-portal-hyprland
    code)
AUR_PACKAGES=(kissfft-git heroic-games-launcher-bin waypaper waybar-module-pacman-updates-git nwg-look qt6ct-kde ttf-material-design-icons-git qview wlogout python-pywal16 python-pywalfox hyprland-protocols tauon-music-box-git)




pkgcheck(){
  local type="$1"; shift; local pkgs=("$@")
  echo "[$type packages]"
  for p in "${pkgs[@]}"; do
    if pacman -Qi "$p" &>/dev/null || yay -Qi "$p" &>/dev/null; then
      echo -e "  ${GREEN}✔ $p${RESET}"
    else
      echo -e "  ${RED}✖ $p${RESET}"
      [ $DRY_RUN -eq 0 ] && {
        if [ "$type" = "official" ]; then sudo pacman -S --needed "$p" || true
        else yay -S --needed "$p" --noconfirm || true; fi
      }
    fi
  done
  echo
}

echo "╭───────────────────────╮"
echo "│💖✨ package check ✨💖│"
echo "╰───────────────────────╯"
echo



echo -e "${BLUE}packages that would be installed:${RESET}"
pkgcheck official "${OFFICIAL_PACKAGES[@]}"
pkgcheck AUR "${AUR_PACKAGES[@]}"




if [ "$DRY_RUN" -eq 0 ]; then
    echo -e "${RED}this script will be installing packages, some from the AUR.${RESET}"
    echo -e "${RED}check the sources yourself if you have concerns.${RESET}"
    read -rp "do you want to continue? [y/N] " yn
    if [[ ! "$yn" =~ ^[Yy]$ ]]; then
        echo "aborting"
        exit 1
    fi
fi

echo
echo "╭──────────────────────────╮"
echo "│💖✨ backup & install ✨💖│"
echo "╰──────────────────────────╯"
echo



echo -e "${BLUE} backup folder:${RESET} $BACKUP"
[ $DRY_RUN -eq 0 ] && mkdir -p "$BACKUP"

copydir(){
  local src="$DOTFILES_DIR/$1" dst="$HOME/$1" bdst="$BACKUP/$1"
  [ -d "$src" ] || return
  echo "$src → $dst"
  [ $DRY_RUN -eq 0 ] && mkdir -p "$bdst" "$dst"
  for f in "$src"/*; do
    [ -e "$f" ] || continue
    local name=$(basename "$f")
    if [ -e "$dst/$name" ]; then
      echo -e "  ${YELLOW}Backup $name${RESET}"
      [ $DRY_RUN -eq 0 ] && mv "$dst/$name" "$bdst/"
    fi
    echo -e "  ${GREEN}Copy $name${RESET}"
    [ $DRY_RUN -eq 0 ] && cp -r "$f" "$dst/"
  done
  if [ $DRY_RUN -eq 1 ]; then
      echo -e "${BLUE}  (dry-run:${RESET} would copy $src to $dst, backup to $bdst)"
  fi
}

for d in .config .themes scripts; do copydir "$d"; done

echo
echo "╭───────────────────────╮"
echo "│💖✨ chmod scripts ✨💖│"
echo "╰───────────────────────╯"
echo



if [ $DRY_RUN -eq 0 ]; then
    chmod +x "$HOME/scripts/"*
    echo -e "scripts in ${BLUE}~/scripts${RESET} made executable"
elif [ $DRY_RUN -eq 1 ]; then
    echo -e "${BLUE} (dry-run:${RESET} scripts in ${BLUE}~/scripts${RESET} would be made executable)"
fi


echo "╭───────────────────────────╮"
echo "│💖✨ continued install ✨💖│"
echo "╰───────────────────────────╯"
echo

if [ $DRY_RUN -eq 0 ]; then
    echo -e "copying prebuilt ${BLUE}.cache/wal...${RESET}"
    mkdir -p "$HOME/.cache"
    cp -r "$DOTFILES_DIR/.cache/wal" "$HOME/.cache/"

    wal_image="$DOTFILES_DIR/1.jpg"
    if [ -f "$wal_image" ]; then
        wal -i "$wal_image"
        echo "wallpaper set from included image."
    fi
elif [ $DRY_RUN -eq 1 ]; then
    echo -e "(${BLUE}dry-run:${RESET} would copy ${BLUE}.cache/wal ${RESET} and run wal to set wallpaper)${RESET}"
fi

echo "╭──────────────────╮"
echo "│💖✨ symlinks ✨💖|"
echo "╰──────────────────╯"
echo



SYMLINKS=(
  "$HOME/.cache/wal/rofi-colors.rasi $HOME/.config/rofi/colors.rasi"
  "$HOME/.cache/wal/rofi-simple-config.rasi $HOME/.config/rofi/simple-config.rasi"
  "$HOME/.cache/wal/rofi-powermenu-config.rasi $HOME/.config/rofi/powermenu-config.rasi"
  "$HOME/.cache/wal/rofi-launcher-config.rasi $HOME/.config/rofi/launcher-config.rasi"
  "$HOME/.cache/wal/rofi-wallpaper-sel.rasi $HOME/.config/rofi/wallpaper-sel-config.rasi"
  "$HOME/.cache/wal/colors-tauon.ttheme $HOME/.local/share/TauonMusicBox/theme/colors-tauon.ttheme"
  "$HOME/.cache/wal/heroic-pywal.css $HOME/.config/heroic/heroic-themes-main/pywal/pywal.css"
  "$HOME/.cache/wal/gtk-colors.css $HOME/.config/gtk-3.0/colors.css"
  "$HOME/.cache/wal/gtk-colors.css $HOME/.config/gtk-4.0/colors.css"
)


echo -e "\n symlinks:"
for pair in "${SYMLINKS[@]}"; do
    src=$(echo "$pair" | awk '{print $1}')
    dst=$(echo "$pair" | awk '{print $2}')
    echo -e " $src → $dst"
    [ $DRY_RUN -eq 0 ] && { mkdir -p "$(dirname "$dst")"; ln -sf "$src" "$dst"; }
done
[ $DRY_RUN -eq 1 ] && echo -e "${YELLOW}(dry-run: no symlinks created)${RESET}"



echo -e "${RED}REMINDER:${RESET}"
echo -e "there are some manual edits that must be made. check repository for more info."


echo -e "💖 done! $( [ $DRY_RUN -eq 1 ] && echo 'dry-run. use --apply to execute.' || echo "backups created at $BACKUP")"

if [ $DRY_RUN -eq 0 ]; then
    echo "you can now exit to SDDM and start a hyprland session."
fi
