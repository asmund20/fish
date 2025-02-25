if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Create file functions/path.fish with the following to configure path:
# function path
# set -gx PATH <directory> $PATH
# end

set -U fish_greeting

fish_vi_key_bindings


# Check if the local configuration directory exists and source its file
if test -d ~/.config/fish/local
    for file in ~/.config/fish/local/*.fish
        source $file
    end
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/asmund/miniconda3/bin/conda
    eval /home/asmund/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/asmund/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/asmund/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/asmund/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

