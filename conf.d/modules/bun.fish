#!/usr/bin/env fish
if [ -s "$HOME/.bun/_bun" ]
    set -x BUN_INSTALL "$HOME/.bun"
    set -Ux PATH "$BUN_INSTALL/bin"

    source "$HOME/.bun/_bun"
end

return 0
