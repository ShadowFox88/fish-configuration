#!/usr/bin/env fish
set -x PNPM_HOME "$HOME/.local/share/pnpm"

if [ -d "$PNPM_HOME" ]
    set -Ux PATH "$PNPM_HOME"
end
