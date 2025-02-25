if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting

set -gx PATH ~/.local/share/applications/typst-x86_64-unknown-linux-musl $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH /opt/zen $PATH
set -gx PATH /opt/jdk-23/bin $PATH
set -gx PATH /opt/android-studio-for-platform/bin $PATH

fish_vi_key_bindings

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

