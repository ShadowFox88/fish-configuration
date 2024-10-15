#!/usr/bin/env fish
if which git &> /dev/null
    alias g="git"
    alias gb="git branch"
    alias gch="git checkout"
    alias gcl="git clone"
    alias gco="git commit"
    alias gi="git init"
    alias gm="git merge"
    alias gr="git remote"
    alias gra="git remote add"
    alias gpl="git pull"
    alias gps="git push"
    alias gsm="git submodule"

    function ga --wraps "git add"
        if [ "$argv[1]" = "" ]
            git add .
        else
            git add $argv
        end
    end

    function gpsu --wraps "git push"
        if [ "$argv[1]" = "" ]
            git push -u origin main
        else
            git push -u origin $argv
        end
    end

    alias fix-formatting-commit="p format && git add . && git commit -m 'Fix formatting' && git push"
    # TODO: Unify all Git-related binaries and commands into 1 module
    alias git-init-submodule="git submodule update --init --recursive"
    alias git-update-submodule="git submodule update --recursive --remote"
    alias gism="git-init-submodule"
    alias gusm="git-update-submodule"
end
