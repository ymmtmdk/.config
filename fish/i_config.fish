set -x TERM xterm-256color
set -x EDITOR (which nvim)
set -x SHELL (which fish)

source ~/.config/fish/aliases.fish
source ~/.local/share/alt-z/az.fish

function init_starship
  if test (uname) = Darwin
    set -x STARSHIP_CONFIG ~/.config/starship-macos.toml
  end
  if test (uname) = Linux
    set -x STARSHIP_CONFIG ~/.config/starship-linux.toml
  end
  
  starship init fish | source
end

if not set -q VSCODE_INJECTION
  init_starship
  source ~/.local/share/nvim/lazy/tokyonight.nvim/extras/fish/tokyonight_moon.fish
end

function fish_user_key_bindings
  # C-^
  bind \x1e 'cd ..; and commandline -f repaint'
  # C-,
  bind ctrl-comma prevd-or-backward-word
  bind f1 prevd-or-backward-word
  # C-.
  bind ctrl-. nextd-or-forward-word
  bind f2 nextd-or-forward-word

  bind \cd delete-char
  bind \cs forward-kill-word
  bind \cs kill-word
end

function fish_title
end

