#!/usr/bin/env fish
if which docker &> /dev/null
    alias d="docker"
    alias db="docker build"
    alias dc="docker compose"
    alias dcb="dc build"
    alias dcr="dc down && dc up"
    alias di="docker image ls"
    alias dp="docker pull"
    alias drmi="docker rmi"
    alias docker-images="docker image ls"

    function docker-prune-all --wraps "docker system prune"
        echo "y" | docker system prune
    end

    function docker-remove-by-name --wraps "docker rmi"
        docker rmi (docker images "$name" -a -q)
    end
end
