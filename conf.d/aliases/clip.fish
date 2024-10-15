#!/usr/bin/env fish
if [ "$XDG_SESSION_TYPE" = "x11" ]; and which xclip &> /dev/null
    alias clip="xclip -selection clipboard"
else if [ "$XDG_SESSION_TYPE" = "wayland" ]; and which wl-copy &> /dev/null
    alias clip="wl-copy"
end
