#!/usr/bin/env deno
set -x DENO_INSTALL "$HOME/.deno"

if which deno &> /dev/null; or [ -d $DENO_INSTALL ]
    set -Ux PATH "$DENO_INSTALL/bin"
end
