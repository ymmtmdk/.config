set -x PATH /home/ymmtmdk/.local/bin $PATH

if status is-interactive
    # Commands to run in interactive sessions can go here
    source ~/github/.config/fish/aliases.fish
    source (/usr/bin/starship init fish --print-full-init | psub)
    source /home/ymmtmdk/.local/share/alt-z/az.fish
    # bind ctrl-r fzf_select_fish_history
    bind \x1e 'cd ..; and commandline -f repaint'
    bind ctrl-comma prevd-or-backward-word
    # C-.
    bind ctrl-. nextd-or-forward-word
end
