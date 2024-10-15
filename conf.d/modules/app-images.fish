#!/usr/bin/env fish
set APP_IMAGES_DIRECTORY "$HOME/Applications"

if [ -d "$APP_IMAGES_DIRECTORY" ]
    set -Ux PATH "$APP_IMAGES_DIRECTORY"
end

return 0
