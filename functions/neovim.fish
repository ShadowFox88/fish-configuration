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
    function n --wraps "zsh"
        set target $argv[1]
        set default_flags -it --rm --name (basename $target)
        set default_volumes -v $HOME/.gitconfig:/home/developer/.gitconfig -v $HOME/.git-credentials:/home/developer/.git-credentials -v neovim-data:/home/developer/.local/share/nvim

        if not [ $target ]
            docker run $default_flags $default_volumes -v $HOME/.config/nvim:/workspace cyrus01337/neovim-devcontainer:latest -c "nvim . $argv[2..]"
        else if [ -d $target ]
            docker run $default_flags $default_volumes -v (realpath $target):/workspace cyrus01337/neovim-devcontainer:latest $argv[2..]
        else
            set filename (basename $target)

            docker run $default_flags $default_volumes -v (realpath $target):/workspace/$filename cyrus01337/neovim-devcontainer:latest -c "nvim $filename" $argv[2..]
        end
    end
end
