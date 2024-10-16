#!/usr/bin/env fish
if which devpod &> /dev/null
    function devpod-ssh-cwd --wraps ssh
        ssh (basename $PWD).devpod
    end
end
