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
        set default_flags -it --rm
        set default_volumes -v $HOME/.gitconfig:/home/developer/.gitconfig -v $HOME/.git-credentials:/home/developer/.git-credentials

        if not [ $target ]
            docker run $default_flags $default_volumes -v $HOME/.config/nvim:/workspace cyrus01337/neovim-devcontainer
        else if [ -d $target ]
            docker run $default_flags $default_volumes -v $target:/workspace cyrus01337/neovim-devcontainer $argv[2..]
        else
            docker run $default_flags $default_volumes -v $target:/workspace/(basename $target) cyrus01337/neovim-devcontainer $argv[2..]
        end
    end
end
