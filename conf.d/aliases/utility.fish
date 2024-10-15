#!/usr/bin/env fish
set FISH_CONFIG_PATH "$__fish_config_dir/config.fish"

alias lsa="ls -a"
alias lsal="ls -al"
alias lsl="ls -l"
alias q="exit"
alias r="clear && . $FISH_CONFIG_PATH"
alias schmod="sudo chmod"
alias schown="sudo chown"
alias sshq="ssh -q"
alias scpq="scp &> /dev/null"

function edit
    set original_directory "$PWD"
    set target "$argv[1]"

    if [ -d $target ]
        cd $target
    else
        cd (dirname $target)
    end

    ssh fish.devpod

    if [ $status != 0 ]
        devpod up .
        ssh fish.devpod
    end

    cd $original_directory
end

alias f="edit $__fish_config_dir/ && . $FISH_CONFIG_PATH"
