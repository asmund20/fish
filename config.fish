if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Create file functions/path.fish with the following to configure path:
# function path
# set -gx PATH <directory> $PATH
# end

set -U fish_greeting

fish_vi_key_bindings

source aliases.fish


# Check if the local configuration directory exists and source its file
if test -d ~/.config/fish/local
    for file in ~/.config/fish/local/*.fish
        source $file
    end
end
