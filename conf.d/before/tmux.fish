#!/usr/bin/env fish
if which tmux &> /dev/null; and ! set -q TMUX
    exec tmux new-session -As main
end
