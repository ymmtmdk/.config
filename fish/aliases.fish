alias e='nvim'
alias g='git'
alias r='ruby'
alias py='python3'

alias ll='ls -lAh'
alias df='df -m'

if test (uname) = Darwin
end

if test (uname) = Linux
  alias open='wsl-open'
  alias pbc='win32yank.exe -i'
  # alias pbc='fish_clipboard_copy'
  alias pbp='win32yank.exe -o'
  # alias pbp='fish_clipboard_paste'
end

