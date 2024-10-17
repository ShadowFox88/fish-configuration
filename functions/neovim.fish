#!/usr/bin/env fish
if which nvim &> /dev/null
    function n --wraps nvim
        set target $argv[1]

        if not [ $target ]
            nvim $HOME/.config/nvim
        else
            nvim $target $argv[2..]
        end
    end
else if which docker &> /dev/null
    function n --wraps "docker run"
        set target $argv[1]
        set flags -it --rm

        if not [ $target ]
            docker run $flags -v $HOME/.config/nvim:/workspace cyrus01337/neovim-devcontainer
        else if [ -d $target ]
            docker run $flags -v $target:/workspace cyrus01337/neovim-devcontainer $argv[2..]
        else
            docker run $flags -v (dirname $target):/workspace cyrus01337/neovim-devcontainer $argv[2..]
        end
    end
end

