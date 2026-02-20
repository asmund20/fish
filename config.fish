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

# Default is that it is not remote.
# This is overwritten in the sourcing of the local files below.
set is_remote false

# Check if the local configuration directory exists and source its file
if test -d ~/.config/fish/local
    for file in ~/.config/fish/local/*.fish
        source $file
    end
end

# Add mason installs to path
set -gx PATH /home/asmund/.local/share/nvim/mason/bin $PATH

if test "$TERM_PROGRAM" = "ghostty"
    set -x TERM xterm-256color
end
