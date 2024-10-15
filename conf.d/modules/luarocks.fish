#!/usr/bin/env fish
if which luarocks &> /dev/null
    set -Ux PATH "$HOME/.luarocks/bin"
end
