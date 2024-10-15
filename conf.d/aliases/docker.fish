#!/usr/bin/env fish
if which docker &> /dev/null
    alias d="docker"
    alias db="docker build"
    alias dc="docker compose"
    alias dcb="dc build"
    alias dcr="dc down && dc up"
    alias di="docker image ls"
    alias docker-images="docker image ls"
end
