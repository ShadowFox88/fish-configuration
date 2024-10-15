#!/usr/bin/env fish
set SPICETIFY_PATH "$HOME/.spicetify"

if [ -d $SPICETIFY_PATH ]
    set -Ux PATH "$SPICETIFY_PATH"
end
