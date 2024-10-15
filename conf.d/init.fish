#!/usr/bin/env fish
if ! set -q RAN_BEFORE_SCRIPTS
    for script in $__fish_config_dir/conf.d/before/*.fish
        source $script

        set cached_status $status

        if [ $cached_status != 0 ]
            echo "Before script $script failed with exit code $cached_status"
        end
    end

    set RAN_BEFORE_SCRIPTS true
end

if ! set -q INITIALISED_MODULES
    for module in $__fish_config_dir/conf.d/modules/*.fish
        source $module

        set cached_status $status

        if [ $cached_status != 0 ]
            echo "Module $module failed with exit code $cached_status"
        end
    end

    set INITIALISED_MODULES false
end

if ! set -q INITIALISED_PACKAGES
    for package in $__fish_config_dir/conf.d/packages/*.fish
        source $package

        set cached_status $status

        if [ $cached_status != 0 ]
            echo "Package $package failed with exit code $cached_status"
        end
    end

    set INITIALISED_PACKAGES false
end

if ! set -q INITIALISED_ALIASES
    for aliases in $__fish_config_dir/conf.d/aliases/*.fish
        source $aliases

        set cached_status $status

        if [ $cached_status != 0 ]
            echo "Aliases script $aliases failed with exit code $cached_status"
        end
    end

    set INITIALISED_ALIASES false
end

