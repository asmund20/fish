if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Create file functions/path.fish with the following to configure path:
# function path
# set -gx PATH <directory> $PATH
# end

set -U fish_greeting

fish_vi_key_bindings

source ~/.config/fish/aliases.fish


# Check if the local configuration directory exists and source its file
if test -d ~/.config/fish/local
    for file in ~/.config/fish/local/*.fish
        source $file
    end
end

if test "$TERM_PROGRAM" = "ghostty"
    set -x TERM xterm-256color
end
