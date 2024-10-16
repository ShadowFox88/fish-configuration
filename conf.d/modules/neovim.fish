#!/usr/bin/env fish
set NEOVIM_CONFIGURATION_DIRECTORY "$HOME/.config/nvim"

if which nvim &> /dev/null
    function n
        set original_directory "$PWD"
        set object_to_edit $argv[1]

        if [ $object_to_edit = "" ]
            set object_to_edit $NEOVIM_CONFIGURATION_DIRECTORY
        end

        set object_directory "$(dirname $object_to_edit)"

        if [ -d "$object_to_edit" ]
            set object_directory "$object_to_edit"
            set object_to_edit "."
        else
            set object_to_edit "$(basename $object_to_edit)"
        end

        cd "$object_directory"
        nvim "$object_to_edit"
        cd "$original_directory"
    end
end
