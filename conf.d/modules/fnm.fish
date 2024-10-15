#!/usr/bin/env fish
set FNM_DIRECTORY "$HOME/.local/share/fnm"

if [ -d "$FNM_DIRECTORY" ]
    set -Ux PATH "$FNM_DIRECTORY"

    fnm env --use-on-cd --shell fish | source
end
