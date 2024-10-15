#!/usr/bin/env fish
set -x EDITOR "nvim"
set -x GNUPGHOME "$HOME/.local/gnupg"
set -x INPUTRC "$HOME/.inputrc"
set -x LANG "en_GB.UTF-8"
set -x LANGUAGE "en_GB:en"
set -x ASSWORD_STORE_DIR "$HOME/.local/password-store"
set -x VISUAL "nvim"
set -x XDG_CACHE_HOME "$HOME/.cache"
set -x XDG_CONFIG_HOME "$HOME/.config"
set -Ux XDG_DATA_DIRS "/var/lib/flatpak/exports/share" "$HOME/.local/share/flatpak/exports/share" "/usr/share/ubuntu" "/usr/share/gnome" "/usr/local/share/" "/usr/share/"
set -x XDG_DATA_HOME "$HOME/.local/share"

set fish_greeting

if ! set PATH_EXTENDED
    set PATH_EXTENDED true
    set -Ux PATH "$HOME/bin" "$HOME/bin/custom" "/usr/sbin/" "/usr/local/bin" "/usr/local/go/bin" "/snap/bin" "$HOME/.local/bin"
end
