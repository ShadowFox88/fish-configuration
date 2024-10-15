#!/usr/bin/env fish
if which flatpak &> /dev/null
    set -Ux PATH "/var/lib/flatpak/exports/bin"
end
