#!/usr/bin/env fish
function edit
    set original_directory "$PWD"
    set target "$argv[1]"

    if [ -d $target ]
        cd $target
    else
        cd (dirname $target)
    end

    devpod ssh . --workdir /workspace --command "nvim ." 2> /dev/null
    cd $original_directory
end
